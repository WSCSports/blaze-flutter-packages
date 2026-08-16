import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/shared_types.dart';
import '../widgets/types/widget_layout_common.dart';
import 'captions_style.dart';

part 'videos_player_style.freezed.dart';
part 'videos_player_style.g.dart';

/// Videos player style configuration
@freezed
class BlazeVideosPlayerStyle with _$BlazeVideosPlayerStyle {
  const factory BlazeVideosPlayerStyle({
    BlazeVideosPlayerHeadingTextStyle? headingText,
    BlazeVideosPlayerButtonsStyle? buttons,
    String? backgroundColor,
    BlazeVideosPlayerCtaStyle? cta,
    BlazeVideosPlayerSeekBarStyle? seekBar,

    /// How long, in milliseconds, the controls overlay stays visible before
    /// auto-hiding after it is shown.
    ///
    /// Non-positive values (zero or negative) are rejected natively and fall
    /// back to the SDK default. Omit to keep the preset value.
    int? overlayVisibilityThresholdMs,

    /// Styles the rendered captions text. To style the CC toggle button
    /// itself, use [BlazeVideosPlayerButtonsStyle.captions].
    BlazeCaptionsStyle? captions,
  }) = _BlazeVideosPlayerStyle;

  factory BlazeVideosPlayerStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerStyleFromJson(json);
}

/// Videos player heading text style configuration
@freezed
class BlazeVideosPlayerHeadingTextStyle
    with _$BlazeVideosPlayerHeadingTextStyle {
  const factory BlazeVideosPlayerHeadingTextStyle({
    BlazeFont? font,
    String? textColor,
    double? textSize,
    BlazeVideosPlayerHeadingTextContentSource? contentSource,
    bool? isVisible,
    int? numberOfLines,
  }) = _BlazeVideosPlayerHeadingTextStyle;

  factory BlazeVideosPlayerHeadingTextStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeVideosPlayerHeadingTextStyleFromJson(json);
}

/// Videos player buttons style configuration
@freezed
class BlazeVideosPlayerButtonsStyle with _$BlazeVideosPlayerButtonsStyle {
  const factory BlazeVideosPlayerButtonsStyle({
    BlazePlayerButtonStyle? mute,
    BlazePlayerButtonStyle? exit,
    BlazePlayerButtonStyle? share,
    BlazePlayerButtonStyle? like,
    BlazePlayerButtonStyle? playPause,
    BlazePlayerButtonStyle? previous,
    BlazePlayerButtonStyle? next,
    BlazePlayerButtonStyle? captions,
    BlazePlayerButtonStyle? forceRotation,
    BlazePlayerButtonStyle? casting,
    BlazePlayerButtonStyle? pictureInPicture,
    BlazePlayerButtonStyle? seekForward,
    BlazePlayerButtonStyle? seekBackward,
  }) = _BlazeVideosPlayerButtonsStyle;

  factory BlazeVideosPlayerButtonsStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerButtonsStyleFromJson(json);
}

/// Videos player CTA style configuration
@freezed
class BlazeVideosPlayerCtaStyle with _$BlazeVideosPlayerCtaStyle {
  const factory BlazeVideosPlayerCtaStyle({
    double? cornerRadius,
    double? textSize,
    BlazeFont? font,
    double? width,
    double? height,
    BlazeVideosPlayerCtaIconStyle? icon,
    bool? isVisible,

    /// Fallback border color for the CTA button.
    ///
    /// A border color supplied by the backend/CMS for the CTA takes precedence
    /// when present and parseable; this value is used otherwise. Omit to keep
    /// the preset value (no border).
    String? borderColor,

    /// Fallback border width for the CTA button. See [borderColor] for
    /// precedence rules.
    double? borderWidth,
  }) = _BlazeVideosPlayerCtaStyle;

  factory BlazeVideosPlayerCtaStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerCtaStyleFromJson(json);
}

/// Videos player CTA icon style configuration
@freezed
class BlazeVideosPlayerCtaIconStyle with _$BlazeVideosPlayerCtaIconStyle {
  const factory BlazeVideosPlayerCtaIconStyle({
    BlazeImage? iconImage,
    BlazeVideosPlayerCTAIconPositioning? iconPositioning,
    String? iconTint,
  }) = _BlazeVideosPlayerCtaIconStyle;

  factory BlazeVideosPlayerCtaIconStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerCtaIconStyleFromJson(json);
}

/// Videos player seek bar style configuration
@freezed
class BlazeVideosPlayerSeekBarStyle with _$BlazeVideosPlayerSeekBarStyle {
  const factory BlazeVideosPlayerSeekBarStyle({
    bool? isVisible,
    BlazeSeekBarStyle? playingState,
    BlazeSeekBarStyle? pausedState,
    double? horizontalSpacing,
    double? bottomSpacing,
  }) = _BlazeVideosPlayerSeekBarStyle;

  factory BlazeVideosPlayerSeekBarStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerSeekBarStyleFromJson(json);
}

/// Videos player heading text content source enumeration
enum BlazeVideosPlayerHeadingTextContentSource {
  @JsonValue('Title')
  title,
}

/// Videos player CTA icon positioning enumeration
enum BlazeVideosPlayerCTAIconPositioning {
  @JsonValue('Start')
  start,
}
