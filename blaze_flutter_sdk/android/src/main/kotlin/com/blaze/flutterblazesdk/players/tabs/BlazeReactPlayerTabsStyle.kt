package com.blaze.flutterblazesdk.players.tabs

import androidx.annotation.Keep
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTitleFont
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactMargins

// JSON-serializable mirror of the Dart `BlazePlayerTabsStyle` (see
// `moments_widget_tabs_configuration.dart`). Deserialized with `toObject<...>()` and merged onto
// the native `BlazePlayerTabsStyle.base()` — same approach as the player-style customization, so we
// don't parse the creation-params map field-by-field.

@Keep
data class BlazeReactPlayerTabsStyle(
    val padding: BlazeReactMargins?,
    val gradient: BlazeReactPlayerTabsGradientStyle?,
    val icon: BlazeReactPlayerTabItemIconStyle?,
    val selectedTabState: BlazeReactPlayerTabItemStyle?,
    val unselectedTabState: BlazeReactPlayerTabItemStyle?,
    val activeTabIndicator: BlazeReactPlayerActiveTabIndicatorStyle?,
    val isTabTitleVisibleWhenSingleTab: Boolean?,
    val isTabVisibleWhenEmpty: Boolean?,
)

@Keep
data class BlazeReactPlayerActiveTabIndicatorStyle(
    val isVisible: Boolean?,
    val height: Float?,
)

@Keep
data class BlazeReactPlayerTabsGradientStyle(
    val isVisible: Boolean?,
    val startColor: String?, // Hex
    val middleColor: String?, // Hex
    val endColor: String?, // Hex
)

@Keep
data class BlazeReactPlayerTabItemIconStyle(
    val iconTint: String?, // Hex
    val padding: Float?,
)

@Keep
data class BlazeReactPlayerTabItemStyle(
    val font: BlazeReactTitleFont?,
    val textColor: String?, // Hex
    val textSize: Float?,
    val letterSpacing: Float?,
    val lineHeight: Float?,
)
