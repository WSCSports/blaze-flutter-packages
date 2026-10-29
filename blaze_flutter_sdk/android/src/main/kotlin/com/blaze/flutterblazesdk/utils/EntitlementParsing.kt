package com.blaze.flutterblazesdk.utils

import com.blaze.blazesdk.entitlements.models.BlazeFetchedContentPolicy

/// Parses a Dart `BlazeFetchedContentPolicy` wire value
fun String?.toFetchedContentPolicy(): BlazeFetchedContentPolicy? {
    return when (this) {
        "keep" -> BlazeFetchedContentPolicy.Keep
        "evict" -> BlazeFetchedContentPolicy.Evict
        else -> null
    }
}
