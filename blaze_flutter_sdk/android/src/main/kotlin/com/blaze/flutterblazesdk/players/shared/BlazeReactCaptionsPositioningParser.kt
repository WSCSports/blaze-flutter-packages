package com.blaze.flutterblazesdk.players.shared

import com.blaze.blazesdk.style.players.BlazeCaptionsXPosition
import com.blaze.blazesdk.style.players.BlazeCaptionsYPosition

/**
 * Parses a raw Map (deserialized from Flutter via Gson) into a native [BlazeCaptionsXPosition].
 *
 * The map comes in the form: { "type": "start" } or { "type": "custom", "offsetPercent": 50 }.
 */
fun Map<String, Any?>.toBlazeCaptionsXPosition(): BlazeCaptionsXPosition? {
    val type = this["type"] as? String ?: return null

    return when (type) {
        "start" -> BlazeCaptionsXPosition.Start
        "center" -> BlazeCaptionsXPosition.Center
        "custom" -> {
            val offsetPercent = (this["offsetPercent"] as? Number)?.toInt() ?: return null
            BlazeCaptionsXPosition.Custom(offsetPercent)
        }
        else -> null
    }
}

/**
 * Parses a raw Map (deserialized from Flutter via Gson) into a native [BlazeCaptionsYPosition].
 *
 * The map comes in the form: { "type": "top" } or { "type": "custom", "offsetPercent": 50 }.
 */
fun Map<String, Any?>.toBlazeCaptionsYPosition(): BlazeCaptionsYPosition? {
    val type = this["type"] as? String ?: return null

    return when (type) {
        "top" -> BlazeCaptionsYPosition.Top
        "center" -> BlazeCaptionsYPosition.Center
        "bottom" -> BlazeCaptionsYPosition.Bottom
        "custom" -> {
            val offsetPercent = (this["offsetPercent"] as? Number)?.toInt() ?: return null
            BlazeCaptionsYPosition.Custom(offsetPercent)
        }
        else -> null
    }
}
