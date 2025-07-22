import BlazeSDK
import Flutter
import UIKit
import blaze_flutter_sdk

class BlazeFlutterSDKModule {

    struct MethodNameConstants {
        static let initSDK = "initSDK"
        static let playStory = "playStory"
        static let prepareStories = "prepareStories"
        static let playStories = "playStories"
        static let playMoment = "playMoment"
        static let prepareMoments = "prepareMoments"
        static let playMoments = "playMoments"
        static let playVideo = "playVideo"
        static let prepareVideos = "prepareVideos"
        static let playVideos = "playVideos"
        static let dismissPlayer = "dismissPlayer"
        static let setDoNotTrack = "setDoNotTrack"
        static let canHandleUniversalLink = "canHandleUniversalLink"
        static let updateGeoRestriction = "updateGeoRestriction"
        static let canHandlePushNotification = "canHandlePushNotification"
        static let handleNotificationPayload = "handleNotificationPayload"
        static let setExternalUserId = "setExternalUserId"
        static let handleUniversalLink = "handleUniversalLink"
        static let isInitialized = "isInitialized"
    }

    private var methodChannel: FlutterMethodChannel!
    private var asyncBridge: BlazeAsyncBridge? {
        return BlazeAsyncBridgeModule.getInstance()
    }

    // Match React Native implementation - store appOverridesCTAHandling setting
    private var appOverridesCTAHandling: Bool = false
    
//    let flutterSDKHelper = BlazeFlutterSDKHelper()

    static let shared = BlazeFlutterSDKModule()

    static func registerModule(messenger: FlutterBinaryMessenger) {
        shared.methodChannel = FlutterMethodChannel(
            name: "blaze-sdk-module",
            binaryMessenger: messenger)

        shared.methodChannel?.setMethodCallHandler { (call, result) in
            shared.handleMethodCall(call: call, result: result)
        }
    }

    private init() {
//        BlazeExternalModulesBinder.shared.registerFlutterSDKHelper(flutterSDKHelper)
    }

