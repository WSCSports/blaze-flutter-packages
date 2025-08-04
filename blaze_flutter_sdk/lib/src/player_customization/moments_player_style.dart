import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/shared_types.dart';
import '../widgets/types/widget_layout_common.dart';

part 'moments_player_style.freezed.dart';
part 'moments_player_style.g.dart';

/// Moments player style configuration
@freezed
class BlazeMomentsPlayerStyle with _$BlazeMomentsPlayerStyle {
  const factory BlazeMomentsPlayerStyle({
    BlazeMomentsPlayerHeadingTextStyle? headingText,
    BlazeMomentsPlayerBodyTextStyle? bodyText,
    BlazeMomentsPlayerButtonsStyle? buttons,
    BlazeMomentsPlayerChipsStyle? chips,
    String? backgroundColor,
    BlazeMomentsPlayerCtaStyle? cta,
    BlazeMomentsPlayerHeaderGradientStyle? headerGradient,
    BlazeMomentsPlayerFooterGradientStyle? footerGradient,
    BlazeMomentsPlayerFirstTimeSlideStyle? firstTimeSlide,
    BlazeMomentsPlayerSeekBarStyle? seekBar,
    BlazeMomentsPlayerBottomComponentsAlignment? bottomComponentsAlignment,
    BlazePlayerDisplayMode? playerDisplayMode,
  }) = _BlazeMomentsPlayerStyle;

  factory BlazeMomentsPlayerStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerStyleFromJson(json);
}

/// Moments player heading text style configuration
@freezed
class BlazeMomentsPlayerHeadingTextStyle
    with _$BlazeMomentsPlayerHeadingTextStyle {
  const factory BlazeMomentsPlayerHeadingTextStyle({
    BlazeFont? font,
    String? textColor,
    double? textSize,
    BlazeMomentsPlayerHeadingTextContentSource? contentSource,
    bool? isVisible,
  }) = _BlazeMomentsPlayerHeadingTextStyle;

  factory BlazeMomentsPlayerHeadingTextStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerHeadingTextStyleFromJson(json);
}

/// Moments player body text style configuration
@freezed
class BlazeMomentsPlayerBodyTextStyle with _$BlazeMomentsPlayerBodyTextStyle {
  const factory BlazeMomentsPlayerBodyTextStyle({
    BlazeFont? font,
    String? textColor,
    double? textSize,
    BlazeMomentsPlayerItemBodyTextContentSource? contentSource,
    bool? isVisible,
  }) = _BlazeMomentsPlayerBodyTextStyle;

  factory BlazeMomentsPlayerBodyTextStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerBodyTextStyleFromJson(json);
}

/// Moments player buttons style configuration
@freezed
class BlazeMomentsPlayerButtonsStyle with _$BlazeMomentsPlayerButtonsStyle {
  const factory BlazeMomentsPlayerButtonsStyle({
    BlazePlayerButtonStyle? mute,
    BlazePlayerButtonStyle? exit,
    BlazePlayerButtonStyle? share,
    BlazePlayerButtonStyle? like,
    BlazePlayerButtonStyle? play,
  }) = _BlazeMomentsPlayerButtonsStyle;

  factory BlazeMomentsPlayerButtonsStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerButtonsStyleFromJson(json);
}

/// Moments player chips style configuration
@freezed
class BlazeMomentsPlayerChipsStyle with _$BlazeMomentsPlayerChipsStyle {
  const factory BlazeMomentsPlayerChipsStyle({
    BlazeMomentsPlayerChipStyle? ad,
  }) = _BlazeMomentsPlayerChipsStyle;

  factory BlazeMomentsPlayerChipsStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerChipsStyleFromJson(json);
}

/// Moments player chip style configuration
@freezed
class BlazeMomentsPlayerChipStyle with _$BlazeMomentsPlayerChipStyle {
  const factory BlazeMomentsPlayerChipStyle({
    BlazeMargins? titlePadding,
    String? text,
    String? textColor,
    String? backgroundColor,
    bool? isVisible,
  }) = _BlazeMomentsPlayerChipStyle;

  factory BlazeMomentsPlayerChipStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerChipStyleFromJson(json);
}

/// Moments player CTA style configuration
@freezed
class BlazeMomentsPlayerCtaStyle with _$BlazeMomentsPlayerCtaStyle {
  const factory BlazeMomentsPlayerCtaStyle({
    double? cornerRadius,
    double? textSize,
    BlazeFont? font,
    double? width,
    double? height,
    BlazeMomentsPlayerCTAPositioning? layoutPositioning,
    BlazeMomentsPlayerCTAHorizontalAlignment? horizontalAlignment,
    BlazeMomentsPlayerCtaIconStyle? icon,
  }) = _BlazeMomentsPlayerCtaStyle;

  factory BlazeMomentsPlayerCtaStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerCtaStyleFromJson(json);
}

/// Moments player CTA icon style configuration
@freezed
class BlazeMomentsPlayerCtaIconStyle with _$BlazeMomentsPlayerCtaIconStyle {
  const factory BlazeMomentsPlayerCtaIconStyle({
    BlazeImage? iconImage,
    BlazeMomentsPlayerCTAIconPositioning? iconPositioning,
    String? iconTint,
  }) = _BlazeMomentsPlayerCtaIconStyle;

  factory BlazeMomentsPlayerCtaIconStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerCtaIconStyleFromJson(json);
}

