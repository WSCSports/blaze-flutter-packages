// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'blaze_analytics_event.freezed.dart';
part 'blaze_analytics_event.g.dart';

/// The event category. Wire values are the native 2.0 lowercase strings.
enum EventCategory {
  @JsonValue('story')
  story,
  @JsonValue('widget')
  widget,
  @JsonValue('moment')
  moment,
  @JsonValue('video')
  video,
  @JsonValue('ad')
  ad,
  @JsonValue('interaction')
  interaction,
  @JsonValue('search')
  search,
  @JsonValue('tab')
  tab,
  @JsonValue('global')
  global,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// The event action. Wire values are the native 2.0 snake_case strings.
enum EventActionName {
  // Global SDK actions
  @JsonValue('sdk_init')
  sdkInit,
  @JsonValue('user_logout')
  userLogout,

  // Shared player
  @JsonValue('cta_click')
  ctaClick,
  @JsonValue('share_click')
  shareClick,
  @JsonValue('user_initiated_playback_pause')
  userInitiatedPlaybackPause,
  @JsonValue('user_initiated_playback_play')
  userInitiatedPlaybackPlay,
  @JsonValue('cc_off')
  ccOff,
  @JsonValue('cc_on')
  ccOn,
  @JsonValue('custom_action_button_click')
  customActionButtonClick,
  @JsonValue('playback_initial_start')
  playbackInitialStart,
  @JsonValue('like')
  like,
  @JsonValue('unlike')
  unlike,
  @JsonValue('follow')
  follow,
  @JsonValue('unfollow')
  unfollow,
  @JsonValue('description_expanded')
  descriptionExpanded,
  @JsonValue('description_collapsed')
  descriptionCollapsed,
  @JsonValue('audio_track_change')
  audioTrackChange,

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

  // Tabs
  @JsonValue('tab_data_load')
  tabDataLoad,
  @JsonValue('tab_transition')
  tabTransition,

  // Moments player
  @JsonValue('moment_start')
  momentStart,
  @JsonValue('moment_exit')
  momentExit,

  // Videos player
  @JsonValue('video_start')
  videoStart,
  @JsonValue('video_end')
  videoEnd,
  @JsonValue('seek')
  seek,
  @JsonValue('playback_speed_change')
  playbackSpeedChange,
  @JsonValue('viewing_mode_transition')
  viewingModeTransition,
  @JsonValue('viewing_orientation_changed')
  viewingOrientationChanged,
  @JsonValue('back_to_live')
  backToLive,
  @JsonValue('video_changed_status')
  videoChangedStatus,
  @JsonValue('catchup_screen_impression')
  catchupScreenImpression,
  @JsonValue('catchup_click')
  catchupClick,

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

