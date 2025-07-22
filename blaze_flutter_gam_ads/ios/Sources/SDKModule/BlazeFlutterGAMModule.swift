
import Flutter
import UIKit
import BlazeGAM
import BlazeSDK
import blaze_flutter_sdk
import GoogleMobileAds

class BlazeFlutterGAMModule {
    
    struct MethodNameConstants {
        static let enableCustomNativeAds = "enableCustomNativeAds"
        static let disableCustomNativeAds = "disableCustomNativeAds"
    }
    
    private var methodChannel: FlutterMethodChannel!
    private var asyncBridge: BlazeAsyncBridge? {
        return BlazeAsyncBridgeModule.getInstance()
    }
    
    static let shared = BlazeFlutterGAMModule()

    static func registerModule(messenger: FlutterBinaryMessenger) {
        shared.methodChannel = FlutterMethodChannel(name: "blaze-gam-module",
                                                    binaryMessenger: messenger)

        shared.methodChannel?.setMethodCallHandler { (call, result) in
            shared.handleMethodCall(call: call, result: result)
        }
    }
    
    private init() {
        
    }

    // GAM delegate that communicates with Flutter
    lazy var delegate: BlazeGAMCustomNativeAdsDelegate = .init(
        onGAMAdError: { [weak self] error in
            self?.onGAMAdError(error)
        },
        
        onGAMAdEvent: { [weak self] params in
            self?.onGAMAdEvent(eventType: params.eventType, adData: params.adData)
        },
        
        customGAMTargetingProperties: { [weak self] params in
            return await self?.customGAMTargetingProperties(params: params) ?? [:]
        },
        
        publisherProvidedId: { [weak self] params in
            return await self?.publisherProvidedId(params: params)
        },
        
        networkExtras: { [weak self] params in
            return await self?.networkExtras(params: params)
        }
    )

    private func handleMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case MethodNameConstants.enableCustomNativeAds:
            enableCustomNativeAds(call: call, result: result)
        case MethodNameConstants.disableCustomNativeAds:
            disableCustomNativeAds(call: call, result: result)
        default:
            handleError(result,
                        errCode: "BlazeFlutterGAMModule",
                        errMessage: "Method name \(call.method) hasn't been implemented!!")
        }
    }
    
    private func enableCustomNativeAds(call: FlutterMethodCall, result: @escaping FlutterResult) {
        do {
            // Parse default ad config if provided
            var defaultConfig: BlazeGAMCustomNativeAdsDefaultConfig? = nil
            
            if let arguments = call.arguments as? [String: Any],
               let defaultAdConfigDict = arguments["defaultAdConfig"] as? [String: Any] {
                defaultConfig = try parseDefaultAdConfig(from: defaultAdConfigDict)
            }
            
            // Enable GAM with delegate and config
            BlazeGAM.shared.enableCustomNativeAds(
                defaultCustomNativeAdsConfig: defaultConfig,
                delegate: delegate
            )
            
            result(nil)
        } catch {
            handleError(result,
                        errCode: "BlazeFlutterGAMModule",
                        errMessage: "Error enabling GAM custom native ads: \(error)")
        }
    }
    
    private func disableCustomNativeAds(call: FlutterMethodCall, result: @escaping FlutterResult) {
        BlazeGAM.shared.disableCustomNativeAds()
        result(nil)
    }
    
    // Helper to parse default ad config from dictionary
    private func parseDefaultAdConfig(from dict: [String: Any]) throws -> BlazeGAMCustomNativeAdsDefaultConfig? {
        guard let adUnit = dict["adUnit"] as? String,
              let templateId = dict["templateId"] as? String else {
            return nil
        }
        
        return BlazeGAMCustomNativeAdsDefaultConfig(
            adUnit: adUnit,
            templateId: templateId
        )
    }
    
    // MARK: - Delegate Implementation Methods
    
    private func onGAMAdError(_ error: Error) {
        asyncBridge?.sendEvent(
            "BlazeGAM.onAdError",
            params: ["errorMessage": error.localizedDescription]
        )
    }
    
    private func onGAMAdEvent(eventType: BlazeGoogleCustomNativeAdsHandlerEventType, adData: BlazeCustomNativeAdData) {
        asyncBridge?.sendEvent(
            "BlazeGAM.onAdEvent",
            params: ["eventType": eventType.toFlutterEventTypeParam()]
        )
    }
    
    private func customGAMTargetingProperties(params: BlazeGAMCustomNativeAdsDelegate.RequestDataInfo) async -> [String: String] {
        guard let asyncBridge = asyncBridge else { return [:] }
        
        do {
            let result: [String: String] = try await asyncBridge.callDartMethod(
                "BlazeGAM.customGAMTargetingProperties",
                params: params.toFlutterModel()
            )
            return result
        } catch {
            print("Error customGAMTargetingProperties: \(error)")
            return [:]
        }
    }
    
    private func publisherProvidedId(params: BlazeGAMCustomNativeAdsDelegate.RequestDataInfo) async -> String? {
        guard let asyncBridge = asyncBridge else { return nil }
        
        do {
            let result: String? = try await asyncBridge.callDartMethod(
                "BlazeGAM.publisherProvidedId",
                params: params.toFlutterModel()
            )
            return result
        } catch {
            print("Error publisherProvidedId: \(error)")
            return nil
        }
    }
    
    private func networkExtras(params: BlazeGAMCustomNativeAdsDelegate.RequestDataInfo) async -> Extras? {
        guard let asyncBridge = asyncBridge else { return nil }
        
        do {
            let result: [String: BlazeCodableValue] = try await asyncBridge.callDartMethod(
                "BlazeGAM.networkExtras",
                params: params.toFlutterModel()
            )
            let extras = Extras()
            // Use the existing extension to convert BlazeCodableValue to AnyHashable
            extras.additionalParameters = result.anyHashableDict
            return extras
        } catch {
            print("Error networkExtras: \(error)")
            return nil
        }
    }
    
}

// MARK: - Data Models

// Data structures for Flutter model - matching React Native structure
fileprivate struct BlazeFlutterGAMCustomNativeAdRequestParams: Encodable {
    let requestDataInfo: RequestDataInfo
    
    struct RequestDataInfo: Encodable {
        let adUnitId: String
        let templateId: String
        let adContext: [String: String]
        let extraInfo: BlazeFlutterContentExtraInfo
    }
}

// MARK: - Extensions

fileprivate extension BlazeGAMCustomNativeAdsDelegate.RequestDataInfo {
    func toFlutterModel() -> BlazeFlutterGAMCustomNativeAdRequestParams {
        return BlazeFlutterGAMCustomNativeAdRequestParams(
            requestDataInfo: BlazeFlutterGAMCustomNativeAdRequestParams.RequestDataInfo(
                adUnitId: self.requestDataInfo.adUnitId,
                templateId: self.requestDataInfo.templateId,
                adContext: self.requestDataInfo.adContext,
                extraInfo: self.requestDataInfo.extraInfo.toFlutterModel
            )
        )
    }
}

fileprivate extension BlazeGoogleCustomNativeAdsHandlerEventType {
    func toFlutterEventTypeParam() -> String {
        switch self {
        case .openedAd: return "openedAd"
        case .adPageStart: return "adPageStart"
        case .adPageFirstQuarter: return "adPageFirstQuarter"
        case .adPageMid: return "adPageMid"
        case .adPageThird: return "adPageThird"
        case .adPageComplete: return "adPageComplete"
        case .pausedAdPage: return "pausedAdPage"
        case .resumedAdPage: return "resumedAdPage"
        case .ctaClicked: return "ctaClicked"
        }
    }
}
