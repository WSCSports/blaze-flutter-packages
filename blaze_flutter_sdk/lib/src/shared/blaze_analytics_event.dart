// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'blaze_analytics_event.freezed.dart';
part 'blaze_analytics_event.g.dart';

enum EventCategory {
  @JsonValue('Story')
  story,
  @JsonValue('Widget')
  widget,
  @JsonValue('Moment')
  moment,
  @JsonValue('Video')
  video,
  @JsonValue('Ad')
  ad,
  @JsonValue('Interaction')
  interaction,
}

enum EventActionName {
  // Global SDK actions
  @JsonValue('sdk_init')
  sdkInit,
  @JsonValue('app_pause')
  appPause,
  @JsonValue('app_continue')
  appContinue,

  // Shared player
  @JsonValue('cta_click')
  ctaClick,
  @JsonValue('audio')
  audio,
  @JsonValue('share_click')
  shareClick,
  @JsonValue('playback_pause')
  playbackPause,
  @JsonValue('playback_play')
  playbackPlay,
  @JsonValue('forced_playback_pause')
  forcedPlaybackPause,
  @JsonValue('forced_playback_play')
  forcedPlaybackPlay,
  @JsonValue('cc_off')
  ccOff,
  @JsonValue('cc_on')
  ccOn,
  @JsonValue('custom_action_button_click')
  customActionButtonClick,
  @JsonValue('playback_initial_start')
  playbackInitialStart,

  // Story player
  @JsonValue('story_start')
  storyStart,
  @JsonValue('story_exit')
  storyExit,
  @JsonValue('story_page_start')
  storyPageStart,
  @JsonValue('story_page_exit')
  storyPageExit,

  // Widget
  @JsonValue('widget_load')
  widgetLoad,
  @JsonValue('widget_click')
  widgetClick,

  // Moments player
  @JsonValue('moments_playlist_start')
  momentsPlaylistStart,
  @JsonValue('moments_playlist_exit')
  momentsPlaylistExit,
  @JsonValue('moment_start')
  momentStart,
  @JsonValue('moment_exit')
  momentExit,
  @JsonValue('like')
  like,
  @JsonValue('unlike')
  unlike,

  // Videos player
  @JsonValue('video_start')
  videoStart,
  @JsonValue('video_end')
  videoEnd,
  @JsonValue('buffer_start')
  bufferStart,
  @JsonValue('buffer_end')
  bufferEnd,
  @JsonValue('seek')
  seek,
  @JsonValue('cta_visible')
  ctaVisible,
  @JsonValue('cta_dismissed')
  ctaDismissed,

  // Ads - Banner Ads
  @JsonValue('banner_ad_load')
  bannerAdLoad,
  @JsonValue('banner_ad_view')
  bannerAdView,
  @JsonValue('banner_ad_click')
  bannerAdClick,
  @JsonValue('banner_ad_requested')
  bannerAdRequested,

  // Ads - Custom Native
  @JsonValue('ad_view')
  adView,
  @JsonValue('ad_click')
  adClick,
  @JsonValue('ad_exit')
  adExit,
  @JsonValue('ad_playback_pause')
  adPause,
  @JsonValue('ad_playback_play')
  adResume,
  @JsonValue('ad_forced_playback_pause')
  adForcedPlaybackPause,
  @JsonValue('ad_forced_playback_play')
  adForcedPlaybackPlay,
  @JsonValue('ad_requested')
  adRequested,

  // Ads - IMA
  @JsonValue('ima_all_ads_completed')
  imaAllAdsCompleted,
  @JsonValue('ima_ad_clicked')
  imaAdClicked,
  @JsonValue('ima_ad_completed')
  imaAdCompleted,
  @JsonValue('ima_ad_loaded')
  imaAdLoaded,
  @JsonValue('ima_ad_paused')
  imaAdPaused,
  @JsonValue('ima_ad_resumed')
  imaAdResumed,
  @JsonValue('ima_ad_skipped')
  imaAdSkipped,
  @JsonValue('ima_ad_started')
  imaAdStarted,
  @JsonValue('ima_ad_tapped')
  imaAdTapped,
  @JsonValue('ima_ad_first_quartile')
  imaAdFirstQuartile,
  @JsonValue('ima_ad_midpoint')
  imaAdMidpoint,
  @JsonValue('ima_ad_third_quartile')
  imaAdThirdQuartile,
  @JsonValue('ima_ad_requested')
  imaAdRequested,

  // Interactions
  @JsonValue('interaction_view')
  interactionView,
  @JsonValue('interaction_answer')
  interactionAnswer,
}

enum ContentType {
  @JsonValue('Story')
  story,
  @JsonValue('Moment')
  moments,
  @JsonValue('Video')
  video,
}

enum ThumbnailType {
  @JsonValue('Circle')
  circle,
  @JsonValue('Rectangle')
  rectangle,
  @JsonValue('Main')
  main,
}

enum ThumbnailFormat {
  @JsonValue('Animated')
  animated,
  @JsonValue('Static')
  static,
}

