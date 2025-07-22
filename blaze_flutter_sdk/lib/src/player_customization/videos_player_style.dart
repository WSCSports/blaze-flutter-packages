import 'package:freezed_annotation/freezed_annotation.dart';
import '../types/shared_types.dart';
import '../widgets/types/widget_layout_common.dart';

part 'videos_player_style.freezed.dart';
part 'videos_player_style.g.dart';

/// Videos player style configuration - matches React Native BlazeVideosPlayerStyle exactly
@freezed
class BlazeVideosPlayerStyle with _$BlazeVideosPlayerStyle {
  const factory BlazeVideosPlayerStyle({
    BlazeVideosPlayerHeadingTextStyle? headingText,
    BlazeVideosPlayerButtonsStyle? buttons,
    String? backgroundColor,
    BlazeVideosPlayerCtaStyle? cta,
    BlazeVideosPlayerSeekBarStyle? seekBar,
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
    BlazeVideosPlayerCtaVisibility? ctaVisibility,
  }) = _BlazeVideosPlayerCtaStyle;

  factory BlazeVideosPlayerCtaStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerCtaStyleFromJson(json);
}

/// Videos player CTA visibility configuration
@freezed
class BlazeVideosPlayerCtaVisibility with _$BlazeVideosPlayerCtaVisibility {
  const factory BlazeVideosPlayerCtaVisibility({
    BlazeVideosPlayerCtaVisibilityType? type,
    double? duration,
  }) = _BlazeVideosPlayerCtaVisibility;

  factory BlazeVideosPlayerCtaVisibility.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlayerCtaVisibilityFromJson(json);
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

/// Videos player CTA visibility type enumeration
enum BlazeVideosPlayerCtaVisibilityType {
  @JsonValue('visibleAfterOverlayHidden')
  visibleAfterOverlayHidden,
  @JsonValue('alwaysVisible')
  alwaysVisible,
}