    private func handleMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case MethodNameConstants.initSDK:
            initSDK(call: call, result: result)
        case MethodNameConstants.playStory:
            playStory(call: call, result: result)
        case MethodNameConstants.prepareStories:
            prepareStories(call: call, result: result)
        case MethodNameConstants.playStories:
            playStories(call: call, result: result)
        case MethodNameConstants.playMoment:
            playMoment(call: call, result: result)
        case MethodNameConstants.prepareMoments:
            prepareMoments(call: call, result: result)
        case MethodNameConstants.playMoments:
            playMoments(call: call, result: result)
        case MethodNameConstants.playVideo:
            playVideo(call: call, result: result)
        case MethodNameConstants.prepareVideos:
            prepareVideos(call: call, result: result)
        case MethodNameConstants.playVideos:
            playVideos(call: call, result: result)
        case MethodNameConstants.dismissPlayer:
            dismissPlayer(call: call, result: result)
        case MethodNameConstants.setDoNotTrack:
            setDoNotTrack(call: call, result: result)
        case MethodNameConstants.canHandleUniversalLink:
            canHandleUniversalLink(call: call, result: result)
        case MethodNameConstants.updateGeoRestriction:
            updateGeoRestriction(call: call, result: result)
        case MethodNameConstants.canHandlePushNotification:
            canHandlePushNotification(call: call, result: result)
        case MethodNameConstants.handleNotificationPayload:
            handleNotificationPayload(call: call, result: result)
        case MethodNameConstants.setExternalUserId:
            setExternalUserId(call: call, result: result)
        case MethodNameConstants.handleUniversalLink:
            handleUniversalLink(call: call, result: result)
        case MethodNameConstants.isInitialized:
            isInitialized(call: call, result: result)
        default:
            handleError(
                result,
                errCode: "BlazeFlutterSDKModule",
                errMessage: "Method name \(call.method) hasn't been implemented!!")
        }
    }

    private func initSDK(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let apiKey = call.safeGetArg("apiKey", String.self) else {
            handleError(
                result,
                errCode: "initSDK",
                errMessage: "No apiKey param found")
            return
        }

        // Extract optional parameters
        let externalUserId = call.safeGetArg("externalUserId", String.self)
        let cachingSize = call.safeGetArg("cachingSize", Int.self)
        let cachingLevelString = call.safeGetArg("cachingLevel", String.self)
        let geoLocation = call.safeGetArg("geoLocation", String.self)

        // Match React Native implementation - read appOverridesCTAHandling from init params
        if let appOverridesCTAHandlingFromInit = call.safeGetArg(
            "appOverridesCTAHandling", Bool.self)
        {
            self.appOverridesCTAHandling = appOverridesCTAHandlingFromInit
        }

        let cachingLevel = cachingLevelString?.asCachingLevel ?? .Default

        Blaze.shared.initialize(
            apiKey: apiKey,
            externalUserId: externalUserId,
            cachingSize: cachingSize,
            prefetchingPolicy: cachingLevel,
            geo: geoLocation,
            delegate: globalDelegate
        ) { blazeResult in
            blazeResult.handleResult(result)
        }

        Blaze.shared.playerEntryPointDelegate = playerEntryPointDelegate

        // Set default player styles if provided
        let defaultStoryPlayerStyleMap = call.safeGetArg(
            "defaultStoryPlayerStyle", [String: AnyHashable].self)
        if let storyPlayerStyle = defaultStoryPlayerStyleMap.extractPlayerStoryStyle() {
            Blaze.shared.setDefaultStoryPlayerStyle(storyPlayerStyle)
        }

        let defaultMomentsPlayerStyleMap = call.safeGetArg(
            "defaultMomentsPlayerStyle", [String: AnyHashable].self)
        if let momentsPlayerStyle = defaultMomentsPlayerStyleMap.extractPlayerMomentsStyle() {
            Blaze.shared.setDefaultMomentsPlayerStyle(momentsPlayerStyle)
        }

        let defaultVideosPlayerStyleMap = call.safeGetArg(
            "defaultVideosPlayerStyle", [String: AnyHashable].self)
        if let videosPlayerStyle = defaultVideosPlayerStyleMap.extractPlayerVideosStyle() {
            Blaze.shared.setDefaultVideosPlayerStyle(videosPlayerStyle)
        }
    }

    private func playStory(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let storyId = call.safeGetArg("storyId", String.self) else {
            handleError(
                result,
                errCode: "playStory",
                errMessage: "No storyId param found")
            return
        }

        let pageId = call.safeGetArg("pageId", String.self)
        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerStoryStyle()
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint

        Blaze.shared.playStory(
            storyId,
            pageId: pageId,
            style: playerStyle,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func prepareStories(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dataSourceMap = call.safeGetArg("dataSource", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "prepareStories",
                errMessage: "No dataSource param found")
            return
        }

        guard let dataSource = dataSourceMap.toBlazeDataSourceType else {
            handleError(
                result,
                errCode: "prepareStories",
                errMessage: "Failed to extract dataSource")
            return
        }

        Blaze.shared.prepareStories(dataSourceType: dataSource) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func playStories(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dataSourceMap = call.safeGetArg("dataSource", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "playStories",
                errMessage: "No dataSource param found")
            return
        }

        guard let dataSource = dataSourceMap.toBlazeDataSourceType else {
            handleError(
                result,
                errCode: "playStories",
                errMessage: "Failed to extract dataSource")
            return
        }

        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerStoryStyle()
        let shouldOrderContentByReadStatus =
            call.safeGetArg("shouldOrderContentByReadStatus", Bool.self) ?? true
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint

        Blaze.shared.playStories(
            dataSourceType: dataSource,
            style: playerStyle,
            shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func playMoment(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let momentId = call.safeGetArg("momentId", String.self) else {
            handleError(
                result,
                errCode: "playMoment",
                errMessage: "No momentId param found")
            return
        }

        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerMomentsStyle()
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint

        Blaze.shared.playMoment(
            for: momentId,
            style: playerStyle,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func prepareMoments(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dataSourceMap = call.safeGetArg("dataSource", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "prepareMoments",
                errMessage: "No dataSource param found")
            return
        }

        guard let dataSource = dataSourceMap.toBlazeDataSourceType else {
            handleError(
                result,
                errCode: "prepareMoments",
                errMessage: "Failed to extract dataSource")
            return
        }

        Blaze.shared.prepareMoments(dataSourceType: dataSource) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func playMoments(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dataSourceMap = call.safeGetArg("dataSource", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "playMoments",
                errMessage: "No dataSource param found")
            return
        }

        guard let dataSource = dataSourceMap.toBlazeDataSourceType else {
            handleError(
                result,
                errCode: "playMoments",
                errMessage: "Failed to extract dataSource")
            return
        }

        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerMomentsStyle()
        let shouldOrderContentByReadStatus =
            call.safeGetArg("shouldOrderContentByReadStatus", Bool.self) ?? true
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint

        Blaze.shared.playMoments(
            dataSourceType: dataSource,
            style: playerStyle,
            shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func playVideo(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let videoId = call.safeGetArg("videoId", String.self) else {
            handleError(
                result,
                errCode: "playVideo",
                errMessage: "No videoId param found")
            return
        }

        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerVideosStyle()
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint

        Blaze.shared.playVideo(
            for: videoId,
            style: playerStyle,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func prepareVideos(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dataSourceMap = call.safeGetArg("dataSource", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "prepareVideos",
                errMessage: "No dataSource param found")
            return
        }

        guard let dataSource = dataSourceMap.toBlazeDataSourceType else {
            handleError(
                result,
                errCode: "prepareVideos",
                errMessage: "Failed to extract dataSource")
            return
        }

        Blaze.shared.prepareVideos(dataSourceType: dataSource) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func playVideos(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dataSourceMap = call.safeGetArg("dataSource", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "playVideos",
                errMessage: "No dataSource param found")
            return
        }

        guard let dataSource = dataSourceMap.toBlazeDataSourceType else {
            handleError(
                result,
                errCode: "playVideos",
                errMessage: "Failed to extract dataSource")
            return
        }

        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerVideosStyle()
        let shouldOrderContentByReadStatus =
            call.safeGetArg("shouldOrderContentByReadStatus", Bool.self) ?? true
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint

        Blaze.shared.playVideos(
            dataSourceType: dataSource,
            style: playerStyle,
            shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func dismissPlayer(call: FlutterMethodCall, result: @escaping FlutterResult) {
        DispatchQueue.main.async {
            Blaze.shared.dismissCurrentPlayer {
                result(nil)
            }
        }
    }

    private func setDoNotTrack(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let doNotTrackUser = call.safeGetArg("doNotTrackUser", Bool.self) else {
            handleError(
                result,
                errCode: "setDoNotTrack",
                errMessage: "No doNotTrackUser param found")
            return
        }

        Blaze.shared.doNotTrackUser = doNotTrackUser
        result(nil)
    }

    private func canHandleUniversalLink(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let link = call.safeGetArg("link", String.self) else {
            handleError(
                result,
                errCode: "canHandleUniversalLink",
                errMessage: "No link param found")
            return
        }

        let canHandle = Blaze.shared.canHandleUniversalLink(link)
        result(canHandle)
    }

    private func updateGeoRestriction(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let geoLocation = call.safeGetArg("geoLocation", String.self)

        do {
            try Blaze.shared.updateGeo(geoLocation)
            result(nil)
        } catch {
            handleError(
                result,
                errCode: "updateGeoRestriction",
                errMessage: "\(error)")
        }
    }

    private func canHandlePushNotification(call: FlutterMethodCall, result: @escaping FlutterResult)
    {
        guard let payload = call.safeGetArg("payload", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "canHandlePushNotification",
                errMessage: "No payload param found")
            return
        }

        let canHandle = Blaze.shared.canHandlePushNotification(payload)
        result(canHandle)
    }

    private func handleNotificationPayload(call: FlutterMethodCall, result: @escaping FlutterResult)
    {
        guard let payload = call.safeGetArg("payload", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "handleNotificationPayload",
                errMessage: "No payload param found")
            return
        }

        Blaze.shared.handlePushNotificationPayload(payload) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func setExternalUserId(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let userId = call.safeGetArg("externalUserId", String.self)

        Blaze.shared.setExternalUserId(userId) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func handleUniversalLink(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let link = call.safeGetArg("link", String.self) else {
            handleError(
                result,
                errCode: "handleUniversalLink",
                errMessage: "No link param found")
            return
        }

        Blaze.shared.handleUniversalLink(link) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func isInitialized(call: FlutterMethodCall, result: @escaping FlutterResult) {
        result(Blaze.shared.isInitialized)
    }

    // ======================================
    // DELEGATE IMPLEMENTATIONS - Always registered like GAM
    // ======================================

    // Global delegate implementation that communicates with Flutter - always active
    lazy var globalDelegate: BlazeSDKDelegate = .init(
        onEventTriggered: { [weak self] eventData in
            self?.onGlobalEventTriggered(eventData)
        },

        onErrorThrown: { [weak self] error in
            self?.onErrorThrown(error)
        }
    )

    // Shared delegate handler for entry point delegate
    private lazy var sharedDelegateHandler: BlazeSharedDelegateHandler = {
        return BlazeSharedDelegateHandler()
    }()

    // Player entry point delegate implementation that communicates with Flutter - always active
    lazy var playerEntryPointDelegate: BlazePlayerEntryPointDelegate = .init(
        onDataLoadStarted: { [weak self] params in
            self?.onDataLoadStarted(playerType: params.playerType,
                                    sourceId: params.sourceId)
        },

        onDataLoadComplete: { [weak self] params in
            self?.onDataLoadComplete(
                playerType: params.playerType,
                sourceId: params.sourceId,
                itemsCount: params.itemsCount,
                result: params.result
            )
        },

        onPlayerDidAppear: { [weak self] params in
            self?.onPlayerDidAppear(
                playerType: params.playerType,
                sourceId: params.sourceId
            )
        },

        onPlayerDidDismiss: { [weak self] params in
            self?.onPlayerDidDismiss(
                playerType: params.playerType,
                sourceId: params.sourceId
            )
        },

        onTriggerCTA: { [weak self] params in
            return self?.onTriggerCTA(
                playerType: params.playerType,
                sourceId: params.sourceId,
                actionType: params.actionType,
                actionParam: params.actionParam
            ) ?? false
        },

        onTriggerPlayerBodyTextLink: { [weak self] params in
            return self?.onTriggerPlayerBodyTextLink(
                playerType: params.playerType,
                sourceId: params.sourceId,
                actionParam: params.actionParam
            ) ?? .deeplink
        },

        onPlayerEventTriggered: { [weak self] params in
            self?.onPlayerEventTriggered(
                playerType: params.playerType,
                sourceId: params.sourceId,
                event: params.event
            )
        }
    )

    // ======================================
    // DELEGATE IMPLEMENTATION METHODS
    // ======================================

    private func onErrorThrown(_ error: BlazeSDK.BlazeError) {
        let params: [String: String] = [
            "domain": "\(error.domain)",
            "reason": error.failureReason ?? "unknown_error",
            "message": error.errorMessage,
        ]

        asyncBridge?.sendEvent("Blaze.onErrorThrown", params: params)
    }

    private func onGlobalEventTriggered(_ eventData: BlazeSDK.BlazeAnalytics) {
        // Use the native BlazeSDK's comprehensive analytics JSON (matches React Native format)
        guard let eventJsonString = eventData.asJsonString else {
            return
        }

        asyncBridge?.sendEvent(
            "Blaze.onEventTriggered",
            params: ["eventData": eventJsonString]
        )
    }

    private func onDataLoadStarted(
        playerType: BlazePlayerType,
        sourceId: String?
    ) {
        sharedDelegateHandler.onDataLoadStarted(
            playerType: playerType,
            sourceId: sourceId
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onDataLoadStarted", params: params)
        }
    }

    private func onDataLoadComplete(
        playerType: BlazePlayerType,
        sourceId: String?,
        itemsCount: Int,
        result: BlazeResult
    ) {
        sharedDelegateHandler.onDataLoadComplete(
            playerType: playerType,
            sourceId: sourceId,
            itemsCount: itemsCount,
            result: result
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onDataLoadComplete", params: params)
        }
    }

    private func onPlayerDidAppear(
        playerType: BlazePlayerType,
        sourceId: String?
    ) {
        sharedDelegateHandler.onPlayerDidAppear(
            playerType: playerType,
            sourceId: sourceId
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onPlayerDidAppear", params: params)
        }
    }

    private func onPlayerDidDismiss(
        playerType: BlazePlayerType,
        sourceId: String?
    ) {
        sharedDelegateHandler.onPlayerDidDismiss(
            playerType: playerType,
            sourceId: sourceId
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onPlayerDidDismiss", params: params)
        }
    }

    private func onTriggerCTA(
        playerType: BlazePlayerType,
        sourceId: String?,
        actionType: BlazeCTAActionType,
        actionParam: String
    ) -> Bool {
        return sharedDelegateHandler.onTriggerCTA(
            playerType: playerType,
            sourceId: sourceId,
            actionType: actionType,
            actionParam: actionParam,
            appOverridesCTAHandling: appOverridesCTAHandling
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onTriggerCTA", params: params)
        }
    }

    private func onTriggerPlayerBodyTextLink(
        playerType: BlazePlayerType,
        sourceId: String?,
        actionParam: String
    ) -> BlazeLinkActionHandleType {
        return sharedDelegateHandler.onTriggerPlayerBodyTextLink(
            playerType: playerType,
            sourceId: sourceId,
            actionParam: actionParam
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onTriggerPlayerBodyTextLink", params: params)
        }
    }

    private func onPlayerEventTriggered(
        playerType: BlazePlayerType,
        sourceId: String?,
        event: BlazePlayerEvent
    ) {
        sharedDelegateHandler.onPlayerEventTriggered(
            playerType: playerType,
            sourceId: sourceId,
            event: event
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onPlayerEventTriggered", params: params)
        }
    }
}

// ======================================
// TYPE CONVERSION EXTENSIONS FOR DELEGATES
// ======================================

extension BlazePlayerType {
    func toFlutterValue() -> String {
        switch self {
        case .moments:
            return "moments"
        case .stories:
            return "stories"
        case .videos:
            return "videos"
        }
    }
}

extension BlazeCTAActionType {
    func toFlutterValue() -> String {
        switch self {
        case .deeplink:
            return "Deeplink"
        case .web:
            return "Web"
        }
    }
}
