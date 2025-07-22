import 'package:freezed_annotation/freezed_annotation.dart';
import 'widget_layout_common.dart';

part 'widget_layout_styles.freezed.dart';
part 'widget_layout_styles.g.dart';

/// Widget item image gradient overlay style
@freezed
class BlazeWidgetGradient with _$BlazeWidgetGradient {
  const factory BlazeWidgetGradient({
    bool? isVisible,
    BlazeWidgetGradientPosition? position,
    String? startColor,
    String? endColor,
  }) = _BlazeWidgetGradient;

  factory BlazeWidgetGradient.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetGradientFromJson(json);
}

/// Animated thumbnail configuration
@freezed
class BlazeWidgetItemImageAnimatedThumbnailStyle
    with _$BlazeWidgetItemImageAnimatedThumbnailStyle {
  const factory BlazeWidgetItemImageAnimatedThumbnailStyle({
    bool? isEnabled,
    double? horizontalAnimationTriggerPercentage,
  }) = _BlazeWidgetItemImageAnimatedThumbnailStyle;

  factory BlazeWidgetItemImageAnimatedThumbnailStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeWidgetItemImageAnimatedThumbnailStyleFromJson(json);
}

/// Image border state style
@freezed
class BlazeWidgetItemImageContainerBorderStateStyle
    with _$BlazeWidgetItemImageContainerBorderStateStyle {
  const factory BlazeWidgetItemImageContainerBorderStateStyle({
    bool? isVisible,
    String? color,
    double? margin,
    double? width,
  }) = _BlazeWidgetItemImageContainerBorderStateStyle;

  factory BlazeWidgetItemImageContainerBorderStateStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeWidgetItemImageContainerBorderStateStyleFromJson(json);
}

/// Image border style configuration
@freezed
class BlazeWidgetItemImageContainerBorderStyle
    with _$BlazeWidgetItemImageContainerBorderStyle {
  const factory BlazeWidgetItemImageContainerBorderStyle({
    bool? isVisible,
    BlazeWidgetItemImageContainerBorderStateStyle? liveReadState,
    BlazeWidgetItemImageContainerBorderStateStyle? liveUnreadState,
    BlazeWidgetItemImageContainerBorderStateStyle? readState,
    BlazeWidgetItemImageContainerBorderStateStyle? unreadState,
  }) = _BlazeWidgetItemImageContainerBorderStyle;

  factory BlazeWidgetItemImageContainerBorderStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeWidgetItemImageContainerBorderStyleFromJson(json);
}

/// Widget item image style configuration
@freezed
class BlazeWidgetItemImageStyle with _$BlazeWidgetItemImageStyle {
  const factory BlazeWidgetItemImageStyle({
    BlazeWidgetItemImagePosition? position,
    BlazeThumbnailType? thumbnailType,
    double? width,
    double? height,
    double? ratio,
    double? cornerRadius,
    double? cornerRadiusRatio,
    BlazeWidgetItemImageContainerBorderStyle? border,
    BlazeWidgetGradient? gradientOverlay,
    BlazeMargins? margins,
    BlazeWidgetItemImageAnimatedThumbnailStyle? animatedThumbnail,
  }) = _BlazeWidgetItemImageStyle;

  factory BlazeWidgetItemImageStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetItemImageStyleFromJson(json);
}

/// Widget item title style configuration
@freezed
class BlazeWidgetItemTitleStyle with _$BlazeWidgetItemTitleStyle {
  const factory BlazeWidgetItemTitleStyle({
    bool? isVisible,
    BlazeTitleStyle? readState,
    BlazeTitleStyle? unreadState,
    BlazeObjectPositioning? position,
    BlazeMargins? margins,
  }) = _BlazeWidgetItemTitleStyle;

  factory BlazeWidgetItemTitleStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetItemTitleStyleFromJson(json);
}

/// Badge state style configuration
@freezed
class BlazeWidgetItemBadgeStateStyle with _$BlazeWidgetItemBadgeStateStyle {
  const factory BlazeWidgetItemBadgeStateStyle({
    double? width,
    double? height,
    BlazeTitleStyle? textStyle,
    String? text,
    String? backgroundColor,
    BlazeImage? backgroundImage,
    double? cornerRadius,
    double? cornerRadiusRatio,
    String? borderColor,
    double? borderWidth,
    bool? isVisible,
  }) = _BlazeWidgetItemBadgeStateStyle;

  factory BlazeWidgetItemBadgeStateStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetItemBadgeStateStyleFromJson(json);
}

/// Widget item badge style configuration
@freezed
class BlazeWidgetItemBadgeStyle with _$BlazeWidgetItemBadgeStyle {
  const factory BlazeWidgetItemBadgeStyle({
    BlazeObjectPositioning? position,
    bool? isVisible,
    BlazeMargins? margins,
    BlazeMargins? titlePadding,
    BlazeWidgetItemBadgeStateStyle? liveUnreadState,
    BlazeWidgetItemBadgeStateStyle? liveReadState,
    BlazeWidgetItemBadgeStateStyle? unreadState,
    BlazeWidgetItemBadgeStateStyle? readState,
  }) = _BlazeWidgetItemBadgeStyle;

  factory BlazeWidgetItemBadgeStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetItemBadgeStyleFromJson(json);
}

/// Status indicator state style configuration
@freezed
class BlazeWidgetItemStatusIndicatorStateStyle
    with _$BlazeWidgetItemStatusIndicatorStateStyle {
  const factory BlazeWidgetItemStatusIndicatorStateStyle({
    bool? isVisible,
    String? backgroundColor,
    BlazeImage? backgroundImage,
    BlazeTitleStyle? textStyle,
    String? text,
    double? cornerRadius,
    double? cornerRadiusRatio,
    String? borderColor,
    double? borderWidth,
  }) = _BlazeWidgetItemStatusIndicatorStateStyle;

  factory BlazeWidgetItemStatusIndicatorStateStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeWidgetItemStatusIndicatorStateStyleFromJson(json);
}

/// Widget item status indicator style configuration
@freezed
class BlazeWidgetItemStatusIndicatorStyle
    with _$BlazeWidgetItemStatusIndicatorStyle {
  const factory BlazeWidgetItemStatusIndicatorStyle({
    bool? isVisible,
    BlazeObjectPositioning? position,
    BlazeMargins? margins,
    BlazeMargins? statusTitlePadding,
    BlazeWidgetItemStatusIndicatorStateStyle? liveUnreadState,
    BlazeWidgetItemStatusIndicatorStateStyle? liveReadState,
    BlazeWidgetItemStatusIndicatorStateStyle? unreadState,
    BlazeWidgetItemStatusIndicatorStateStyle? readState,
  }) = _BlazeWidgetItemStatusIndicatorStyle;

  factory BlazeWidgetItemStatusIndicatorStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeWidgetItemStatusIndicatorStyleFromJson(json);
}

/// Duration element state style configuration
@freezed
class BlazeWidgetItemDurationElementStateStyle
    with _$BlazeWidgetItemDurationElementStateStyle {
  const factory BlazeWidgetItemDurationElementStateStyle({
    bool? isVisible,
    String? backgroundColor,
    BlazeImage? backgroundImage,
    BlazeTitleStyle? textStyle,
    double? cornerRadius,
    double? cornerRadiusRatio,
    String? borderColor,
    double? borderWidth,
  }) = _BlazeWidgetItemDurationElementStateStyle;

  factory BlazeWidgetItemDurationElementStateStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeWidgetItemDurationElementStateStyleFromJson(json);
}

/// Widget item duration element style configuration (for Videos and Moments)
@freezed
class BlazeWidgetItemDurationElementStyle
    with _$BlazeWidgetItemDurationElementStyle {
  const factory BlazeWidgetItemDurationElementStyle({
    bool? isVisible,
    BlazeObjectPositioning? position,
    BlazeMargins? insets,
    BlazeMargins? contentPadding,
    BlazeImage? icon,
    BlazeWidgetItemDurationElementStateStyle? liveUnreadState,
    BlazeWidgetItemDurationElementStateStyle? liveReadState,
    BlazeWidgetItemDurationElementStateStyle? unreadState,
    BlazeWidgetItemDurationElementStateStyle? readState,
  }) = _BlazeWidgetItemDurationElementStyle;

  factory BlazeWidgetItemDurationElementStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeWidgetItemDurationElementStyleFromJson(json);
}