enum WidgetType {
  @JsonValue('Row')
  row,
  @JsonValue('Grid')
  grid,
}

enum PlayableNavigationType {
  @JsonValue('Automatic')
  automatic,
  @JsonValue('Manual')
  manual,
}

enum PlayableNavigationDirection {
  @JsonValue('Forward')
  forward,
  @JsonValue('Backward')
  backward,
  @JsonValue('Close')
  close,
}

enum PlayerStartTriggers {
  @JsonValue('Widget')
  widget,
  @JsonValue('Deeplink')
  deeplink,
  @JsonValue('Entry Point')
  entryPoint,
  @JsonValue('Auto Play From Widget')
  widgetAutoPlay,
  @JsonValue('Notification')
  notification,
  @JsonValue('App Foreground')
  appForeground,
  @JsonValue('Skip')
  skip,
}

enum PlayerExitTriggers {
  @JsonValue('Swipe')
  swipe,
  @JsonValue('Swipe Down')
  swipeDown,
  @JsonValue('Skip')
  skip,
  @JsonValue('Video Finished')
  videoFinished,
  @JsonValue('User Skip Next')
  userSkipNext,
  @JsonValue('User Skip Previous')
  userSkipPrevious,
  @JsonValue('Close Button')
  closeButton,
  @JsonValue('App Close')
  appClose,
  @JsonValue('URL Expiration')
  assetsExpiry,
  @JsonValue('Stories completed')
  storiesCompleted,
  @JsonValue('App Background')
  appBackground,
  @JsonValue('Back Button')
  backButton,
  @JsonValue('User Swipe To Dismiss')
  userSwipeToDismiss,
}

enum PlaybackActionMethod {
  @JsonValue('Press')
  press,
  @JsonValue('Release')
  release,
}

enum AudioState {
  @JsonValue('Mute')
  mute,
  @JsonValue('Unmute')
  unmute,
}

enum VideoSeekType {
  @JsonValue('Seek Bar')
  seekbar,
  @JsonValue('Double Tap')
  doubleTap,
}

enum VideoSeekDirection {
  @JsonValue('Forward')
  forward,
  @JsonValue('Backward')
  backward,
}

enum BlazeAnalyticsOrientation {
  @JsonValue('Portrait')
  portrait,
  @JsonValue('Landscape')
  landscape,
}

enum AnalyticsVideosCtaConfigType {
  @JsonValue('Always Visible')
  alwaysVisible,
  @JsonValue('Visible After Overlay Hidden')
  visibleAfterOverlayHidden,
}

enum BlazeAnalyticsAdGestureType {
  @JsonValue('Swipe-Up')
  swipeUp,
  @JsonValue('Click')
  click,
}

@freezed
class AnalyticsVideosCtaConfig with _$AnalyticsVideosCtaConfig {
  const factory AnalyticsVideosCtaConfig({
    AnalyticsVideosCtaConfigType? type,
    double? visible_duration,
  }) = _AnalyticsVideosCtaConfig;

  factory AnalyticsVideosCtaConfig.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsVideosCtaConfigFromJson(json);
}

@freezed
class UserProps with _$UserProps {
  const factory UserProps({
    required String generated_user_id,
    String? external_user_id,
    required String locale,
  }) = _UserProps;

  factory UserProps.fromJson(Map<String, dynamic> json) =>
      _$UserPropsFromJson(json);
}

@freezed
class ReferringPropsAnalytics with _$ReferringPropsAnalytics {
  const factory ReferringPropsAnalytics({
    String? origin_widget_id,
    String? origin_widget_type,
    String? labels_expression,
  }) = _ReferringPropsAnalytics;

  factory ReferringPropsAnalytics.fromJson(Map<String, dynamic> json) =>
      _$ReferringPropsAnalyticsFromJson(json);
}

@freezed
class WidgetProps with _$WidgetProps {
  const factory WidgetProps({
    String? widget_id,
    WidgetType? widget_type,
    String? widget_size,
    int? widget_content_count,
    String? content_id,
    ContentType? content_type,
    int? content_index,
    String? thumbnail_size,
    String? thumbnail_aspect_ratio,
    ThumbnailType? thumbnail_type,
    List<String>? widget_content_list,
    Map<String, String>? content_extra_info,
    bool? animated_thumbnail_enabled,
    ThumbnailFormat? thumbnail_format,
  }) = _WidgetProps;

  factory WidgetProps.fromJson(Map<String, dynamic> json) =>
      _$WidgetPropsFromJson(json);
}

@freezed
class StoryProps with _$StoryProps {
  const factory StoryProps({
    String? story_session_id,
    String? story_id,
    String? story_title,
    String? story_page_id,
    String? story_page_parent_id,
    String? story_composition_type,
    int? story_page_index,
    int? story_page_count,
    PlayableNavigationType? story_page_navigation_type,
    PlayableNavigationDirection? story_page_navigation_direction,
    PlayerStartTriggers? story_start_trigger,
    PlayerExitTriggers? story_exit_trigger,
    double? story_page_duration,
    double? story_page_duration_viewed_percent,
    PlaybackActionMethod? playback_action_method,
    AudioState? audio_state,
    Map<String, String>? content_extra_info,
    Map<String, String>? story_page_content_extra_info,
    String? gesture_type,
    String? cc_state,
    String? custom_button_name,
  }) = _StoryProps;

