package com.blaze.flutterblazegam.sdk_module

import android.app.Application
import android.os.Bundle
import android.util.Log
import androidx.annotation.Keep
import com.blaze.blazesdk.ads.banners.BlazeGAMBannerHandlerEventType
import com.blaze.blazesdk.ads.custom_native.BlazeGoogleCustomNativeAdsHandler
import com.blaze.flutterblazegam.utils.handleError
import com.blaze.flutterblazesdk.ads.BlazeFlutterContentExtraInfo
import com.blaze.flutterblazesdk.ads.toFlutterModel
import com.blaze.flutterblazesdk.shared.BlazeAsyncBridge
import com.blaze.flutterblazesdk.shared.callDartMethod
import com.blaze.flutterblazesdk.shared.sendEvent
import com.blaze.gam.BlazeGAM
import com.blaze.gam.banner.BlazeGAMBannerAdsAdData
import com.blaze.gam.banner.BlazeGAMBannerAdsDelegate
import com.blaze.gam.custom_native.BlazeCustomNativeAdData
import com.blaze.gam.custom_native.BlazeGAMCustomNativeAdsDefaultConfig
import com.blaze.gam.custom_native.BlazeGAMCustomNativeAdsDelegate
import com.blaze.gam.custom_native.BlazeGamCustomNativeAdRequestInformation
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

object BlazeFlutterGAMModule {

    val TAG: String = BlazeFlutterGAMModule::class.java.simpleName

    private lateinit var methodChannel: MethodChannel
    private lateinit var application: Application
    private val asyncBridge: BlazeAsyncBridge? by lazy { BlazeAsyncBridge.getInstance() }

