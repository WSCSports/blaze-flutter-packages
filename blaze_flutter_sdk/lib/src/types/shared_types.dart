import 'package:freezed_annotation/freezed_annotation.dart';
import '../widgets/types/widget_layout_common.dart';

part 'shared_types.freezed.dart';
part 'shared_types.g.dart';

/// Defines the caching level for Blaze widgets and content.
///
/// This enum controls how aggressively content is cached to improve performance
/// and reduce network requests.
enum BlazeCachingLevel {
  low,
  defaultLevel,
  high,
  extreme,
}

/// Color configuration for first time appearance and other UI elements
@freezed
class BlazeColor with _$BlazeColor {
  const factory BlazeColor({
    /// iOS color name
    String? colorName,

    /// Android color file name
    String? colorFileName,
  }) = _BlazeColor;

  factory BlazeColor.fromJson(Map<String, dynamic> json) =>
      _$BlazeColorFromJson(json);
}

/// First time slide CTA style configuration
@freezed
class BlazeFirstTimeSlideCTAStyle with _$BlazeFirstTimeSlideCTAStyle {
  const factory BlazeFirstTimeSlideCTAStyle({
    String? title,
    BlazeColor? backgroundColor,
    BlazeColor? textColor,
    BlazeFont? font,
    double? textSize,
    double? cornerRadius,
  }) = _BlazeFirstTimeSlideCTAStyle;

  factory BlazeFirstTimeSlideCTAStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeFirstTimeSlideCTAStyleFromJson(json);
}

/// Player button style configuration
@freezed
class BlazePlayerButtonStyle with _$BlazePlayerButtonStyle {
  const factory BlazePlayerButtonStyle({
    double? width,
    double? height,
    String? color,
    bool? isVisible,
    BlazeButtonScaleType? scaleType,
    bool? isVisibleForAds,
    BlazePlayerItemButtonImageStates? customImage,
  }) = _BlazePlayerButtonStyle;

  factory BlazePlayerButtonStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerButtonStyleFromJson(json);
}

/// Button scale type options
enum BlazeButtonScaleType {
  @JsonValue('MATRIX')
  matrix,
  @JsonValue('FIT_XY')
  fitXY,
  @JsonValue('FIT_START')
  fitStart,
  @JsonValue('FIT_CENTER')
  fitCenter,
  @JsonValue('FIT_END')
  fitEnd,
  @JsonValue('CENTER')
  center,
  @JsonValue('CENTER_CROP')
  centerCrop,
  @JsonValue('CENTER_INSIDE')
  centerInside,
}

/// First time slide instruction style configuration
@freezed
class BlazeFirstTimeSlideInstructionStyle
    with _$BlazeFirstTimeSlideInstructionStyle {
  const factory BlazeFirstTimeSlideInstructionStyle({
    BlazeFirstTimeSlideTextStyle? headerText,
    BlazeFirstTimeSlideTextStyle? descriptionText,
  }) = _BlazeFirstTimeSlideInstructionStyle;

  factory BlazeFirstTimeSlideInstructionStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeFirstTimeSlideInstructionStyleFromJson(json);
}

/// First time slide text style configuration
@freezed
class BlazeFirstTimeSlideTextStyle with _$BlazeFirstTimeSlideTextStyle {
  const factory BlazeFirstTimeSlideTextStyle({
    String? text,
    BlazeFont? font,
    BlazeColor? textColor,
    double? textSize,
  }) = _BlazeFirstTimeSlideTextStyle;

  factory BlazeFirstTimeSlideTextStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeFirstTimeSlideTextStyleFromJson(json);
}

/// Player item button image states configuration
@freezed
class BlazePlayerItemButtonImageStates with _$BlazePlayerItemButtonImageStates {
  const factory BlazePlayerItemButtonImageStates({
    BlazeImage? selectedImage,
    BlazeImage? unselectedImage,
  }) = _BlazePlayerItemButtonImageStates;

  factory BlazePlayerItemButtonImageStates.fromJson(
          Map<String, dynamic> json) =>
      _$BlazePlayerItemButtonImageStatesFromJson(json);
}

/// Player type enumeration
enum BlazePlayerType {
  @JsonValue('moments')
  moments,
  @JsonValue('stories')
  stories,
  @JsonValue('videos')
  videos,
}

/// CTA action type enumeration
enum BlazeCTAActionType {
  @JsonValue('Deeplink')
  deeplink,
  @JsonValue('Web')
  web,
}

/// Entry point trigger source enumeration
enum BlazeEntryPointTriggerSource {
  @JsonValue('notification')
  notification,
  @JsonValue('deepLink')
  deepLink,
  @JsonValue('entryPoint')
  entryPoint,
}

/// Seek bar style configuration
@freezed
class BlazeSeekBarStyle with _$BlazeSeekBarStyle {
  const factory BlazeSeekBarStyle({
    bool? isVisible,
    String? backgroundColor,
    String? progressColor,
    double? height,
    double? cornerRadius,
    String? thumbColor,
    BlazeImage? thumbImage,
    double? thumbSize,
    bool? isThumbVisible,
  }) = _BlazeSeekBarStyle;

  factory BlazeSeekBarStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeSeekBarStyleFromJson(json);
}
