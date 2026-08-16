import BlazeSDK
import Flutter
import UIKit

class BlazeFlutterSDKModule {

    struct MethodNameConstants {
        static let initSDK = "initSDK"
        static let playStory = "playStory"
        static let prepareStories = "prepareStories"
        static let playStories = "playStories"
        static let setDefaultStoriesPlaybackConfiguration = "setDefaultStoriesPlaybackConfiguration"
        static let getDefaultStoriesPlaybackConfiguration = "getDefaultStoriesPlaybackConfiguration"
        static let playMoment = "playMoment"
        static let prepareMoments = "prepareMoments"
        static let playMoments = "playMoments"
        static let appendMomentsToPlayer = "appendMomentsToPlayer"
        static let setDefaultMomentsPlaybackConfiguration = "setDefaultMomentsPlaybackConfiguration"
        static let getDefaultMomentsPlaybackConfiguration = "getDefaultMomentsPlaybackConfiguration"
        static let playVideo = "playVideo"
        static let prepareVideos = "prepareVideos"
        static let playVideos = "playVideos"
        static let setDefaultVideosPlaybackConfiguration = "setDefaultVideosPlaybackConfiguration"
        static let getDefaultVideosPlaybackConfiguration = "getDefaultVideosPlaybackConfiguration"
        static let dismissPlayer = "dismissPlayer"
        static let pauseCurrentPlayer = "pauseCurrentPlayer"
        static let resumeCurrentPlayer = "resumeCurrentPlayer"
        static let setDoNotTrack = "setDoNotTrack"
        static let setDisableAnalytics = "setDisableAnalytics"
        static let setDisableUserActivity = "setDisableUserActivity"
        static let clearLocalUserActivity = "clearLocalUserActivity"
        static let hostingAppContextGetValue = "hostingAppContextGetValue"
        static let hostingAppContextGetContext = "hostingAppContextGetContext"
        static let hostingAppContextSetValue = "hostingAppContextSetValue"
        static let hostingAppContextSetContext = "hostingAppContextSetContext"
        static let hostingAppContextDeleteValue = "hostingAppContextDeleteValue"
        static let setPreferredLanguage = "setPreferredLanguage"
        static let setPlayerSoundState = "setPlayerSoundState"
        static let isMuted = "isMuted"
        static let showSearchScreen = "showSearchScreen"
        static let setFollowedEntities = "setFollowedEntities"
        static let insertFollowedEntities = "insertFollowedEntities"
        static let removeFollowedEntities = "removeFollowedEntities"
        static let getFollowedEntities = "getFollowedEntities"
        static let stopActiveCastingSession = "stopActiveCastingSession"
        static let stopActivePiPSession = "stopActivePiPSession"
        static let isPiPActive = "isPiPActive"
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

    private static let playbackModificationMethodName = "Blaze.GlobalDelegate.playbackModificationHandler"

    // Wire-format structs for the playback modification request/response bridged to Dart.
    private struct PlaybackModificationRequest: Encodable {
        let originalURL: String
    }

    private struct PlaybackModificationResponse: Decodable {
        let modifiedURL: String
    }

    // store appOverridesCTAHandling setting
    private var appOverridesCTAHandling: Bool = false

