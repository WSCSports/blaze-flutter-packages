package com.blaze.flutterblazegam.utils

import com.blaze.blazesdk.shared.results.BlazeResult
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