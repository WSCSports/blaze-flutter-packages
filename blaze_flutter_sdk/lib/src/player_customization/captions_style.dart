import 'package:freezed_annotation/freezed_annotation.dart';
import '../widgets/types/widget_layout_common.dart';

part 'captions_style.freezed.dart';
part 'captions_style.g.dart';

/// Client-configurable appearance of captions rendered in the Stories,
/// Moments, and Videos players.
///
/// Every field is optional; a `null` value keeps the native default for that
/// attribute. This styles the rendered caption text itself - use the
/// `captions` field on each player's buttons style (for example
/// [BlazeStoryPlayerButtonsStyle.captions]) to style the CC toggle button.
@freezed
class BlazeCaptionsStyle with _$BlazeCaptionsStyle {
  const factory BlazeCaptionsStyle({
    /// The font used for captions text. When omitted, the native default font
    /// family is kept.
    BlazeFont? font,

    /// Caption text size in sp. Android-only — on iOS the size is baked into
    /// [font] itself, so this field is a no-op there. When omitted, the
    /// native default size applies.
    double? textSize,

    /// The on-screen position of the captions box within the player.
    /// When omitted, the native default position is kept.
    BlazeCaptionsPositioning? positioning,
  }) = _BlazeCaptionsStyle;

  factory BlazeCaptionsStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeCaptionsStyleFromJson(json);
}

/// The horizontal and vertical positioning of the captions box within the
/// player container. Each axis is configured independently, so for example a
/// horizontally centered box can still use a custom vertical offset.
@freezed
class BlazeCaptionsPositioning with _$BlazeCaptionsPositioning {
  const factory BlazeCaptionsPositioning({
    /// The horizontal positioning of the captions box. When omitted, the
    /// native default ([BlazeCaptionsXPosition.start]) is kept.
    BlazeCaptionsXPosition? xPosition,

    /// The vertical positioning of the captions box. When omitted, the
    /// native default ([BlazeCaptionsYPosition.top]) is kept.
    BlazeCaptionsYPosition? yPosition,
  }) = _BlazeCaptionsPositioning;

  factory BlazeCaptionsPositioning.fromJson(Map<String, dynamic> json) =>
      _$BlazeCaptionsPositioningFromJson(json);
}

/// The horizontal positioning of the captions box within the player container.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class BlazeCaptionsXPosition with _$BlazeCaptionsXPosition {
  /// Aligns the captions box to the leading (start) edge of the player. This
  /// is the native default look.
  const factory BlazeCaptionsXPosition.start() = BlazeCaptionsXPositionStart;

  /// Centers the captions box and its text horizontally within the player.
  const factory BlazeCaptionsXPosition.center() = BlazeCaptionsXPositionCenter;

  /// Positions the captions box at an explicit offset from the leading edge.
  ///
  /// [offsetPercent] is a percentage of the player width; values are coerced
  /// into the `0..100` range natively.
  const factory BlazeCaptionsXPosition.custom({
    required int offsetPercent,
  }) = BlazeCaptionsXPositionCustom;

  factory BlazeCaptionsXPosition.fromJson(Map<String, dynamic> json) =>
      _$BlazeCaptionsXPositionFromJson(json);
}

/// The vertical positioning of the captions box within the player container.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class BlazeCaptionsYPosition with _$BlazeCaptionsYPosition {
  /// Aligns the captions box to the top edge of the player. This is the
  /// native default look.
  const factory BlazeCaptionsYPosition.top() = BlazeCaptionsYPositionTop;

  /// Centers the captions box vertically within the player.
  const factory BlazeCaptionsYPosition.center() = BlazeCaptionsYPositionCenter;

  /// Aligns the captions box to the bottom edge of the player.
  const factory BlazeCaptionsYPosition.bottom() = BlazeCaptionsYPositionBottom;

  /// Positions the captions box at an explicit offset from the top edge.
  ///
  /// [offsetPercent] is a percentage of the player height; values are coerced
  /// into the `0..100` range natively.
  const factory BlazeCaptionsYPosition.custom({
    required int offsetPercent,
  }) = BlazeCaptionsYPositionCustom;

  factory BlazeCaptionsYPosition.fromJson(Map<String, dynamic> json) =>
      _$BlazeCaptionsYPositionFromJson(json);
}
