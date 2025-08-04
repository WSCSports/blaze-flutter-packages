package com.blaze.flutterblazesdk.widgets

import android.content.Context
import android.util.Log
import android.view.View
import android.view.ViewGroup.LayoutParams
import androidx.core.view.doOnLayout
import com.blaze.blazesdk.data_source.BlazeDataSourceType
import com.blaze.blazesdk.delegates.BlazeWidgetDelegate
import com.blaze.blazesdk.delegates.models.BlazeCTAActionType
import com.blaze.blazesdk.delegates.models.BlazePlayerEvent
import com.blaze.blazesdk.delegates.models.BlazePlayerType
import com.blaze.blazesdk.extentions.blazeDeepCopy
import com.blaze.blazesdk.features.shared.models.ui_shared.BlazeLinkActionHandleType
import com.blaze.blazesdk.prefetch.models.BlazeCachingLevel
import com.blaze.blazesdk.shared.results.BlazeResult
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemCustomMapping
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemStyleOverrides
import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout
import com.blaze.blazesdk.widgets.ui.BlazeBaseWidget
import com.blaze.flutterblazesdk.delegates.BlazeSharedDelegateHandler
import com.blaze.flutterblazesdk.parsers.asCachingLevel
import com.blaze.flutterblazesdk.parsers.asWidgetLayoutPreset
import com.blaze.flutterblazesdk.parsers.toBlazeDataSourceType
import com.blaze.flutterblazesdk.utils.convertPixelsToDp
import com.blaze.flutterblazesdk.utils.disableNestedScrolling
import com.blaze.flutterblazesdk.utils.invokeMethodWithJsonStringFromObject
import com.blaze.flutterblazesdk.widgets.customization.applyWidgetLayoutCustomization
import com.blaze.flutterblazesdk.widgets.customization.mergedWith
import com.blaze.flutterblazesdk.widgets.customization.toReactWidgetStylesOverridesMap
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView

