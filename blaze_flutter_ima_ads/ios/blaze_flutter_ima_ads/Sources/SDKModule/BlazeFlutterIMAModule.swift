
import Flutter
import UIKit
import BlazeIMA
import BlazeSDK
import GoogleInteractiveMediaAds
import blaze_flutter_sdk

class BlazeFlutterIMAModule {
    
    struct MethodNameConstants {
        static let enableAds = "enableAds"
        static let disableAds = "disableAds"
    }
    
    private var methodChannel: FlutterMethodChannel!
    private var asyncBridge: BlazeAsyncBridge? {
        return BlazeAsyncBridgeModule.getInstance()
    }
    
    static let shared = BlazeFlutterIMAModule()
    
    static func registerModule(messenger: FlutterBinaryMessenger) {
        shared.methodChannel = FlutterMethodChannel(name: "blaze-ima-module",
                                                    binaryMessenger: messenger)
        
        shared.methodChannel?.setMethodCallHandler { (call, result) in
            shared.handleMethodCall(call: call, result: result)
        }
    }
    
    private init() {
        
    }
    
    // IMA delegate that communicates with Flutter - defined as property to keep it alive
    lazy var delegate: BlazeIMADelegate = .init(
        onIMAAdError: { [weak self] message in
            self?.onIMAAdError(message)
        },
        
        onIMAAdEvent: { [weak self] params in
            self?.onIMAAdEvent(eventType: params.eventType,
                               adInfo: params.adInfo)
        },
        
        additionalIMATagQueryParams: { [weak self] params in
            return await self?.additionalIMATagQueryParams(params: params) ?? [:]
        },
        
        customIMASettings: { [weak self] params in
            return await self?.customIMASettings(params: params)
        },
        
        overrideAdTagUrl: { [weak self] params in
            return await self?.overrideAdTagUrl(params: params)
        }
    )
    
    private func handleMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case MethodNameConstants.enableAds:
            enableAds(call: call, result: result)
        case MethodNameConstants.disableAds:
            disableAds(call: call, result: result)
        default:
            handleError(result,
                        errCode: "BlazeFlutterIMAModule",
                        errMessage: "Method name \(call.method) hasn't been implemented!!")
        }
    }
    
    private func enableAds(call: FlutterMethodCall, result: @escaping FlutterResult) {
        // EEnable IMA with delegate
        BlazeIMA.shared.enableAds(delegate: delegate)
        result(nil)
    }
    
    private func disableAds(call: FlutterMethodCall, result: @escaping FlutterResult) {
        // Disable IMA ads
        BlazeIMA.shared.disableAds()
        result(nil)
    }
    
}

// MARK: - IMA ads implementation.

extension BlazeFlutterIMAModule {

    private func onIMAAdEvent(eventType: BlazeIMAHandlerEventType,
                              adInfo: BlazeImaAdInfo) {
        // Send event to Flutter with safe enum conversion
        asyncBridge?.sendEvent("BlazeIMA.onAdEvent", params: [
            "eventType": eventType.toFlutterEventTypeParam()
        ])
    }
    
    private func onIMAAdError(_ errorMessage: String) {
        // Send error to Flutter
        asyncBridge?.sendEvent("BlazeIMA.onAdError", params: [
            "errorMessage": errorMessage
        ])
    }
    
    private func additionalIMATagQueryParams(params: BlazeIMADelegate.RequestDataInfo) async -> [String: String] {
        // Call Flutter method via AsyncBridge
        guard let asyncBridge = asyncBridge else {
            print("BlazeAsyncBridge not available")
            return [:]
        }
        
        do {
            let result: [String: String] = try await asyncBridge.callDartMethod(
                "BlazeIMA.additionalIMATagQueryParams",
                params: params.toFlutterModel
            )
            return result
        } catch {
            print("Error calling additionalIMATagQueryParams: \(error)")
            return [:]
        }
    }
    
    private func customIMASettings(params: BlazeIMADelegate.RequestDataInfo) async -> IMASettings? {
        // Call Flutter method via AsyncBridge
        guard let asyncBridge = asyncBridge else {
            print("BlazeAsyncBridge not available")
            return nil
        }
        
        do {
            let result: BlazeRTNIMASettings? = try await asyncBridge.callDartMethod(
                "BlazeIMA.customIMASettings",
                params: params.toFlutterModel
            )
            
            return result?.toImaObject()
        } catch {
            print("Error calling customIMASettings: \(error)")
            return nil
        }
    }
    
    private func overrideAdTagUrl(params: BlazeIMADelegate.RequestDataInfo) async -> String? {
        // Call Flutter method via AsyncBridge
        guard let asyncBridge = asyncBridge else {
            print("BlazeAsyncBridge not available")
            return nil
        }
        
        do {
            let result: String? = try await asyncBridge.callDartMethod(
                "BlazeIMA.overrideAdTagUrl",
                params: params.toFlutterModel
            )
            return result
        } catch {
            print("Error calling overrideAdTagUrl: \(error)")
            return nil
        }
    }
}

struct BlazeRTNIMASettings: Codable {
    
    let language: String?
    let ppid: String?
    let sessionId: String?
    
}

extension BlazeRTNIMASettings {
    
    func toImaObject() -> IMASettings {
        let imaSettings = IMASettings()
        
        if let language = language {
            imaSettings.language = language
        }
        
        if let ppid = ppid {
            imaSettings.ppid = ppid
        }
        
        if let sessionId = sessionId {
            imaSettings.sessionID = sessionId
        }
        
        return imaSettings
    }
    
}

fileprivate extension BlazeIMADelegate.RequestDataInfo {
    
    struct RTNBlazeIMAAdRequestParams: Encodable {
        
        let requestDataInfo: RequestDataInfo
        
        struct RequestDataInfo: Encodable {
            let extraInfo: BlazeFlutterContentExtraInfo
        }
        
    }
    
    var toFlutterModel: RTNBlazeIMAAdRequestParams {
        return .init(requestDataInfo: .init(
            extraInfo: requestDataInfo.extraInfo.toFlutterModel)
        )
    }
    
}

fileprivate extension BlazeSDK.BlazeIMAHandlerEventType {
    func toFlutterEventTypeParam() -> String {
        switch self {
        case .adStarted: return "adStarted"
        case .allAdsCompleted: return "allAdsCompleted"
        case .adClicked: return "adClicked"
        case .adCompleted: return "adCompleted"
        case .adLoaded: return "adLoaded"
        case .adPaused: return "adPaused"
        case .adResumed: return "adResumed"
        case .adSkipped: return "adSkipped"
        case .adTapped: return "adTapped"
        case .adFirstQuartile: return "adFirstQuartile"
        case .adMidpoint: return "adMidpoint"
        case .adThirdQuartile: return "adThirdQuartile"
        case .adRequested: return "adRequested"
        }
    }
}
