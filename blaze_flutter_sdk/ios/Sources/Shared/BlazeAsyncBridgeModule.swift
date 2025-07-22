import Foundation
import Flutter

public enum BlazeAsyncBridgeTimeout {
    case defaultTimeout
    case noTimeout
    case seconds(_ seconds: Double)
    
    fileprivate var timeoutInSeconds: Double {
        switch self {
        case .defaultTimeout:
            return 2 // Default timeout
        case .noTimeout:
            return Double.infinity // Use Double.infinity to indicate no timeout
        case .seconds(seconds: let seconds):
            return seconds
        }
    }
}

/// Global instance provider for BlazeAsyncBridge - matches Android pattern
private class BlazeAsyncBridgeProvider {
    static var instance: BlazeAsyncBridge?
    
    static func setInstance(_ bridge: BlazeAsyncBridge) {
        instance = bridge
    }
    
    static func getInstance() -> BlazeAsyncBridge? {
        return instance
    }
}

/// Public protocol for the Blaze Async Bridge
/// Provides async communication between native code and Dart
public protocol BlazeAsyncBridge {

}

/// Static methods for BlazeAsyncBridge - matches Android companion object pattern
extension BlazeAsyncBridge {
    
    /// Register the async bridge module and set it as the global instance
    /// - Parameter binaryMessenger: The Flutter binary messenger
    static func registerModule(messenger: FlutterBinaryMessenger) {
        let instance = BlazeAsyncBridgeModule(binaryMessenger: messenger)
        BlazeAsyncBridgeProvider.setInstance(instance)
    }
    
    public static func getInstance() -> BlazeAsyncBridge? {
        return BlazeAsyncBridgeProvider.getInstance()
    }
}

/// Private empty parameters struct for methods with no parameters
private struct EmptyCodable: Codable {}

/// Public constants and convenience methods for the Blaze Async Bridge
public extension BlazeAsyncBridge {
    
    /// Generic method that accepts Encodable parameters and returns the specific Decodable type
    /// This method automatically serializes the params to JSON and infers the return type
    func callDartMethod<T: Decodable, P: Encodable>(_ name: String,
                                                    params: P,
                                                    timeout: BlazeAsyncBridgeTimeout = .defaultTimeout) async throws -> T {
        guard let self = self as? BlazeAsyncBridgeModule else {
            // Should never reach here.
            throw BlazeAsyncBridgeModule.Errors.typeError(errorMessage: "BlazeAsyncBridge must be implemented by BlazeAsyncBridgeModule")
        }
        
        let jsonString = try await self.callDartMethodInternal(name,
                                                               params: params,
                                                               timeout: timeout) ?? "null"
        
        do {
            
            // Handle the case where jsonString is nil (empty response)
            guard let jsonData = jsonString.data(using: .utf8) else {
                throw BlazeAsyncBridgeModule.Errors.typeError(errorMessage: "Failed to convert JSON string to data")
            }
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(T.self, from: jsonData)
            return result
            
        } catch {
            throw BlazeAsyncBridgeModule.Errors.typeError(errorMessage: "Dart method '\(name)' parsing failed: \(error)")
        }
    }
    
    func callDartMethod<T: Decodable>(_ name: String,
                                      timeout: BlazeAsyncBridgeTimeout = .defaultTimeout) async throws -> T {
        return try await callDartMethod(name,
                                        params: EmptyCodable(),
                                        timeout: timeout)
    }
    
    func callDartMethod(_ name: String,
                        timeout: BlazeAsyncBridgeTimeout = .defaultTimeout) async throws {
        let _: EmptyCodable? = try await callDartMethod(name,
                                                        params: EmptyCodable(),
                                                        timeout: timeout)
    }
    
    func callDartMethod<P: Encodable>(_ name: String,
                                      params: P,
                                      timeout: BlazeAsyncBridgeTimeout = .defaultTimeout) async throws {
        let _: EmptyCodable? = try await callDartMethod(name,
                                                        params: params,
                                                        timeout: timeout)
    }
    
    /// Send a fire-and-forget event to Dart (no response expected)
    /// Useful for notifications and events from non-async contexts
    ///
    /// - Parameters:
    ///   - name: The name of the Dart method to call
    ///   - params: The parameters to pass to the Dart method
    func sendEvent<P: Encodable>(_ name: String,
                                 params: P) {
        Task {
            do {
                 // Fire-and-forget call (nullable return value for null results)
                 try await self.callDartMethod(name, params: params, timeout: .defaultTimeout)
            } catch {
                print("BlazeAsyncBridge: Error sending event \(name): \(error)")
            }
        }
    }
    
    /// Send a fire-and-forget event to Dart with no parameters
    func sendEvent(_ name: String) {
        sendEvent(name, params: EmptyCodable())
    }

}

public class BlazeAsyncBridgeModule: NSObject, BlazeAsyncBridge {
    
    internal enum Constants {
        static let bridgeAsyncFunctionName = "BlazeAsyncBridge.dartRequest"
        static let channelName = "blaze-async-bridge"
    }
    
    enum Errors: Error {
        case timeoutError(errorMessage: String)
        case dartError(errorMessage: String)
        case typeError(errorMessage: String)
    }
    
    struct CallbackModel {
        let callbackAction: (Any?, Error?) -> Void
        let continuation: CheckedContinuation<String?, Error>
    }
    
    private var callbackMap = [String: CallbackModel]()
    
