// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_analytics_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsVideosCtaConfigImpl _$$AnalyticsVideosCtaConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsVideosCtaConfigImpl(
      type: $enumDecodeNullable(
          _$AnalyticsVideosCtaConfigTypeEnumMap, json['type']),
      visible_duration: (json['visible_duration'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AnalyticsVideosCtaConfigImplToJson(
        _$AnalyticsVideosCtaConfigImpl instance) =>
    <String, dynamic>{
      'type': _$AnalyticsVideosCtaConfigTypeEnumMap[instance.type],
      'visible_duration': instance.visible_duration,
    };

const _$AnalyticsVideosCtaConfigTypeEnumMap = {
  AnalyticsVideosCtaConfigType.alwaysVisible: 'Always Visible',
  AnalyticsVideosCtaConfigType.visibleAfterOverlayHidden:
      'Visible After Overlay Hidden',
};

_$UserPropsImpl _$$UserPropsImplFromJson(Map<String, dynamic> json) =>
    _$UserPropsImpl(
      generated_user_id: json['generated_user_id'] as String,
      external_user_id: json['external_user_id'] as String?,
      locale: json['locale'] as String,
    );

Map<String, dynamic> _$$UserPropsImplToJson(_$UserPropsImpl instance) =>
    <String, dynamic>{
      'generated_user_id': instance.generated_user_id,
      'external_user_id': instance.external_user_id,
      'locale': instance.locale,
    };

_$ReferringPropsAnalyticsImpl _$$ReferringPropsAnalyticsImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferringPropsAnalyticsImpl(
      origin_widget_id: json['origin_widget_id'] as String?,
      origin_widget_type: json['origin_widget_type'] as String?,
      labels_expression: json['labels_expression'] as String?,
    );

Map<String, dynamic> _$$ReferringPropsAnalyticsImplToJson(
        _$ReferringPropsAnalyticsImpl instance) =>
    <String, dynamic>{
      'origin_widget_id': instance.origin_widget_id,
      'origin_widget_type': instance.origin_widget_type,
      'labels_expression': instance.labels_expression,
    };

_$WidgetPropsImpl _$$WidgetPropsImplFromJson(Map<String, dynamic> json) =>
    _$WidgetPropsImpl(
      widget_id: json['widget_id'] as String?,
      widget_type:
          $enumDecodeNullable(_$WidgetTypeEnumMap, json['widget_type']),
      widget_size: json['widget_size'] as String?,
      widget_content_count: (json['widget_content_count'] as num?)?.toInt(),
      content_id: json['content_id'] as String?,
      content_type:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['content_type']),
      content_index: (json['content_index'] as num?)?.toInt(),
      thumbnail_size: json['thumbnail_size'] as String?,
      thumbnail_aspect_ratio: json['thumbnail_aspect_ratio'] as String?,
      thumbnail_type:
          $enumDecodeNullable(_$ThumbnailTypeEnumMap, json['thumbnail_type']),
      widget_content_list: (json['widget_content_list'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      animated_thumbnail_enabled: json['animated_thumbnail_enabled'] as bool?,
      thumbnail_format: $enumDecodeNullable(
          _$ThumbnailFormatEnumMap, json['thumbnail_format']),
    );

Map<String, dynamic> _$$WidgetPropsImplToJson(_$WidgetPropsImpl instance) =>
    <String, dynamic>{
      'widget_id': instance.widget_id,
      'widget_type': _$WidgetTypeEnumMap[instance.widget_type],
      'widget_size': instance.widget_size,
      'widget_content_count': instance.widget_content_count,
      'content_id': instance.content_id,
      'content_type': _$ContentTypeEnumMap[instance.content_type],
      'content_index': instance.content_index,
      'thumbnail_size': instance.thumbnail_size,
      'thumbnail_aspect_ratio': instance.thumbnail_aspect_ratio,
      'thumbnail_type': _$ThumbnailTypeEnumMap[instance.thumbnail_type],
      'widget_content_list': instance.widget_content_list,
      'content_extra_info': instance.content_extra_info,
      'animated_thumbnail_enabled': instance.animated_thumbnail_enabled,
      'thumbnail_format': _$ThumbnailFormatEnumMap[instance.thumbnail_format],
    };

const _$WidgetTypeEnumMap = {
  WidgetType.row: 'Row',
  WidgetType.grid: 'Grid',
};

const _$ContentTypeEnumMap = {
  ContentType.story: 'Story',
  ContentType.moments: 'Moment',
  ContentType.video: 'Video',
};

const _$ThumbnailTypeEnumMap = {
  ThumbnailType.circle: 'Circle',
  ThumbnailType.rectangle: 'Rectangle',
  ThumbnailType.main: 'Main',
};

const _$ThumbnailFormatEnumMap = {
  ThumbnailFormat.animated: 'Animated',
  ThumbnailFormat.static: 'Static',
};

_$StoryPropsImpl _$$StoryPropsImplFromJson(Map<String, dynamic> json) =>
    _$StoryPropsImpl(
      story_session_id: json['story_session_id'] as String?,
      story_id: json['story_id'] as String?,
      story_title: json['story_title'] as String?,
      story_page_id: json['story_page_id'] as String?,
      story_page_parent_id: json['story_page_parent_id'] as String?,
      story_composition_type: json['story_composition_type'] as String?,
      story_page_index: (json['story_page_index'] as num?)?.toInt(),
      story_page_count: (json['story_page_count'] as num?)?.toInt(),
      story_page_navigation_type: $enumDecodeNullable(
          _$PlayableNavigationTypeEnumMap, json['story_page_navigation_type']),
      story_page_navigation_direction: $enumDecodeNullable(
          _$PlayableNavigationDirectionEnumMap,
          json['story_page_navigation_direction']),
      story_start_trigger: $enumDecodeNullable(
          _$PlayerStartTriggersEnumMap, json['story_start_trigger']),
      story_exit_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['story_exit_trigger']),
      story_page_duration: (json['story_page_duration'] as num?)?.toDouble(),
      story_page_duration_viewed_percent:
          (json['story_page_duration_viewed_percent'] as num?)?.toDouble(),
      playback_action_method: $enumDecodeNullable(
          _$PlaybackActionMethodEnumMap, json['playback_action_method']),
      audio_state:
          $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state']),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      story_page_content_extra_info:
          (json['story_page_content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      gesture_type: json['gesture_type'] as String?,
      cc_state: json['cc_state'] as String?,
      custom_button_name: json['custom_button_name'] as String?,
    );

Map<String, dynamic> _$$StoryPropsImplToJson(_$StoryPropsImpl instance) =>
    <String, dynamic>{
      'story_session_id': instance.story_session_id,
      'story_id': instance.story_id,
      'story_title': instance.story_title,
      'story_page_id': instance.story_page_id,
      'story_page_parent_id': instance.story_page_parent_id,
      'story_composition_type': instance.story_composition_type,
      'story_page_index': instance.story_page_index,
      'story_page_count': instance.story_page_count,
      'story_page_navigation_type':
          _$PlayableNavigationTypeEnumMap[instance.story_page_navigation_type],
      'story_page_navigation_direction': _$PlayableNavigationDirectionEnumMap[
          instance.story_page_navigation_direction],
      'story_start_trigger':
          _$PlayerStartTriggersEnumMap[instance.story_start_trigger],
      'story_exit_trigger':
          _$PlayerExitTriggersEnumMap[instance.story_exit_trigger],
      'story_page_duration': instance.story_page_duration,
      'story_page_duration_viewed_percent':
          instance.story_page_duration_viewed_percent,
      'playback_action_method':
          _$PlaybackActionMethodEnumMap[instance.playback_action_method],
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'content_extra_info': instance.content_extra_info,
      'story_page_content_extra_info': instance.story_page_content_extra_info,
      'gesture_type': instance.gesture_type,
      'cc_state': instance.cc_state,
      'custom_button_name': instance.custom_button_name,
    };

const _$PlayableNavigationTypeEnumMap = {
  PlayableNavigationType.automatic: 'Automatic',
  PlayableNavigationType.manual: 'Manual',
};

const _$PlayableNavigationDirectionEnumMap = {
  PlayableNavigationDirection.forward: 'Forward',
  PlayableNavigationDirection.backward: 'Backward',
  PlayableNavigationDirection.close: 'Close',
};

const _$PlayerStartTriggersEnumMap = {
  PlayerStartTriggers.widget: 'Widget',
  PlayerStartTriggers.deeplink: 'Deeplink',
  PlayerStartTriggers.entryPoint: 'Entry Point',
  PlayerStartTriggers.widgetAutoPlay: 'Auto Play From Widget',
  PlayerStartTriggers.notification: 'Notification',
  PlayerStartTriggers.appForeground: 'App Foreground',
  PlayerStartTriggers.skip: 'Skip',
};

const _$PlayerExitTriggersEnumMap = {
  PlayerExitTriggers.swipe: 'Swipe',
  PlayerExitTriggers.swipeDown: 'Swipe Down',
  PlayerExitTriggers.skip: 'Skip',
  PlayerExitTriggers.videoFinished: 'Video Finished',
  PlayerExitTriggers.userSkipNext: 'User Skip Next',
  PlayerExitTriggers.userSkipPrevious: 'User Skip Previous',
  PlayerExitTriggers.closeButton: 'Close Button',
  PlayerExitTriggers.appClose: 'App Close',
  PlayerExitTriggers.assetsExpiry: 'URL Expiration',
  PlayerExitTriggers.storiesCompleted: 'Stories completed',
  PlayerExitTriggers.appBackground: 'App Background',
  PlayerExitTriggers.backButton: 'Back Button',
  PlayerExitTriggers.userSwipeToDismiss: 'User Swipe To Dismiss',
};

const _$PlaybackActionMethodEnumMap = {
  PlaybackActionMethod.press: 'Press',
  PlaybackActionMethod.release: 'Release',
};

const _$AudioStateEnumMap = {
  AudioState.mute: 'Mute',
  AudioState.unmute: 'Unmute',
};

_$MomentsPropsImpl _$$MomentsPropsImplFromJson(Map<String, dynamic> json) =>
    _$MomentsPropsImpl(
      moments_session_id: json['moments_session_id'] as String?,
      moment_id: json['moment_id'] as String?,
      moment_title: json['moment_title'] as String?,
      moment_index: (json['moment_index'] as num?)?.toInt(),
      moment_navigation_type: $enumDecodeNullable(
          _$PlayableNavigationTypeEnumMap, json['moment_navigation_type']),
      moment_navigation_direction: $enumDecodeNullable(
          _$PlayableNavigationDirectionEnumMap,
          json['moment_navigation_direction']),
      moment_start_trigger: $enumDecodeNullable(
          _$PlayerStartTriggersEnumMap, json['moment_start_trigger']),
      moment_exit_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['moment_exit_trigger']),
      moment_duration: (json['moment_duration'] as num?)?.toDouble(),
      moment_duration_viewed_percent:
          (json['moment_duration_viewed_percent'] as num?)?.toDouble(),
      playback_action_method: $enumDecodeNullable(
          _$PlaybackActionMethodEnumMap, json['playback_action_method']),
      audio_state:
          $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state']),
      loop_number: (json['loop_number'] as num?)?.toInt(),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      cc_state: json['cc_state'] as String?,
      custom_button_name: json['custom_button_name'] as String?,
    );

Map<String, dynamic> _$$MomentsPropsImplToJson(_$MomentsPropsImpl instance) =>
    <String, dynamic>{
      'moments_session_id': instance.moments_session_id,
      'moment_id': instance.moment_id,
      'moment_title': instance.moment_title,
      'moment_index': instance.moment_index,
      'moment_navigation_type':
          _$PlayableNavigationTypeEnumMap[instance.moment_navigation_type],
      'moment_navigation_direction': _$PlayableNavigationDirectionEnumMap[
          instance.moment_navigation_direction],
      'moment_start_trigger':
          _$PlayerStartTriggersEnumMap[instance.moment_start_trigger],
      'moment_exit_trigger':
          _$PlayerExitTriggersEnumMap[instance.moment_exit_trigger],
      'moment_duration': instance.moment_duration,
      'moment_duration_viewed_percent': instance.moment_duration_viewed_percent,
      'playback_action_method':
          _$PlaybackActionMethodEnumMap[instance.playback_action_method],
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'loop_number': instance.loop_number,
      'content_extra_info': instance.content_extra_info,
      'cc_state': instance.cc_state,
      'custom_button_name': instance.custom_button_name,
    };

_$VideoPropsImpl _$$VideoPropsImplFromJson(Map<String, dynamic> json) =>
    _$VideoPropsImpl(
      video_session_id: json['video_session_id'] as String?,
      video_id: json['video_id'] as String?,
      video_title: json['video_title'] as String?,
      audio_state:
          $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state']),
      video_start_trigger: $enumDecodeNullable(
          _$PlayerStartTriggersEnumMap, json['video_start_trigger']),
      video_end_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['video_end_trigger']),
      video_duration: (json['video_duration'] as num?)?.toDouble(),
      seek_type: $enumDecodeNullable(_$VideoSeekTypeEnumMap, json['seek_type']),
      seek_total_time: (json['seek_total_time'] as num?)?.toDouble(),
      seek_direction: $enumDecodeNullable(
          _$VideoSeekDirectionEnumMap, json['seek_direction']),
      video_time_start: (json['video_time_start'] as num?)?.toDouble(),
      video_time_end: (json['video_time_end'] as num?)?.toDouble(),
      player_orientation: $enumDecodeNullable(
          _$BlazeAnalyticsOrientationEnumMap, json['player_orientation']),
      device_orientation: $enumDecodeNullable(
          _$BlazeAnalyticsOrientationEnumMap, json['device_orientation']),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      cta_config: json['cta_config'] == null
          ? null
          : AnalyticsVideosCtaConfig.fromJson(
              json['cta_config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VideoPropsImplToJson(_$VideoPropsImpl instance) =>
    <String, dynamic>{
      'video_session_id': instance.video_session_id,
      'video_id': instance.video_id,
      'video_title': instance.video_title,
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'video_start_trigger':
          _$PlayerStartTriggersEnumMap[instance.video_start_trigger],
      'video_end_trigger':
          _$PlayerExitTriggersEnumMap[instance.video_end_trigger],
      'video_duration': instance.video_duration,
      'seek_type': _$VideoSeekTypeEnumMap[instance.seek_type],
      'seek_total_time': instance.seek_total_time,
      'seek_direction': _$VideoSeekDirectionEnumMap[instance.seek_direction],
      'video_time_start': instance.video_time_start,
      'video_time_end': instance.video_time_end,
      'player_orientation':
          _$BlazeAnalyticsOrientationEnumMap[instance.player_orientation],
      'device_orientation':
          _$BlazeAnalyticsOrientationEnumMap[instance.device_orientation],
      'content_extra_info': instance.content_extra_info,
      'cta_config': instance.cta_config?.toJson(),
    };

const _$VideoSeekTypeEnumMap = {
  VideoSeekType.seekbar: 'Seek Bar',
  VideoSeekType.doubleTap: 'Double Tap',
};

const _$VideoSeekDirectionEnumMap = {
  VideoSeekDirection.forward: 'Forward',
  VideoSeekDirection.backward: 'Backward',
};

const _$BlazeAnalyticsOrientationEnumMap = {
  BlazeAnalyticsOrientation.portrait: 'Portrait',
  BlazeAnalyticsOrientation.landscape: 'Landscape',
};

_$AdEventPropsImpl _$$AdEventPropsImplFromJson(Map<String, dynamic> json) =>
    _$AdEventPropsImpl(
      session_id: json['session_id'] as String?,
      story_id: json['story_id'] as String?,
      story_title: json['story_title'] as String?,
      moment_id: json['moment_id'] as String?,
      moment_title: json['moment_title'] as String?,
      ad_duration: (json['ad_duration'] as num?)?.toDouble(),
      advertiser_name: json['advertiser_name'] as String?,
      content_type:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['content_type']),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      story_page_content_extra_info:
          (json['story_page_content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      ad_exit_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['ad_exit_trigger']),
      ad_duration_viewed_percent:
          (json['ad_duration_viewed_percent'] as num?)?.toDouble(),
      playback_action_method: $enumDecodeNullable(
          _$PlaybackActionMethodEnumMap, json['playback_action_method']),
      audio_state:
          $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state']),
      advertiser_id: json['advertiser_id'] as String?,
      campaign_id: json['campaign_id'] as String?,
      campaign_name: json['campaign_name'] as String?,
      ad_server: json['ad_server'] as String?,
      ad_insertion_logic: json['ad_insertion_logic'] as String?,
      ad_index: (json['ad_index'] as num?)?.toInt(),
      gesture_type: $enumDecodeNullable(
          _$BlazeAnalyticsAdGestureTypeEnumMap, json['gesture_type']),
      ad_id: json['ad_id'] as String?,
      ad_title: json['ad_title'] as String?,
      ad_description: json['ad_description'] as String?,
      ad_system: json['ad_system'] as String?,
      skippable: json['skippable'] as bool?,
      skip_time_offset: (json['skip_time_offset'] as num?)?.toDouble(),
      ima_url: json['ima_url'] as String?,
      video_id: json['video_id'] as String?,
      video_title: json['video_title'] as String?,
      ad_unit_id: json['ad_unit_id'] as String?,
    );

Map<String, dynamic> _$$AdEventPropsImplToJson(_$AdEventPropsImpl instance) =>
    <String, dynamic>{
      'session_id': instance.session_id,
      'story_id': instance.story_id,
      'story_title': instance.story_title,
      'moment_id': instance.moment_id,
      'moment_title': instance.moment_title,
      'ad_duration': instance.ad_duration,
      'advertiser_name': instance.advertiser_name,
      'content_type': _$ContentTypeEnumMap[instance.content_type],
      'content_extra_info': instance.content_extra_info,
      'story_page_content_extra_info': instance.story_page_content_extra_info,
      'ad_exit_trigger': _$PlayerExitTriggersEnumMap[instance.ad_exit_trigger],
      'ad_duration_viewed_percent': instance.ad_duration_viewed_percent,
      'playback_action_method':
          _$PlaybackActionMethodEnumMap[instance.playback_action_method],
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'advertiser_id': instance.advertiser_id,
      'campaign_id': instance.campaign_id,
      'campaign_name': instance.campaign_name,
      'ad_server': instance.ad_server,
      'ad_insertion_logic': instance.ad_insertion_logic,
      'ad_index': instance.ad_index,
      'gesture_type':
          _$BlazeAnalyticsAdGestureTypeEnumMap[instance.gesture_type],
      'ad_id': instance.ad_id,
      'ad_title': instance.ad_title,
      'ad_description': instance.ad_description,
      'ad_system': instance.ad_system,
      'skippable': instance.skippable,
      'skip_time_offset': instance.skip_time_offset,
      'ima_url': instance.ima_url,
      'video_id': instance.video_id,
      'video_title': instance.video_title,
      'ad_unit_id': instance.ad_unit_id,
    };

const _$BlazeAnalyticsAdGestureTypeEnumMap = {
  BlazeAnalyticsAdGestureType.swipeUp: 'Swipe-Up',
  BlazeAnalyticsAdGestureType.click: 'Click',
};

_$InteractionPropsImpl _$$InteractionPropsImplFromJson(
        Map<String, dynamic> json) =>
    _$InteractionPropsImpl(
      content_session_id: json['content_session_id'] as String?,
      content_type:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['content_type']),
      content_id: json['content_id'] as String?,
      content_page_id: json['content_page_id'] as String?,
      content_title: json['content_title'] as String?,
      interaction_id: json['interaction_id'] as String?,
      interaction_type: json['interaction_type'] as String?,
      interaction_text: json['interaction_text'] as String?,
      interaction_selected_answer:
          json['interaction_selected_answer'] as String?,
      playback_action_method: $enumDecodeNullable(
          _$PlaybackActionMethodEnumMap, json['playback_action_method']),
      audio_state:
          $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state']),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      story_page_content_extra_info:
          (json['story_page_content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      client_enrichment_url: json['client_enrichment_url'] as String?,
    );

Map<String, dynamic> _$$InteractionPropsImplToJson(
        _$InteractionPropsImpl instance) =>
    <String, dynamic>{
      'content_session_id': instance.content_session_id,
      'content_type': _$ContentTypeEnumMap[instance.content_type],
      'content_id': instance.content_id,
      'content_page_id': instance.content_page_id,
      'content_title': instance.content_title,
      'interaction_id': instance.interaction_id,
      'interaction_type': instance.interaction_type,
      'interaction_text': instance.interaction_text,
      'interaction_selected_answer': instance.interaction_selected_answer,
      'playback_action_method':
          _$PlaybackActionMethodEnumMap[instance.playback_action_method],
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'content_extra_info': instance.content_extra_info,
      'story_page_content_extra_info': instance.story_page_content_extra_info,
      'client_enrichment_url': instance.client_enrichment_url,
    };

_$BlazeAnalyticsEventImpl _$$BlazeAnalyticsEventImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeAnalyticsEventImpl(
      timestamp_utc: json['timestamp_utc'] as String,
      timestamp_user_tz: json['timestamp_user_tz'] as String,
      sdk_version: json['sdk_version'] as String,
      sdk_type: json['sdk_type'] as String,
      event_category:
          $enumDecode(_$EventCategoryEnumMap, json['event_category']),
      event_action: $enumDecode(_$EventActionNameEnumMap, json['event_action']),
      user: UserProps.fromJson(json['user'] as Map<String, dynamic>),
      referring: ReferringPropsAnalytics.fromJson(
          json['referring'] as Map<String, dynamic>),
      widget: json['widget'] == null
          ? null
          : WidgetProps.fromJson(json['widget'] as Map<String, dynamic>),
      story: json['story'] == null
          ? null
          : StoryProps.fromJson(json['story'] as Map<String, dynamic>),
      moment: json['moment'] == null
          ? null
          : MomentsProps.fromJson(json['moment'] as Map<String, dynamic>),
      video: json['video'] == null
          ? null
          : VideoProps.fromJson(json['video'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : AdEventProps.fromJson(json['ad'] as Map<String, dynamic>),
      interaction: json['interaction'] == null
          ? null
          : InteractionProps.fromJson(
              json['interaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeAnalyticsEventImplToJson(
        _$BlazeAnalyticsEventImpl instance) =>
    <String, dynamic>{
      'timestamp_utc': instance.timestamp_utc,
      'timestamp_user_tz': instance.timestamp_user_tz,
      'sdk_version': instance.sdk_version,
      'sdk_type': instance.sdk_type,
      'event_category': _$EventCategoryEnumMap[instance.event_category]!,
      'event_action': _$EventActionNameEnumMap[instance.event_action]!,
      'user': instance.user.toJson(),
      'referring': instance.referring.toJson(),
      'widget': instance.widget?.toJson(),
      'story': instance.story?.toJson(),
      'moment': instance.moment?.toJson(),
      'video': instance.video?.toJson(),
      'ad': instance.ad?.toJson(),
      'interaction': instance.interaction?.toJson(),
    };

const _$EventCategoryEnumMap = {
  EventCategory.story: 'Story',
  EventCategory.widget: 'Widget',
  EventCategory.moment: 'Moment',
  EventCategory.video: 'Video',
  EventCategory.ad: 'Ad',
  EventCategory.interaction: 'Interaction',
};

const _$EventActionNameEnumMap = {
  EventActionName.sdkInit: 'sdk_init',
  EventActionName.appPause: 'app_pause',
  EventActionName.appContinue: 'app_continue',
  EventActionName.ctaClick: 'cta_click',
  EventActionName.audio: 'audio',
  EventActionName.shareClick: 'share_click',
  EventActionName.playbackPause: 'playback_pause',
  EventActionName.playbackPlay: 'playback_play',
  EventActionName.forcedPlaybackPause: 'forced_playback_pause',
  EventActionName.forcedPlaybackPlay: 'forced_playback_play',
  EventActionName.ccOff: 'cc_off',
  EventActionName.ccOn: 'cc_on',
  EventActionName.customActionButtonClick: 'custom_action_button_click',
  EventActionName.playbackInitialStart: 'playback_initial_start',
  EventActionName.storyStart: 'story_start',
  EventActionName.storyExit: 'story_exit',
  EventActionName.storyPageStart: 'story_page_start',
  EventActionName.storyPageExit: 'story_page_exit',
  EventActionName.widgetLoad: 'widget_load',
  EventActionName.widgetClick: 'widget_click',
  EventActionName.momentsPlaylistStart: 'moments_playlist_start',
  EventActionName.momentsPlaylistExit: 'moments_playlist_exit',
  EventActionName.momentStart: 'moment_start',
  EventActionName.momentExit: 'moment_exit',
  EventActionName.like: 'like',
  EventActionName.unlike: 'unlike',
  EventActionName.videoStart: 'video_start',
  EventActionName.videoEnd: 'video_end',
  EventActionName.bufferStart: 'buffer_start',
  EventActionName.bufferEnd: 'buffer_end',
  EventActionName.seek: 'seek',
  EventActionName.ctaVisible: 'cta_visible',
  EventActionName.ctaDismissed: 'cta_dismissed',
  EventActionName.bannerAdLoad: 'banner_ad_load',
  EventActionName.bannerAdView: 'banner_ad_view',
  EventActionName.bannerAdClick: 'banner_ad_click',
  EventActionName.bannerAdRequested: 'banner_ad_requested',
  EventActionName.adView: 'ad_view',
  EventActionName.adClick: 'ad_click',
  EventActionName.adExit: 'ad_exit',
  EventActionName.adPause: 'ad_playback_pause',
  EventActionName.adResume: 'ad_playback_play',
  EventActionName.adForcedPlaybackPause: 'ad_forced_playback_pause',
  EventActionName.adForcedPlaybackPlay: 'ad_forced_playback_play',
  EventActionName.adRequested: 'ad_requested',
  EventActionName.imaAllAdsCompleted: 'ima_all_ads_completed',
  EventActionName.imaAdClicked: 'ima_ad_clicked',
  EventActionName.imaAdCompleted: 'ima_ad_completed',
  EventActionName.imaAdLoaded: 'ima_ad_loaded',
  EventActionName.imaAdPaused: 'ima_ad_paused',
  EventActionName.imaAdResumed: 'ima_ad_resumed',
  EventActionName.imaAdSkipped: 'ima_ad_skipped',
  EventActionName.imaAdStarted: 'ima_ad_started',
  EventActionName.imaAdTapped: 'ima_ad_tapped',
  EventActionName.imaAdFirstQuartile: 'ima_ad_first_quartile',
  EventActionName.imaAdMidpoint: 'ima_ad_midpoint',
  EventActionName.imaAdThirdQuartile: 'ima_ad_third_quartile',
  EventActionName.imaAdRequested: 'ima_ad_requested',
  EventActionName.interactionView: 'interaction_view',
  EventActionName.interactionAnswer: 'interaction_answer',
};
