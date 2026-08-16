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

    /// Ads playback options for the stories player.
    ///
    /// When omitted, the native defaults apply (pre-roll disabled).
    BlazeStoriesAdsPlaybackConfiguration? ads,
  }) = _BlazeStoriesPlaybackConfiguration;

  factory BlazeStoriesPlaybackConfiguration.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoriesPlaybackConfigurationFromJson(json);
}

/// Ads playback configuration for the stories player.
@freezed
class BlazeStoriesAdsPlaybackConfiguration
    with _$BlazeStoriesAdsPlaybackConfiguration {
  const factory BlazeStoriesAdsPlaybackConfiguration({
    /// Enables showing a pre-roll ad on the first page the user interacts with
    /// (the first unread page).
    ///
    /// When `false` — the native default, kept for backward compatibility — an
    /// ad configured on that first unread page is skipped. Omit to keep the
    /// native default.
    bool? enablePreroll,
  }) = _BlazeStoriesAdsPlaybackConfiguration;

  factory BlazeStoriesAdsPlaybackConfiguration.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeStoriesAdsPlaybackConfigurationFromJson(json);
}
