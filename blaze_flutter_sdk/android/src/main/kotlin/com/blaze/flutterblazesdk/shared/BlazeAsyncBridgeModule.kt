package com.blaze.flutterblazesdk.shared

import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.annotation.Keep
import com.blaze.flutterblazesdk.utils.parsing.gson.BlazeFlutterJsonParsingError
import com.blaze.flutterblazesdk.utils.parsing.gson.parseJsonWithDetailedErrors
import com.blaze.flutterblazesdk.utils.parsing.gson.toJsonStringWithException
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException
import kotlinx.coroutines.CancellableContinuation
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout

/**
 * Public interface for the Blaze Async Bridge Provides async communication between native code and
 * Dart
 */
@Keep
interface BlazeAsyncBridge {

    companion object {

        /**
         * Register the async bridge module and set it as the global instance
         * @param binaryMessenger The Flutter binary messenger
         */
        internal fun registerModule(binaryMessenger: BinaryMessenger) {
            val instance = BlazeAsyncBridgeModule(binaryMessenger)
            BlazeAsyncBridgeProvider.setInstance(instance)
        }

        /**
         * Get the global async bridge instance
         * @return The async bridge instance or null if not initialized
         */
        @Keep
        fun getInstance(): BlazeAsyncBridge? {
            return BlazeAsyncBridgeProvider.instance
        }
    }

    @Keep
    sealed class TimeoutType {

        @Keep object DefaultTimeout : TimeoutType()

        @Keep object NoTimeout : TimeoutType()

        @Keep data class Seconds(val seconds: Double) : TimeoutType()

        internal val timeoutInMillis: Long
            get() =
                    when (this) {
                        is DefaultTimeout -> 2000L // Default timeout
                        is NoTimeout -> Long.MAX_VALUE // Use Long.MAX_VALUE to indicate no timeout
                        is Seconds -> (seconds * 1000).toLong() // Convert seconds to milliseconds
                    }
    }
}

/// Private empty parameters data class for methods with no parameters.
private object EmptyParams

/**
 * Call a Dart method with parameters and return the result as type T.
 *
 * @param name The name of the Dart method to call.
 * @param params The parameters to pass to the Dart method.
 * @param timeout The timeout for the method call.
 */
@Keep
@JvmOverloads
suspend inline fun <reified T, reified P> BlazeAsyncBridge.callDartMethod(
        name: String,
        params: P,
        timeout: BlazeAsyncBridge.TimeoutType = BlazeAsyncBridge.TimeoutType.DefaultTimeout
): T {
    // Cast to concrete implementation and call internal method directly
    val bridge =
            this as? BlazeAsyncBridgeModule
                    ?: throw IllegalStateException(
                            "BlazeAsyncBridge must be implemented by BlazeAsyncBridgeModule"
                    )
    val result: String? =
            bridge.callDartMethodInternal(name = name, params = params, timeout = timeout)

    // Deserialize JSON string to target type - parseJsonWithDetailedErrors handles null case
    return try {
        result.parseJsonWithDetailedErrors<T>(methodName = name)
    } catch (e: BlazeFlutterJsonParsingError) {
        throw BlazeAsyncBridgeModule.BlazeAsyncError.TypeError(
                "Dart method '$name' parsing failed: ${e.message}"
        )
    }
}

/**
 * Call a Dart method with no parameters and return the result as type T.
 *
 * @param name The name of the Dart method to call.
 * @param timeout The timeout for the Dart method call.
 */
@Keep
@JvmOverloads
suspend inline fun <reified T> BlazeAsyncBridge.callDartMethod(
        name: String,
        timeout: BlazeAsyncBridge.TimeoutType = BlazeAsyncBridge.TimeoutType.DefaultTimeout
): T {
    // Use EmptyParams internally for methods with no parameters
    return callDartMethod(name = name, params = EmptyParams, timeout = timeout)
}

/**
 * Send a fire-and-forget event to Dart (no response expected) Useful for notifications and events
 * from non-suspending contexts
 *
 * @param name The name of the Dart method to call
 * @param params The parameters to pass to the Dart method
 */
@Keep
@JvmOverloads
inline fun <reified P> BlazeAsyncBridge.sendEvent(name: String, params: P) {
    CoroutineScope(Dispatchers.Main).launch {
        try {
            // Call as nullable Unit return type (fire-and-forget)
            this@sendEvent.callDartMethod<Unit?, P>(
                    name = name,
                    params = params,
                    timeout = BlazeAsyncBridge.TimeoutType.DefaultTimeout
            )
        } catch (e: Exception) {
            Log.e("BlazeAsyncBridge", "Error sending event $name: ${e.message}")
        }
    }
}

