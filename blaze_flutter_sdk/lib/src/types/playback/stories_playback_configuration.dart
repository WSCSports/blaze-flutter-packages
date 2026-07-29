import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_playback_configuration.freezed.dart';
part 'stories_playback_configuration.g.dart';

/// Represents the playback configuration for the stories player.
@freezed
class BlazeStoriesPlaybackConfiguration
    with _$BlazeStoriesPlaybackConfiguration {
  const factory BlazeStoriesPlaybackConfiguration({
    /// Delay in milliseconds before the buffering spinner is shown while
    /// content is loading.
    ///
    /// Negative values are clamped to `0` natively. When omitted, the native
    /// default of `1000`ms applies.
    int? bufferingSpinnerDelayMs,
  }) = _BlazeStoriesPlaybackConfiguration;

  factory BlazeStoriesPlaybackConfiguration.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoriesPlaybackConfigurationFromJson(json);
}
