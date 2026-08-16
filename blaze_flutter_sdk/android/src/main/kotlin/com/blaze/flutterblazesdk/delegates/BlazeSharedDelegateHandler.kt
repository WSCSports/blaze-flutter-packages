package com.blaze.flutterblazesdk.delegates

import androidx.annotation.Keep
import com.blaze.blazesdk.delegates.BlazeCastingState
import com.blaze.blazesdk.delegates.BlazePipState
import com.blaze.blazesdk.delegates.models.BlazeCTAActionType
import com.blaze.blazesdk.delegates.models.BlazePlayerEvent
import com.blaze.blazesdk.delegates.models.BlazePlayerType
import com.blaze.blazesdk.delegates.models.BlazeShareParams
import com.blaze.blazesdk.features.shared.models.ui_shared.BlazeLinkActionHandleType
import com.blaze.blazesdk.shared.results.BlazeResult
import com.blaze.blazesdk.style.shared.models.BlazePlayerCustomActionButtonParams
import com.blaze.flutterblazesdk.sdk_module.toFlutterValue
import com.blaze.flutterblazesdk.utils.BlazeFlutterError
import com.blaze.flutterblazesdk.utils.BlazePlayerEventData

// Shared delegate handler that eliminates code duplication between Widget and EntryPoint delegates
// Uses the same data preparation logic but allows different communication methods

class BlazeSharedDelegateHandler {

    // Shared Delegate Methods

    fun onDataLoadStarted(
        playerType: BlazePlayerType,
        sourceId: String?,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(val playerType: String, val sourceId: String?)

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId
        )

