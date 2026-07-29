import 'package:freezed_annotation/freezed_annotation.dart';

part 'moments_playback_configuration.freezed.dart';
part 'moments_playback_configuration.g.dart';

/// Defines how the moments player loops / advances through content.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class BlazeMomentsLoopBehavior with _$BlazeMomentsLoopBehavior {
  /// The current moment loops indefinitely.
  const factory BlazeMomentsLoopBehavior.infiniteLoop() =
      BlazeMomentsLoopBehaviorInfiniteLoop;

  /// The current moment plays [numberOfPlays] times, then advances to the next.
  const factory BlazeMomentsLoopBehavior.loopAndAdvance({
    required int numberOfPlays,
  }) = BlazeMomentsLoopBehaviorLoopAndAdvance;

  factory BlazeMomentsLoopBehavior.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsLoopBehaviorFromJson(json);
}

/// Represents the playback configuration for the moments player.
@freezed
class BlazeMomentsPlaybackConfiguration with _$BlazeMomentsPlaybackConfiguration {
  const factory BlazeMomentsPlaybackConfiguration({
    /// The loop behavior applied to the moments player.
    BlazeMomentsLoopBehavior? loopBehavior,

    /// Delay in milliseconds before the buffering spinner is shown while
    /// content is loading.
    ///
    /// Negative values are clamped to `0` natively. When omitted, the native
    /// default of `1000`ms applies.
    int? bufferingSpinnerDelayMs,
  }) = _BlazeMomentsPlaybackConfiguration;

  factory BlazeMomentsPlaybackConfiguration.fromJson(Map<String, dynamic> json) =>
      _$BlazeMomentsPlaybackConfigurationFromJson(json);
}