    let flutterSDKHelper = BlazeFlutterSDKHelper()

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
        BlazeExternalModulesBinder.shared.registerFlutterSDKHelper(flutterSDKHelper)
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
        case MethodNameConstants.setDefaultStoriesPlaybackConfiguration:
            setDefaultStoriesPlaybackConfiguration(call: call, result: result)
        case MethodNameConstants.getDefaultStoriesPlaybackConfiguration:
            getDefaultStoriesPlaybackConfiguration(call: call, result: result)
        case MethodNameConstants.playMoment:
            playMoment(call: call, result: result)
        case MethodNameConstants.prepareMoments:
            prepareMoments(call: call, result: result)
        case MethodNameConstants.playMoments:
            playMoments(call: call, result: result)
        case MethodNameConstants.appendMomentsToPlayer:
            appendMomentsToPlayer(call: call, result: result)
        case MethodNameConstants.setDefaultMomentsPlaybackConfiguration:
            setDefaultMomentsPlaybackConfiguration(call: call, result: result)
        case MethodNameConstants.getDefaultMomentsPlaybackConfiguration:
            getDefaultMomentsPlaybackConfiguration(call: call, result: result)
        case MethodNameConstants.playVideo:
            playVideo(call: call, result: result)
        case MethodNameConstants.prepareVideos:
            prepareVideos(call: call, result: result)
        case MethodNameConstants.playVideos:
            playVideos(call: call, result: result)
        case MethodNameConstants.setDefaultVideosPlaybackConfiguration:
            setDefaultVideosPlaybackConfiguration(call: call, result: result)
        case MethodNameConstants.getDefaultVideosPlaybackConfiguration:
            getDefaultVideosPlaybackConfiguration(call: call, result: result)
        case MethodNameConstants.dismissPlayer:
            dismissPlayer(call: call, result: result)
        case MethodNameConstants.pauseCurrentPlayer:
            pauseCurrentPlayer(call: call, result: result)
        case MethodNameConstants.resumeCurrentPlayer:
            resumeCurrentPlayer(call: call, result: result)
        case MethodNameConstants.setDoNotTrack:
            setDoNotTrack(call: call, result: result)
        case MethodNameConstants.setDisableAnalytics:
            setDisableAnalytics(call: call, result: result)
        case MethodNameConstants.setDisableUserActivity:
            setDisableUserActivity(call: call, result: result)
        case MethodNameConstants.clearLocalUserActivity:
            clearLocalUserActivity(call: call, result: result)
        case MethodNameConstants.hostingAppContextGetValue:
            hostingAppContextGetValue(call: call, result: result)
        case MethodNameConstants.hostingAppContextGetContext:
            hostingAppContextGetContext(call: call, result: result)
        case MethodNameConstants.hostingAppContextSetValue:
            hostingAppContextSetValue(call: call, result: result)
        case MethodNameConstants.hostingAppContextSetContext:
            hostingAppContextSetContext(call: call, result: result)
        case MethodNameConstants.hostingAppContextDeleteValue:
            hostingAppContextDeleteValue(call: call, result: result)
        case MethodNameConstants.setPreferredLanguage:
            setPreferredLanguage(call: call, result: result)
        case MethodNameConstants.setPlayerSoundState:
            setPlayerSoundState(call: call, result: result)
        case MethodNameConstants.isMuted:
            isMuted(call: call, result: result)
        case MethodNameConstants.showSearchScreen:
            showSearchScreen(call: call, result: result)
        case MethodNameConstants.setFollowedEntities:
            setFollowedEntities(call: call, result: result)
        case MethodNameConstants.insertFollowedEntities:
            insertFollowedEntities(call: call, result: result)
        case MethodNameConstants.removeFollowedEntities:
            removeFollowedEntities(call: call, result: result)
        case MethodNameConstants.getFollowedEntities:
            getFollowedEntities(call: call, result: result)
        case MethodNameConstants.stopActiveCastingSession:
            stopActiveCastingSession(call: call, result: result)
        case MethodNameConstants.stopActivePiPSession:
            stopActivePiPSession(call: call, result: result)
        case MethodNameConstants.isPiPActive:
            isPiPActive(call: call, result: result)
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

        // Read appOverridesCTAHandling from init params
        if let appOverridesCTAHandlingFromInit = call.safeGetArg(
            "appOverridesCTAHandling", Bool.self)
        {
            self.appOverridesCTAHandling = appOverridesCTAHandlingFromInit
        }

        let cachingLevel = cachingLevelString?.asCachingLevel ?? .Default
        let forceLayoutDirection =
            call.safeGetArg("forceLayoutDirection", String.self)?.asBlazeLayoutDirection

        Blaze.shared.initialize(
            apiKey: apiKey,
            externalUserId: externalUserId,
            cachingSize: cachingSize,
            prefetchingPolicy: cachingLevel,
            geo: geoLocation,
            forceLayoutDirection: forceLayoutDirection,
            delegate: globalDelegate
        ) { blazeResult in
            blazeResult.handleResult(result)
        }

        Blaze.shared.playerEntryPointDelegate = playerEntryPointDelegate
        Blaze.shared.followEntitiesManager.delegate = self