    // Method channel for communication with Dart
    private let methodChannel: FlutterMethodChannel
    
    public init(binaryMessenger: FlutterBinaryMessenger) {
        self.methodChannel = FlutterMethodChannel(
            name: Constants.channelName,
            binaryMessenger: binaryMessenger
        )
        
        super.init()
        
        // Set up method call handler
        methodChannel.setMethodCallHandler { [weak self] call, result in
            self?.handleMethodCall(call: call, result: result)
        }
    }
    
    // Handle method calls from Dart
    private func handleMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "resolveDartResponse":
            if let arguments = call.arguments as? [String: Any] {
                Task { [weak self] in
                    await self?.handleDartResponse(response: arguments)
                }
            }
            result(nil)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    // Replace setupTimeout with performAsyncTaskWithTimeout
    fileprivate func callDartMethodInternal<P: Encodable>(_ name: String,
                                                          params: P,
                                                          timeout: BlazeAsyncBridgeTimeout) async throws -> String? {
        let callbackId = UUID().uuidString
        
        // Determine the effective timeout
        let effectiveTimeout = timeout.timeoutInSeconds
        
        do {
            return try await withTimeout(effectiveTimeout) {
                try await withTaskCancellationHandler(operation: {
                    try await withCheckedThrowingContinuation { continuation in
                        Task { [weak self] in
                            guard let self = self else { return }
                            
                            // Store callback handling
                            await self.storeCallback(callbackId: callbackId,
                                                     continuation: continuation)
                            
                            // Send request to Dart
                            try self.sendDartRequest(name: name,
                                                     params: params,
                                                     callbackId: callbackId)
                        }
                    }
                }, onCancel: { [weak self] in
                    Task { [weak self] in
                        guard let self = self else { return }
                        
                        // Handle all cancellation (timeout + external) - resume continuation and cleanup
                        await self.resumeWithCancellation(callbackId: callbackId)
                        print("Operation cancelled for Dart method call: \(name)")
                    }
                })
            }
        } catch WithTimeoutError.timeoutError {
            let timeoutError = Errors.timeoutError(errorMessage: "Dart method call timed out: \(name)")
            await removeCallback(callbackId: callbackId)
            
            throw timeoutError
        } catch {
            // Handle other errors (including `CancellationError`).
            await removeCallback(callbackId: callbackId)
            throw error
        }
    }
    
    // MARK: - Private Helper Methods
    
    @MainActor
    private func resumeWithCancellation(callbackId: String) {
        guard let callback = callbackMap[callbackId] else {
            return
        }
        
        // Resume continuation with cancellation error if it exists
        callback.continuation.resume(throwing: CancellationError())
        
        // Remove callback from both maps
        removeCallback(callbackId: callbackId)
    }
    
    @MainActor
    private func removeCallback(callbackId: String) {
        callbackMap.removeValue(forKey: callbackId)
    }
    
    @MainActor
    private func storeCallback(callbackId: String,
                               continuation: CheckedContinuation<String?, Error>) {
        callbackMap[callbackId] = .init(
            callbackAction: { [weak self] (result, error) in
                guard let self = self else { return }
                
                self.handleCallbackResponse(callbackId: callbackId,
                                            result: result,
                                            error: error,
                                            continuation: continuation)
            },
            continuation: continuation)
    }
    
    @MainActor
    private func handleCallbackResponse(callbackId: String,
                                        result: Any?,
                                        error: Error?,
                                        continuation: CheckedContinuation<String?, Error>) {
        // Resume continuation
        if let error = error {
            continuation.resume(throwing: error)
        } else {
            // Return JSON string directly - result should already be a JSON string from Dart
            let jsonString = result as? String
            continuation.resume(returning: jsonString)
        }
        
        // Remove callback from map
        removeCallback(callbackId: callbackId)
    }
    
    private func sendDartRequest<P: Encodable>(name: String,
                                               params: P,
                                               callbackId: String) throws {
        // Serialize params to JSON string using the existing helper
        let paramsJson: String
        if params is EmptyCodable {
            paramsJson = "null"
        } else if let jsonString = params.asJsonString {
            paramsJson = jsonString
        } else {
            throw Errors.typeError(errorMessage: "Failed to serialize params to JSON string")
        }
        
        let arguments: [String: Any] = [
            "methodName": name,
            "params": paramsJson, // Send as JSON string instead of dictionary
            "callbackId": callbackId
        ]
        
        // Ensure we're on the main thread to avoid Flutter channel threading warnings
        DispatchQueue.main.async { [weak self] in
            self?.methodChannel.invokeMethod(Constants.bridgeAsyncFunctionName, arguments: arguments)
        }
    }
    
    // Method called by Dart to resolve/reject a native call
    @MainActor
    private func handleDartResponse(response: [String: Any]) {
        
        guard let callbackId = response["callbackId"] as? String else {
            return
        }
        
        guard let callback = callbackMap[callbackId] else {
            // Callback might have already been handled (e.g., due to timeout or cancellation)
            return
        }
        
        let success = response["success"] as? Bool ?? false
        
        if success {
            // Extract JSON string from response - Dart should send data as JSON string
            let jsonString = response["data"] as? String
            callback.callbackAction(jsonString, nil)
        } else {
            let errorMessage = response["errorMessage"] as? String ?? "Unknown error"
            let error = Errors.dartError(errorMessage: errorMessage)
            callback.callbackAction(nil, error)
        }
    }
}
