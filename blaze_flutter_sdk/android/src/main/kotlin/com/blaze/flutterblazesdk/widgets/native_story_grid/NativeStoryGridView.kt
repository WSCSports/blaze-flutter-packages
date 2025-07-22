package com.blaze.flutterblazesdk.widgets.native_story_grid

import android.content.Context
import com.blaze.blazesdk.features.stories.widgets.grid.BlazeStoriesWidgetGridView
import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout
import com.blaze.flutterblazesdk.players.extractStoriesPlayerStyle
import com.blaze.flutterblazesdk.widgets.BlazeWidgetBase
import io.flutter.plugin.common.BinaryMessenger

class NativeStoryGridView(
        context: Context,
        viewId: Int,
        creationParams: Map<String, Any>?,
        binaryMessenger: BinaryMessenger
) :
        BlazeWidgetBase<BlazeStoriesWidgetGridView>(
                context = context,
                viewId = viewId,
                creationParams = creationParams,
                binaryMessenger = binaryMessenger
        ) {

        init {
                widgetView = BlazeStoriesWidgetGridView(context)
                initWidget()
        }

        fun initWidget() {
                val dataSource = dataSource ?: return

                // Parse widget layout following React Native's exact pattern
                val widgetLayout: BlazeWidgetLayout =
                        parseWidgetLayout(
                                defaultLayout =
                                        BlazeWidgetLayout.Presets.StoriesWidget.Grid
                                                .twoColumnsVerticalRectangles
                        )

                val playerStyle = playerStyleMap.extractStoriesPlayerStyle(widgetView.context)
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
