package com.blaze.flutterblazesdk.sdk_module

import android.app.Application
import com.blaze.blazesdk.analytics.models.BlazeAnalyticsEvent
import com.blaze.blazesdk.delegates.BlazePlayerEntryPointDelegate
import com.blaze.blazesdk.delegates.BlazeSDKDelegate
import com.blaze.blazesdk.delegates.models.BlazeCTAActionType
import com.blaze.blazesdk.delegates.models.BlazePlayerEvent
import com.blaze.blazesdk.delegates.models.BlazePlayerType
import com.blaze.blazesdk.external_modules.BlazeExternalModulesBinder
import com.blaze.blazesdk.features.shared.models.ui_shared.BlazeLinkActionHandleType
import com.blaze.blazesdk.shared.BlazeSDK
import com.blaze.blazesdk.shared.models.BlazeEntryPointTriggerSource
import com.blaze.blazesdk.shared.results.BlazeResult
import com.blaze.flutterblazesdk.delegates.BlazeSharedDelegateHandler
import com.blaze.flutterblazesdk.parsers.asCachingLevel
import com.blaze.flutterblazesdk.parsers.toBlazeDataSourceType
import com.blaze.flutterblazesdk.players.extractMomentsPlayerStyle
import com.blaze.flutterblazesdk.players.extractStoriesPlayerStyle
import com.blaze.flutterblazesdk.players.extractVideosPlayerStyle
import com.blaze.flutterblazesdk.shared.BlazeAsyncBridge
import com.blaze.flutterblazesdk.shared.sendEvent
//import com.blaze.flutterblazesdk.utils.BlazeFlutterSDKHelper
import com.blaze.flutterblazesdk.utils.handleBlazeResult
import com.blaze.flutterblazesdk.utils.handleError
import com.blaze.flutterblazesdk.utils.safeGetArgument
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

object BlazeFlutterSDKModule {

        private lateinit var methodChannel: MethodChannel
        private lateinit var application: Application
        private val asyncBridge: BlazeAsyncBridge? by lazy { BlazeAsyncBridge.getInstance() }

        private val sharedDelegateHandler: BlazeSharedDelegateHandler by lazy { BlazeSharedDelegateHandler() }

        // Match React Native implementation - store appOverridesCTAHandling setting
        private var appOverridesCTAHandling: Boolean = false

//        private val flutterSDKHelper = BlazeFlutterSDKHelper()

        fun registerModule(messenger: BinaryMessenger, application: Application) {
                this.application = application

                methodChannel = MethodChannel(messenger, "blaze-sdk-module")
                methodChannel.setMethodCallHandler { call, result ->
                        handleMethodCall(call = call, result = result)
                }

//                BlazeExternalModulesBinder.flutterSDKHelper = flutterSDKHelper
        }

        fun handleMethodCall(call: MethodCall, result: MethodChannel.Result) {
                when (call.method) {
                        "initSDK" -> initSDK(call, result)
                        "playStory" -> playStory(call, result)
                        "prepareStories" -> prepareStories(call, result)
                        "playStories" -> playStories(call, result)
                        "playMoment" -> playMoment(call, result)
                        "prepareMoments" -> prepareMoments(call, result)
                        "playMoments" -> playMoments(call, result)
                        "playVideo" -> playVideo(call, result)
                        "prepareVideos" -> prepareVideos(call, result)
                        "playVideos" -> playVideos(call, result)
                        "dismissPlayer" -> dismissPlayer(call, result)
                        "setDoNotTrack" -> setDoNotTrack(call, result)
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
                                result.handleError(
                                        errCode = "initSDK",
                                        errMessage = e.message ?: "Unknown error"
                                )
                        },
                        sdkDelegate = globalDelegate,
                        playerEntryPointDelegate = playerEntryPointDelegate
                )

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

                BlazeSDK.playStory(
                        storyId = storyId,
                        pageId = pageId,
                        storyPlayerStyle = playerStyle,
                        triggerSource = triggerSource
                ) { blazeResult -> result.handleBlazeResult(blazeResult, "playStory") }
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

                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractStoriesPlayerStyle(application)
                val shouldOrderContentByReadStatus =
                        call.safeGetArgument<Boolean>("shouldOrderContentByReadStatus") ?: true
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource

                BlazeSDK.playStories(
                        dataSource = dataSource,
                        storyPlayerStyle = playerStyle,
                        shouldOrderContentByReadStatus = shouldOrderContentByReadStatus,
                        triggerSource = triggerSource
                ) { blazeResult -> result.handleBlazeResult(blazeResult, "playStories") }
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
                ) { blazeResult -> result.handleBlazeResult(blazeResult, "playMoment") }
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

                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractMomentsPlayerStyle(application)
                val shouldOrderContentByReadStatus =
                        call.safeGetArgument<Boolean>("shouldOrderContentByReadStatus") ?: true
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource

                BlazeSDK.playMoments(
                        dataSource = dataSource,
                        momentsPlayerStyle = playerStyle,
                        shouldOrderContentByReadStatus = shouldOrderContentByReadStatus,
                        triggerSource = triggerSource
                ) { blazeResult -> result.handleBlazeResult(blazeResult, "playMoments") }
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

                BlazeSDK.playVideo(
                        videoId = videoId,
                        videosPlayerStyle = playerStyle,
                        triggerSource = triggerSource
                ) { blazeResult -> result.handleBlazeResult(blazeResult, "playVideo") }
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

                val playerStyleMap = call.safeGetArgument<Map<String, Any>>("playerStyle")
                val playerStyle = playerStyleMap.extractVideosPlayerStyle(application)
                val shouldOrderContentByReadStatus =
                        call.safeGetArgument<Boolean>("shouldOrderContentByReadStatus") ?: true
                val triggerSource =
                        call.safeGetArgument<String>("triggerSource").asEntryPointTriggerSource

                BlazeSDK.playVideos(
                        dataSource = dataSource,
                        videosPlayerStyle = playerStyle,
                        shouldOrderContentByReadStatus = shouldOrderContentByReadStatus,
                        triggerSource = triggerSource
                ) { blazeResult -> result.handleBlazeResult(blazeResult, "playVideos") }
        }

        private fun setExternalUserId(call: MethodCall, result: MethodChannel.Result) {
                val externalUserId = call.safeGetArgument<String>("externalUserId")

                BlazeSDK.setExternalUserId(externalUserId)
                result.success(null)
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
                        result.handleBlazeResult(blazeResult, "handleUniversalLink")
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

                BlazeSDK.prepareStories(dataSource) { blazeResult ->
                        result.handleBlazeResult(blazeResult, "prepareStories")
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

                BlazeSDK.prepareMoments(dataSource) { blazeResult ->
                        result.handleBlazeResult(blazeResult, "prepareMoments")
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

                BlazeSDK.prepareVideos(dataSource) { blazeResult ->
                        result.handleBlazeResult(blazeResult, "prepareVideos")
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
                        result.handleBlazeResult(blazeResult, "updateGeoRestriction")
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
                        result.handleBlazeResult(blazeResult, "handleNotificationPayload")
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
                asyncBridge?.sendEvent(
                        "Blaze.onErrorThrown",
                        mapOf(
                                "domain" to error.domain.toString(),
                                "reason" to error.reason.toString(),
                                "message" to (error.message ?: "Unknown error")
                        )
                )
        }

        private fun onEventTriggered(eventData: BlazeAnalyticsEvent) {
                asyncBridge?.sendEvent(
                        "Blaze.onEventTriggered",
                        mapOf("eventData" to eventData.asJsonString)
                )
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
