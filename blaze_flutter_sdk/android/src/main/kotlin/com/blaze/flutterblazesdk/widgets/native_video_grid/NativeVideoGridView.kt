package com.blaze.flutterblazesdk.widgets.native_video_grid

import android.content.Context
import com.blaze.blazesdk.features.videos.widgets.grid.BlazeVideosWidgetGridView
import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout
import com.blaze.flutterblazesdk.players.extractVideosPlayerStyle
import com.blaze.flutterblazesdk.widgets.BlazeWidgetBase
import io.flutter.plugin.common.BinaryMessenger

class NativeVideoGridView(
    context: Context,
    viewId: Int,
    creationParams: Map<String, Any>?,
    binaryMessenger: BinaryMessenger
) :
    BlazeWidgetBase<BlazeVideosWidgetGridView>(
        context = context,
        viewId = viewId,
        creationParams = creationParams,
        binaryMessenger = binaryMessenger
    ) {

    init {
        widgetView = BlazeVideosWidgetGridView(context)
        initWidget()
    }

    fun initWidget() {
        val dataSource = dataSource ?: return

        // Parse widget layout following React Native's exact pattern
        val widgetLayout: BlazeWidgetLayout =
            parseWidgetLayout(
                defaultLayout =
                    BlazeWidgetLayout.Presets.VideosWidget.Grid
                        .twoColumnsVerticalRectangles
            )

        val playerStyle = playerStyleMap.extractVideosPlayerStyle(widgetView.context)
        val perItemStyleOverrides = getPerItemStyleOverridesForInit(widgetLayout)

        widgetView.initWidget(
            widgetLayout = widgetLayout,
            playerStyle = playerStyle,
            dataSource = dataSource,
            cachingLevel = cachingLevel,
            widgetId = widgetId,
            shouldOrderWidgetByReadStatus = shouldOrderWidgetByReadStatus,
            widgetDelegate = delegate,
            perItemStyleOverrides = perItemStyleOverrides
        )
    }
}