        completion(params)
    }

    fun onDataLoadComplete(
        playerType: BlazePlayerType,
        sourceId: String?,
        itemsCount: Int,
        result: BlazeResult<Unit>,
        completion: (Any) -> Unit
    ) {
        val flutterError =
            when (result) {
                is BlazeResult.Error -> BlazeFlutterError.fromBlazeError(result)
                else -> null
            }

        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val itemsCount: Int,
            val error: BlazeFlutterError?
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            itemsCount = itemsCount,
            error = flutterError
        )

        completion(params)
    }

    fun onPlayerDidAppear(
        playerType: BlazePlayerType,
        sourceId: String?,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(val playerType: String, val sourceId: String?)

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId
        )

        completion(params)
    }

    fun onPlayerDidDismiss(
        playerType: BlazePlayerType,
        sourceId: String?,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(val playerType: String, val sourceId: String?)

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId
        )

        completion(params)
    }

    fun onTriggerCTA(
        playerType: BlazePlayerType,
        sourceId: String?,
        actionType: BlazeCTAActionType,
        actionParam: String,
        appOverridesCTAHandling: Boolean,
        completion: (Any) -> Unit
    ): Boolean {
        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val actionType: String,
            val actionParam: String
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            actionType = actionType.toFlutterValue(),
            actionParam = actionParam
        )

        completion(params)
        return appOverridesCTAHandling
    }

    fun onTriggerPlayerBodyTextLink(
        playerType: BlazePlayerType,
        sourceId: String?,
        actionParam: String,
        completion: (Any) -> Unit
    ): BlazeLinkActionHandleType {
        @Keep
        data class Params(val playerType: String, val sourceId: String?, val actionParam: String)

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            actionParam = actionParam
        )

        completion(params)
        return BlazeLinkActionHandleType.DEEPLINK
    }

    fun onPlayerEventTriggered(
        playerType: BlazePlayerType,
        sourceId: String?,
        event: BlazePlayerEvent,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class PlayerEventData(
            val playerType: String,
            val sourceId: String?,
            val eventData: BlazePlayerEventData
        )

        val eventData = BlazePlayerEventData.fromBlazePlayerEvent(event)

        val params = PlayerEventData(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            eventData = eventData
        )

        completion(params)
    }

    fun onTriggerCustomActionButton(
        playerType: BlazePlayerType,
        sourceId: String?,
        customParams: BlazePlayerCustomActionButtonParams,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val buttonId: String,
            val buttonName: String,
            val appMetadata: Map<String, Any>?,
            val sdkMetadata: Map<String, Any>?
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            buttonId = customParams.id,
            buttonName = customParams.name,
            appMetadata = customParams.appMetadata?.takeIf { it.isNotEmpty() },
            sdkMetadata = customParams.sdkMetadata.takeIf { it.isNotEmpty() }
        )

        completion(params)
    }

    // Observer-only: always returns null so the SDK falls back to its own
    // sdkGeneratedLink. Overriding the shared link would need a synchronous
    // return value from Dart, which the async bridge (a ~2s round-trip) can't
    // provide — same constraint as onTriggerCTA/onTriggerPlayerBodyTextLink.
    fun onShareClicked(
        playerType: BlazePlayerType,
        sourceId: String?,
        shareParams: BlazeShareParams,
        completion: (Any) -> Unit
    ): String? {
        @Keep
        data class ContentTypeParams(
            val runtimeType: String,
            val pageId: String? = null
        )

        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val id: String,
            val contentType: ContentTypeParams,
            val title: String?,
            val description: String?,
            val sdkGeneratedLink: String,
            val extraInfo: Map<String, String>
        )

        val contentType =
            when (val contentType = shareParams.contentType) {
                is BlazeShareParams.BlazeShareContentType.Story ->
                    ContentTypeParams(runtimeType = "story", pageId = contentType.pageId)
                is BlazeShareParams.BlazeShareContentType.Moment ->
                    ContentTypeParams(runtimeType = "moment")
                is BlazeShareParams.BlazeShareContentType.Video ->
                    ContentTypeParams(runtimeType = "video")
            }

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            id = shareParams.id,
            contentType = contentType,
            title = shareParams.title,
            description = shareParams.description,
            sdkGeneratedLink = shareParams.sdkGeneratedLink,
            extraInfo = shareParams.extraInfo
        )

        completion(params)
        return null
    }

    fun onReadStatusChanged(
        playerType: BlazePlayerType,
        sourceId: String?,
        dataSourceStringRepresentation: String,
        isEntireContentRead: Boolean,
        itemReadStatus: Map<String, Boolean>,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val dataSourceStringRepresentation: String,
            val isEntireContentRead: Boolean,
            val itemReadStatus: Map<String, Boolean>
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            dataSourceStringRepresentation = dataSourceStringRepresentation,
            isEntireContentRead = isEntireContentRead,
            itemReadStatus = itemReadStatus
        )

        completion(params)
    }

    fun onFollowEntityClicked(
        playerType: BlazePlayerType,
        sourceId: String?,
        newFollowingState: Boolean,
        followEntityId: String,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val newFollowingState: Boolean,
            val followEntityId: String
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            newFollowingState = newFollowingState,
            followEntityId = followEntityId
        )

        completion(params)
    }

    fun onCastingStateChanged(
        playerType: BlazePlayerType,
        sourceId: String?,
        newState: BlazeCastingState,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val state: String
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            state = newState.name.lowercase()
        )

        completion(params)
    }

    fun onPiPStateChanged(
        playerType: BlazePlayerType,
        sourceId: String?,
        newState: BlazePipState,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val state: String
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            state = newState.name.lowercase()
        )

        completion(params)
    }

    // Container-Tabs-Specific Methods

    fun onTabSelected(
        playerType: BlazePlayerType,
        sourceId: String?,
        tabIndex: Int,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(
            val playerType: String,
            val sourceId: String?,
            val tabIndex: Int
        )

        val params = Params(
            playerType = playerType.toFlutterValue(),
            sourceId = sourceId,
            tabIndex = tabIndex
        )

        completion(params)
    }

    // Widget-Specific Methods

    fun onWidgetItemClicked(
        widgetId: String,
        widgetItemId: String,
        widgetItemTitle: String?,
        completion: (Any) -> Unit
    ) {
        @Keep
        data class Params(
            val widgetId: String,
            val widgetItemId: String,
            val widgetItemTitle: String?
        )

        val params = Params(
            widgetId = widgetId,
            widgetItemId = widgetItemId,
            widgetItemTitle = widgetItemTitle
        )

        completion(params)
    }
}
