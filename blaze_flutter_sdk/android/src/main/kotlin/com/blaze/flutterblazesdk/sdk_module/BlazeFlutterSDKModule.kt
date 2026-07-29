package com.blaze.flutterblazesdk.sdk_module

import android.app.Application
import android.util.Log
import com.blaze.blazesdk.analytics.models.BlazeAnalyticsEvent
import com.blaze.blazesdk.delegates.BlazeCastingDelegate
import com.blaze.blazesdk.delegates.BlazeCastingState
import com.blaze.blazesdk.delegates.BlazePipDelegate
import com.blaze.blazesdk.delegates.BlazePipState
import com.blaze.blazesdk.delegates.BlazeFollowEntitiesDelegate
import com.blaze.blazesdk.delegates.BlazePlayerEntryPointDelegate
import com.blaze.blazesdk.delegates.BlazeSDKDelegate
import com.blaze.blazesdk.delegates.models.BlazeCTAActionType
import com.blaze.blazesdk.delegates.models.BlazeFollowEntityClickedParams
import com.blaze.blazesdk.delegates.models.BlazePlaybackModificationRequest
import com.blaze.blazesdk.delegates.models.BlazePlaybackModificationResponse
import com.blaze.blazesdk.delegates.models.BlazePlayerEvent
import com.blaze.blazesdk.delegates.models.BlazePlayerType
import com.blaze.blazesdk.external_modules.BlazeExternalModulesBinder
import com.blaze.blazesdk.follow.models.BlazeFollowEntity
import com.blaze.blazesdk.features.moments.models.configuration.BlazeMomentsLoopBehavior
import com.blaze.blazesdk.features.search.models.BlazeSearchScreenParams
import com.blaze.blazesdk.features.shared.models.ui_shared.BlazeLinkActionHandleType
import com.blaze.blazesdk.shared.BlazeSDK
import com.blaze.blazesdk.shared.models.BlazeEntryPointTriggerSource
import com.blaze.blazesdk.shared.models.BlazePlayerSoundState
import com.blaze.blazesdk.shared.results.BlazeResult
import com.blaze.blazesdk.style.shared.models.BlazePlayerCustomActionButtonParams
import com.blaze.flutterblazesdk.delegates.BlazeSharedDelegateHandler
import com.blaze.flutterblazesdk.parsers.asCachingLevel
import com.blaze.flutterblazesdk.parsers.toBlazeDataSourceType
import com.blaze.flutterblazesdk.players.extractMomentsPlayerStyle
import com.blaze.flutterblazesdk.players.extractStoriesPlayerStyle
import com.blaze.flutterblazesdk.players.extractVideosPlayerStyle
import com.blaze.flutterblazesdk.shared.BlazeAsyncBridge
import com.blaze.flutterblazesdk.shared.callDartMethod
import com.blaze.flutterblazesdk.shared.sendEvent
import com.blaze.flutterblazesdk.utils.BlazeFlutterError
import com.blaze.flutterblazesdk.utils.BlazeFlutterSDKHelper
import com.blaze.flutterblazesdk.utils.extractMomentsPlaybackConfiguration
import com.blaze.flutterblazesdk.utils.extractStoriesPlaybackConfiguration
import com.blaze.flutterblazesdk.utils.extractVideosPlaybackConfiguration
import com.blaze.flutterblazesdk.utils.handleBlazeResult
import com.blaze.flutterblazesdk.utils.handleError
import com.blaze.flutterblazesdk.utils.safeGetArgument
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

object BlazeFlutterSDKModule {

        private const val TAG = "BlazeFlutterSDKModule"
        private const val PLAYBACK_MODIFICATION_METHOD_NAME =
                "Blaze.GlobalDelegate.playbackModificationHandler"

        private lateinit var methodChannel: MethodChannel
        private lateinit var application: Application
        private val asyncBridge: BlazeAsyncBridge? by lazy { BlazeAsyncBridge.getInstance() }

        private val sharedDelegateHandler: BlazeSharedDelegateHandler by lazy { BlazeSharedDelegateHandler() }

        // Match React Native implementation - store appOverridesCTAHandling setting
        private var appOverridesCTAHandling: Boolean = false

        private val flutterSDKHelper = BlazeFlutterSDKHelper()

        fun registerModule(messenger: BinaryMessenger, application: Application) {
                this.application = application

                methodChannel = MethodChannel(messenger, "blaze-sdk-module")
                methodChannel.setMethodCallHandler { call, result ->
                        handleMethodCall(call = call, result = result)
                }

                BlazeExternalModulesBinder.flutterSDKHelper = flutterSDKHelper
        }

