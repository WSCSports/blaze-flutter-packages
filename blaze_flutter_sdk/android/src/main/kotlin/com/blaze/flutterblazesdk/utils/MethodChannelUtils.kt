package com.blaze.flutterblazesdk.utils

import android.util.Log
import androidx.annotation.UiThread
import com.blaze.blazesdk.shared.results.BlazeResult
import com.blaze.flutterblazesdk.utils.parsing.gson.toJsonStringWithException
import io.flutter.plugin.common.MethodChannel

fun <T> MethodChannel.Result.handleBlazeResult(
    result: BlazeResult<T>,
    errCode: String,
) {
    when (result) {
        is BlazeResult.Success -> this.success(null)
        is BlazeResult.Error -> this.error(errCode, result.message, null)
    }
}

fun MethodChannel.Result.handleError(
    errCode: String,
    errMessage: String
) {
    handleBlazeResult(
        result = BlazeResult.Error(
            message = errMessage
        ),
        errCode = errCode
    )
}

@UiThread
fun MethodChannel.invokeMethodWithJsonStringFromObject(
    name: String,
    params: Any?
) {
    // Serialize params to JSON string using GsonUtils - matches React Native
    val paramsJson =
        try {
            params?.toJsonStringWithException()
        } catch (e: Exception) {
            Log.e("BlazeParsingError", "MethodChannel.invokeMethodWithJsonStringFromObject: Failed to serialize params to JSON for method: $name", e)
        }

    invokeMethod(
        name,
        paramsJson
    )
}