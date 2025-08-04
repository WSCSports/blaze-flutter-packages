package com.blaze.flutterblazeima.sdk_module

import android.app.Application
import android.util.Log
import androidx.annotation.Keep
import com.blaze.blazesdk.ads.ima.BlazeIMAHandlerEventType
import com.blaze.blazesdk.ads.ima.models.BlazeImaAdInfo
import com.blaze.flutterblazeima.utils.handleError
import com.blaze.flutterblazesdk.ads.BlazeFlutterContentExtraInfo
import com.blaze.flutterblazesdk.ads.toFlutterModel
import com.blaze.flutterblazesdk.shared.BlazeAsyncBridge
import com.blaze.flutterblazesdk.shared.callDartMethod
import com.blaze.flutterblazesdk.shared.sendEvent
import com.blaze.ima.BlazeIMA
import com.blaze.ima.BlazeIMAAdRequestInformation
import com.blaze.ima.BlazeIMADelegate
import com.google.ads.interactivemedia.v3.api.ImaSdkFactory
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

object BlazeFlutterIMAModule {

    val TAG: String = BlazeFlutterIMAModule::class.java.simpleName

    private lateinit var methodChannel: MethodChannel
    private lateinit var application: Application
    private val asyncBridge: BlazeAsyncBridge? by lazy { BlazeAsyncBridge.getInstance() }

    // IMA delegate that communicates with Flutter - defined as property to keep it alive
    private val delegate: BlazeIMADelegate by lazy {
        object : BlazeIMADelegate {

            override fun onIMAAdEvent(
                    eventType: BlazeIMAHandlerEventType,
                    adInfo: BlazeImaAdInfo?
            ) {
                this@BlazeFlutterIMAModule.onIMAAdEvent(eventType = eventType, adInfo = adInfo)
            }

            override fun onIMAAdError(errMsg: String) {
                this@BlazeFlutterIMAModule.onIMAAdError(errorMessage = errMsg)
            }

            override suspend fun additionalIMATagQueryParams(
                    requestData: BlazeIMAAdRequestInformation
            ): Map<String, String> {
                return this@BlazeFlutterIMAModule.additionalIMATagQueryParams(
                        requestData = requestData
                )
                        ?: super.additionalIMATagQueryParams(requestData = requestData)
            }

            override suspend fun customIMASettings(
                    requestData: BlazeIMAAdRequestInformation
            ): ImaSdkSettings? {
                return this@BlazeFlutterIMAModule.customIMASettings(requestData = requestData)
                        ?: super.customIMASettings(requestData = requestData)
            }

            override suspend fun overrideAdTagUrl(
                    requestData: BlazeIMAAdRequestInformation
            ): String? {
                return this@BlazeFlutterIMAModule.overrideAdTagUrl(requestData = requestData)
                        ?: super.overrideAdTagUrl(requestData = requestData)
            }
        }
    }

