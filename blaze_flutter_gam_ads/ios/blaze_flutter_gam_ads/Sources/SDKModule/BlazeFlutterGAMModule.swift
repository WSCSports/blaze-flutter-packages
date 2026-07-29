
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
        static let enableBannerAds = "enableBannerAds"
        static let disableBannerAds = "disableBannerAds"
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
    
    lazy var customNativeAdsDelegate: BlazeGAMCustomNativeAdsDelegate = .init(
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
    
    lazy var bannerAdsDelegate: BlazeGAMBannerAdsDelegate = .init(
        onGAMBannerAdsAdError: { [weak self] params in
            self?.onGAMBannerAdsAdError(
                error: params.error,
                adData: params.adData
            )
        },
        
        onGAMBannerAdsAdEvent: { [weak self] params in
            self?.onGAMBannerAdsAdEvent(eventType: params.eventType,
                                        adData: params.adData)
        }
    )
    
    private func handleMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case MethodNameConstants.enableCustomNativeAds:
            enableCustomNativeAds(call: call, result: result)
        case MethodNameConstants.disableCustomNativeAds:
            disableCustomNativeAds(call: call, result: result)
        case MethodNameConstants.enableBannerAds:
            enableBannerAds(call: call, result: result)
        case MethodNameConstants.disableBannerAds:
            disableBannerAds(call: call, result: result)
            
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
                delegate: customNativeAdsDelegate
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
    
    private func enableBannerAds(call: FlutterMethodCall, result: @escaping FlutterResult) {
        BlazeGAM.shared.enableBannerAds(delegate: bannerAdsDelegate)
        result(nil)
    }
    
    private func disableBannerAds(call: FlutterMethodCall, result: @escaping FlutterResult) {
        BlazeGAM.shared.disableBannerAds()
        result(nil)
    }
    
}

// MARK: - Custom Native Ads implementation.

extension BlazeFlutterGAMModule {
    
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

// MARK: - Banner Ads implementation.

extension BlazeFlutterGAMModule {
    
    func onGAMBannerAdsAdError(error: Error,
                               adData: BlazeGAMBannerAdsAdData) {
        struct Params: Codable {
            let errorMessage: String
        }
        
        asyncBridge?.sendEvent(
            "BlazeGAM.onGAMBannerAdsAdError",
            params: Params(
                errorMessage: error.localizedDescription
            )
        )
    }

    func onGAMBannerAdsAdEvent(eventType: BlazeGAMBannerHandlerEventType,
                               adData: BlazeGAMBannerAdsAdData) {
        struct Params: Codable {
            let eventType: String
        }
        
        asyncBridge?.sendEvent(
            "BlazeGAM.onGAMBannerAdsAdEvent",
            params: Params(
                eventType: eventType.toReactEventTypeParam
            )
        )
    }
    
}

fileprivate extension BlazeSDK.BlazeGAMBannerHandlerEventType {
    
    var toReactEventTypeParam: String {
        switch self {
        case .adRequested:
            return "adRequested"
        case .adLoaded:
            return "adLoaded"
        case .adImpression:
            return "adImpression"
        case .adClicked:
            return "adClicked"
        }
    }
    
}
