import 'package:freezed_annotation/freezed_annotation.dart';

import 'blaze_data_source_type.dart';
import 'shared_types.dart';
import '../player_customization/moments_player_style.dart';
import '../widgets/types/widget_layout_common.dart';

part 'moments_widget_tabs_configuration.freezed.dart';
part 'moments_widget_tabs_configuration.g.dart';

/// Custom images for a single tab's selected / unselected states.
@freezed
class BlazePlayerTabItemCustomImageStates
    with _$BlazePlayerTabItemCustomImageStates {
  const factory BlazePlayerTabItemCustomImageStates({
    BlazeImage? selectedImage,
    BlazeImage? unselectedImage,
  }) = _BlazePlayerTabItemCustomImageStates;

  factory BlazePlayerTabItemCustomImageStates.fromJson(
          Map<String, dynamic> json) =>
      _$BlazePlayerTabItemCustomImageStatesFromJson(json);
}

/// Configuration for a single tab within a Moments tabs container.
///
/// [containerId], [title] and [dataSource] are required; everything else falls
/// back to the native default.
@freezed
class BlazeMomentsContainerTabItem with _$BlazeMomentsContainerTabItem {
  const factory BlazeMomentsContainerTabItem({
    /// Unique identifier for this tab within the container.
    required String containerId,

    /// Title text displayed on the tab.
    required String title,

    /// Data source that backs this tab's content.
    required BlazeDataSourceType dataSource,

    /// Whether the tab is shown in the strip. Defaults to `true`.
    bool? isVisible,

    /// Whether moments in this tab are ordered by read status. Defaults to
    /// `true`.
    bool? shouldOrderMomentsByReadStatus,

    /// Per-tab caching level. Falls back to the global SDK caching level when
    /// omitted.
    BlazeCachingLevel? cachePolicyLevel,

    /// Optional per-tab icon (selected / unselected images).
    BlazePlayerTabItemCustomImageStates? icon,
  }) = _BlazeMomentsContainerTabItem;

  factory BlazeMomentsContainerTabItem.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsContainerTabItemFromJson(json);
}

/// Style for a single tab title state (selected / unselected).
@freezed
class BlazePlayerTabItemStyle with _$BlazePlayerTabItemStyle {
  const factory BlazePlayerTabItemStyle({
    BlazeFont? font,

    /// Hex color string (`#RRGGBB` / `#AARRGGBB`).
    String? textColor,
    double? textSize,

    /// Letter spacing, in points.
    double? letterSpacing,

    /// Android-only (API 29+). No-op on iOS.
    double? lineHeight,
  }) = _BlazePlayerTabItemStyle;

  factory BlazePlayerTabItemStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerTabItemStyleFromJson(json);
}

/// Gradient background drawn behind the tabs strip. Colors are hex strings.
@freezed
class BlazePlayerTabsGradientStyle with _$BlazePlayerTabsGradientStyle {
  const factory BlazePlayerTabsGradientStyle({
    bool? isVisible,
    String? startColor,
    String? middleColor,
    String? endColor,
  }) = _BlazePlayerTabsGradientStyle;

  factory BlazePlayerTabsGradientStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerTabsGradientStyleFromJson(json);
}

/// Style applied to tab icons. [iconTint] falls back to the tab title color
/// when omitted.
@freezed
class BlazePlayerTabItemIconStyle with _$BlazePlayerTabItemIconStyle {
  const factory BlazePlayerTabItemIconStyle({
    /// Hex color string; falls back to the tab title color when omitted.
    String? iconTint,

    /// Space between the icon and the title. Native default is `8`.
    double? padding,
  }) = _BlazePlayerTabItemIconStyle;

  factory BlazePlayerTabItemIconStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerTabItemIconStyleFromJson(json);
}

/// Visual style for the tabs strip. Every field is optional and merged onto the
/// native `BlazePlayerTabsStyle.base()`; omitted fields keep their native
/// defaults.
@freezed
class BlazePlayerTabsStyle with _$BlazePlayerTabsStyle {
  const factory BlazePlayerTabsStyle({
    BlazeMargins? padding,
    BlazePlayerTabsGradientStyle? gradient,
    BlazePlayerTabItemIconStyle? icon,
    BlazePlayerTabItemStyle? selectedTabState,
    BlazePlayerTabItemStyle? unselectedTabState,

    /// Underline indicator style for the active (selected) tab. Opt-in - not
    /// shown unless [BlazePlayerActiveTabIndicatorStyle.isVisible] is `true`.
    BlazePlayerActiveTabIndicatorStyle? activeTabIndicator,

    /// Whether the tab bar is shown when the container has only a single
    /// (visible) tab. When omitted, the native default is kept.
    bool? isTabTitleVisibleWhenSingleTab,

    /// Whether a tab stays visible when it has no content. Native default is
    /// `true`: an empty tab (or one that failed to load) stays visible and
    /// presents the player's empty/error state. Set to `false` to have such
    /// tabs auto-removed instead (the first tab is always kept regardless).
    bool? isTabVisibleWhenEmpty,
  }) = _BlazePlayerTabsStyle;

  factory BlazePlayerTabsStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerTabsStyleFromJson(json);
}

/// The underline indicator style for the active (selected) tab.
///
/// The indicator color always matches the selected tab's text color and the
/// width always matches the selected tab title's text width - neither is
/// configurable. The indicator is always center-aligned beneath the tab
/// title.
@freezed
class BlazePlayerActiveTabIndicatorStyle
    with _$BlazePlayerActiveTabIndicatorStyle {
  const factory BlazePlayerActiveTabIndicatorStyle({
    /// Whether the indicator is shown on the active tab. Native default is
    /// `false` (no indicator).
    bool? isVisible,

    /// The height of the underline bar, in logical pixels.
    double? height,
  }) = _BlazePlayerActiveTabIndicatorStyle;

  factory BlazePlayerActiveTabIndicatorStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazePlayerActiveTabIndicatorStyleFromJson(json);
}

/// Configuration that turns a Moments widget into a "widget to tabs" entry
/// point.
///
/// When set on a `BlazeMomentsRowView` / `BlazeMomentsGridView`, tapping any
/// widget item opens a fullscreen tabs player built from [tabs]. The widget's
/// own thumbnails are driven by the first tab's `dataSource`. When omitted, the
/// widget behaves as a standard single-moment widget.
@freezed
class BlazeMomentsWidgetTabsConfiguration
    with _$BlazeMomentsWidgetTabsConfiguration {
  const factory BlazeMomentsWidgetTabsConfiguration({
    /// Unique identifier for the tabs container.
    required String containerSourceId,

    /// Ordered list of tab items. Must contain at least one entry.
    required List<BlazeMomentsContainerTabItem> tabs,

    /// Optional per-widget player style override.
    BlazeMomentsPlayerStyle? playerStyle,

    /// Optional tabs strip style. Each field is merged onto the native
    /// `BlazePlayerTabsStyle.base()`.
    BlazePlayerTabsStyle? tabsStyle,
  }) = _BlazeMomentsWidgetTabsConfiguration;

  factory BlazeMomentsWidgetTabsConfiguration.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeMomentsWidgetTabsConfigurationFromJson(json);
}
