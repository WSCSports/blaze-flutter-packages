package com.blaze.flutterblazesdk.delegates

import androidx.annotation.Keep
import com.blaze.blazesdk.delegates.models.BlazeCTAActionType
import com.blaze.blazesdk.delegates.models.BlazePlayerEvent
import com.blaze.blazesdk.delegates.models.BlazePlayerType
import com.blaze.blazesdk.features.shared.models.ui_shared.BlazeLinkActionHandleType
import com.blaze.blazesdk.shared.results.BlazeResult
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