abstract class BlazeWidgetBase<T : BlazeBaseWidget<*, *>>(
        context: Context,
        val viewId: Int,
        val creationParams: Map<String, Any>?,
        binaryMessenger: BinaryMessenger
) : PlatformView {

    lateinit var widgetView: T

    val widgetId: String = creationParams?.get("widgetId") as String

    // Parse the data source from creation params
    val dataSource: BlazeDataSourceType? by lazy {
        (creationParams?.get("dataSource") as? Map<String, Any>)?.toBlazeDataSourceType()
    }

    // Parse the caching level from creation params
    val cachingLevel: BlazeCachingLevel by lazy {
        (creationParams?.get("cachingLevel") as? String).asCachingLevel()
    }

    // Parse the preset widget layout from creation params
    val presetWidgetLayout: String? by lazy { creationParams?.get("presetWidgetLayout") as? String }

    // Parse the custom widget layout from creation params (raw map for merging)
    val customWidgetLayoutMap: Map<String, Any>? by lazy {
        creationParams?.get("blazeWidgetLayout") as? Map<String, Any>
    }

    // Parse the player style from creation params (raw map for merging with player-specific
    // implementations)
    val playerStyleMap: Map<String, Any>? by lazy {
        creationParams?.get("playerStyle") as? Map<String, Any>
    }

    // Parse the shouldOrderWidgetByReadStatus from creation params
    val shouldOrderWidgetByReadStatus: Boolean by lazy {
        creationParams?.get("shouldOrderWidgetByReadStatus") as? Boolean ?: true
    }

    // Parse the per-item style overrides from creation params
    val perItemStyleOverridesMap: Map<String, Any>? by lazy {
        creationParams?.get("perItemStyleOverrides") as? Map<String, Any>
    }

    // Parse the appOverridesCTAHandling from creation params
    val appOverridesCTAHandling: Boolean by lazy {
        creationParams?.get("appOverridesCTAHandling") as? Boolean ?: false
    }

    private var methodChannel: MethodChannel? =
            MethodChannel(binaryMessenger, "blaze-widget-$widgetId").apply {
                setMethodCallHandler { call, result ->
                    when (call.method) {
                        "reloadData" -> {
                            reloadData(call)
                        }
                        "updateDataSource" -> {
                            updateDataSource(call)
                        }
                        "play" -> {
                            play()
                        }
                        "updateWidgetsUi" -> {
                            updateWidgetsUi()
                        }
                        "updateOverrideStyles" -> {
                            updateOverrideStyles(call)
                        }
                        else -> {}
                    }
                }
            }

    private val sharedDelegateHandler: BlazeSharedDelegateHandler by lazy { BlazeSharedDelegateHandler() }

    open val isEmbeddedInScrollView: Boolean =
            creationParams?.get("isEmbeddedInScrollView") as? Boolean ?: false

    // Helper method to get the widget layout from preset string
    fun parseWidgetLayout(defaultLayout: BlazeWidgetLayout): BlazeWidgetLayout {
        val presetLayoutString = presetWidgetLayout
        val widgetLayout = presetLayoutString?.asWidgetLayoutPreset() ?: defaultLayout

        return applyWidgetLayoutCustomization(
                reactWidgetLayout = customWidgetLayoutMap,
                widgetLayout = widgetLayout,
                context = widgetView.context
        )
    }

    protected fun applyWidgetItemStyleOverrides(
            reactPerItemStyleOverrides: Map<String, Any>?,
            widgetLayout: BlazeWidgetLayout,
            context: Context
    ): Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>? {

        val rawLayout = reactPerItemStyleOverrides ?: return null

        val customizationReactMap = rawLayout.toReactWidgetStylesOverridesMap() ?: return null

        return customizationReactMap
                .map { (itemCustomMapping, itemStylesOverrides) ->
                    val nativeItemMapping =
                            BlazeWidgetItemCustomMapping(
                                    key = itemCustomMapping.key,
                                    value = itemCustomMapping.value
                            )

                    val nativeItemOverrides =
                            BlazeWidgetItemStyleOverrides(
                                            statusIndicator =
                                                    widgetLayout.widgetItemStyle.statusIndicator
                                                            .blazeDeepCopy(),
                                            imageBorder =
                                                    widgetLayout.widgetItemStyle.image.border
                                                            .blazeDeepCopy(),
                                            badge =
                                                    widgetLayout.widgetItemStyle.badge
                                                            .blazeDeepCopy(),
                                    )
                                    .mergedWith(itemStylesOverrides, context)

                    nativeItemMapping to nativeItemOverrides
                }
                .toMap()
    }

    val widgetContainerView by lazy {
        BlazeFlutterSizeFixingFrameLayout(context = widgetView.context).apply {
            layoutParams = LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT)

            widgetView.layoutParams =
                    LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT)

            isEmbeddedInScrollView = this@BlazeWidgetBase.isEmbeddedInScrollView

            addView(widgetView)

            onHeightChangedListener = { height ->
                val dpHeight = context.convertPixelsToDp(height)
                methodChannel?.invokeMethod("updateHeight", mapOf("height" to dpHeight.toDouble()))
            }

            doOnLayout {
                // Disable nested scrolling so that native will stop communicating gestures with
                // Flutter and just handle them.
                // Should theoretically optimize the performance.
                disableNestedScrolling()
            }
        }
    }

    val delegate: BlazeWidgetDelegate by lazy {
        object : BlazeWidgetDelegate {

            override fun onDataLoadStarted(playerType: BlazePlayerType, sourceId: String?) {
                sharedDelegateHandler.onDataLoadStarted(
                    playerType = playerType,
                    sourceId = sourceId
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onDataLoadStarted",
                        params = params
                    )
                }
            }

            override fun onDataLoadComplete(
                    playerType: BlazePlayerType,
                    sourceId: String?,
                    itemsCount: Int,
                    result: BlazeResult<Unit>
            ) {
                sharedDelegateHandler.onDataLoadComplete(
                    playerType = playerType,
                    sourceId = sourceId,
                    itemsCount = itemsCount,
                    result = result
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onDataLoadComplete",
                        params = params
                    )
                }
            }

            override fun onPlayerDidAppear(playerType: BlazePlayerType, sourceId: String?) {
                sharedDelegateHandler.onPlayerDidAppear(
                    playerType = playerType,
                    sourceId = sourceId
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onPlayerDidAppear",
                        params = params
                    )
                }
            }

            override fun onPlayerDidDismiss(playerType: BlazePlayerType, sourceId: String?) {
                sharedDelegateHandler.onPlayerDidDismiss(
                    playerType = playerType,
                    sourceId = sourceId
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onPlayerDidDismiss",
                        params = params
                    )
                }
            }

            override fun onTriggerCTA(
                    playerType: BlazePlayerType,
                    sourceId: String?,
                    actionType: BlazeCTAActionType,
                    actionParam: String
            ): Boolean {
                return sharedDelegateHandler.onTriggerCTA(
                    playerType = playerType,
                    sourceId = sourceId,
                    actionType = actionType,
                    actionParam = actionParam,
                    appOverridesCTAHandling = appOverridesCTAHandling
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onTriggerCTA",
                        params = params
                    )
                }
            }

            override fun onTriggerPlayerBodyTextLink(
                    playerType: BlazePlayerType,
                    sourceId: String?,
                    actionParam: String
            ): BlazeLinkActionHandleType {
                return sharedDelegateHandler.onTriggerPlayerBodyTextLink(
                    playerType = playerType,
                    sourceId = sourceId,
                    actionParam = actionParam
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onTriggerPlayerBodyTextLink",
                        params = params
                    )
                }
            }

            override fun onPlayerEventTriggered(
                playerType: BlazePlayerType,
                sourceId: String?,
                event: BlazePlayerEvent
            ) {
                return sharedDelegateHandler.onPlayerEventTriggered(
                    playerType = playerType,
                    sourceId = sourceId,
                    event = event
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onPlayerEventTriggered",
                        params = params
                    )
                }
            }

            override fun onItemClicked(
                sourceId: String?,
                itemId: String,
                itemTitle: String
            ) {
                sharedDelegateHandler.onWidgetItemClicked(
                    widgetId = widgetId,
                    widgetItemId = itemId,
                    widgetItemTitle = itemTitle
                ) { params ->
                    methodChannel?.invokeMethodWithJsonStringFromObject(
                        name = "onWidgetItemClicked",
                        params = params
                    )
                }
            }
        }
    }

    override fun getView(): View {
        return widgetContainerView
    }

    override fun dispose() {
        try {
            // Clean up method channel to prevent memory leaks
            methodChannel?.setMethodCallHandler(null)
            methodChannel = null // Clear the reference

            // Remove widget from container to break view hierarchy references
            widgetContainerView.removeAllViews()

            widgetContainerView.onHeightChangedListener = null
        } catch (e: Exception) {
            // Log but don't crash - disposal should be safe
            Log.w("BlazeWidgetBase", "Error during disposal: ${e.message}")
        }
    }

    fun reloadData(call: MethodCall) {
        val isSilentRefresh = call.argument<Boolean>("isSilentRefresh") ?: false
        widgetView.reloadData(isSilentRefresh)
    }

    fun updateDataSource(call: MethodCall) {
        val dataSourceMap = call.argument<Map<String, Any>>("dataSource")
        val isSilentRefresh = call.argument<Boolean>("isSilentRefresh") ?: false

        val newDataSource = dataSourceMap?.toBlazeDataSourceType() ?: return
        widgetView.updateDataSource(
                dataSourceType = newDataSource,
                isSilentRefresh = isSilentRefresh
        )
    }

    fun play() {
        widgetView.play()
    }

    fun updateWidgetsUi() {
        widgetView.updateWidgetsUi()
    }

    fun updateOverrideStyles(call: MethodCall) {
        val perItemStyleOverridesRaw = call.argument<Map<String, Any>>("perItemStyleOverrides")
        val shouldUpdateUi = call.argument<Boolean>("shouldUpdateUi") ?: true

        if (perItemStyleOverridesRaw != null) {
            val widgetLayout = widgetView.getCurrentWidgetLayout() ?: return

            val perItemStylesOverridesMap =
                    applyWidgetItemStyleOverrides(
                            reactPerItemStyleOverrides = perItemStyleOverridesRaw,
                            widgetLayout = widgetLayout,
                            context = widgetView.context
                    )

            perItemStylesOverridesMap?.let {
                widgetView.updateOverrideStyles(
                        perItemStyleOverrides = it,
                        shouldUpdateUi = shouldUpdateUi
                )
            }
        }
    }

    // Helper method to get processed per-item style overrides for widget initialization
    fun getPerItemStyleOverridesForInit(
            widgetLayout: BlazeWidgetLayout
    ): Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides> {
        return applyWidgetItemStyleOverrides(
                reactPerItemStyleOverrides = perItemStyleOverridesMap,
                widgetLayout = widgetLayout,
                context = widgetView.context
        )
                ?: emptyMap()
    }
}
