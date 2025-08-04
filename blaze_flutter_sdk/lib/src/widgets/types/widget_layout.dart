import 'package:freezed_annotation/freezed_annotation.dart';
import 'widget_layout_common.dart';
import 'widget_layout_styles.dart';

part 'widget_layout.freezed.dart';
part 'widget_layout.g.dart';

/// Widget item style configuration - contains all styling for individual widget items
@freezed
class BlazeWidgetItemStyle with _$BlazeWidgetItemStyle {
  const factory BlazeWidgetItemStyle({
    BlazeWidgetItemTitleStyle? title,
    BlazeWidgetItemImageStyle? image,
    BlazeWidgetItemStatusIndicatorStyle? statusIndicator,
    String? backgroundColor,
    double? cornerRadius,
    double? cornerRadiusRatio,
    BlazeMargins? margins,
    BlazeWidgetItemBadgeStyle? badge,

    /// The duration element configuration of the widget item.
    /// Note: This property is only applicable for `Videos` and `Moments` player type.
    BlazeWidgetItemDurationElementStyle? durationElement,
  }) = _BlazeWidgetItemStyle;

  factory BlazeWidgetItemStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetItemStyleFromJson(json);
}

/// Main widget layout configuration
@freezed
class BlazeWidgetLayout with _$BlazeWidgetLayout {
  const factory BlazeWidgetLayout({
    double? horizontalItemsSpacing,
    double? verticalItemsSpacing,
    double? itemRatio,
    BlazeMargins? margins,
    int? columns,
    int? maxDisplayItemsCount,
    BlazeWidgetItemStyle? widgetItemStyle,
  }) = _BlazeWidgetLayout;

  factory BlazeWidgetLayout.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetLayoutFromJson(json);
}