        fun handleMethodCall(call: MethodCall, result: MethodChannel.Result) {
                when (call.method) {
                        "initSDK" -> initSDK(call, result)
                        "playStory" -> playStory(call, result)
                        "prepareStories" -> prepareStories(call, result)
                        "playStories" -> playStories(call, result)
                        "setDefaultStoriesPlaybackConfiguration" ->
                                setDefaultStoriesPlaybackConfiguration(call, result)
                        "getDefaultStoriesPlaybackConfiguration" ->
                                getDefaultStoriesPlaybackConfiguration(call, result)
                        "playMoment" -> playMoment(call, result)
                        "prepareMoments" -> prepareMoments(call, result)
                        "playMoments" -> playMoments(call, result)
                        "appendMomentsToPlayer" -> appendMomentsToPlayer(call, result)
                        "setDefaultMomentsPlaybackConfiguration" ->
                                setDefaultMomentsPlaybackConfiguration(call, result)
                        "getDefaultMomentsPlaybackConfiguration" ->
                                getDefaultMomentsPlaybackConfiguration(call, result)
                        "playVideo" -> playVideo(call, result)
                        "prepareVideos" -> prepareVideos(call, result)
                        "playVideos" -> playVideos(call, result)
                        "setDefaultVideosPlaybackConfiguration" ->
                                setDefaultVideosPlaybackConfiguration(call, result)
                        "getDefaultVideosPlaybackConfiguration" ->
                                getDefaultVideosPlaybackConfiguration(call, result)
                        "dismissPlayer" -> dismissPlayer(call, result)
                        "setDoNotTrack" -> setDoNotTrack(call, result)
                        "setDisableAnalytics" -> setDisableAnalytics(call, result)
                        "setPreferredLanguage" -> setPreferredLanguage(call, result)
                        "setPlayerSoundState" -> setPlayerSoundState(call, result)
                        "isMuted" -> isMuted(call, result)
                        "showSearchScreen" -> showSearchScreen(call, result)
                        "setFollowedEntities" -> setFollowedEntities(call, result)
                        "insertFollowedEntities" -> insertFollowedEntities(call, result)
                        "removeFollowedEntities" -> removeFollowedEntities(call, result)
                        "getFollowedEntities" -> getFollowedEntities(call, result)
                        "stopActiveCastingSession" -> stopActiveCastingSession(call, result)
                        "stopActivePiPSession" -> stopActivePiPSession(call, result)
                        "isPiPActive" -> isPiPActive(call, result)
                        "canHandleUniversalLink" -> canHandleUniversalLink(call, result)
                        "updateGeoRestriction" -> updateGeoRestriction(call, result)
                        "canHandlePushNotification" -> canHandlePushNotification(call, result)
                        "handleNotificationPayload" -> handleNotificationPayload(call, result)
                        "setExternalUserId" -> setExternalUserId(call, result)
                        "handleUniversalLink" -> handleUniversalLink(call, result)
                        "isInitialized" -> isInitialized(call, result)
                        else -> result.notImplemented()
                }
        }

        // ======================================
        // DELEGATE IMPLEMENTATIONS - Always registered like GAM
        // ======================================

        // Global delegate implementation that communicates with Flutter - always active
        private val globalDelegate: BlazeSDKDelegate by lazy {
                object : BlazeSDKDelegate {
                        override fun onErrorThrown(error: BlazeResult.Error) {
                                this@BlazeFlutterSDKModule.onErrorThrown(error)
                        }

                        override fun onEventTriggered(eventData: BlazeAnalyticsEvent) {
                                this@BlazeFlutterSDKModule.onEventTriggered(eventData)
                        }

                        override suspend fun playbackModificationHandler(
                                request: BlazePlaybackModificationRequest
                        ): BlazePlaybackModificationResponse {
                                return this@BlazeFlutterSDKModule.playbackModificationHandler(request)
                        }
                }
        }

        // Player entry point delegate implementation that communicates with Flutter - always active
        private val playerEntryPointDelegate: BlazePlayerEntryPointDelegate by lazy {
                object : BlazePlayerEntryPointDelegate {
                        override fun onDataLoadComplete(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                itemsCount: Int,
                                result: BlazeResult<Unit>
                        ) {
                                this@BlazeFlutterSDKModule.onDataLoadComplete(
                                        playerType,
                                        sourceId,
                                        itemsCount,
                                        result
                                )
                        }

                        override fun onDataLoadStarted(
                                playerType: BlazePlayerType,
                                sourceId: String?
                        ) {
                                this@BlazeFlutterSDKModule.onDataLoadStarted(playerType, sourceId)
                        }

                        override fun onPlayerDidAppear(
                                playerType: BlazePlayerType,
                                sourceId: String?
                        ) {
                                this@BlazeFlutterSDKModule.onPlayerDidAppear(playerType, sourceId)
                        }

                        override fun onPlayerDidDismiss(
                                playerType: BlazePlayerType,
                                sourceId: String?
                        ) {
                                this@BlazeFlutterSDKModule.onPlayerDidDismiss(playerType, sourceId)
                        }

                        override fun onTriggerCTA(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                actionType: BlazeCTAActionType,
                                actionParam: String
                        ): Boolean {
                                return this@BlazeFlutterSDKModule.onTriggerCTA(
                                        playerType,
                                        sourceId,
                                        actionType,
                                        actionParam
                                )
                        }

                        override fun onTriggerPlayerBodyTextLink(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                actionParam: String
                        ): BlazeLinkActionHandleType {
                                return this@BlazeFlutterSDKModule.onTriggerPlayerBodyTextLink(
                                        playerType,
                                        sourceId,
                                        actionParam
                                )
                        }

                        override fun onPlayerEventTriggered(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                event: BlazePlayerEvent
                        ) {
                                this@BlazeFlutterSDKModule.onPlayerEventTriggered(
                                        playerType,
                                        sourceId,
                                        event
                                )
                        }

                        override fun onTriggerCustomActionButton(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                customParams: BlazePlayerCustomActionButtonParams
                        ) {
                                this@BlazeFlutterSDKModule.onTriggerCustomActionButton(
                                        playerType,
                                        sourceId,
                                        customParams
                                )
                        }

                        override fun onReadStatusChanged(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                dataSourceStringRepresentation: String,
                                isEntireContentRead: Boolean,
                                itemReadStatus: Map<String, Boolean>
                        ) {
                                this@BlazeFlutterSDKModule.onReadStatusChanged(
                                        playerType,
                                        sourceId,
                                        dataSourceStringRepresentation,
                                        isEntireContentRead,
                                        itemReadStatus
                                )
                        }
                }
        }

