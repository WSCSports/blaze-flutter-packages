package com.blaze.flutterblazesdk.widgets.native_moment_row

import android.content.Context
import com.blaze.blazesdk.features.moments.widgets.row.BlazeMomentsWidgetRowView
import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout
import com.blaze.flutterblazesdk.players.extractMomentsPlayerStyle
import com.blaze.flutterblazesdk.widgets.BlazeWidgetBase
import io.flutter.plugin.common.BinaryMessenger

class NativeMomentRowView(
        context: Context,
        viewId: Int,
        creationParams: Map<String, Any>?,
        binaryMessenger: BinaryMessenger
) :
        BlazeWidgetBase<BlazeMomentsWidgetRowView>(
                context = context,
                viewId = viewId,
                creationParams = creationParams,
                binaryMessenger = binaryMessenger
        ) {

        init {
                widgetView = BlazeMomentsWidgetRowView(context)
                initWidget()
        }

        fun initWidget() {
                val dataSource = dataSource ?: return

                // Parse widget layout
                val widgetLayout: BlazeWidgetLayout =
                        parseWidgetLayout(
                                defaultLayout =
                                        BlazeWidgetLayout.Presets.MomentsWidget.Row
                                                .verticalRectangles
                        )

                val playerStyle = playerStyleMap.extractMomentsPlayerStyle(widgetView.context)
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