  // Search
  @JsonValue('search_opened')
  searchOpened,
  @JsonValue('search_query_submitted')
  searchQuerySubmitted,
  @JsonValue('search_results_shown')
  searchResultsShown,
  @JsonValue('search_result_clicked')
  searchResultClicked,
  @JsonValue('search_suggestions_clicked')
  searchSuggestionsClicked,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum ContentType {
  @JsonValue('story')
  story,
  @JsonValue('moment')
  moments,
  @JsonValue('video')
  video,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum ThumbnailType {
  @JsonValue('circle')
  circle,
  @JsonValue('rectangle')
  rectangle,
  /// iOS only.
  @JsonValue('main')
  main,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum ThumbnailFormat {
  @JsonValue('animated')
  animated,
  @JsonValue('static')
  static,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum WidgetType {
  @JsonValue('row')
  row,
  @JsonValue('grid')
  grid,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum PlayableNavigationType {
  @JsonValue('automatic')
  automatic,
  @JsonValue('manual')
  manual,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum PlayableNavigationDirection {
  @JsonValue('forward')
  forward,
  @JsonValue('backward')
  backward,
  @JsonValue('close')
  close,
  /// Android only.
  @JsonValue('cta_click')
  ctaClick,
  /// Android only.
  @JsonValue('ads_click')
  adsClick,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum PlayerStartTriggers {
  @JsonValue('widget')
  widget,
  @JsonValue('deeplink')
  deeplink,
  @JsonValue('entry_point')
  entryPoint,
  @JsonValue('auto_play_from_widget')
  widgetAutoPlay,
  @JsonValue('notification')
  notification,
  @JsonValue('app_foreground')
  appForeground,
  @JsonValue('focus_regained')
  focusRegained,
  @JsonValue('inline')
  inline,
  @JsonValue('moments_tabs')
  momentsTabs,
  /// Android only.
  @JsonValue('moments_container')
  momentsContainer,
  @JsonValue('viewing_mode_transition')
  viewingModeTransition,
  @JsonValue('skip')
  skip,
  @JsonValue('swipe')
  swipe,
  @JsonValue('auto_skip')
  autoSkip,
  @JsonValue('auto_advance')
  autoAdvance,
  @JsonValue('catchup')
  catchup,
  @JsonValue('catchup_return')
  catchupReturn,
  /// Android only.
  @JsonValue('share')
  share,
  /// Android only.
  @JsonValue('single_content')
  singleContent,
  /// Android only.
  @JsonValue('embedded_player_in_viewport')
  embeddedPlayerInViewport,
  /// Android only.
  @JsonValue('widget_tabs')
  widgetTabs,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum PlayerExitTriggers {
  @JsonValue('swipe')
  swipe,
  @JsonValue('skip')
  skip,
  @JsonValue('auto_skip')
  autoSkip,
  @JsonValue('video_finished')
  videoFinished,
  @JsonValue('user_skip_next')
  userSkipNext,
  @JsonValue('user_skip_previous')
  userSkipPrevious,
  @JsonValue('close_button')
  closeButton,
  @JsonValue('app_close')
  appClose,
  @JsonValue('url_expiration')
  assetsExpiry,
  @JsonValue('story_completed')
  storiesCompleted,
  @JsonValue('app_background')
  appBackground,
  @JsonValue('focus_lost')
  focusLost,
  @JsonValue('user_swipe_to_dismiss')
  userSwipeToDismiss,
  @JsonValue('inline')
  inline,
  @JsonValue('viewing_mode_transition')
  viewingModeTransition,
  /// Android only.
  @JsonValue('swipe_up')
  swipeUp,
  /// Android only.
  @JsonValue('cta_click')
  ctaClick,
  /// Android only.
  @JsonValue('back_button')
  backButton,
  /// Android only.
  @JsonValue('pip_dismissed')
  pipDismissed,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum AudioState {
  @JsonValue('mute')
  mute,
  @JsonValue('unmute')
  unmute,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum VideoSeekType {
  @JsonValue('seek_bar')
  seekbar,
  @JsonValue('double_tap')
  doubleTap,
  @JsonValue('seek_button')
  seekButton,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum VideoSeekDirection {
  @JsonValue('forward')
  forward,
  @JsonValue('backward')
  backward,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum BlazeAnalyticsOrientation {
  @JsonValue('portrait')
  portrait,
  @JsonValue('landscape')
  landscape,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

enum BlazeAnalyticsAdGestureType {
  @JsonValue('swipe_up')
  swipeUp,
  @JsonValue('click')
  click,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// Where a video is being watched.
enum PlayerViewingMode {
  @JsonValue('inline_preview')
  inlinePreview,
  @JsonValue('inline_interactive')
  inlineInteractive,
  @JsonValue('fullscreen')
  fullscreen,
  @JsonValue('picture_in_picture')
  pictureInPicture,
  @JsonValue('out_of_screen')
  outOfScreen,
  @JsonValue('casting')
  casting,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// The state of a live stream.
enum AnalyticsStreamStatus {
  @JsonValue('live')
  live,
  @JsonValue('upcoming')
  upcoming,
  @JsonValue('ended')
  ended,

  /// The status is not known, or the value is one this SDK version does not
  /// know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// What caused a `viewing_orientation_changed` event.
enum OrientationChangeTrigger {
  @JsonValue('initial_request')
  initialRequest,
  @JsonValue('button')
  button,
  @JsonValue('device_rotation')
  deviceRotation,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// How the playback speed was changed.
enum PlaybackSpeedType {
  @JsonValue('press_hold')
  pressHold,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// What brought a live video back to the live edge.
enum BackToLiveTrigger {
  @JsonValue('back_to_live_button')
  backToLiveButton,
  @JsonValue('manual_scrub')
  manualScrub,
  @JsonValue('double_tap_forward')
  doubleTapForward,
  @JsonValue('seek_forward_button')
  seekForwardButton,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// The live catchup surface a catchup event came from.
enum CatchupSurface {
  @JsonValue('catchup_screen')
  catchupScreen,
  @JsonValue('banner')
  banner,
  @JsonValue('icon')
  icon,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// What the user chose on a live catchup surface.
enum CatchupTarget {
  @JsonValue('story')
  story,
  @JsonValue('go_live')
  goLive,
  @JsonValue('close')
  close,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// The call-to-action of a story page, moment or video, as set in the CMS.
@freezed
class AnalyticsCtaConfig with _$AnalyticsCtaConfig {
  const factory AnalyticsCtaConfig({
    String? text,
    String? color,
    String? url,
  }) = _AnalyticsCtaConfig;

  factory AnalyticsCtaConfig.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsCtaConfigFromJson(json);
}

/// The custom action button shown in a story or moments player.
@freezed
class AnalyticsCustomActionButtonConfig
    with _$AnalyticsCustomActionButtonConfig {
  const factory AnalyticsCustomActionButtonConfig({
    String? button_id,
    String? button_text,
  }) = _AnalyticsCustomActionButtonConfig;

  factory AnalyticsCustomActionButtonConfig.fromJson(
          Map<String, dynamic> json) =>
      _$AnalyticsCustomActionButtonConfigFromJson(json);
}

/// How a moment loops.
@freezed
class AnalyticsLoopSettings with _$AnalyticsLoopSettings {
  const factory AnalyticsLoopSettings({
    bool? infinite_loop,

    /// The number of plays before the player advances. Absent when
    /// [infinite_loop] is true.
    int? loop_and_advance,
  }) = _AnalyticsLoopSettings;

  factory AnalyticsLoopSettings.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsLoopSettingsFromJson(json);
}

/// The device class in the `tech` block.
enum DeviceType {
  @JsonValue('phone')
  phone,
  @JsonValue('tablet')
  tablet,

  /// The device class is not known, or the value is one this SDK version does
  /// not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// The network connection in the `tech` block.
enum ConnectionType {
  /// Android only.
  @JsonValue('wired')
  wired,
  @JsonValue('wifi')
  wifi,
  @JsonValue('cellular')
  cellular,

  /// The connection is not known, or the value is one this SDK version does
  /// not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// How the user moved between two tabs of a Moments tabs player.
enum TabTransitionMethod {
  @JsonValue('tap')
  tap,
  @JsonValue('swipe')
  swipe,
  @JsonValue('programmatic')
  programmatic,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// What caused a `user_logout` event.
enum LogoutTrigger {
  /// `BlazeSDK.logout()` was called.
  @JsonValue('logout')
  logout,
  /// `initSDK` ran with `restoreExternalUserId: false` while a user was stored.
  @JsonValue('init')
  init,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// The kind of surface a player was opened from. See
/// [ReferringPropsAnalytics.origin_source_type].
enum OriginSourceType {
  @JsonValue('widget')
  widget,
  @JsonValue('entry_point')
  entryPoint,
  @JsonValue('moments_tab')
  momentsTab,
  @JsonValue('inline')
  inline,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// The kind of data source that produced the content.
enum ReferringDataSourceType {
  @JsonValue('content_list')
  contentList,
  @JsonValue('label_expression')
  labelExpression,
  @JsonValue('search')
  search,
  @JsonValue('composite')
  composite,
  @JsonValue('for_you')
  forYou,
  @JsonValue('trending')
  trending,
  @JsonValue('followed_entities')
  followedEntities,

  /// A value this SDK version does not know yet. The event is still delivered.
  @JsonValue('unknown')
  unknown,
}

/// A followed entity, as reported in the `user` block.
@freezed
class AnalyticsFollowedEntity with _$AnalyticsFollowedEntity {
  const factory AnalyticsFollowedEntity({
    String? id,
    String? provider_name,

    /// The entity category, for example `team` or `player`. Absent when the
    /// category is not known.
    String? entity_type,
  }) = _AnalyticsFollowedEntity;

  factory AnalyticsFollowedEntity.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsFollowedEntityFromJson(json);
}

@freezed
class UserProps with _$UserProps {
  const factory UserProps({
    required String generated_user_id,
    String? external_user_id,
    required String locale,
    Map<String, String>? experiments,
    List<AnalyticsFollowedEntity>? followed_entities,

    /// Set on `user_logout` events only. The event's [external_user_id] is the
    /// user that was logged out.
    @JsonKey(unknownEnumValue: LogoutTrigger.unknown)
    LogoutTrigger? logout_trigger,
  }) = _UserProps;

  factory UserProps.fromJson(Map<String, dynamic> json) =>
      _$UserPropsFromJson(json);
}

/// Device and app facts, sent with every event.
@freezed
class TechProps with _$TechProps {
  const factory TechProps({
    @JsonKey(unknownEnumValue: DeviceType.unknown)
    DeviceType? device_type,
    String? device_brand,
    String? device_model,
    String? operating_system,
    String? operating_system_version,
    String? screen_resolution,
    String? app_id,
    String? app_version,
    @JsonKey(unknownEnumValue: ConnectionType.unknown)
    ConnectionType? connection_type,
    String? localization_setting,
  }) = _TechProps;

  factory TechProps.fromJson(Map<String, dynamic> json) =>
      _$TechPropsFromJson(json);
}

/// Where the content came from and how the player was reached.
@freezed
class ReferringPropsAnalytics with _$ReferringPropsAnalytics {
  const factory ReferringPropsAnalytics({
    /// The IDs of the surfaces the player was opened through, outermost first,
    /// for example `[home-moments-tabs-row, tab-for-you]`. Same length and
    /// order as [origin_source_type].
    List<String>? origin_source_id,

    /// The kind of each surface in [origin_source_id].
    @JsonKey(unknownEnumValue: OriginSourceType.unknown)
    List<OriginSourceType>? origin_source_type,
    String? origin_widget_type,
    @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
    ReferringDataSourceType? data_source_type,
    String? data_source_value,
    String? data_source_config,
    Map<String, String?>? widget_builder_metadata,
    String? search_session_id,
    String? search_query_id,
    String? search_result_id,
  }) = _ReferringPropsAnalytics;

  factory ReferringPropsAnalytics.fromJson(Map<String, dynamic> json) =>
      _$ReferringPropsAnalyticsFromJson(json);
}

/// A tab of a Moments tabs player. `tab_data_load` events fill the `tab_*`
/// fields; `tab_transition` events fill the `current_tab_*`, `next_tab_*` and
/// [transition_method] fields.
@freezed
class TabProps with _$TabProps {
  const factory TabProps({
    String? tabs_source_id,
    int? total_tabs_count,
    String? tab_id,
    String? tab_title,
    int? tab_index,
    int? content_count,
    String? current_tab_id,
    int? current_tab_index,
    String? current_tab_title,
    String? next_tab_id,
    int? next_tab_index,
    String? next_tab_title,
    @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
    TabTransitionMethod? transition_method,
  }) = _TabProps;

  factory TabProps.fromJson(Map<String, dynamic> json) =>
      _$TabPropsFromJson(json);
}

/// A search session, query or result.
@freezed
class SearchProps with _$SearchProps {
  const factory SearchProps({
    String? search_session_id,
    String? query_id,
    String? query,
    String? result_id,
    List<String>? story_ids,
    List<String>? moment_ids,
    List<String>? video_ids,
    int? total_results,
    String? content_id,
    @JsonKey(unknownEnumValue: ContentType.unknown)
    ContentType? content_type,
    int? position,
  }) = _SearchProps;

  factory SearchProps.fromJson(Map<String, dynamic> json) =>
      _$SearchPropsFromJson(json);
}

@freezed
class WidgetProps with _$WidgetProps {
  const factory WidgetProps({
    String? widget_id,
    @JsonKey(unknownEnumValue: WidgetType.unknown)
    WidgetType? widget_type,
    String? widget_size,
    int? widget_content_count,

    /// The distance of the widget from the top of its scrollable parent.
    double? placement_distance,
    String? content_id,
    String? content_name,
    @JsonKey(unknownEnumValue: ContentType.unknown)
    ContentType? content_type,
    int? content_index,
    String? thumbnail_size,
    String? thumbnail_aspect_ratio,
    @JsonKey(unknownEnumValue: ThumbnailType.unknown)
    ThumbnailType? thumbnail_type,
    List<String>? widget_content_list,
    Map<String, String>? content_extra_info,
    bool? animated_thumbnail_enabled,
    @JsonKey(unknownEnumValue: ThumbnailFormat.unknown)
    ThumbnailFormat? thumbnail_format,
    Map<String, String>? localization,

    /// Android only.
    String? widget_fold_position,

    /// Android only.
    String? page_view_id,

    /// Android only.
    String? placement_id,

    /// Android only.
    String? placement_name,
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
    int? story_index,
    int? total_stories_count,
    int? remaining_unread_count,
    int? remaining_unread_pages,
    String? next_story_id,
    bool? is_last_page,
    String? content_ratio,
    String? story_page_id,
    String? story_page_parent_id,
    String? story_page_type,
    int? story_page_index,
    int? story_page_count,
    @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
    PlayableNavigationType? story_page_navigation_type,
    @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
    PlayableNavigationDirection? story_page_navigation_direction,
    @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
    PlayerStartTriggers? story_start_trigger,
    @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
    PlayerExitTriggers? story_exit_trigger,
    double? story_page_duration,

    /// The share of the page that was watched, from 0 to 100, with two
    /// decimals.
    double? story_page_duration_viewed_percent,
    @JsonKey(unknownEnumValue: AudioState.unknown)
    AudioState? audio_state,
    String? cc_state,
    Map<String, String>? content_extra_info,
    Map<String, String>? story_page_content_extra_info,
    @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
    BlazeAnalyticsAdGestureType? gesture_type,
    String? custom_button_name,
    AnalyticsCtaConfig? cta_config,
    bool? cta_shown,
    AnalyticsCustomActionButtonConfig? custom_action_button_config,
    bool? custom_action_button_shown,
    Map<String, String>? localization,
    int? user_lifetime_engagements,
    String? attribution_token,
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
    int? total_moments_count,
    int? remaining_unread_count,
    String? next_moment_id,
    bool? is_liked,
    @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
    PlayableNavigationType? moment_navigation_type,
    @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
    PlayableNavigationDirection? moment_navigation_direction,
    @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
    PlayerStartTriggers? moment_start_trigger,
    @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
    PlayerExitTriggers? moment_exit_trigger,
    double? moment_duration,

    /// The share of the moment that was watched, from 0 to 100, with two
    /// decimals.
    double? moment_duration_viewed_percent,
    @JsonKey(unknownEnumValue: AudioState.unknown)
    AudioState? audio_state,
    String? content_ratio,
    int? loop_number,
    AnalyticsLoopSettings? loop_settings,
    Map<String, String>? content_extra_info,
    String? cc_state,
    String? custom_button_name,
    AnalyticsCtaConfig? cta_config,
    bool? cta_shown,
    AnalyticsCustomActionButtonConfig? custom_action_button_config,
    bool? custom_action_button_shown,
    String? attribution_token,
    Map<String, String>? follow_state,
    bool? follow_button_visible,
    String? follow_subject_type,
    String? follow_subject_id,
    String? follow_subject_provider_name,
    String? active_tab_title,
    String? initial_tab_title,
    bool? tabs_enabled,
    List<String>? tabs_configuration,
    Map<String, String>? localization,
    @JsonKey(unknownEnumValue: VideoSeekType.unknown)
    VideoSeekType? seek_type,
    double? seek_start_time,
    double? seek_end_time,
    double? seek_total_time,
    @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
    VideoSeekDirection? seek_direction,
    double? seek_interval_setting,
    @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
    PlaybackSpeedType? playback_speed_type,
    double? playback_speed,
    double? speed_start_time,
    double? speed_end_time,
    double? speed_total_time,
    int? user_lifetime_engagements,
  }) = _MomentsProps;

  factory MomentsProps.fromJson(Map<String, dynamic> json) =>
      _$MomentsPropsFromJson(json);
}

@freezed
class VideoProps with _$VideoProps {
  const factory VideoProps({
    String? video_session_id,
    String? video_id,
    String? next_video_id,
    String? video_title,
    int? video_index,
    int? total_videos_count,
    int? remaining_unread_count,
    bool? is_liked,
    @JsonKey(unknownEnumValue: AudioState.unknown)
    AudioState? audio_state,
    @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
    PlayerStartTriggers? video_start_trigger,
    @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
    PlayerExitTriggers? video_end_trigger,
    double? video_current_time,
    double? video_duration,
    double? video_time_start,
    double? video_time_end,
    @JsonKey(unknownEnumValue: VideoSeekType.unknown)
    VideoSeekType? seek_type,
    double? seek_start_time,
    double? seek_end_time,
    double? seek_total_time,
    @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
    VideoSeekDirection? seek_direction,
    double? seek_interval_setting,
    @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
    BlazeAnalyticsOrientation? device_orientation,
    String? content_ratio,
    @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
    OrientationChangeTrigger? video_orientation_changed_trigger,

    /// Where the video is being watched. On a `viewing_mode_transition` event
    /// this is the mode the player moved to.
    @JsonKey(unknownEnumValue: PlayerViewingMode.unknown)
    PlayerViewingMode? viewing_mode,
    double? cast_duration,

    /// Android only.
    String? quality,
    Map<String, String>? content_extra_info,
    String? cc_state,
    AnalyticsCtaConfig? cta_config,
    bool? cta_shown,
    Map<String, String>? localization,
    @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
    PlaybackSpeedType? playback_speed_type,
    double? playback_speed,
    double? speed_start_time,
    double? speed_end_time,
    double? speed_total_time,
    int? user_lifetime_engagements,
    String? attribution_token,

    // Live streams
    @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
    AnalyticsStreamStatus? stream_status,
    bool? is_at_live_edge,
    double? stream_elapsed_time,
    @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
    BackToLiveTrigger? back_to_live_trigger,
    @JsonKey(unknownEnumValue: CatchupSurface.unknown)
    CatchupSurface? catchup_surface,
    @JsonKey(unknownEnumValue: CatchupTarget.unknown)
    CatchupTarget? catchup_target,

    // Audio tracks
    String? audio_track,
    String? audio_track_previous,
    bool? audio_track_is_preferred,

    /// iOS only.
    String? search_session_id,

    /// iOS only.
    String? query_id,

    /// iOS only.
    String? result_id,
  }) = _VideoProps;

  factory VideoProps.fromJson(Map<String, dynamic> json) =>
      _$VideoPropsFromJson(json);
}

@freezed
class AdEventProps with _$AdEventProps {
  const factory AdEventProps({
    // Properties relevant for IMA, banner and CustomNative ads
    String? session_id,

    /// The ID of the story, moment or video the ad interrupted. [content_type]
    /// tells which.
    String? content_id,
    String? content_title,
    @JsonKey(unknownEnumValue: ContentType.unknown)
    ContentType? content_type,
    double? ad_duration,
    String? advertiser_name,
    Map<String, String>? content_extra_info,

    /// iOS only.
    Map<String, String>? story_page_content_extra_info,
    String? backoffice_campaign_data,

    // Properties relevant only for CustomNative
    @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
    PlayerExitTriggers? ad_exit_trigger,

    /// The share of the ad that was watched, from 0 to 100, with two decimals.
    double? ad_duration_viewed_percent,
    @JsonKey(unknownEnumValue: AudioState.unknown)
    AudioState? audio_state,
    String? advertiser_id,
    String? campaign_id,
    String? campaign_name,
    String? ad_server,
    String? ad_insertion_logic,
    int? ad_index,
    @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
    BlazeAnalyticsAdGestureType? gesture_type,

    // Properties relevant only for IMA
    String? ad_id,
    String? ad_title,
    String? ad_description,
    String? ad_system,
    bool? skippable,
    double? skip_time_offset,
    String? ima_url,

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
    @JsonKey(unknownEnumValue: ContentType.unknown)
    ContentType? content_type,
    String? content_id,
    String? content_name,
    String? content_page_id,
    String? interaction_id,
    String? interaction_type,
    String? interaction_selected_answer,
    Map<String, String>? content_extra_info,
    Map<String, String>? story_page_content_extra_info,
    String? client_enrichment_url,
  }) = _InteractionProps;

  factory InteractionProps.fromJson(Map<String, dynamic> json) =>
      _$InteractionPropsFromJson(json);
}

// ======================================
// MAIN ANALYTICS EVENT INTERFACE
// ======================================

/// Analytics event interface
@freezed
class BlazeAnalyticsEvent with _$BlazeAnalyticsEvent {
  const factory BlazeAnalyticsEvent({
    required String timestamp_utc,
    required String timestamp_user_tz,
    required String sdk_version,
    required String sdk_type,
    @JsonKey(unknownEnumValue: EventCategory.unknown)
    required EventCategory event_category,
    @JsonKey(unknownEnumValue: EventActionName.unknown)
    required EventActionName event_action,
    required TechProps tech,
    required UserProps user,
    required ReferringPropsAnalytics referring,
    WidgetProps? widget,
    StoryProps? story,
    MomentsProps? moment,
    VideoProps? video,
    AdEventProps? ad,
    InteractionProps? interaction,
    SearchProps? search,
    TabProps? tab,
  }) = _BlazeAnalyticsEvent;

  factory BlazeAnalyticsEvent.fromJson(Map<String, dynamic> json) =>
      _$BlazeAnalyticsEventFromJson(json);
}