        // Follow entities delegate implementation that communicates with Flutter - always active
        private val followEntitiesDelegate: BlazeFollowEntitiesDelegate by lazy {
                object : BlazeFollowEntitiesDelegate {
                        override fun onFollowEntityClicked(
                                followEntityParams: BlazeFollowEntityClickedParams
                        ) {
                                this@BlazeFlutterSDKModule.onFollowEntityClicked(followEntityParams)
                        }
                }
        }

        // Casting delegate implementation that communicates with Flutter - always active
        private val castingDelegate: BlazeCastingDelegate by lazy {
                object : BlazeCastingDelegate {
                        override fun onCastingStateChanged(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                newState: BlazeCastingState
                        ) {
                                this@BlazeFlutterSDKModule.onCastingStateChanged(
                                        playerType = playerType,
                                        sourceId = sourceId,
                                        newState = newState
                                )
                        }
                }
        }

        // Pip delegate implementation that communicates with Flutter - always active
        private val pipDelegate: BlazePipDelegate by lazy {
                object : BlazePipDelegate {
                        override fun onPipStateChanged(
                                playerType: BlazePlayerType,
                                sourceId: String?,
                                newState: BlazePipState
                        ) {
                                this@BlazeFlutterSDKModule.onPiPStateChanged(
                                        playerType = playerType,
                                        sourceId = sourceId,
                                        newState = newState
                                )
                        }
                }
        }

        // ======================================
        // EXISTING METHODS (continued...)
        // ======================================

        private fun initSDK(call: MethodCall, result: MethodChannel.Result) {
                val apiKey =
                        call.safeGetArgument<String>("apiKey")
                                ?: run {
                                        result.handleError(
                                                errCode = "initSDK",
                                                errMessage = "apiKey is invalid"
                                        )
                                        return
                                }

                // Extract optional parameters
                val externalUserId = call.safeGetArgument<String>("externalUserId")
                val cachingSize = call.safeGetArgument<Int>("cachingSize")
                val cachingLevelString = call.safeGetArgument<String>("cachingLevel")
                val geoLocation = call.safeGetArgument<String>("geoLocation")

                // Match React Native implementation - read appOverridesCTAHandling from init params
                val appOverridesCTAHandlingFromInit =
                        call.safeGetArgument<Boolean>("appOverridesCTAHandling")
                if (appOverridesCTAHandlingFromInit != null) {
                        this.appOverridesCTAHandling = appOverridesCTAHandlingFromInit
                }

                val cachingLevel = cachingLevelString.asCachingLevel()

                BlazeSDK.init(
                        apiKey = apiKey,
                        externalUserId = externalUserId,
                        cachingSize = cachingSize,
                        cachingLevel = cachingLevel,
                        geoLocation = geoLocation,
                        completionBlock = { result.success(null) },
                        errorBlock = { e ->
                                result.handleBlazeResult(
                                        result = e
                                )
                        },
                        sdkDelegate = globalDelegate,
                        playerEntryPointDelegate = playerEntryPointDelegate
                )

                BlazeSDK.followEntitiesManager.delegate = followEntitiesDelegate
                BlazeSDK.castingManager.delegate = castingDelegate
                BlazeSDK.pipManager.delegate = pipDelegate

                // Set default player styles if provided
                val defaultStoryPlayerStyleMap =
                        call.safeGetArgument<Map<String, Any>>("defaultStoryPlayerStyle")
                if (defaultStoryPlayerStyleMap != null) {
                        val storyPlayerStyle =
                                defaultStoryPlayerStyleMap.extractStoriesPlayerStyle(application)
                        BlazeSDK.setDefaultStoryPlayerStyle(storyPlayerStyle = storyPlayerStyle)
                }

                val defaultMomentsPlayerStyleMap =
                        call.safeGetArgument<Map<String, Any>>("defaultMomentsPlayerStyle")
                if (defaultMomentsPlayerStyleMap != null) {
                        val momentsPlayerStyle =
                                defaultMomentsPlayerStyleMap.extractMomentsPlayerStyle(application)
                        BlazeSDK.setDefaultMomentsPlayerStyle(
                                momentsPlayerStyle = momentsPlayerStyle
                        )
                }

                val defaultVideosPlayerStyleMap =
                        call.safeGetArgument<Map<String, Any>>("defaultVideosPlayerStyle")
                if (defaultVideosPlayerStyleMap != null) {
                        val videosPlayerStyle =
                                defaultVideosPlayerStyleMap.extractVideosPlayerStyle(application)
                        BlazeSDK.setDefaultVideosPlayerStyle(videosPlayerStyle = videosPlayerStyle)
                }
        }

