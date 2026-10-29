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

    /// The live status pill (live, upcoming, ended). When omitted, the native
    /// preset value is kept.
    BlazeVideosPlayerStatusIndicatorStyle? statusIndicator,

    /// The back-to-live button shown on a live stream. When omitted, the
    /// native preset value is kept.
    BlazeVideosPlayerBackToLiveButtonStyle? backToLiveButton,
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

    /// The live-stream audio-track button. When omitted, the native preset
    /// value is kept.
    BlazePlayerButtonStyle? audio,

    /// The live-stream catch-up (recap) button, shown when a recap exists.
    /// When omitted, the native preset value is kept.
    BlazePlayerButtonStyle? liveCatchup,
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

/// Text style for the live status indicator and the back-to-live button.
@freezed
class BlazeVideosPlayerTextStyle with _$BlazeVideosPlayerTextStyle {
  const factory BlazeVideosPlayerTextStyle({
    BlazeFont? font,
    double? textSize,
    String? textColor,
  }) = _BlazeVideosPlayerTextStyle;

  factory BlazeVideosPlayerTextStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerTextStyleFromJson(json);
}

/// Videos player live status indicator style (the "LIVE" pill).
@freezed
class BlazeVideosPlayerStatusIndicatorStyle
    with _$BlazeVideosPlayerStatusIndicatorStyle {
  const factory BlazeVideosPlayerStatusIndicatorStyle({
    bool? isVisible,
    BlazeMargins? padding,
    BlazeVideosPlayerStatusIndicatorStreamStatesStyle? streamStates,
  }) = _BlazeVideosPlayerStatusIndicatorStyle;

  factory BlazeVideosPlayerStatusIndicatorStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeVideosPlayerStatusIndicatorStyleFromJson(json);
}

/// Per stream state styles of the live status indicator.
@freezed
class BlazeVideosPlayerStatusIndicatorStreamStatesStyle
    with _$BlazeVideosPlayerStatusIndicatorStreamStatesStyle {
  const factory BlazeVideosPlayerStatusIndicatorStreamStatesStyle({
    BlazeVideosPlayerStatusIndicatorStateStyle? liveStreamState,
    BlazeVideosPlayerStatusIndicatorStateStyle? upcomingStreamState,
    BlazeVideosPlayerStatusIndicatorStateStyle? endedStreamState,
  }) = _BlazeVideosPlayerStatusIndicatorStreamStatesStyle;

  factory BlazeVideosPlayerStatusIndicatorStreamStatesStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeVideosPlayerStatusIndicatorStreamStatesStyleFromJson(json);
}

/// One stream state of the live status indicator.
@freezed
class BlazeVideosPlayerStatusIndicatorStateStyle
    with _$BlazeVideosPlayerStatusIndicatorStateStyle {
  const factory BlazeVideosPlayerStatusIndicatorStateStyle({
    BlazeVideosPlayerTextStyle? textStyle,
    bool? isVisible,
    String? text,
    String? backgroundColor,
    BlazeImage? backgroundImage,
    double? cornerRadius,
    double? cornerRadiusRatio,
    String? borderColor,
    double? borderWidth,
  }) = _BlazeVideosPlayerStatusIndicatorStateStyle;

  factory BlazeVideosPlayerStatusIndicatorStateStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeVideosPlayerStatusIndicatorStateStyleFromJson(json);
}

/// Videos player back-to-live button style.
@freezed
class BlazeVideosPlayerBackToLiveButtonStyle
    with _$BlazeVideosPlayerBackToLiveButtonStyle {
  const factory BlazeVideosPlayerBackToLiveButtonStyle({
    BlazeMargins? margins,
    BlazeMargins? padding,
    BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle? playbackStates,
  }) = _BlazeVideosPlayerBackToLiveButtonStyle;

  factory BlazeVideosPlayerBackToLiveButtonStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeVideosPlayerBackToLiveButtonStyleFromJson(json);
}

/// Back-to-live button styles at the live edge and behind it.
@freezed
class BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle
    with _$BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle {
  const factory BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle({
    BlazeVideosPlayerBackToLiveButtonStateStyle? atLiveEdgeState,
    BlazeVideosPlayerBackToLiveButtonStateStyle? behindLiveState,
  }) = _BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle;

  factory BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyleFromJson(json);
}

/// One playback state of the back-to-live button.
@freezed
class BlazeVideosPlayerBackToLiveButtonStateStyle
    with _$BlazeVideosPlayerBackToLiveButtonStateStyle {
  const factory BlazeVideosPlayerBackToLiveButtonStateStyle({
    BlazeVideosPlayerTextStyle? textStyle,
    String? text,
    String? backgroundColor,
    double? cornerRadius,
    double? cornerRadiusRatio,
    /// iOS-only. No-op on Android. Liquid Glass background (iOS 26+). When
    /// omitted, the native default ([BlazeGlassBackgroundState.automatic])
    /// is kept.
    BlazeGlassBackgroundState? glassBackground,
  }) = _BlazeVideosPlayerBackToLiveButtonStateStyle;

  factory BlazeVideosPlayerBackToLiveButtonStateStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeVideosPlayerBackToLiveButtonStateStyleFromJson(json);
}