@Keep
@PublishedApi
internal class BlazeAsyncBridgeModule(private val binaryMessenger: BinaryMessenger) :
        BlazeAsyncBridge {

    companion object {
        const val NAME = "BlazeAsyncBridge"
        private const val BRIDGE_ASYNC_FUNCTION_NAME = "BlazeAsyncBridge.dartRequest"
        private const val CHANNEL_NAME = "blaze-async-bridge"
    }

    // Thread-safe maps for callbacks
    private val callbackMap = ConcurrentHashMap<String, CompletionHandler>()

    // Main thread handler for UI operations
    private val mainHandler = Handler(Looper.getMainLooper())

    // Method channel for communication with Dart
    private val methodChannel = MethodChannel(binaryMessenger, CHANNEL_NAME)

    // Completion handler interface
    private fun interface CompletionHandler {
        fun invoke(result: String?, error: Throwable?)
    }

    // Error types
    sealed class BlazeAsyncError(message: String) : Exception(message) {
        class TimeoutError(methodName: String) :
                BlazeAsyncError("Dart method call timed out: $methodName")
        class DartError(errorMessage: String) : BlazeAsyncError(errorMessage)
        class TypeError(message: String) : BlazeAsyncError(message)
    }

    init {
        // Set up method call handler for responses from Dart
        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "resolveDartResponse" -> {
                    resolveDartResponse(call.arguments as Map<String, Any>)
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }

    /** Internal method that returns JSON string - core implementation */
    @PublishedApi
    internal suspend fun <P> callDartMethodInternal(
            name: String,
            params: P,
            timeout: BlazeAsyncBridge.TimeoutType
    ): String? {
        val timeoutMillis = timeout.timeoutInMillis
        val callbackId = UUID.randomUUID().toString()
        try {
            return safeWithTimeout(timeoutMillis) {
                withContext(Dispatchers.Main) {
                    suspendCancellableCoroutine { continuation ->
                        try {
                            storeCallback(callbackId, continuation)
                            sendDartRequest(name, params, callbackId)
                            continuation.invokeOnCancellation { cause ->
                                cleanupCallback(callbackId)
                                Log.d(
                                        NAME,
                                        "Task cancelled for Dart method call: $name, reason: ${cause?.message}"
                                )
                            }
                        } catch (e: Throwable) {
                            cleanupCallback(callbackId)
                            Log.e(NAME, "Error setting up Dart method call: $name", e)
                            continuation.resumeWithException(e)
                        }
                    }
                }
            }
        } catch (e: TimeoutCancellationException) {
            cleanupCallback(callbackId)
            throw BlazeAsyncError.TimeoutError(name)
        } catch (e: Throwable) {
            cleanupCallback(callbackId)
            throw e
        }
    }

    // MARK: - Private Helper Methods

    private fun storeCallback(callbackId: String, continuation: CancellableContinuation<String?>) {
        val completionHandler = CompletionHandler { result, error ->
            handleCallbackResponse(callbackId, result, error, continuation)
        }
        callbackMap[callbackId] = completionHandler
    }

    private fun handleCallbackResponse(
            callbackId: String,
            result: String?,
            error: Throwable?,
            continuation: CancellableContinuation<String?>
    ) {
        // Resume continuation
        if (error != null) {
            continuation.resumeWithException(error)
        } else {
            continuation.resume(result)
        }

        // Remove callback from map
        cleanupCallback(callbackId)
    }

    // Send Dart request
    private fun <P> sendDartRequest(name: String, params: P, callbackId: String) {
        // Serialize params to JSON string using GsonUtils
        val paramsJson =
                try {
                    when (params) {
                        null -> "null"
                        is EmptyParams -> "null"
                        else -> params.toJsonStringWithException()
                    }
                } catch (e: Exception) {
                    Log.e(NAME, "Failed to serialize params to JSON for method: $name", e)
                    throw BlazeAsyncError.TypeError("Failed to serialize params: ${e.message}")
                }

        val eventParams =
                mapOf(
                        "methodName" to name,
                        "params" to paramsJson, // Send as JSON string instead of Map
                        "callbackId" to callbackId
                )

        // Invoke method on Dart side - ensure we're on main thread
        if (Looper.myLooper() == Looper.getMainLooper()) {
            // Already on main thread
            methodChannel.invokeMethod(BRIDGE_ASYNC_FUNCTION_NAME, eventParams)
        } else {
            // Switch to main thread
            Handler(Looper.getMainLooper()).post {
                methodChannel.invokeMethod(BRIDGE_ASYNC_FUNCTION_NAME, eventParams)
            }
        }
        Log.d(NAME, "Sending Dart request with JSON params: $name, callbackId: $callbackId")
    }

    /** Cleanup callback - used for cancellation */
    private fun cleanupCallback(callbackId: String) {
        callbackMap.remove(callbackId)
    }

    /**
     * Method called by Dart to resolve/reject a native call
     * resolveJSResponse
     */
    private fun resolveDartResponse(response: Map<String, Any>) {
        // Run on main thread
        mainHandler.post { handleDartResponse(response) }
    }

    // Handle Dart response
    private fun handleDartResponse(response: Map<String, Any>) {
        val callbackId = response["callbackId"] as? String
        if (callbackId == null) {
            Log.e(NAME, "Invalid response format: missing callbackId")
            return
        }

        val callback = callbackMap[callbackId]
        if (callback == null) {
            // Callback might have already been handled (e.g., due to timeout or cancellation)
            Log.d(
                    NAME,
                    "Received response for unknown callbackId: $callbackId (likely already handled)"
            )
            return
        }

        val success = response["success"] as? Boolean ?: false

        if (success) {
            // Extract JSON string from response - Dart should send data as JSON string
            val jsonString = response["data"] as? String
            callback.invoke(jsonString, null)
            Log.d(NAME, "Resolved Dart method call: callbackId: $callbackId")
        } else {
            val errorMessage = response["errorMessage"] as? String ?: "Unknown error"
            val error = BlazeAsyncError.DartError(errorMessage)
            callback.invoke(null, error)
            Log.d(NAME, "Rejected Dart method call: callbackId: $callbackId, error: $errorMessage")
        }

        // Clean up callback
        cleanupCallback(callbackId)
    }
}

internal suspend fun <T> safeWithTimeout(timeoutMs: Long, block: suspend () -> T): T {
    return if (timeoutMs != Long.MAX_VALUE) {
        withTimeout(timeoutMs) { block() }
    } else {
        block() // No timeout
    }
}