        private fun playStory(call: MethodCall, result: MethodChannel.Result) {
                val storyId =
                        call.safeGetArgument<String>("storyId")
                                ?: run {
                                        result.handleError(
                                                errCode = "playStory",
                                                errMessage = "storyId is invalid"
                                        )
                                        return
                                }

                val pageId = call.safeGetArgument<String>("pageId")
                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractStoriesPlayerStyle(application)
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource
                val playbackConfiguration =
                        call.safeGetArgument<Map<String, Any>>("playbackConfiguration")
                                .extractStoriesPlaybackConfiguration()
                                ?: BlazeSDK.getDefaultStoriesPlaybackConfiguration()

                BlazeSDK.playStory(
                        storyId = storyId,
                        pageId = pageId,
                        storyPlayerStyle = playerStyle,
                        triggerSource = triggerSource,
                        playbackConfiguration = playbackConfiguration
                ) { blazeResult -> result.handleBlazeResult(blazeResult) }
        }

        private fun playStories(call: MethodCall, result: MethodChannel.Result) {
                val dataSourceMap =
                        call.safeGetArgument<Map<String, Any>>("dataSource")
                                ?: run {
                                        result.handleError(
                                                errCode = "playStories",
                                                errMessage = "dataSource is invalid"
                                        )
                                        return
                                }

                val dataSource =
                        dataSourceMap.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "playStories",
                                                errMessage = "Failed to extract dataSource"
                                        )
                                        return
                                }

                val entryContentId = call.safeGetArgument<String>("entryContentId")
                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractStoriesPlayerStyle(application)
                val shouldOrderContentByReadStatus =
                        call.safeGetArgument<Boolean>("shouldOrderContentByReadStatus") ?: true
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource
                val playbackConfiguration =
                        call.safeGetArgument<Map<String, Any>>("playbackConfiguration")
                                .extractStoriesPlaybackConfiguration()
                                ?: BlazeSDK.getDefaultStoriesPlaybackConfiguration()

                BlazeSDK.playStories(
                        dataSource = dataSource,
                        entryContentId = entryContentId,
                        storyPlayerStyle = playerStyle,
                        shouldOrderContentByReadStatus = shouldOrderContentByReadStatus,
                        triggerSource = triggerSource,
                        playbackConfiguration = playbackConfiguration
                ) { blazeResult -> result.handleBlazeResult(blazeResult) }
        }

        private fun setDefaultStoriesPlaybackConfiguration(
                call: MethodCall,
                result: MethodChannel.Result
        ) {
                val playbackConfig =
                        call.safeGetArgument<Map<String, Any>>("playbackConfiguration")
                                .extractStoriesPlaybackConfiguration()
                                ?: run {
                                        result.handleError(
                                                errCode = "setDefaultStoriesPlaybackConfiguration",
                                                errMessage = "Invalid stories playback configuration"
                                        )
                                        return
                                }

                BlazeSDK.setDefaultStoriesPlaybackConfiguration(playbackConfig)
                result.success(null)
        }

        private fun getDefaultStoriesPlaybackConfiguration(
                call: MethodCall,
                result: MethodChannel.Result
        ) {
                val config = BlazeSDK.getDefaultStoriesPlaybackConfiguration()
                result.success(mapOf("bufferingSpinnerDelayMs" to config.bufferingSpinnerDelayMs))
        }

        private fun playMoment(call: MethodCall, result: MethodChannel.Result) {
                val momentId =
                        call.safeGetArgument<String>("momentId")
                                ?: run {
                                        result.handleError(
                                                errCode = "playMoment",
                                                errMessage = "momentId is invalid"
                                        )
                                        return
                                }

                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractMomentsPlayerStyle(application)
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource

                BlazeSDK.playMoment(
                        momentId = momentId,
                        momentsPlayerStyle = playerStyle,
                        triggerSource = triggerSource
                ) { blazeResult -> result.handleBlazeResult(blazeResult) }
        }

        private fun playMoments(call: MethodCall, result: MethodChannel.Result) {
                val dataSourceMap =
                        call.safeGetArgument<Map<String, Any>>("dataSource")
                                ?: run {
                                        result.handleError(
                                                errCode = "playMoments",
                                                errMessage = "dataSource is invalid"
                                        )
                                        return
                                }

                val dataSource =
                        dataSourceMap.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "playMoments",
                                                errMessage = "Failed to extract dataSource"
                                        )
                                        return
                                }

                val entryContentId = call.safeGetArgument<String>("entryContentId")
                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractMomentsPlayerStyle(application)
                val shouldOrderContentByReadStatus =
                        call.safeGetArgument<Boolean>("shouldOrderContentByReadStatus") ?: true
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource

                BlazeSDK.playMoments(
                        dataSource = dataSource,
                        entryContentId = entryContentId,
                        momentsPlayerStyle = playerStyle,
                        shouldOrderContentByReadStatus = shouldOrderContentByReadStatus,
                        triggerSource = triggerSource
                ) { blazeResult -> result.handleBlazeResult(blazeResult) }
        }

        private fun appendMomentsToPlayer(call: MethodCall, result: MethodChannel.Result) {
                val sourceId =
                        call.safeGetArgument<String>("sourceId")
                                ?: run {
                                        result.handleError(
                                                errCode = "appendMomentsToPlayer",
                                                errMessage = "Missing sourceId in appendMomentsToPlayer options"
                                        )
                                        return
                                }

                val dataSourceMap =
                        call.safeGetArgument<Map<String, Any>>("dataSource")
                                ?: run {
                                        result.handleError(
                                                errCode = "appendMomentsToPlayer",
                                                errMessage = "dataSource is invalid"
                                        )
                                        return
                                }

                val dataSource =
                        dataSourceMap.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "appendMomentsToPlayer",
                                                errMessage = "Failed to extract dataSource"
                                        )
                                        return
                                }

                val shouldOrderContentByReadStatus =
                        call.safeGetArgument<Boolean>("shouldOrderContentByReadStatus") ?: false

                BlazeSDK.appendMomentsToPlayer(
                        sourceId = sourceId,
                        dataSourceType = dataSource,
                        shouldOrderContentByReadStatus = shouldOrderContentByReadStatus
                ) { blazeResult -> result.handleBlazeResult(blazeResult) }
        }

        private fun setDefaultMomentsPlaybackConfiguration(
                call: MethodCall,
                result: MethodChannel.Result
        ) {
                val playbackConfig =
                        call.safeGetArgument<Map<String, Any>>("playbackConfiguration")
                                .extractMomentsPlaybackConfiguration()
                                ?: run {
                                        result.handleError(
                                                errCode = "setDefaultMomentsPlaybackConfiguration",
                                                errMessage = "Invalid moments playback configuration"
                                        )
                                        return
                                }

                BlazeSDK.setDefaultMomentsPlaybackConfiguration(playbackConfig)
                result.success(null)
        }

        private fun getDefaultMomentsPlaybackConfiguration(
                call: MethodCall,
                result: MethodChannel.Result
        ) {
                val config = BlazeSDK.getDefaultMomentsPlaybackConfiguration()
                val loopBehaviorMap =
                        when (val loopBehavior = config.loopBehavior) {
                                is BlazeMomentsLoopBehavior.InfiniteLoop ->
                                        mapOf("type" to "infiniteLoop")
                                is BlazeMomentsLoopBehavior.LoopAndAdvance ->
                                        mapOf(
                                                "type" to "loopAndAdvance",
                                                "numberOfPlays" to loopBehavior.numberOfPlays
                                        )
                        }
                result.success(
                        mapOf(
                                "loopBehavior" to loopBehaviorMap,
                                "bufferingSpinnerDelayMs" to config.bufferingSpinnerDelayMs
                        )
                )
        }

        private fun playVideo(call: MethodCall, result: MethodChannel.Result) {
                val videoId =
                        call.safeGetArgument<String>("videoId")
                                ?: run {
                                        result.handleError(
                                                errCode = "playVideo",
                                                errMessage = "videoId is invalid"
                                        )
                                        return
                                }

                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractVideosPlayerStyle(application)
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource
                val playbackConfiguration =
                        call.safeGetArgument<Map<String, Any>>("playbackConfiguration")
                                .extractVideosPlaybackConfiguration()
                                ?: BlazeSDK.getDefaultVideosPlaybackConfiguration()

                BlazeSDK.playVideo(
                        videoId = videoId,
                        videosPlayerStyle = playerStyle,
                        triggerSource = triggerSource,
                        playbackConfiguration = playbackConfiguration
                ) { blazeResult -> result.handleBlazeResult(blazeResult) }
        }

        private fun playVideos(call: MethodCall, result: MethodChannel.Result) {
                val dataSourceMap =
                        call.safeGetArgument<Map<String, Any>>("dataSource")
                                ?: run {
                                        result.handleError(
                                                errCode = "playVideos",
                                                errMessage = "dataSource is invalid"
                                        )
                                        return
                                }

                val dataSource =
                        dataSourceMap.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "playVideos",
                                                errMessage = "Failed to extract dataSource"
                                        )
                                        return
                                }

                val entryContentId = call.safeGetArgument<String>("entryContentId")
                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractVideosPlayerStyle(application)
                val shouldOrderContentByReadStatus =
                        call.safeGetArgument<Boolean>("shouldOrderContentByReadStatus") ?: true
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource
                val playbackConfiguration =
                        call.safeGetArgument<Map<String, Any>>("playbackConfiguration")
                                .extractVideosPlaybackConfiguration()
                                ?: BlazeSDK.getDefaultVideosPlaybackConfiguration()

                BlazeSDK.playVideos(
                        dataSource = dataSource,
                        entryContentId = entryContentId,
                        videosPlayerStyle = playerStyle,
                        shouldOrderContentByReadStatus = shouldOrderContentByReadStatus,
                        triggerSource = triggerSource,
                        playbackConfiguration = playbackConfiguration
                ) { blazeResult -> result.handleBlazeResult(blazeResult) }
        }

        private fun setDefaultVideosPlaybackConfiguration(
                call: MethodCall,
                result: MethodChannel.Result
        ) {
                val playbackConfig =
                        call.safeGetArgument<Map<String, Any>>("playbackConfiguration")
                                .extractVideosPlaybackConfiguration()
                                ?: run {
                                        result.handleError(
                                                errCode = "setDefaultVideosPlaybackConfiguration",
                                                errMessage = "Invalid playback configuration"
                                        )
                                        return
                                }

                BlazeSDK.setDefaultVideosPlaybackConfiguration(playbackConfig)
                result.success(null)
        }

        private fun getDefaultVideosPlaybackConfiguration(
                call: MethodCall,
                result: MethodChannel.Result
        ) {
                val config = BlazeSDK.getDefaultVideosPlaybackConfiguration()
                val configMap =
                        mapOf(
                                "multiAspectRatio" to config.multiAspectRatio,
                                "shouldOpenInLandscape" to config.shouldOpenOnLandscape,
                                "pipConfiguration" to
                                        mapOf(
                                                "enterPipOnAppBackground" to
                                                        config.pip.enterPipOnAppBackground
                                        ),
                                "bufferingSpinnerDelayMs" to config.bufferingSpinnerDelayMs
                        )
                result.success(configMap)
        }

        private fun setExternalUserId(call: MethodCall, result: MethodChannel.Result) {
                val externalUserId = call.safeGetArgument<String>("externalUserId")

                BlazeSDK.setExternalUserId(externalUserId) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun handleUniversalLink(call: MethodCall, result: MethodChannel.Result) {
                val link =
                        call.safeGetArgument<String>("link")
                                ?: run {
                                        result.handleError(
                                                errCode = "handleUniversalLink",
                                                errMessage = "link is invalid"
                                        )
                                        return
                                }

                BlazeSDK.handleUniversalLink(link) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun prepareStories(call: MethodCall, result: MethodChannel.Result) {
                val dataSourceMap =
                        call.safeGetArgument<Map<String, Any>>("dataSource")
                                ?: run {
                                        result.handleError(
                                                errCode = "prepareStories",
                                                errMessage = "dataSource is invalid"
                                        )
                                        return
                                }

                val dataSource =
                        dataSourceMap.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "prepareStories",
                                                errMessage = "Failed to extract dataSource"
                                        )
                                        return
                                }

                val entryContentId = call.safeGetArgument<String>("entryContentId")
                BlazeSDK.prepareStories(
                        dataSource = dataSource,
                        entryContentId = entryContentId
                ) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun prepareMoments(call: MethodCall, result: MethodChannel.Result) {
                val dataSourceMap =
                        call.safeGetArgument<Map<String, Any>>("dataSource")
                                ?: run {
                                        result.handleError(
                                                errCode = "prepareMoments",
                                                errMessage = "dataSource is invalid"
                                        )
                                        return
                                }

                val dataSource =
                        dataSourceMap.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "prepareMoments",
                                                errMessage = "Failed to extract dataSource"
                                        )
                                        return
                                }

                val entryContentId = call.safeGetArgument<String>("entryContentId")
                BlazeSDK.prepareMoments(
                        dataSource = dataSource,
                        entryContentId = entryContentId
                ) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun prepareVideos(call: MethodCall, result: MethodChannel.Result) {
                val dataSourceMap =
                        call.safeGetArgument<Map<String, Any>>("dataSource")
                                ?: run {
                                        result.handleError(
                                                errCode = "prepareVideos",
                                                errMessage = "dataSource is invalid"
                                        )
                                        return
                                }

                val dataSource =
                        dataSourceMap.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "prepareVideos",
                                                errMessage = "Failed to extract dataSource"
                                        )
                                        return
                                }

                val entryContentId = call.safeGetArgument<String>("entryContentId")
                BlazeSDK.prepareVideos(
                        dataSource = dataSource,
                        entryContentId = entryContentId
                ) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun dismissPlayer(call: MethodCall, result: MethodChannel.Result) {
                BlazeSDK.dismissCurrentPlayer()
                result.success(null)
        }

        private fun setDoNotTrack(call: MethodCall, result: MethodChannel.Result) {
                val doNotTrackUser =
                        call.safeGetArgument<Boolean>("doNotTrackUser")
                                ?: run {
                                        result.handleError(
                                                errCode = "setDoNotTrack",
                                                errMessage = "doNotTrackUser is invalid"
                                        )
                                        return
                                }

                BlazeSDK.setDoNotTrack(doNotTrackUser)
                result.success(null)
        }

        private fun setDisableAnalytics(call: MethodCall, result: MethodChannel.Result) {
                val disableAnalytics =
                        call.safeGetArgument<Boolean>("disableAnalytics")
                                ?: run {
                                        result.handleError(
                                                errCode = "setDisableAnalytics",
                                                errMessage = "disableAnalytics is invalid"
                                        )
                                        return
                                }

                BlazeSDK.disableAnalytics = disableAnalytics
                result.success(null)
        }

        private fun setPreferredLanguage(call: MethodCall, result: MethodChannel.Result) {
                val language = call.safeGetArgument<String>("language")

                BlazeSDK.setPreferredLanguage(language)
                result.success(null)
        }

        private fun setPlayerSoundState(call: MethodCall, result: MethodChannel.Result) {
                val state = call.safeGetArgument<String>("state")
                val nativeState =
                        when (state?.lowercase()) {
                                "mute" -> BlazePlayerSoundState.MUTE
                                "unmute" -> BlazePlayerSoundState.UNMUTE
                                else -> {
                                        result.handleError(
                                                errCode = "setPlayerSoundState",
                                                errMessage =
                                                        "Invalid BlazePlayerSoundState '$state'. Expected 'mute' or 'unmute'."
                                        )
                                        return
                                }
                        }

                BlazeSDK.setPlayerSoundState(nativeState)
                result.success(null)
        }

        private fun isMuted(call: MethodCall, result: MethodChannel.Result) {
                result.success(BlazeSDK.isMuted)
        }

        private fun showSearchScreen(call: MethodCall, result: MethodChannel.Result) {
                val dataSource =
                        call.safeGetArgument<Map<String, Any>>("suggestionsDataSource")
                                ?.toBlazeDataSourceType()
                                ?: run {
                                        result.handleError(
                                                errCode = "showSearchScreen",
                                                errMessage = "suggestionsDataSource is required on Android"
                                        )
                                        return
                                }

                val searchParams = BlazeSearchScreenParams(suggestionsDataSource = dataSource)
                BlazeSDK.screens.showSearchScreen(searchParams = searchParams) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun MethodCall.followEntitiesFromArgument(): Set<BlazeFollowEntity> {
                val entityIds = safeGetArgument<List<String>>("entityIds") ?: emptyList()
                return entityIds.map { BlazeFollowEntity(it) }.toSet()
        }

        private fun setFollowedEntities(call: MethodCall, result: MethodChannel.Result) {
                BlazeSDK.followEntitiesManager.setFollowedEntities(call.followEntitiesFromArgument())
                result.success(null)
        }

        private fun insertFollowedEntities(call: MethodCall, result: MethodChannel.Result) {
                BlazeSDK.followEntitiesManager.insertFollowedEntities(
                        call.followEntitiesFromArgument()
                )
                result.success(null)
        }

        private fun removeFollowedEntities(call: MethodCall, result: MethodChannel.Result) {
                BlazeSDK.followEntitiesManager.removeFollowedEntities(
                        call.followEntitiesFromArgument()
                )
                result.success(null)
        }

        private fun getFollowedEntities(call: MethodCall, result: MethodChannel.Result) {
                val ids = BlazeSDK.followEntitiesManager.getFollowedEntities().map { it.entityId }
                result.success(ids)
        }

        private fun stopActiveCastingSession(call: MethodCall, result: MethodChannel.Result) {
                BlazeSDK.castingManager.stopActiveCastingSession()
                result.success(null)
        }

        private fun stopActivePiPSession(call: MethodCall, result: MethodChannel.Result) {
                BlazeSDK.pipManager.stopActivePiPSession()
                result.success(null)
        }

        private fun isPiPActive(call: MethodCall, result: MethodChannel.Result) {
                result.success(BlazeSDK.pipManager.isActive)
        }

        private fun canHandleUniversalLink(call: MethodCall, result: MethodChannel.Result) {
                val link =
                        call.safeGetArgument<String>("link")
                                ?: run {
                                        result.handleError(
                                                errCode = "canHandleUniversalLink",
                                                errMessage = "link is invalid"
                                        )
                                        return
                                }

                val canHandle = BlazeSDK.canHandleUniversalLink(link)
                result.success(canHandle)
        }

        private fun updateGeoRestriction(call: MethodCall, result: MethodChannel.Result) {
                val geoLocation = call.safeGetArgument<String>("geoLocation")

                BlazeSDK.updateGeoRestriction(geoLocation) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun canHandlePushNotification(call: MethodCall, result: MethodChannel.Result) {
                val payload =
                        call.safeGetArgument<Map<String, Any>>("payload")
                                ?: run {
                                        result.handleError(
                                                errCode = "canHandlePushNotification",
                                                errMessage = "payload is invalid"
                                        )
                                        return
                                }

                // Convert to HashMap<String, String> as required by Android SDK
                val hashMap = payload.mapValues { it.value.toString() } as HashMap<String, String>
                val canHandle = BlazeSDK.canHandlePushNotification(hashMap)
                result.success(canHandle)
        }

        private fun handleNotificationPayload(call: MethodCall, result: MethodChannel.Result) {
                val payload =
                        call.safeGetArgument<Map<String, Any>>("payload")
                                ?: run {
                                        result.handleError(
                                                errCode = "handleNotificationPayload",
                                                errMessage = "payload is invalid"
                                        )
                                        return
                                }

                // Convert to HashMap<String, String> as required by Android SDK
                val hashMap = payload.mapValues { it.value.toString() } as HashMap<String, String>
                BlazeSDK.handlePushNotificationPayload(hashMap) { blazeResult ->
                        result.handleBlazeResult(blazeResult)
                }
        }

        private fun isInitialized(call: MethodCall, result: MethodChannel.Result) {
                val isInitialized = BlazeSDK.isInitialized()
                result.success(isInitialized)
        }

        // ======================================
        // DELEGATE IMPLEMENTATION METHODS - Following GAM pattern
        // ======================================

        private fun onErrorThrown(error: BlazeResult.Error) {
                val flutterError = BlazeFlutterError.fromBlazeError(error)
                asyncBridge?.sendEvent(
                        "Blaze.onErrorThrown",
                        flutterError
                )
        }

        private fun onEventTriggered(eventData: BlazeAnalyticsEvent) {
                asyncBridge?.sendEvent(
                        "Blaze.onEventTriggered",
                        mapOf("eventData" to eventData.asJsonString)
                )
        }

        // Request/response global delegate call: ask Dart for a modified URL
        // before playback and fall back to the original URL on any failure.
        private suspend fun playbackModificationHandler(
                request: BlazePlaybackModificationRequest
        ): BlazePlaybackModificationResponse {
                val fallbackResponse = request.response()
                val bridge = asyncBridge ?: return fallbackResponse

                return try {
                        bridge.callDartMethod(
                                name = PLAYBACK_MODIFICATION_METHOD_NAME,
                                params = request,
                        )
                } catch (e: Exception) {
                        Log.d(TAG, "Error playbackModificationHandler: ${e.message}")
                        fallbackResponse
                }
        }

        private fun onDataLoadStarted(playerType: BlazePlayerType, sourceId: String?) {
                sharedDelegateHandler.onDataLoadStarted(
                        playerType = playerType,
                        sourceId = sourceId
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onDataLoadStarted",
                                params = params
                        )
                }
        }

        private fun onDataLoadComplete(
                playerType: BlazePlayerType,
                sourceId: String?,
                itemsCount: Int,
                result: BlazeResult<Unit>
        ) {
                sharedDelegateHandler.onDataLoadComplete(
                        playerType = playerType,
                        sourceId = sourceId,
                        itemsCount = itemsCount,
                        result = result
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onDataLoadComplete",
                                params = params
                        )
                }
        }

        private fun onPlayerDidAppear(playerType: BlazePlayerType, sourceId: String?) {
                sharedDelegateHandler.onPlayerDidAppear(
                        playerType = playerType,
                        sourceId = sourceId
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onPlayerDidAppear",
                                params = params
                        )
                }
        }

        private fun onPlayerDidDismiss(playerType: BlazePlayerType, sourceId: String?) {
                sharedDelegateHandler.onPlayerDidDismiss(
                        playerType = playerType,
                        sourceId = sourceId
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onPlayerDidDismiss",
                                params = params
                        )
                }
        }

        private fun onTriggerCTA(
                playerType: BlazePlayerType,
                sourceId: String?,
                actionType: BlazeCTAActionType,
                actionParam: String
        ): Boolean {
                return sharedDelegateHandler.onTriggerCTA(
                        playerType = playerType,
                        sourceId = sourceId,
                        actionType = actionType,
                        actionParam = actionParam,
                        appOverridesCTAHandling = appOverridesCTAHandling
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onTriggerCTA",
                                params = params
                        )
                }
        }

        private fun onTriggerPlayerBodyTextLink(
                playerType: BlazePlayerType,
                sourceId: String?,
                actionParam: String
        ): BlazeLinkActionHandleType {
                return sharedDelegateHandler.onTriggerPlayerBodyTextLink(
                        playerType = playerType,
                        sourceId = sourceId,
                        actionParam = actionParam
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onTriggerPlayerBodyTextLink",
                                params = params
                        )
                }
        }

        private fun onPlayerEventTriggered(
                playerType: BlazePlayerType,
                sourceId: String?,
                event: BlazePlayerEvent
        ) {
                return sharedDelegateHandler.onPlayerEventTriggered(
                        playerType = playerType,
                        sourceId = sourceId,
                        event = event
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onPlayerEventTriggered",
                                params = params
                        )
                }
        }

        private fun onTriggerCustomActionButton(
                playerType: BlazePlayerType,
                sourceId: String?,
                customParams: BlazePlayerCustomActionButtonParams
        ) {
                sharedDelegateHandler.onTriggerCustomActionButton(
                        playerType = playerType,
                        sourceId = sourceId,
                        customParams = customParams
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onTriggerCustomActionButton",
                                params = params
                        )
                }
        }

        private fun onReadStatusChanged(
                playerType: BlazePlayerType,
                sourceId: String?,
                dataSourceStringRepresentation: String,
                isEntireContentRead: Boolean,
                itemReadStatus: Map<String, Boolean>
        ) {
                sharedDelegateHandler.onReadStatusChanged(
                        playerType = playerType,
                        sourceId = sourceId,
                        dataSourceStringRepresentation = dataSourceStringRepresentation,
                        isEntireContentRead = isEntireContentRead,
                        itemReadStatus = itemReadStatus
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onReadStatusChanged",
                                params = params
                        )
                }
        }

        private fun onFollowEntityClicked(followEntityParams: BlazeFollowEntityClickedParams) {
                sharedDelegateHandler.onFollowEntityClicked(
                        playerType = followEntityParams.playerType,
                        sourceId = followEntityParams.sourceId,
                        newFollowingState = followEntityParams.newFollowingState,
                        followEntityId = followEntityParams.followEntity.entityId
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onFollowEntityClicked",
                                params = params
                        )
                }
        }

        private fun onCastingStateChanged(
                playerType: BlazePlayerType,
                sourceId: String?,
                newState: BlazeCastingState
        ) {
                sharedDelegateHandler.onCastingStateChanged(
                        playerType = playerType,
                        sourceId = sourceId,
                        newState = newState
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onCastingStateChanged",
                                params = params
                        )
                }
        }

        private fun onPiPStateChanged(
                playerType: BlazePlayerType,
                sourceId: String?,
                newState: BlazePipState
        ) {
                sharedDelegateHandler.onPiPStateChanged(
                        playerType = playerType,
                        sourceId = sourceId,
                        newState = newState
                ) { params ->
                        asyncBridge?.sendEvent(
                                name = "Blaze.onPiPStateChanged",
                                params = params
                        )
                }
        }
}

val String?.asEntryPointTriggerSource: BlazeEntryPointTriggerSource
        get() =
                when (this) {
                        "notification" -> BlazeEntryPointTriggerSource.NOTIFICATION
                        "deepLink" -> BlazeEntryPointTriggerSource.DEEPLINK
                        "entryPoint" -> BlazeEntryPointTriggerSource.ENTRYPOINT
                        else -> BlazeEntryPointTriggerSource.ENTRYPOINT
                }

// ======================================
// TYPE CONVERSION EXTENSIONS FOR DELEGATES
// ======================================

/// Extension to convert BlazePlayerType to Flutter string value
fun BlazePlayerType.toFlutterValue(): String {
        return when (this) {
                BlazePlayerType.MOMENTS -> "moments"
                BlazePlayerType.STORIES -> "stories"
                BlazePlayerType.VIDEOS -> "videos"
        }
}

/// Extension to convert BlazeCTAActionType to Flutter string value
fun BlazeCTAActionType.toFlutterValue(): String {
        return when (this) {
                BlazeCTAActionType.DEEPLINK -> "Deeplink"
                BlazeCTAActionType.WEB -> "Web"
        }
}
