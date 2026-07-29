package com.blaze.flutterblazesdk.utils

import com.blaze.blazesdk.features.moments.models.configuration.BlazeMomentsLoopBehavior
import com.blaze.blazesdk.features.moments.models.configuration.BlazeMomentsPlaybackConfiguration
import com.blaze.blazesdk.features.stories.models.configuration.BlazeStoriesPlaybackConfiguration
import com.blaze.blazesdk.features.videos.models.configuration.BlazeVideosPlaybackConfiguration
import com.blaze.blazesdk.shared.BlazeSDK

/**
 * Builds a [BlazeVideosPlaybackConfiguration] from a Flutter-provided map, starting from the
 * current SDK default and overriding only the keys that are present (mirroring the RN bridge).
 */
fun Map<String, Any>?.extractVideosPlaybackConfiguration(): BlazeVideosPlaybackConfiguration? {
    val map = this ?: return null

    val config = BlazeSDK.getDefaultVideosPlaybackConfiguration()

    (map["multiAspectRatio"] as? Boolean)?.let { config.multiAspectRatio = it }
    (map["shouldOpenInLandscape"] as? Boolean)?.let { config.shouldOpenOnLandscape = it }

    (map["pipConfiguration"] as? Map<*, *>)?.let { pipMap ->
        (pipMap["enterPipOnAppBackground"] as? Boolean)?.let {
            config.pip.enterPipOnAppBackground = it
        }
    }

    map.extractBufferingSpinnerDelayMs()?.let { delayMs ->
        config.bufferingSpinnerDelayMs = delayMs
    }

    return config
}

/**
 * Builds a [BlazeMomentsPlaybackConfiguration] from a Flutter-provided map, starting from the
 * SDK base configuration and overriding only the keys that are present (mirroring the RN bridge).
 */
fun Map<String, Any>?.extractMomentsPlaybackConfiguration(): BlazeMomentsPlaybackConfiguration? {
    val map = this ?: return null

    val config = BlazeMomentsPlaybackConfiguration.base()

    (map["loopBehavior"] as? Map<*, *>)?.let { loopBehaviorMap ->
        when (loopBehaviorMap["type"] as? String) {
            "infiniteLoop" -> config.loopBehavior = BlazeMomentsLoopBehavior.InfiniteLoop
            "loopAndAdvance" -> {
                val numberOfPlays =
                    (loopBehaviorMap["numberOfPlays"] as? Number)?.toInt() ?: 1
                config.loopBehavior = BlazeMomentsLoopBehavior.LoopAndAdvance(
                    numberOfPlays = maxOf(1, numberOfPlays)
                )
            }
        }
    }

    map.extractBufferingSpinnerDelayMs()?.let { delayMs ->
        config.bufferingSpinnerDelayMs = delayMs
    }

    return config
}

/**
 * Builds a [BlazeStoriesPlaybackConfiguration] from a Flutter-provided map, starting from the
 * SDK base configuration and overriding only the keys that are present (mirroring the RN bridge).
 */
fun Map<String, Any>?.extractStoriesPlaybackConfiguration(): BlazeStoriesPlaybackConfiguration? {
    val map = this ?: return null

    val config = BlazeStoriesPlaybackConfiguration.base()

    map.extractBufferingSpinnerDelayMs()?.let { delayMs ->
        config.bufferingSpinnerDelayMs = delayMs
    }

    return config
}

/**
 * Reads the `bufferingSpinnerDelayMs` key from the Flutter-supplied map. The Dart contract is
 * milliseconds; the method channel may deliver the number as Int or Long, so it is read as a
 * [Number] and converted to [Long] to match the native `bufferingSpinnerDelayMs: Long` field.
 * Negative values are clamped to `0`. Returns `null` if the key is missing.
 */
private fun Map<String, Any>.extractBufferingSpinnerDelayMs(): Long? {
    return (this["bufferingSpinnerDelayMs"] as? Number)?.toLong()?.coerceAtLeast(0L)
}
