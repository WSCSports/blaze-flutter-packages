package com.blaze.flutterblazesdk.utils

import com.blaze.blazesdk.delegates.models.BlazePlayerType

/// Parses a Dart `BlazePlayerType` wire value, the inverse of `BlazePlayerType.toFlutterValue()`
fun String?.toBlazePlayerType(): BlazePlayerType? {
    return when (this) {
        "moments" -> BlazePlayerType.MOMENTS
        "stories" -> BlazePlayerType.STORIES
        "videos" -> BlazePlayerType.VIDEOS
        else -> null
    }
}