  factory StoryProps.fromJson(Map<String, dynamic> json) =>
      _$StoryPropsFromJson(json);
}

@freezed
class MomentsProps with _$MomentsProps {
  const factory MomentsProps({
    String? moments_session_id,
    String? moment_id,
    String? moment_title,
    int? moment_index,
    PlayableNavigationType? moment_navigation_type,
    PlayableNavigationDirection? moment_navigation_direction,
    PlayerStartTriggers? moment_start_trigger,
    PlayerExitTriggers? moment_exit_trigger,
    double? moment_duration,
    double? moment_duration_viewed_percent,
    PlaybackActionMethod? playback_action_method,
    AudioState? audio_state,
    int? loop_number,
    Map<String, String>? content_extra_info,
    String? cc_state,
    String? custom_button_name,
  }) = _MomentsProps;

  factory MomentsProps.fromJson(Map<String, dynamic> json) =>
      _$MomentsPropsFromJson(json);
}

@freezed
class VideoProps with _$VideoProps {
  const factory VideoProps({
    String? video_session_id,
    String? video_id,
    String? video_title,
    AudioState? audio_state,
    PlayerStartTriggers? video_start_trigger,
    PlayerExitTriggers? video_end_trigger,
    double? video_duration,
    VideoSeekType? seek_type,
    double? seek_total_time,
    VideoSeekDirection? seek_direction,
    double? video_time_start,
    double? video_time_end,
    BlazeAnalyticsOrientation? player_orientation,
    BlazeAnalyticsOrientation? device_orientation,
    Map<String, String>? content_extra_info,
    AnalyticsVideosCtaConfig? cta_config,
  }) = _VideoProps;

  factory VideoProps.fromJson(Map<String, dynamic> json) =>
      _$VideoPropsFromJson(json);
}

@freezed
class AdEventProps with _$AdEventProps {
  const factory AdEventProps({
    // Properties relevant for both IMA and CustomNative
    String? session_id,
    String? story_id,
    String? story_title,
    String? moment_id,
    String? moment_title,
    double? ad_duration,
    String? advertiser_name,
    ContentType? content_type,
    Map<String, String>? content_extra_info,
    Map<String, String>? story_page_content_extra_info,

    // Properties relevant only for CustomNative
    PlayerExitTriggers? ad_exit_trigger,
    double? ad_duration_viewed_percent,
    PlaybackActionMethod? playback_action_method,
    AudioState? audio_state,
    String? advertiser_id,
    String? campaign_id,
    String? campaign_name,
    String? ad_server,
    String? ad_insertion_logic,
    int? ad_index,
    BlazeAnalyticsAdGestureType? gesture_type,

    // Properties relevant only for IMA
    String? ad_id,
    String? ad_title,
    String? ad_description,
    String? ad_system,
    bool? skippable,
    double? skip_time_offset,
    String? ima_url,
    String? video_id,
    String? video_title,

    // Properties relevant only for Banner Ads
    String? ad_unit_id,
  }) = _AdEventProps;

  factory AdEventProps.fromJson(Map<String, dynamic> json) =>
      _$AdEventPropsFromJson(json);
}

@freezed
class InteractionProps with _$InteractionProps {
  const factory InteractionProps({
    String? content_session_id,
    ContentType? content_type,
    String? content_id,
    String? content_page_id,
    String? content_title,
    String? interaction_id,
    String? interaction_type,
    String? interaction_text,
    String? interaction_selected_answer,
    PlaybackActionMethod? playback_action_method,
    AudioState? audio_state,
    Map<String, String>? content_extra_info,
    Map<String, String>? story_page_content_extra_info,
    String? client_enrichment_url,
  }) = _InteractionProps;

  factory InteractionProps.fromJson(Map<String, dynamic> json) =>
      _$InteractionPropsFromJson(json);
}

// ======================================
// MAIN ANALYTICS EVENT INTERFACE - Matching React Native exactly
// ======================================

/// Analytics event interface - represents the complete BlazeAnalyticsEvent structure from React Native
@freezed
class BlazeAnalyticsEvent with _$BlazeAnalyticsEvent {
  const factory BlazeAnalyticsEvent({
    required String timestamp_utc,
    required String timestamp_user_tz,
    required String sdk_version,
    required String sdk_type,
    required EventCategory event_category,
    required EventActionName event_action,
    required UserProps user,
    required ReferringPropsAnalytics referring,
    WidgetProps? widget,
    StoryProps? story,
    MomentsProps? moment,
    VideoProps? video,
    AdEventProps? ad,
    InteractionProps? interaction,
  }) = _BlazeAnalyticsEvent;

  factory BlazeAnalyticsEvent.fromJson(Map<String, dynamic> json) =>
      _$BlazeAnalyticsEventFromJson(json);
}
