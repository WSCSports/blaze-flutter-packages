import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/shared_types.dart';
import '../widgets/types/widget_layout_common.dart';

part 'stories_player_style.freezed.dart';
part 'stories_player_style.g.dart';

/// Stories player style configuration
@freezed
class BlazeStoryPlayerStyle with _$BlazeStoryPlayerStyle {
  const factory BlazeStoryPlayerStyle({
    BlazeStoryPlayerTitleTextStyle? title,
    BlazeStoryPlayerLastUpdateTextStyle? lastUpdate,
    BlazeStoryPlayerButtonsStyle? buttons,
    String? backgroundColor,
    BlazeStoryPlayerCtaStyle? cta,
    BlazeStoryPlayerChipsStyle? chips,
    BlazeStoryPlayerHeaderGradientStyle? headerGradient,
    BlazeStoryPlayerFirstTimeSlideStyle? firstTimeSlide,
    BlazeStoryPlayerProgressBarStyle? progressBar,
  }) = _BlazeStoryPlayerStyle;

  factory BlazeStoryPlayerStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeStoryPlayerStyleFromJson(json);
}

/// Story player first time slide style configuration
@freezed
class BlazeStoryPlayerFirstTimeSlideStyle
    with _$BlazeStoryPlayerFirstTimeSlideStyle {
  const factory BlazeStoryPlayerFirstTimeSlideStyle({
    bool? show,
    BlazeFirstTimeSlideCTAStyle? cta,
    BlazeColor? backgroundColor,
    BlazeFirstTimeSlideTextStyle? mainTitle,
    BlazeFirstTimeSlideTextStyle? subtitle,
    BlazeStoryPlayerFirstTimeSlideInstructionsStyle? instructions,
  }) = _BlazeStoryPlayerFirstTimeSlideStyle;

  factory BlazeStoryPlayerFirstTimeSlideStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoryPlayerFirstTimeSlideStyleFromJson(json);
}

/// Story player progress bar style configuration
@freezed
class BlazeStoryPlayerProgressBarStyle with _$BlazeStoryPlayerProgressBarStyle {
  const factory BlazeStoryPlayerProgressBarStyle({
    String? backgroundColor,
    String? progressColor,
  }) = _BlazeStoryPlayerProgressBarStyle;

  factory BlazeStoryPlayerProgressBarStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoryPlayerProgressBarStyleFromJson(json);
}

/// Story player first time slide instructions style configuration
@freezed
class BlazeStoryPlayerFirstTimeSlideInstructionsStyle
    with _$BlazeStoryPlayerFirstTimeSlideInstructionsStyle {
  const factory BlazeStoryPlayerFirstTimeSlideInstructionsStyle({
    BlazeFirstTimeSlideInstructionStyle? forward,
    BlazeFirstTimeSlideInstructionStyle? pause,
    BlazeFirstTimeSlideInstructionStyle? backward,
    BlazeFirstTimeSlideInstructionStyle? transition,
  }) = _BlazeStoryPlayerFirstTimeSlideInstructionsStyle;

  factory BlazeStoryPlayerFirstTimeSlideInstructionsStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoryPlayerFirstTimeSlideInstructionsStyleFromJson(json);
}

/// Story player buttons style configuration
@freezed
class BlazeStoryPlayerButtonsStyle with _$BlazeStoryPlayerButtonsStyle {
  const factory BlazeStoryPlayerButtonsStyle({
    BlazePlayerButtonStyle? mute,
    BlazePlayerButtonStyle? exit,
    BlazePlayerButtonStyle? share,
  }) = _BlazeStoryPlayerButtonsStyle;

  factory BlazeStoryPlayerButtonsStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeStoryPlayerButtonsStyleFromJson(json);
}

/// Story player CTA style configuration
@freezed
class BlazeStoryPlayerCtaStyle with _$BlazeStoryPlayerCtaStyle {
  const factory BlazeStoryPlayerCtaStyle({
    double? cornerRadius,
    double? textSize,
    BlazeFont? font,
  }) = _BlazeStoryPlayerCtaStyle;

  factory BlazeStoryPlayerCtaStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeStoryPlayerCtaStyleFromJson(json);
}

/// Text case enumeration
enum BlazeTextCase {
  @JsonValue('Uppercase')
  uppercase,
  @JsonValue('Lowercase')
  lowercase,
}

/// Story player title text style configuration
@freezed
class BlazeStoryPlayerTitleTextStyle with _$BlazeStoryPlayerTitleTextStyle {
  const factory BlazeStoryPlayerTitleTextStyle({
    BlazeFont? font,
    double? textSize,
    String? textColor,
    bool? isVisible,
  }) = _BlazeStoryPlayerTitleTextStyle;

  factory BlazeStoryPlayerTitleTextStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeStoryPlayerTitleTextStyleFromJson(json);
}

/// Story player last update text style configuration
@freezed
class BlazeStoryPlayerLastUpdateTextStyle
    with _$BlazeStoryPlayerLastUpdateTextStyle {
  const factory BlazeStoryPlayerLastUpdateTextStyle({
    BlazeFont? font,
    String? textColor,
    double? textSize,
    BlazeTextCase? textCase,
    bool? isVisible,
  }) = _BlazeStoryPlayerLastUpdateTextStyle;

  factory BlazeStoryPlayerLastUpdateTextStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoryPlayerLastUpdateTextStyleFromJson(json);
}

/// Story player header gradient style configuration
@freezed
class BlazeStoryPlayerHeaderGradientStyle
    with _$BlazeStoryPlayerHeaderGradientStyle {
  const factory BlazeStoryPlayerHeaderGradientStyle({
    bool? isVisible,
    String? startColor,
    String? endColor,
  }) = _BlazeStoryPlayerHeaderGradientStyle;

  factory BlazeStoryPlayerHeaderGradientStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoryPlayerHeaderGradientStyleFromJson(json);
}

/// Story player chip style configuration
@freezed
class BlazeStoryPlayerChipStyle with _$BlazeStoryPlayerChipStyle {
  const factory BlazeStoryPlayerChipStyle({
    BlazeMargins? titlePadding,
    String? text,
    String? textColor,
    String? backgroundColor,
    bool? isVisible,
  }) = _BlazeStoryPlayerChipStyle;

  factory BlazeStoryPlayerChipStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeStoryPlayerChipStyleFromJson(json);
}

/// Story player chips style configuration
@freezed
class BlazeStoryPlayerChipsStyle with _$BlazeStoryPlayerChipsStyle {
  const factory BlazeStoryPlayerChipsStyle({
    BlazeStoryPlayerChipStyle? live,
    BlazeStoryPlayerChipStyle? ad,
  }) = _BlazeStoryPlayerChipsStyle;

  factory BlazeStoryPlayerChipsStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeStoryPlayerChipsStyleFromJson(json);
}