    fun registerModule(messenger: BinaryMessenger, application: Application) {
        this.application = application

        methodChannel = MethodChannel(messenger, "blaze-ima-module")
        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "enableAds" -> {
                    enableAds(call = call, result = result)
                }
                "disableAds" -> {
                    disableAds(call = call, result = result)
                }
                else -> {
                    val errorMessage = "Method name ${call.method} hasn't been implemented!!"
                    Log.e("BlazeFlutterIMAModule", errorMessage)

                    result.handleError(errCode = "BlazeFlutterIMAModule", errMessage = errorMessage)
                }
            }
        }
    }

    private fun enableAds(call: MethodCall, result: MethodChannel.Result) {
        // Enable IMA with the delegate property
        BlazeIMA.enableAds(delegate = delegate)
        result.success(null)
    }

    private fun disableAds(call: MethodCall, result: MethodChannel.Result) {
        // Disable IMA ads
        BlazeIMA.disableAds()
        result.success(null)
    }

    // MARK: - Delegate Implementation Functions

    private fun onIMAAdError(errorMessage: String) {
        // Send error event to Flutter
        asyncBridge?.sendEvent(
                name = "BlazeIMA.onAdError",
                params = mapOf("errorMessage" to errorMessage)
        )
    }

    private fun onIMAAdEvent(eventType: BlazeIMAHandlerEventType, adInfo: BlazeImaAdInfo?) {
        // Send event to Flutter with safe enum conversion
        asyncBridge?.sendEvent(
                name = "BlazeIMA.onAdEvent",
                params = mapOf("eventType" to eventType.toFlutterEventTypeParam())
        )
    }

    private suspend fun additionalIMATagQueryParams(
            requestData: BlazeIMAAdRequestInformation
    ): Map<String, String>? {
        val asyncBridge = asyncBridge ?: return null

        return try {
            val result: Map<String, String> =
                    asyncBridge.callDartMethod(
                            name = "BlazeIMA.additionalIMATagQueryParams",
                            params = requestData.toFlutterModel()
                    )
            result
        } catch (e: Exception) {
            // Log specific error and continue with fallback
            Log.d(TAG, "Error additionalIMATagQueryParams: ${e.message}")
            null
        }
    }

    private suspend fun customIMASettings(
        requestData: BlazeIMAAdRequestInformation
    ): ImaSdkSettings? {
        val asyncBridge = asyncBridge ?: return null

        return try {
            val result: BlazeFlutterIMASettings? =
                asyncBridge.callDartMethod(
                    name = "BlazeIMA.customIMASettings",
                    params = requestData.toFlutterModel()
                )

            result ?: run {
                return null
            }

            // imaSdkSettings is optional. Clients can use this to customize ImaSdkSettings.
            val settings = ImaSdkFactory.getInstance().createImaSdkSettings().apply {
                result.language?.let { language = it }

                result.ppid?.let { ppid = it }

                result.sessionId?.let { sessionId = it }
            }

            settings
        } catch (e: Exception) {
            // Log specific error and continue with fallback
            Log.d(TAG, "Error customIMASettings: ${e.message}")
            null
        }
    }

    private suspend fun overrideAdTagUrl(requestData: BlazeIMAAdRequestInformation): String? {
        val asyncBridge = asyncBridge ?: return null

        return try {
            val result: String? =
                    asyncBridge.callDartMethod(
                            name = "BlazeIMA.overrideAdTagUrl",
                            params = requestData.toFlutterModel()
                    )
            result
        } catch (e: Exception) {
            // Log specific error and continue with fallback
            Log.d(TAG, "Error overrideAdTagUrl: ${e.message}")
            null
        }
    }

    // Extension function to convert event type to Flutter param safely
    private fun BlazeIMAHandlerEventType.toFlutterEventTypeParam(): String {
        return when (this) {
            BlazeIMAHandlerEventType.AD_STARTED -> "adStarted"
            BlazeIMAHandlerEventType.ALL_ADS_COMPLETED -> "allAdsCompleted"
            BlazeIMAHandlerEventType.AD_CLICKED -> "adClicked"
            BlazeIMAHandlerEventType.AD_COMPLETED -> "adCompleted"
            BlazeIMAHandlerEventType.AD_LOADED -> "adLoaded"
            BlazeIMAHandlerEventType.AD_PAUSED -> "adPaused"
            BlazeIMAHandlerEventType.AD_RESUMED -> "adResumed"
            BlazeIMAHandlerEventType.AD_SKIPPED -> "adSkipped"
            BlazeIMAHandlerEventType.AD_TAPPED -> "adTapped"
            BlazeIMAHandlerEventType.AD_FIRST_QUARTILE -> "adFirstQuartile"
            BlazeIMAHandlerEventType.AD_MIDPOINT -> "adMidpoint"
            BlazeIMAHandlerEventType.AD_THIRD_QUARTILE -> "adThirdQuartile"
            BlazeIMAHandlerEventType.AD_REQUESTED -> "adRequested"
        }
    }

}

@Keep
private data class BlazeFlutterIMAAdRequestParams(val requestDataInfo: RequestDataInfo) {
    @Keep data class RequestDataInfo(val extraInfo: BlazeFlutterContentExtraInfo)
}

@Keep
data class BlazeFlutterIMASettings(
        val language: String?,
        val ppid: String?,
        val sessionId: String?
)

// Extension function to convert IMA request data to Flutter model
private fun BlazeIMAAdRequestInformation.toFlutterModel(): BlazeFlutterIMAAdRequestParams {
    return BlazeFlutterIMAAdRequestParams(
            requestDataInfo =
                    BlazeFlutterIMAAdRequestParams.RequestDataInfo(
                            extraInfo = this.extraInfo.toFlutterModel()
                    )
    )
}
