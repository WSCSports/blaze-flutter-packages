package com.blaze.flutterblazesdk.utils

import android.util.Log
import androidx.annotation.Keep
import com.blaze.blazesdk.delegates.models.BlazePlayerEvent
import com.blaze.flutterblazesdk.utils.parsing.gson.toJsonString

/**
 * Data class that wraps BlazePlayerEvent data for native-to-Flutter communication This centralizes
 * the player event data structure and can be reused across the SDK
 *
 * Usage example:
 * ```kotlin
 * val eventData = BlazePlayerEventData.fromBlazePlayerEvent(playerEvent)
 * // Use eventData.toJsonString() to send to Flutter
 * ```
 */
@Keep
data class BlazePlayerEventData(val playerEventType: String, val playerEventParams: Any) {

    companion object {
        /**
         * Create BlazePlayerEventData from a native BlazePlayerEvent This is the main factory
         * method for converting native events
         */
        fun fromBlazePlayerEvent(event: BlazePlayerEvent): BlazePlayerEventData {
            val eventType = event.toFlutterEventType()
            val eventParams = event.toFlutterEventParams()

            return BlazePlayerEventData(
                    playerEventType = eventType,
                    playerEventParams = eventParams
            )
        }

    }

}

/// Extension function to convert BlazePlayerEvent to Flutter event type string
fun BlazePlayerEvent.toFlutterEventType(): String {
    return when (this) {
        is BlazePlayerEvent.OnMomentStart -> "OnMomentStart"
        is BlazePlayerEvent.OnStoryStart -> "OnStoryStart"
        is BlazePlayerEvent.OnVideoStart -> "OnVideoStart"
    }
}

/// Extension function to convert BlazePlayerEvent parameters to JSON string
fun BlazePlayerEvent.toFlutterEventParams(): Any {
    val params: Any =
        when (this) {
            is BlazePlayerEvent.OnMomentStart -> {
                @Keep
                data class OnMomentStartParams(val momentId: String)
                OnMomentStartParams(momentId = this.params.momentId)
            }
            is BlazePlayerEvent.OnStoryStart -> {
                @Keep
                data class OnStoryStartParams(val storyId: String)
                OnStoryStartParams(storyId = this.params.storyId)
            }
            is BlazePlayerEvent.OnVideoStart -> {
                @Keep
                data class OnVideoStartParams(val videoId: String)
                OnVideoStartParams(videoId = this.params.videoId)
            }
        }

    return params
}