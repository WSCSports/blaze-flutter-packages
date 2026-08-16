package com.blaze.flutterblazesdk.utils

import com.blaze.blazesdk.features.shared.models.ui_shared.BlazeLiveStreamStatus
import com.blaze.blazesdk.features.videos.models.ui.BlazeVideoContentType
import com.blaze.blazesdk.features.videos.models.ui.BlazeVideosFilterParams

/**
 * Builds a [BlazeVideosFilterParams] from a Flutter-provided map, starting from the native
 * "all values" default ([BlazeVideosFilterParams.base]) and overriding only the keys that are
 * present. The native constructor is internal with both fields required (non-null) - unlike iOS,
 * which has a public initializer with optional/nilable fields - so a `null`/absent Dart-side value
 * on either key intentionally leaves that dimension unfiltered (all values), mirroring iOS's `nil`
 * semantics for "no filter" via a different native mechanism.
 */
fun Map<String, Any?>?.extractVideosFilterParams(): BlazeVideosFilterParams? {
    val map = this ?: return null

    val params = BlazeVideosFilterParams.base()

    (map["contentTypes"] as? List<*>)?.let { rawList ->
        params.contentTypes =
            rawList.filterIsInstance<String>().mapNotNull { it.toBlazeVideoContentType() }
    }

    (map["streamStates"] as? List<*>)?.let { rawList ->
        params.streamStates =
            rawList.filterIsInstance<String>().mapNotNull { it.toBlazeLiveStreamStatus() }
    }

    return params
}

private fun String.toBlazeVideoContentType(): BlazeVideoContentType? {
    return when (this) {
        "video" -> BlazeVideoContentType.VIDEO
        "stream" -> BlazeVideoContentType.STREAM
        else -> null
    }
}

private fun String.toBlazeLiveStreamStatus(): BlazeLiveStreamStatus? {
    return when (this) {
        "live" -> BlazeLiveStreamStatus.LIVE
        "upcoming" -> BlazeLiveStreamStatus.UPCOMING
        "ended" -> BlazeLiveStreamStatus.ENDED
        else -> null
    }
}