/// Moments player header gradient style configuration
@freezed
class BlazeMomentsPlayerHeaderGradientStyle
    with _$BlazeMomentsPlayerHeaderGradientStyle {
  const factory BlazeMomentsPlayerHeaderGradientStyle({
    bool? isVisible,
    String? startColor,
    String? endColor,
  }) = _BlazeMomentsPlayerHeaderGradientStyle;

  factory BlazeMomentsPlayerHeaderGradientStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerHeaderGradientStyleFromJson(json);
}

/// Moments player footer gradient style configuration
@freezed
class BlazeMomentsPlayerFooterGradientStyle
    with _$BlazeMomentsPlayerFooterGradientStyle {
  const factory BlazeMomentsPlayerFooterGradientStyle({
    bool? isVisible,
    String? startColor,
    String? endColor,
    BlazeMomentsPlayerFooterGradientPositioning? endPositioning,
  }) = _BlazeMomentsPlayerFooterGradientStyle;

  factory BlazeMomentsPlayerFooterGradientStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerFooterGradientStyleFromJson(json);
}

/// Moments player first time slide style configuration
@freezed
class BlazeMomentsPlayerFirstTimeSlideStyle
    with _$BlazeMomentsPlayerFirstTimeSlideStyle {
  const factory BlazeMomentsPlayerFirstTimeSlideStyle({
    bool? show,
    BlazeFirstTimeSlideCTAStyle? cta,
    BlazeColor? backgroundColor,
    BlazeFirstTimeSlideTextStyle? mainTitle,
    BlazeFirstTimeSlideTextStyle? subtitle,
    BlazeMomentsPlayerFirstTimeSlideInstructionsStyle? instructions,
  }) = _BlazeMomentsPlayerFirstTimeSlideStyle;

  factory BlazeMomentsPlayerFirstTimeSlideStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerFirstTimeSlideStyleFromJson(json);
}

/// Moments player first time slide instructions style configuration
@freezed
class BlazeMomentsPlayerFirstTimeSlideInstructionsStyle
    with _$BlazeMomentsPlayerFirstTimeSlideInstructionsStyle {
  const factory BlazeMomentsPlayerFirstTimeSlideInstructionsStyle({
    BlazeFirstTimeSlideInstructionStyle? next,
    BlazeFirstTimeSlideInstructionStyle? previous,
    BlazeFirstTimeSlideInstructionStyle? pause,
    BlazeFirstTimeSlideInstructionStyle? play,
  }) = _BlazeMomentsPlayerFirstTimeSlideInstructionsStyle;

  factory BlazeMomentsPlayerFirstTimeSlideInstructionsStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerFirstTimeSlideInstructionsStyleFromJson(json);
}

/// Moments player seek bar style configuration
@freezed
class BlazeMomentsPlayerSeekBarStyle with _$BlazeMomentsPlayerSeekBarStyle {
  const factory BlazeMomentsPlayerSeekBarStyle({
    bool? isVisible,
    BlazeSeekBarStyle? playingState,
    BlazeSeekBarStyle? pausedState,
    double? horizontalSpacing,
    double? bottomSpacing,
  }) = _BlazeMomentsPlayerSeekBarStyle;

  factory BlazeMomentsPlayerSeekBarStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlayerSeekBarStyleFromJson(json);
}

/// Moments player footer gradient positioning enumeration
enum BlazeMomentsPlayerFooterGradientPositioning {
  @JsonValue('BottomToPlayer')
  bottomToPlayer,
  @JsonValue('BottomToContainer')
  bottomToContainer,
}

/// Moments player heading text content source enumeration
enum BlazeMomentsPlayerHeadingTextContentSource {
  @JsonValue('Title')
  title,
  @JsonValue('Subtitle')
  subtitle,
}

/// Moments player body text content source enumeration
enum BlazeMomentsPlayerItemBodyTextContentSource {
  @JsonValue('Title')
  title,
  @JsonValue('Subtitle')
  subtitle,
  @JsonValue('Description')
  description,
}

/// Moments player bottom components alignment enumeration
enum BlazeMomentsPlayerBottomComponentsAlignment {
  @JsonValue('RelativeToContainer')
  relativeToContainer,
  @JsonValue('RelativeToPlayer')
  relativeToPlayer,
  @JsonValue('FitCtaBelowPlayer')
  fitCtaBelowPlayer,
}

/// Moments player CTA positioning enumeration
enum BlazeMomentsPlayerCTAPositioning {
  @JsonValue('CtaBellowBottomButtonsBox')
  ctaBellowBottomButtonsBox,
  @JsonValue('CtaNextToBottomButtonsBox')
  ctaNextToBottomButtonsBox,
}

/// Moments player CTA horizontal alignment enumeration
enum BlazeMomentsPlayerCTAHorizontalAlignment {
  @JsonValue('Start')
  start,
  @JsonValue('Center')
  center,
  @JsonValue('End')
  end,
  @JsonValue('FullAvailableWidth')
  fullAvailableWidth,
}

/// Moments player CTA icon positioning enumeration
enum BlazeMomentsPlayerCTAIconPositioning {
  @JsonValue('Start')
  start,
}

/// Player display mode enumeration
enum BlazePlayerDisplayMode {
  @JsonValue('FixedRatio_9_16')
  fixedRatio9x16,
  @JsonValue('ResizeAspectFillCenterCrop')
  resizeAspectFillCenterCrop,
}
