package com.blaze.flutterblazesdk.utils

import android.util.Log
import androidx.annotation.Keep
import androidx.annotation.UiThread
import com.blaze.blazesdk.shared.results.BlazeResult
import com.blaze.flutterblazesdk.utils.parsing.gson.toJsonString
import com.blaze.flutterblazesdk.utils.parsing.gson.toJsonStringWithException
import io.flutter.plugin.common.MethodChannel

// Represents error code that can be converted into a BlazeError on the Dart side.
const val blazeConvertibleErrorCode = "BLAZE_CONVERTIBLE_ERROR"

// Represents a generic error code on the Blaze Flutter native side.
const val blazeFlutterErrorCode = "BLAZE_FLUTTER_ERROR"

fun <T> MethodChannel.Result.handleBlazeResult(
    result: BlazeResult<T>
) {
    when (result) {
        is BlazeResult.Success -> this.success(null)
        is BlazeResult.Error -> {
            val flutterError = BlazeFlutterError.fromBlazeError(result)
            val flutterErrorString = flutterError.toJsonString()
            this.error(blazeConvertibleErrorCode, result.message, flutterErrorString)
        }
    }
}

fun MethodChannel.Result.handleError(
    errCode: String,
    errMessage: String
) {
    this.error(blazeFlutterErrorCode, errMessage, null)
}

@Keep
data class BlazeFlutterError(
    val domain: String?,
    val reason: String?,
    val message: String?,
    val metadata: Map<String, String>?,
    val underlyingError: String?,
) {

    companion object {
        fun fromBlazeError(error: BlazeResult.Error): BlazeFlutterError {
            return BlazeFlutterError(
                domain = error.domain?.name,
                reason = error.reason?.name,
                message = error.message,
                metadata = error.metadata,
                underlyingError = error.cause?.message
            )
        }
    }

}

@UiThread
fun MethodChannel.invokeMethodWithJsonStringFromObject(
    name: String,
    params: Any?
) {
    // Serialize params to JSON string using GsonUtils
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