        Blaze.shared.castingManager.delegate = BlazeCastingDelegate(
            onCastingStateChanged: { [weak self] params in
                self?.onCastingStateChanged(
                    playerType: params.playerType,
                    sourceId: params.sourceId,
                    newState: params.newState
                )
            }
        )

        Blaze.shared.pipManager.delegate = BlazePipDelegate(
            onPiPStateChanged: { [weak self] params in
                self?.onPiPStateChanged(
                    playerType: params.playerType,
                    sourceId: params.sourceId,
                    newState: params.newState
                )
            }
        )

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
        let playbackConfiguration =
            call.safeGetArg("playbackConfiguration", [String: AnyHashable].self)
            .extractStoriesPlaybackConfiguration()
        let eventId = call.safeGetArg("eventId", String.self)
        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.playStory(
            storyId,
            pageId: pageId,
            sourceId: sourceId,
            eventId: eventId,
            style: playerStyle,
            playbackConfiguration: playbackConfiguration,
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

        let entryContentId = call.safeGetArg("entryContentId", String.self)
        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.prepareStories(
            dataSourceType: dataSource,
            entryContentId: entryContentId,
            sourceId: sourceId
        ) {
            blazeResult in
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

        let entryContentId = call.safeGetArg("entryContentId", String.self)
        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerStoryStyle()
        let shouldOrderContentByReadStatus =
            call.safeGetArg("shouldOrderContentByReadStatus", Bool.self) ?? true
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint
        let playbackConfiguration =
            call.safeGetArg("playbackConfiguration", [String: AnyHashable].self)
            .extractStoriesPlaybackConfiguration()
        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.playStories(
            dataSourceType: dataSource,
            entryContentId: entryContentId,
            sourceId: sourceId,
            style: playerStyle,
            playbackConfiguration: playbackConfiguration,
            shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func setDefaultStoriesPlaybackConfiguration(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        guard
            let playbackConfig = call.safeGetArg(
                "playbackConfiguration", [String: AnyHashable].self
            ).extractStoriesPlaybackConfiguration()
        else {
            handleError(
                result,
                errCode: "setDefaultStoriesPlaybackConfiguration",
                errMessage: "Invalid stories playback configuration")
            return
        }

        Blaze.shared.setDefaultStoriesPlaybackConfiguration(playbackConfig)
        result(nil)
    }

    private func getDefaultStoriesPlaybackConfiguration(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        let config = Blaze.shared.getDefaultStoriesPlaybackConfiguration()
        let configMap: [String: Any] = [
            "bufferingSpinnerDelayMs": Int((config.bufferingSpinnerDelay * 1000).rounded()),
            "ads": ["enablePreroll": config.ads.enablePreroll],
        ]
        result(configMap)
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

        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.playMoment(
            for: momentId,
            sourceId: sourceId,
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

        let entryContentId = call.safeGetArg("entryContentId", String.self)
        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.prepareMoments(
            dataSourceType: dataSource,
            entryContentId: entryContentId,
            sourceId: sourceId
        ) {
            blazeResult in
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

        let entryContentId = call.safeGetArg("entryContentId", String.self)
        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerMomentsStyle()
        let shouldOrderContentByReadStatus =
            call.safeGetArg("shouldOrderContentByReadStatus", Bool.self) ?? true
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint

        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.playMoments(
            dataSourceType: dataSource,
            entryContentId: entryContentId,
            sourceId: sourceId,
            style: playerStyle,
            shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func appendMomentsToPlayer(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let sourceId = call.safeGetArg("sourceId", String.self) else {
            handleError(
                result,
                errCode: "appendMomentsToPlayer",
                errMessage: "Missing sourceId in appendMomentsToPlayer options")
            return
        }

        guard let dataSourceMap = call.safeGetArg("dataSource", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "appendMomentsToPlayer",
                errMessage: "No dataSource param found")
            return
        }

        guard let dataSource = dataSourceMap.toBlazeDataSourceType else {
            handleError(
                result,
                errCode: "appendMomentsToPlayer",
                errMessage: "Failed to extract dataSource")
            return
        }

        let shouldOrderContentByReadStatus =
            call.safeGetArg("shouldOrderContentByReadStatus", Bool.self) ?? false

        Blaze.shared.appendMomentsToPlayer(
            sourceId: sourceId,
            dataSourceType: dataSource,
            shouldOrderContentByReadStatus: shouldOrderContentByReadStatus
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func setDefaultMomentsPlaybackConfiguration(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        guard
            let playbackConfig = call.safeGetArg(
                "playbackConfiguration", [String: AnyHashable].self
            ).extractMomentsPlaybackConfiguration()
        else {
            handleError(
                result,
                errCode: "setDefaultMomentsPlaybackConfiguration",
                errMessage: "Invalid moments playback configuration")
            return
        }

        Blaze.shared.setDefaultMomentsPlaybackConfiguration(playbackConfig)
        result(nil)
    }

    private func getDefaultMomentsPlaybackConfiguration(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        let config = Blaze.shared.getDefaultMomentsPlaybackConfiguration()
        var configMap: [String: Any] = [:]
        switch config.loopBehavior {
        case .infiniteLoop:
            configMap["loopBehavior"] = ["type": "infiniteLoop"]
        case .loopAndAdvance(let numberOfPlays):
            configMap["loopBehavior"] = [
                "type": "loopAndAdvance",
                "numberOfPlays": numberOfPlays,
            ]
        }
        configMap["bufferingSpinnerDelayMs"] = Int((config.bufferingSpinnerDelay * 1000).rounded())
        result(configMap)
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
        let playbackConfiguration =
            call.safeGetArg("playbackConfiguration", [String: AnyHashable].self)
            .extractVideosPlaybackConfiguration()

        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.playVideo(
            for: videoId,
            sourceId: sourceId,
            style: playerStyle,
            playbackConfiguration: playbackConfiguration,
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

        let entryContentId = call.safeGetArg("entryContentId", String.self)
        let videosFilterParams =
            call.safeGetArg("videosFilterParams", [String: AnyHashable].self)
            .extractVideosFilterParams()

        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.prepareVideos(
            dataSourceType: dataSource,
            videosFilterParams: videosFilterParams,
            entryContentId: entryContentId,
            sourceId: sourceId
        ) {
            blazeResult in
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

        let entryContentId = call.safeGetArg("entryContentId", String.self)
        let playerStyleMap = call.safeGetArg("playerStyle", [String: AnyHashable].self)
        let playerStyle = playerStyleMap.extractPlayerVideosStyle()
        let shouldOrderContentByReadStatus =
            call.safeGetArg("shouldOrderContentByReadStatus", Bool.self) ?? true
        let triggerSource =
            call.safeGetArg("triggerSource", String.self)?.asEntryPointTriggerSource ?? .entryPoint
        let playbackConfiguration =
            call.safeGetArg("playbackConfiguration", [String: AnyHashable].self)
            .extractVideosPlaybackConfiguration()
        let videosFilterParams =
            call.safeGetArg("videosFilterParams", [String: AnyHashable].self)
            .extractVideosFilterParams()

        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.playVideos(
            dataSourceType: dataSource,
            videosFilterParams: videosFilterParams,
            entryContentId: entryContentId,
            sourceId: sourceId,
            style: playerStyle,
            playbackConfiguration: playbackConfiguration,
            shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
            triggerSource: triggerSource
        ) { blazeResult in
            blazeResult.handleResult(result)
        }
    }

    private func setDefaultVideosPlaybackConfiguration(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        guard
            let playbackConfig = call.safeGetArg(
                "playbackConfiguration", [String: AnyHashable].self
            ).extractVideosPlaybackConfiguration()
        else {
            handleError(
                result,
                errCode: "setDefaultVideosPlaybackConfiguration",
                errMessage: "Invalid playback configuration")
            return
        }

        Blaze.shared.setDefaultVideosPlaybackConfiguration(playbackConfig)
        result(nil)
    }

    private func getDefaultVideosPlaybackConfiguration(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        let config = Blaze.shared.getDefaultVideosPlaybackConfiguration()
        let configMap: [String: Any] = [
            "multiAspectRatio": config.multiAspectRatio,
            "shouldOpenInLandscape": config.shouldOpenInLandscape,
            "pipConfiguration": [
                "enterPipOnAppBackground": config.pipConfiguration.enterPipOnAppBackground
            ],
            "bufferingSpinnerDelayMs": Int((config.bufferingSpinnerDelay * 1000).rounded()),
        ]
        result(configMap)
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

    private func setDisableAnalytics(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let disableAnalytics = call.safeGetArg("disableAnalytics", Bool.self) else {
            handleError(
                result,
                errCode: "setDisableAnalytics",
                errMessage: "No disableAnalytics param found")
            return
        }

        Blaze.shared.disableAnalytics = disableAnalytics
        result(nil)
    }

    private func pauseCurrentPlayer(call: FlutterMethodCall, result: @escaping FlutterResult) {
        DispatchQueue.main.async {
            Blaze.shared.pauseCurrentPlayer()
            result(nil)
        }
    }

    private func resumeCurrentPlayer(call: FlutterMethodCall, result: @escaping FlutterResult) {
        DispatchQueue.main.async {
            Blaze.shared.resumeCurrentPlayer()
            result(nil)
        }
    }

    private func setDisableUserActivity(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let disableUserActivity = call.safeGetArg("disableUserActivity", Bool.self) else {
            handleError(
                result,
                errCode: "setDisableUserActivity",
                errMessage: "No disableUserActivity param found")
            return
        }

        Blaze.shared.disableUserActivity = disableUserActivity
        result(nil)
    }

    private func clearLocalUserActivity(call: FlutterMethodCall, result: @escaping FlutterResult) {
        Blaze.shared.clearLocalUserActivity()
        result(nil)
    }

    // ======================================
    // HOSTING APP CONTEXT
    // ======================================

    private func hostingAppContextGetValue(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        guard let key = call.safeGetArg("key", String.self) else {
            handleError(
                result,
                errCode: "hostingAppContextGetValue",
                errMessage: "No key param found")
            return
        }

        result(Blaze.shared.hostingAppContext.getValue(forKey: key))
    }

    private func hostingAppContextGetContext(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        result(Blaze.shared.hostingAppContext.getContext())
    }

    private func hostingAppContextSetValue(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        guard let key = call.safeGetArg("key", String.self) else {
            handleError(
                result,
                errCode: "hostingAppContextSetValue",
                errMessage: "No key param found")
            return
        }

        // A nil value is valid and clears the stored entry.
        let value = (call.arguments as? [String: Any])?["value"]
        Blaze.shared.hostingAppContext.setValue(value, forKey: key)
        result(nil)
    }

    private func hostingAppContextSetContext(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        guard let context = call.safeGetArg("context", [String: AnyHashable].self) else {
            handleError(
                result,
                errCode: "hostingAppContextSetContext",
                errMessage: "No context param found")
            return
        }

        Blaze.shared.hostingAppContext.setContext(context)
        result(nil)
    }

    private func hostingAppContextDeleteValue(
        call: FlutterMethodCall, result: @escaping FlutterResult
    ) {
        guard let key = call.safeGetArg("key", String.self) else {
            handleError(
                result,
                errCode: "hostingAppContextDeleteValue",
                errMessage: "No key param found")
            return
        }

        Blaze.shared.hostingAppContext.deleteValue(forKey: key)
        result(nil)
    }

    private func setPreferredLanguage(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let language = call.safeGetArg("language", String.self)

        Blaze.shared.setPreferredLanguage(language)
        result(nil)
    }

    private func setPlayerSoundState(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let state = call.safeGetArg("state", String.self) else {
            handleError(
                result,
                errCode: "setPlayerSoundState",
                errMessage: "No state param found")
            return
        }

        let nativeState: BlazePlayerSoundState
        switch state.lowercased() {
        case "mute":
            nativeState = .mute
        case "unmute":
            nativeState = .unmute
        default:
            handleError(
                result,
                errCode: "setPlayerSoundState",
                errMessage: "Invalid BlazePlayerSoundState '\(state)'. Expected 'mute' or 'unmute'.")
            return
        }

        Blaze.shared.setPlayerSoundState(nativeState)
        result(nil)
    }

    private func isMuted(call: FlutterMethodCall, result: @escaping FlutterResult) {
        result(Blaze.shared.isMuted)
    }

    private func showSearchScreen(call: FlutterMethodCall, result: @escaping FlutterResult) {
        // iOS allows a nil suggestionsDataSource (Android requires it).
        var searchParams: BlazeSearchScreenParams? = nil
        if let suggestionsMap = call.safeGetArg("suggestionsDataSource", [String: AnyHashable].self),
           let dataSource = suggestionsMap.toBlazeDataSourceType {
            searchParams = BlazeSearchScreenParams(suggestionsDataSource: dataSource)
        }

        DispatchQueue.main.async {
            Blaze.shared.showSearchScreen(searchParams: searchParams) { blazeResult in
                blazeResult.handleResult(result)
            }
        }
    }

    private func followEntities(from call: FlutterMethodCall) -> Set<BlazeFollowEntity> {
        let entityIds = call.safeGetArg("entityIds", [String].self) ?? []
        return Set(entityIds.map { BlazeFollowEntity(id: $0) })
    }

    private func setFollowedEntities(call: FlutterMethodCall, result: @escaping FlutterResult) {
        Blaze.shared.followEntitiesManager.setFollowedEntities(followEntities(from: call))
        result(nil)
    }

    private func insertFollowedEntities(call: FlutterMethodCall, result: @escaping FlutterResult) {
        Blaze.shared.followEntitiesManager.insertFollowedEntities(followEntities(from: call))
        result(nil)
    }

    private func removeFollowedEntities(call: FlutterMethodCall, result: @escaping FlutterResult) {
        Blaze.shared.followEntitiesManager.removeFollowedEntities(followEntities(from: call))
        result(nil)
    }

    private func getFollowedEntities(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let ids = Blaze.shared.followEntitiesManager.getFollowedEntities().map { $0.id }
        result(ids)
    }

    private func stopActiveCastingSession(call: FlutterMethodCall, result: @escaping FlutterResult) {
        Blaze.shared.castingManager.stopActiveCastingSession()
        result(nil)
    }

    private func stopActivePiPSession(call: FlutterMethodCall, result: @escaping FlutterResult) {
        Blaze.shared.pipManager.stopActivePiPSession()
        result(nil)
    }

    private func isPiPActive(call: FlutterMethodCall, result: @escaping FlutterResult) {
        result(Blaze.shared.pipManager.isActive)
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

        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.handlePushNotificationPayload(payload, sourceId: sourceId) { blazeResult in
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

        let sourceId = call.safeGetArg("sourceId", String.self)

        Blaze.shared.handleUniversalLink(link, sourceId: sourceId) { blazeResult in
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
        },

        playbackModificationHandler: { [weak self] request in
            return await self?.onPlaybackModificationRequested(request: request) ?? request.response()
        }
    )

    // Shared delegate handler for entry point delegate
    private lazy var sharedDelegateHandler: BlazeSharedDelegateHandler = {
        return BlazeSharedDelegateHandler()
    }()

    // Player entry point delegate implementation that communicates with Flutter - always active
    lazy var playerEntryPointDelegate: BlazePlayerEntryPointDelegate = .init(
        onDataLoadStarted: { [weak self] params in
            self?.onDataLoadStarted(
                playerType: params.playerType,
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
        },

        onTriggerCustomActionButton: { [weak self] params in
            self?.onTriggerCustomActionButton(
                playerType: params.playerType,
                sourceId: params.sourceId,
                buttonParams: params.customActionParams
            )
        },

        onReadStatusChanged: { [weak self] params in
            self?.onReadStatusChanged(
                playerType: params.playerType,
                sourceId: params.sourceId,
                dataSourceStringRepresentation: params.dataSourceStringRepresentation,
                isEntireContentRead: params.isEntireContentRead,
                itemReadStatus: params.itemReadStatus
            )
        },

        onShareClicked: { [weak self] params in
            return self?.onShareClicked(
                playerType: params.playerType,
                sourceId: params.sourceId,
                shareParams: params.shareParams
            ) ?? nil
        }
    )

    // ======================================
    // DELEGATE IMPLEMENTATION METHODS
    // ======================================

    private func onErrorThrown(_ error: BlazeSDK.BlazeError) {
        let flutterError = BlazeFlutterError.fromBlazeError(error)
        asyncBridge?.sendEvent("Blaze.onErrorThrown", params: flutterError)
    }

    private func onGlobalEventTriggered(_ eventData: BlazeSDK.BlazeAnalytics) {
        // Use the native BlazeSDK's comprehensive analytics JSON
        guard let eventJsonString = eventData.asJsonString else {
            return
        }

        asyncBridge?.sendEvent(
            "Blaze.onEventTriggered",
            params: ["eventData": eventJsonString]
        )
    }

    // Request/response global delegate call: ask Dart for a modified URL before
    // playback and fall back to the original URL on any failure.
    private func onPlaybackModificationRequested(
        request: BlazePlaybackModificationRequest
    ) async -> BlazePlaybackModificationResponse {
        guard let asyncBridge = asyncBridge else {
            return request.response()
        }

        do {
            let dartRequest = PlaybackModificationRequest(
                originalURL: request.originalURL.absoluteString
            )
            let dartResponse: PlaybackModificationResponse = try await asyncBridge.callDartMethod(
                Self.playbackModificationMethodName,
                params: dartRequest
            )

            let modifiedURL = URL(string: dartResponse.modifiedURL)
            return request.response(with: modifiedURL)
        } catch {
            print("BlazeFlutterSDKModule: Error playbackModificationHandler: \(error)")
            return request.response()
        }
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

    private func onTriggerCustomActionButton(
        playerType: BlazePlayerType,
        sourceId: String?,
        buttonParams: BlazePlayerCustomActionButtonParams
    ) {
        sharedDelegateHandler.onTriggerCustomActionButton(
            playerType: playerType,
            sourceId: sourceId,
            buttonParams: buttonParams
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onTriggerCustomActionButton", params: params)
        }
    }

    private func onReadStatusChanged(
        playerType: BlazePlayerType,
        sourceId: String?,
        dataSourceStringRepresentation: String,
        isEntireContentRead: Bool,
        itemReadStatus: [String: Bool]
    ) {
        sharedDelegateHandler.onReadStatusChanged(
            playerType: playerType,
            sourceId: sourceId,
            dataSourceStringRepresentation: dataSourceStringRepresentation,
            isEntireContentRead: isEntireContentRead,
            itemReadStatus: itemReadStatus
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onReadStatusChanged", params: params)
        }
    }

    private func onShareClicked(
        playerType: BlazePlayerType,
        sourceId: String?,
        shareParams: BlazeShareParams
    ) -> String? {
        return sharedDelegateHandler.onShareClicked(
            playerType: playerType,
            sourceId: sourceId,
            shareParams: shareParams
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onShareClicked", params: params)
        }
    }

    private func onFollowEntityClicked(
        playerType: BlazePlayerType,
        sourceId: String?,
        newFollowingState: Bool,
        followEntityId: String
    ) {
        sharedDelegateHandler.onFollowEntityClicked(
            playerType: playerType,
            sourceId: sourceId,
            newFollowingState: newFollowingState,
            followEntityId: followEntityId
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onFollowEntityClicked", params: params)
        }
    }

    private func onCastingStateChanged(
        playerType: BlazePlayerType,
        sourceId: String?,
        newState: BlazeCastingState
    ) {
        sharedDelegateHandler.onCastingStateChanged(
            playerType: playerType,
            sourceId: sourceId,
            newState: newState
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onCastingStateChanged", params: params)
        }
    }

    private func onPiPStateChanged(
        playerType: BlazePlayerType,
        sourceId: String?,
        newState: BlazePipState
    ) {
        sharedDelegateHandler.onPiPStateChanged(
            playerType: playerType,
            sourceId: sourceId,
            newState: newState
        ) { [weak self] params in
            self?.asyncBridge?.sendEvent("Blaze.onPiPStateChanged", params: params)
        }
    }
}

// ======================================
// FOLLOW ENTITIES DELEGATE
// ======================================

extension BlazeFlutterSDKModule: BlazeFollowEntitiesDelegate {
    func onFollowEntityClicked(_ params: BlazeFollowEntityClickedParams) {
        onFollowEntityClicked(
            playerType: params.playerType,
            sourceId: params.sourceId,
            newFollowingState: params.newFollowingState,
            followEntityId: params.followEntity.id
        )
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
