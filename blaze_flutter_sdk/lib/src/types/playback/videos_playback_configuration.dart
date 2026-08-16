import 'package:freezed_annotation/freezed_annotation.dart';

part 'videos_playback_configuration.freezed.dart';
part 'videos_playback_configuration.g.dart';

/// Picture in Picture (PiP) configuration for the videos player.
@freezed
class BlazePipConfiguration with _$BlazePipConfiguration {
  const factory BlazePipConfiguration({
    /// Whether the player should automatically enter Picture in Picture when the
    /// app moves to the background.
    bool? enterPipOnAppBackground,
  }) = _BlazePipConfiguration;

  factory BlazePipConfiguration.fromJson(Map<String, dynamic> json) =>
      _$BlazePipConfigurationFromJson(json);
}

/// Represents the playback configuration for the videos player.
@freezed
class BlazeVideosPlaybackConfiguration with _$BlazeVideosPlaybackConfiguration {
  const factory BlazeVideosPlaybackConfiguration({
    /// Whether to enable multi-aspect ratio support.
    ///
    /// - `true` — always use the biggest available aspect ratio for each
    ///   orientation to maximize screen utilization.
    /// - `false` — use the first available rendition regardless of orientation
    ///   changes.
    ///
    /// Optional — omitting it falls through to the native SDK's own default,
    /// which is `true` as of native iOS `1.20.0` / Android `1.20.3` (previously
    /// `false`). Pass an explicit value to opt out of picking up native default
    /// changes automatically.
    bool? multiAspectRatio,

    /// Whether to force rotation to landscape when entering fullscreen from
    /// portrait.
    required bool shouldOpenInLandscape,

    /// Optional Picture in Picture configuration.
    BlazePipConfiguration? pipConfiguration,

    /// Delay in milliseconds before the buffering spinner is shown while
    /// content is loading.
    ///
    /// Negative values are clamped to `0` natively. When omitted, the native
    /// default of `1000`ms applies.
    int? bufferingSpinnerDelayMs,
  }) = _BlazeVideosPlaybackConfiguration;

  factory BlazeVideosPlaybackConfiguration.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosPlaybackConfigurationFromJson(json);
}
