package com.blaze.flutterblazesdk.widgets.native_moment_grid

import android.content.Context
import com.blaze.blazesdk.features.moments.widgets.grid.BlazeMomentsWidgetGridView
import com.blaze.blazesdk.features.moments.widgets.tabs.BlazeMomentsWidgetTabsController
import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout
import com.blaze.flutterblazesdk.players.extractMomentsPlayerStyle
import com.blaze.flutterblazesdk.utils.extractMomentsPlaybackConfiguration
import com.blaze.flutterblazesdk.utils.extractMomentsWidgetTabsConfiguration
import com.blaze.flutterblazesdk.widgets.BlazeWidgetBase
import io.flutter.plugin.common.BinaryMessenger

class NativeMomentGridView(
        context: Context,
        viewId: Int,
        creationParams: Map<String, Any>?,
        binaryMessenger: BinaryMessenger
) :
        BlazeWidgetBase<BlazeMomentsWidgetGridView>(
                context = context,
                viewId = viewId,
                creationParams = creationParams,
                binaryMessenger = binaryMessenger
        ) {

        init {
                widgetView = BlazeMomentsWidgetGridView(context)
                initWidget()
        }

        fun initWidget() {
                val dataSource = dataSource ?: return

                // Parse widget layout
                val widgetLayout: BlazeWidgetLayout =
                        parseWidgetLayout(
                                defaultLayout =
                                        BlazeWidgetLayout.Presets.MomentsWidget.Grid
                                                .twoColumnsVerticalRectangles
                        )

                val playbackConfiguration = playbackConfigurationMap.extractMomentsPlaybackConfiguration()
                val perItemStyleOverrides = getPerItemStyleOverridesForInit(widgetLayout)

                // Retained on tabsController (BlazeWidgetBase) so the reload commands have a live
                // handle to the fullscreen tabs session once it appears.
                val ownTabsController = BlazeMomentsWidgetTabsController()
                val tabsConfiguration = tabsConfigurationMap.extractMomentsWidgetTabsConfiguration(
                        containerTabsDelegate = containerTabsDelegate,
                        context = widgetView.context,
                        controller = ownTabsController,
                )

                if (tabsConfiguration != null) {
                        tabsController = ownTabsController

                        // Tabs flow: the player style comes from the tabs configuration and the
                        // data source is derived natively from the first tab, so neither is passed
                        // here.
                        widgetView.initWidget(
                                widgetLayout = widgetLayout,
                                tabsConfiguration = tabsConfiguration,
                                widgetId = widgetId,
                                widgetDelegate = delegate,
                                cachingLevel = cachingLevel,
                                shouldOrderWidgetByReadStatus = shouldOrderWidgetByReadStatus,
                                perItemStyleOverrides = perItemStyleOverrides,
                                playbackConfiguration = playbackConfiguration
                        )
                } else {
                        val playerStyle = playerStyleMap.extractMomentsPlayerStyle(widgetView.context)

                        widgetView.initWidget(
                                widgetLayout = widgetLayout,
                                playerStyle = playerStyle,
                                dataSource = dataSource,
                                cachingLevel = cachingLevel,
                                widgetId = widgetId,
                                widgetRemoteIdentifier = widgetRemoteIdentifier,
                                shouldOrderWidgetByReadStatus = shouldOrderWidgetByReadStatus,
                                widgetDelegate = delegate,
                                playbackConfiguration = playbackConfiguration,
                                perItemStyleOverrides = perItemStyleOverrides
                        )
                }
        }
}
