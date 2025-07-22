package com.blaze.flutterblazeima.utils

import io.flutter.plugin.common.MethodCall

fun <T> MethodCall.safeGetArgument(key: String): T? {
    return try {
        this.argument<T>(key)
    } catch (e: Exception) {
        null
    }
}