    fun registerModule(messenger: BinaryMessenger, application: Application) {
        this.application = application

        methodChannel = MethodChannel(messenger, "blaze-gam-module")
        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "enableCustomNativeAds" -> {
                    enableCustomNativeAds(call = call, result = result)
                }
                "disableCustomNativeAds" -> {
                    disableCustomNativeAds(call = call, result = result)
                }
                "enableBannerAds" -> {
                    enableBannerAds(call = call, result = result)
                }
                "disableBannerAds" -> {
                    disableBannerAds(call = call, result = result)
                }
                else -> {
                    val errorMessage = "Method name ${call.method} hasn't been implemented!!"
                    Log.e(TAG, errorMessage)

                    result.handleError(errCode = TAG, errMessage = errorMessage)
                }
            }
        }
    }

    private val customNativeAdsDelegate: BlazeGAMCustomNativeAdsDelegate =
        object : BlazeGAMCustomNativeAdsDelegate {

            override fun onGAMCustomNativeAdEvent(
                eventType: BlazeGoogleCustomNativeAdsHandler.EventType,
                adData: BlazeCustomNativeAdData
            ) {
                this@BlazeFlutterGAMModule.onGAMCustomNativeAdEvent(eventType, adData)
            }

            override fun onGAMCustomNativeAdError(errMsg: String) {
                this@BlazeFlutterGAMModule.onGAMCustomNativeAdError(errMsg)
            }

            override suspend fun customGAMTargetingProperties(
                requestData: BlazeGamCustomNativeAdRequestInformation
            ): Map<String, String> {
                return this@BlazeFlutterGAMModule.customGAMTargetingProperties(requestData)
                    ?: super.customGAMTargetingProperties(requestData)
            }

            override suspend fun publisherProvidedId(
                requestData: BlazeGamCustomNativeAdRequestInformation
            ): String? {
                return this@BlazeFlutterGAMModule.publisherProvidedId(requestData)
            }

            override suspend fun networkExtras(
                requestData: BlazeGamCustomNativeAdRequestInformation
            ): Bundle? {
                return this@BlazeFlutterGAMModule.networkExtras(requestData)
            }
        }

    private val bannerAdsDelegate: BlazeGAMBannerAdsDelegate =
        object : BlazeGAMBannerAdsDelegate {

            override fun onGAMBannerAdsAdEvent(
                eventType: BlazeGAMBannerHandlerEventType,
                adData: BlazeGAMBannerAdsAdData
            ) {
                this@BlazeFlutterGAMModule.onGAMBannerAdsAdEvent(
                    eventType = eventType,
                    adData = adData
                )
            }

            override fun onGAMBannerAdsAdError(
                errorMsg: String,
                adData: BlazeGAMBannerAdsAdData
            ) {
                this@BlazeFlutterGAMModule.onGAMBannerAdsAdError(
                    errorMsg = errorMsg,
                    adData = adData
                )
            }
        }

    private fun enableCustomNativeAds(call: MethodCall, result: MethodChannel.Result) {
        // Extract defaultAdConfig if provided
        val defaultAdConfig =
            call.argument<Map<String, Any>>("defaultAdConfig")?.let { configMap ->
                // Parse the default ad config from the map
                parseDefaultAdConfig(configMap)
            }

        // Enable GAM with delegate and config
        BlazeGAM.enableCustomNativeAds(
            context = application,
            defaultAdsConfig = defaultAdConfig,
            delegate = customNativeAdsDelegate
        )

        result.success(null)
    }

    private fun disableCustomNativeAds(call: MethodCall, result: MethodChannel.Result) {
        BlazeGAM.disableCustomNativeAds()
        result.success(null)
    }

    private fun enableBannerAds(call: MethodCall, result: MethodChannel.Result) {
        BlazeGAM.enableBannerAds(
            context = application,
            delegate = bannerAdsDelegate
        )
        result.success(null)
    }

    private fun disableBannerAds(call: MethodCall, result: MethodChannel.Result) {
        BlazeGAM.disableBannerAds()
        result.success(null)
    }

    // MARK: - Custom Native Ads Delegate Implementation Functions

    // Helper to parse default ad config from Map
    private fun parseDefaultAdConfig(
        configMap: Map<String, Any>
    ): BlazeGAMCustomNativeAdsDefaultConfig? {
        return try {
            val adUnit = configMap["adUnit"] as? String ?: return null
            val templateId = configMap["templateId"] as? String ?: return null

            BlazeGAMCustomNativeAdsDefaultConfig(adUnit = adUnit, templateId = templateId)
        } catch (e: Exception) {
            Log.e(TAG, "Error parsing default ad config", e)
            null
        }
    }

    private fun onGAMCustomNativeAdError(errorMessage: String) {
        asyncBridge?.sendEvent(
                name = "BlazeGAM.onAdError",
                params = mapOf("errorMessage" to errorMessage)
        )
    }

    private fun onGAMCustomNativeAdEvent(
            eventType: BlazeGoogleCustomNativeAdsHandler.EventType,
            adData: BlazeCustomNativeAdData
    ) {
        asyncBridge?.sendEvent(
                name = "BlazeGAM.onAdEvent",
                params = mapOf("eventType" to eventType.toReactEventTypeParam())
        )
    }

    private suspend fun customGAMTargetingProperties(
            requestData: BlazeGamCustomNativeAdRequestInformation
    ): Map<String, String>? {
        val bridge = asyncBridge ?: return null

        return try {
            val result: Map<String, String> =
                    bridge.callDartMethod(
                            name = "BlazeGAM.customGAMTargetingProperties",
                            params = requestData.toFlutterModel()
                    )
            result
        } catch (e: Exception) {
            Log.d(TAG, "Error customGAMTargetingProperties: ${e.message}")
            null
        }
    }

    private suspend fun publisherProvidedId(
            requestData: BlazeGamCustomNativeAdRequestInformation
    ): String? {
        val bridge = asyncBridge ?: return null

        return try {
            val result: String? =
                    bridge.callDartMethod(
                            name = "BlazeGAM.publisherProvidedId",
                            params = requestData.toFlutterModel()
                    )
            result
        } catch (e: Exception) {
            Log.d(TAG, "Error publisherProvidedId: ${e.message}")
            null
        }
    }

    private suspend fun networkExtras(
            requestData: BlazeGamCustomNativeAdRequestInformation
    ): Bundle? {
        val bridge = asyncBridge ?: return null

        return try {
            val dict: Map<String, Any> =
                    bridge.callDartMethod(
                            name = "BlazeGAM.networkExtras",
                            params = requestData.toFlutterModel()
                    )
            val bundle = Bundle()
            dict.forEach { (key, value) ->
                when (value) {
                    is String -> bundle.putString(key, value)
                    is Int -> bundle.putInt(key, value)
                    is Boolean -> bundle.putBoolean(key, value)
                    is Double -> bundle.putDouble(key, value)
                    is Float -> bundle.putFloat(key, value)
                    is Long -> bundle.putLong(key, value)
                    // Add more types as needed
                    else -> {
                        // Other types are not supported at the moment
                    }
                }
            }
            bundle
        } catch (e: Exception) {
            Log.d(TAG, "Error networkExtras: ${e.message}")
            null
        }
    }

    // Data classes for Flutter model - matching React Native structure
    @Keep
    private data class BlazeFlutterGAMCustomNativeAdRequestParams(
            val requestDataInfo: RequestDataInfo
    ) {
        @Keep
        data class RequestDataInfo(
                val adUnitId: String,
                val templateId: String,
                val adContext: Map<String, String>,
                val extraInfo: BlazeFlutterContentExtraInfo
        )
    }

    // Extension function to convert request data to Flutter model
    private fun BlazeGamCustomNativeAdRequestInformation.toFlutterModel():
            BlazeFlutterGAMCustomNativeAdRequestParams {
        return BlazeFlutterGAMCustomNativeAdRequestParams(
                requestDataInfo =
                        BlazeFlutterGAMCustomNativeAdRequestParams.RequestDataInfo(
                                adUnitId = this.adUnitId,
                                templateId = this.templateId,
                                adContext = this.adContext,
                                extraInfo = this.extraInfo.toFlutterModel()
                        )
        )
    }

    // Extension function to convert event type to React param
    private fun BlazeGoogleCustomNativeAdsHandler.EventType.toReactEventTypeParam(): String {
        return when (this) {
            BlazeGoogleCustomNativeAdsHandler.EventType.OPENED_AD -> "openedAd"
            BlazeGoogleCustomNativeAdsHandler.EventType.AD_PAGE_START -> "adPageStart"
            BlazeGoogleCustomNativeAdsHandler.EventType.AD_PAGE_FIRST_QUARTER ->
                    "adPageFirstQuarter"
            BlazeGoogleCustomNativeAdsHandler.EventType.AD_PAGE_MID -> "adPageMid"
            BlazeGoogleCustomNativeAdsHandler.EventType.AD_PAGE_THIRD -> "adPageThird"
            BlazeGoogleCustomNativeAdsHandler.EventType.AD_PAGE_COMPLETE -> "adPageComplete"
            BlazeGoogleCustomNativeAdsHandler.EventType.PAUSED_AD_PAGE -> "pausedAdPage"
            BlazeGoogleCustomNativeAdsHandler.EventType.RESUMED_AD_PAGE -> "resumedAdPage"
            BlazeGoogleCustomNativeAdsHandler.EventType.CTA_CLICKED -> "ctaClicked"
        }
    }

    // MARK: - Banner Ads Delegate Implementation Functions

    private fun onGAMBannerAdsAdEvent(
        eventType: BlazeGAMBannerHandlerEventType,
        adData: BlazeGAMBannerAdsAdData
    ) {
        @Keep
        data class Params(
            val eventType: String,
        )

        asyncBridge?.sendEvent(
            name = "BlazeGAM.onGAMBannerAdsAdEvent",
            params = Params(
                eventType = eventType.toReactEventTypeParam()
            )
        )
    }

    private fun onGAMBannerAdsAdError(
        errorMsg: String,
        adData: BlazeGAMBannerAdsAdData
    ) {
        @Keep
        data class Params(
            val errorMessage: String,
        )

        asyncBridge?.sendEvent(
            name = "BlazeGAM.onGAMBannerAdsAdError",
            params = Params(
                errorMessage = errorMsg
            )
        )
    }

    fun BlazeGAMBannerHandlerEventType.toReactEventTypeParam(): String {
        return when (this) {
            BlazeGAMBannerHandlerEventType.AD_LOADED -> "adLoaded"
            BlazeGAMBannerHandlerEventType.AD_CLICKED -> "adClicked"
            BlazeGAMBannerHandlerEventType.AD_IMPRESSION -> "adImpression"
            BlazeGAMBannerHandlerEventType.AD_REQUESTED -> "adRequested"
        }
    }
}
