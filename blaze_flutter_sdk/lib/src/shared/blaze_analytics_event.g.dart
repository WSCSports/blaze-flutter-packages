// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_analytics_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsCtaConfigImpl _$$AnalyticsCtaConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsCtaConfigImpl(
      text: json['text'] as String?,
      color: json['color'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$AnalyticsCtaConfigImplToJson(
        _$AnalyticsCtaConfigImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'color': instance.color,
      'url': instance.url,
    };

_$AnalyticsCustomActionButtonConfigImpl
    _$$AnalyticsCustomActionButtonConfigImplFromJson(
            Map<String, dynamic> json) =>
        _$AnalyticsCustomActionButtonConfigImpl(
          button_id: json['button_id'] as String?,
          button_text: json['button_text'] as String?,
        );

Map<String, dynamic> _$$AnalyticsCustomActionButtonConfigImplToJson(
        _$AnalyticsCustomActionButtonConfigImpl instance) =>
    <String, dynamic>{
      'button_id': instance.button_id,
      'button_text': instance.button_text,
    };

_$AnalyticsLoopSettingsImpl _$$AnalyticsLoopSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsLoopSettingsImpl(
      infinite_loop: json['infinite_loop'] as bool?,
      loop_and_advance: (json['loop_and_advance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AnalyticsLoopSettingsImplToJson(
        _$AnalyticsLoopSettingsImpl instance) =>
    <String, dynamic>{
      'infinite_loop': instance.infinite_loop,
      'loop_and_advance': instance.loop_and_advance,
    };

_$AnalyticsFollowedEntityImpl _$$AnalyticsFollowedEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsFollowedEntityImpl(
      id: json['id'] as String?,
      provider_name: json['provider_name'] as String?,
      entity_type: json['entity_type'] as String?,
    );

Map<String, dynamic> _$$AnalyticsFollowedEntityImplToJson(
        _$AnalyticsFollowedEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider_name': instance.provider_name,
      'entity_type': instance.entity_type,
    };

_$UserPropsImpl _$$UserPropsImplFromJson(Map<String, dynamic> json) =>
    _$UserPropsImpl(
      generated_user_id: json['generated_user_id'] as String,
      external_user_id: json['external_user_id'] as String?,
      locale: json['locale'] as String,
      experiments: (json['experiments'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      followed_entities: (json['followed_entities'] as List<dynamic>?)
          ?.map((e) =>
              AnalyticsFollowedEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      logout_trigger: $enumDecodeNullable(
          _$LogoutTriggerEnumMap, json['logout_trigger'],
          unknownValue: LogoutTrigger.unknown),
    );

Map<String, dynamic> _$$UserPropsImplToJson(_$UserPropsImpl instance) =>
    <String, dynamic>{
      'generated_user_id': instance.generated_user_id,
      'external_user_id': instance.external_user_id,
      'locale': instance.locale,
      'experiments': instance.experiments,
      'followed_entities':
          instance.followed_entities?.map((e) => e.toJson()).toList(),
      'logout_trigger': _$LogoutTriggerEnumMap[instance.logout_trigger],
    };

const _$LogoutTriggerEnumMap = {
  LogoutTrigger.logout: 'logout',
  LogoutTrigger.init: 'init',
  LogoutTrigger.unknown: 'unknown',
};

_$TechPropsImpl _$$TechPropsImplFromJson(Map<String, dynamic> json) =>
    _$TechPropsImpl(
      device_type: $enumDecodeNullable(_$DeviceTypeEnumMap, json['device_type'],
          unknownValue: DeviceType.unknown),
      device_brand: json['device_brand'] as String?,
      device_model: json['device_model'] as String?,
      operating_system: json['operating_system'] as String?,
      operating_system_version: json['operating_system_version'] as String?,
      screen_resolution: json['screen_resolution'] as String?,
      app_id: json['app_id'] as String?,
      app_version: json['app_version'] as String?,
      connection_type: $enumDecodeNullable(
          _$ConnectionTypeEnumMap, json['connection_type'],
          unknownValue: ConnectionType.unknown),
      localization_setting: json['localization_setting'] as String?,
    );

Map<String, dynamic> _$$TechPropsImplToJson(_$TechPropsImpl instance) =>
    <String, dynamic>{
      'device_type': _$DeviceTypeEnumMap[instance.device_type],
      'device_brand': instance.device_brand,
      'device_model': instance.device_model,
      'operating_system': instance.operating_system,
      'operating_system_version': instance.operating_system_version,
      'screen_resolution': instance.screen_resolution,
      'app_id': instance.app_id,
      'app_version': instance.app_version,
      'connection_type': _$ConnectionTypeEnumMap[instance.connection_type],
      'localization_setting': instance.localization_setting,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.phone: 'phone',
  DeviceType.tablet: 'tablet',
  DeviceType.unknown: 'unknown',
};

const _$ConnectionTypeEnumMap = {
  ConnectionType.wired: 'wired',
  ConnectionType.wifi: 'wifi',
  ConnectionType.cellular: 'cellular',
  ConnectionType.unknown: 'unknown',
};

_$ReferringPropsAnalyticsImpl _$$ReferringPropsAnalyticsImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferringPropsAnalyticsImpl(
      origin_source_id: (json['origin_source_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      origin_source_type: (json['origin_source_type'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OriginSourceTypeEnumMap, e,
              unknownValue: OriginSourceType.unknown))
          .toList(),
      origin_widget_type: json['origin_widget_type'] as String?,
      data_source_type: $enumDecodeNullable(
          _$ReferringDataSourceTypeEnumMap, json['data_source_type'],
          unknownValue: ReferringDataSourceType.unknown),
      data_source_value: json['data_source_value'] as String?,
      data_source_config: json['data_source_config'] as String?,
      widget_builder_metadata:
          (json['widget_builder_metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      search_session_id: json['search_session_id'] as String?,
      search_query_id: json['search_query_id'] as String?,
      search_result_id: json['search_result_id'] as String?,
    );

Map<String, dynamic> _$$ReferringPropsAnalyticsImplToJson(
        _$ReferringPropsAnalyticsImpl instance) =>
    <String, dynamic>{
      'origin_source_id': instance.origin_source_id,
      'origin_source_type': instance.origin_source_type
          ?.map((e) => _$OriginSourceTypeEnumMap[e]!)
          .toList(),
      'origin_widget_type': instance.origin_widget_type,
      'data_source_type':
          _$ReferringDataSourceTypeEnumMap[instance.data_source_type],
      'data_source_value': instance.data_source_value,
      'data_source_config': instance.data_source_config,
      'widget_builder_metadata': instance.widget_builder_metadata,
      'search_session_id': instance.search_session_id,
      'search_query_id': instance.search_query_id,
      'search_result_id': instance.search_result_id,
    };

const _$OriginSourceTypeEnumMap = {
  OriginSourceType.widget: 'widget',
  OriginSourceType.entryPoint: 'entry_point',
  OriginSourceType.momentsTab: 'moments_tab',
  OriginSourceType.inline: 'inline',
  OriginSourceType.unknown: 'unknown',
};

const _$ReferringDataSourceTypeEnumMap = {
  ReferringDataSourceType.contentList: 'content_list',
  ReferringDataSourceType.labelExpression: 'label_expression',
  ReferringDataSourceType.search: 'search',
  ReferringDataSourceType.composite: 'composite',
  ReferringDataSourceType.forYou: 'for_you',
  ReferringDataSourceType.trending: 'trending',
  ReferringDataSourceType.followedEntities: 'followed_entities',
  ReferringDataSourceType.unknown: 'unknown',
};

_$TabPropsImpl _$$TabPropsImplFromJson(Map<String, dynamic> json) =>
    _$TabPropsImpl(
      tabs_source_id: json['tabs_source_id'] as String?,
      total_tabs_count: (json['total_tabs_count'] as num?)?.toInt(),
      tab_id: json['tab_id'] as String?,
      tab_title: json['tab_title'] as String?,
      tab_index: (json['tab_index'] as num?)?.toInt(),
      content_count: (json['content_count'] as num?)?.toInt(),
      current_tab_id: json['current_tab_id'] as String?,
      current_tab_index: (json['current_tab_index'] as num?)?.toInt(),
      current_tab_title: json['current_tab_title'] as String?,
      next_tab_id: json['next_tab_id'] as String?,
      next_tab_index: (json['next_tab_index'] as num?)?.toInt(),
      next_tab_title: json['next_tab_title'] as String?,
      transition_method: $enumDecodeNullable(
          _$TabTransitionMethodEnumMap, json['transition_method'],
          unknownValue: TabTransitionMethod.unknown),
    );

Map<String, dynamic> _$$TabPropsImplToJson(_$TabPropsImpl instance) =>
    <String, dynamic>{
      'tabs_source_id': instance.tabs_source_id,
      'total_tabs_count': instance.total_tabs_count,
      'tab_id': instance.tab_id,
      'tab_title': instance.tab_title,
      'tab_index': instance.tab_index,
      'content_count': instance.content_count,
      'current_tab_id': instance.current_tab_id,
      'current_tab_index': instance.current_tab_index,
      'current_tab_title': instance.current_tab_title,
      'next_tab_id': instance.next_tab_id,
      'next_tab_index': instance.next_tab_index,
      'next_tab_title': instance.next_tab_title,
      'transition_method':
          _$TabTransitionMethodEnumMap[instance.transition_method],
    };

const _$TabTransitionMethodEnumMap = {
  TabTransitionMethod.tap: 'tap',
  TabTransitionMethod.swipe: 'swipe',
  TabTransitionMethod.programmatic: 'programmatic',
  TabTransitionMethod.unknown: 'unknown',
};

_$SearchPropsImpl _$$SearchPropsImplFromJson(Map<String, dynamic> json) =>
    _$SearchPropsImpl(
      search_session_id: json['search_session_id'] as String?,
      query_id: json['query_id'] as String?,
      query: json['query'] as String?,
      result_id: json['result_id'] as String?,
      story_ids: (json['story_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      moment_ids: (json['moment_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      video_ids: (json['video_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      total_results: (json['total_results'] as num?)?.toInt(),
      content_id: json['content_id'] as String?,
      content_type: $enumDecodeNullable(
          _$ContentTypeEnumMap, json['content_type'],
          unknownValue: ContentType.unknown),
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SearchPropsImplToJson(_$SearchPropsImpl instance) =>
    <String, dynamic>{
      'search_session_id': instance.search_session_id,
      'query_id': instance.query_id,
      'query': instance.query,
      'result_id': instance.result_id,
      'story_ids': instance.story_ids,
      'moment_ids': instance.moment_ids,
      'video_ids': instance.video_ids,
      'total_results': instance.total_results,
      'content_id': instance.content_id,
      'content_type': _$ContentTypeEnumMap[instance.content_type],
      'position': instance.position,
    };

const _$ContentTypeEnumMap = {
  ContentType.story: 'story',
  ContentType.moments: 'moment',
  ContentType.video: 'video',
  ContentType.unknown: 'unknown',
};

_$WidgetPropsImpl _$$WidgetPropsImplFromJson(Map<String, dynamic> json) =>
    _$WidgetPropsImpl(
      widget_id: json['widget_id'] as String?,
      widget_type: $enumDecodeNullable(_$WidgetTypeEnumMap, json['widget_type'],
          unknownValue: WidgetType.unknown),
      widget_size: json['widget_size'] as String?,
      widget_content_count: (json['widget_content_count'] as num?)?.toInt(),
      placement_distance: (json['placement_distance'] as num?)?.toDouble(),
      content_id: json['content_id'] as String?,
      content_name: json['content_name'] as String?,
      content_type: $enumDecodeNullable(
          _$ContentTypeEnumMap, json['content_type'],
          unknownValue: ContentType.unknown),
      content_index: (json['content_index'] as num?)?.toInt(),
      thumbnail_size: json['thumbnail_size'] as String?,
      thumbnail_aspect_ratio: json['thumbnail_aspect_ratio'] as String?,
      thumbnail_type: $enumDecodeNullable(
          _$ThumbnailTypeEnumMap, json['thumbnail_type'],
          unknownValue: ThumbnailType.unknown),
      widget_content_list: (json['widget_content_list'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      animated_thumbnail_enabled: json['animated_thumbnail_enabled'] as bool?,
      thumbnail_format: $enumDecodeNullable(
          _$ThumbnailFormatEnumMap, json['thumbnail_format'],
          unknownValue: ThumbnailFormat.unknown),
      localization: (json['localization'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      widget_fold_position: json['widget_fold_position'] as String?,
      page_view_id: json['page_view_id'] as String?,
      placement_id: json['placement_id'] as String?,
      placement_name: json['placement_name'] as String?,
    );

Map<String, dynamic> _$$WidgetPropsImplToJson(_$WidgetPropsImpl instance) =>
    <String, dynamic>{
      'widget_id': instance.widget_id,
      'widget_type': _$WidgetTypeEnumMap[instance.widget_type],
      'widget_size': instance.widget_size,
      'widget_content_count': instance.widget_content_count,
      'placement_distance': instance.placement_distance,
      'content_id': instance.content_id,
      'content_name': instance.content_name,
      'content_type': _$ContentTypeEnumMap[instance.content_type],
      'content_index': instance.content_index,
      'thumbnail_size': instance.thumbnail_size,
      'thumbnail_aspect_ratio': instance.thumbnail_aspect_ratio,
      'thumbnail_type': _$ThumbnailTypeEnumMap[instance.thumbnail_type],
      'widget_content_list': instance.widget_content_list,
      'content_extra_info': instance.content_extra_info,
      'animated_thumbnail_enabled': instance.animated_thumbnail_enabled,
      'thumbnail_format': _$ThumbnailFormatEnumMap[instance.thumbnail_format],
      'localization': instance.localization,
      'widget_fold_position': instance.widget_fold_position,
      'page_view_id': instance.page_view_id,
      'placement_id': instance.placement_id,
      'placement_name': instance.placement_name,
    };

const _$WidgetTypeEnumMap = {
  WidgetType.row: 'row',
  WidgetType.grid: 'grid',
  WidgetType.unknown: 'unknown',
};

const _$ThumbnailTypeEnumMap = {
  ThumbnailType.circle: 'circle',
  ThumbnailType.rectangle: 'rectangle',
  ThumbnailType.main: 'main',
  ThumbnailType.unknown: 'unknown',
};

const _$ThumbnailFormatEnumMap = {
  ThumbnailFormat.animated: 'animated',
  ThumbnailFormat.static: 'static',
  ThumbnailFormat.unknown: 'unknown',
};

_$StoryPropsImpl _$$StoryPropsImplFromJson(Map<String, dynamic> json) =>
    _$StoryPropsImpl(
      story_session_id: json['story_session_id'] as String?,
      story_id: json['story_id'] as String?,
      story_title: json['story_title'] as String?,
      story_index: (json['story_index'] as num?)?.toInt(),
      total_stories_count: (json['total_stories_count'] as num?)?.toInt(),
      remaining_unread_count: (json['remaining_unread_count'] as num?)?.toInt(),
      remaining_unread_pages: (json['remaining_unread_pages'] as num?)?.toInt(),
      next_story_id: json['next_story_id'] as String?,
      is_last_page: json['is_last_page'] as bool?,
      content_ratio: json['content_ratio'] as String?,
      story_page_id: json['story_page_id'] as String?,
      story_page_parent_id: json['story_page_parent_id'] as String?,
      story_page_type: json['story_page_type'] as String?,
      story_page_index: (json['story_page_index'] as num?)?.toInt(),
      story_page_count: (json['story_page_count'] as num?)?.toInt(),
      story_page_navigation_type: $enumDecodeNullable(
          _$PlayableNavigationTypeEnumMap, json['story_page_navigation_type'],
          unknownValue: PlayableNavigationType.unknown),
      story_page_navigation_direction: $enumDecodeNullable(
          _$PlayableNavigationDirectionEnumMap,
          json['story_page_navigation_direction'],
          unknownValue: PlayableNavigationDirection.unknown),
      story_start_trigger: $enumDecodeNullable(
          _$PlayerStartTriggersEnumMap, json['story_start_trigger'],
          unknownValue: PlayerStartTriggers.unknown),
      story_exit_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['story_exit_trigger'],
          unknownValue: PlayerExitTriggers.unknown),
      story_page_duration: (json['story_page_duration'] as num?)?.toDouble(),
      story_page_duration_viewed_percent:
          (json['story_page_duration_viewed_percent'] as num?)?.toDouble(),
      audio_state: $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state'],
          unknownValue: AudioState.unknown),
      cc_state: json['cc_state'] as String?,
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      story_page_content_extra_info:
          (json['story_page_content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      gesture_type: $enumDecodeNullable(
          _$BlazeAnalyticsAdGestureTypeEnumMap, json['gesture_type'],
          unknownValue: BlazeAnalyticsAdGestureType.unknown),
      custom_button_name: json['custom_button_name'] as String?,
      cta_config: json['cta_config'] == null
          ? null
          : AnalyticsCtaConfig.fromJson(
              json['cta_config'] as Map<String, dynamic>),
      cta_shown: json['cta_shown'] as bool?,
      custom_action_button_config: json['custom_action_button_config'] == null
          ? null
          : AnalyticsCustomActionButtonConfig.fromJson(
              json['custom_action_button_config'] as Map<String, dynamic>),
      custom_action_button_shown: json['custom_action_button_shown'] as bool?,
      localization: (json['localization'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      user_lifetime_engagements:
          (json['user_lifetime_engagements'] as num?)?.toInt(),
      attribution_token: json['attribution_token'] as String?,
    );

Map<String, dynamic> _$$StoryPropsImplToJson(_$StoryPropsImpl instance) =>
    <String, dynamic>{
      'story_session_id': instance.story_session_id,
      'story_id': instance.story_id,
      'story_title': instance.story_title,
      'story_index': instance.story_index,
      'total_stories_count': instance.total_stories_count,
      'remaining_unread_count': instance.remaining_unread_count,
      'remaining_unread_pages': instance.remaining_unread_pages,
      'next_story_id': instance.next_story_id,
      'is_last_page': instance.is_last_page,
      'content_ratio': instance.content_ratio,
      'story_page_id': instance.story_page_id,
      'story_page_parent_id': instance.story_page_parent_id,
      'story_page_type': instance.story_page_type,
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
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'cc_state': instance.cc_state,
      'content_extra_info': instance.content_extra_info,
      'story_page_content_extra_info': instance.story_page_content_extra_info,
      'gesture_type':
          _$BlazeAnalyticsAdGestureTypeEnumMap[instance.gesture_type],
      'custom_button_name': instance.custom_button_name,
      'cta_config': instance.cta_config?.toJson(),
      'cta_shown': instance.cta_shown,
      'custom_action_button_config':
          instance.custom_action_button_config?.toJson(),
      'custom_action_button_shown': instance.custom_action_button_shown,
      'localization': instance.localization,
      'user_lifetime_engagements': instance.user_lifetime_engagements,
      'attribution_token': instance.attribution_token,
    };

const _$PlayableNavigationTypeEnumMap = {
  PlayableNavigationType.automatic: 'automatic',
  PlayableNavigationType.manual: 'manual',
  PlayableNavigationType.unknown: 'unknown',
};

const _$PlayableNavigationDirectionEnumMap = {
  PlayableNavigationDirection.forward: 'forward',
  PlayableNavigationDirection.backward: 'backward',
  PlayableNavigationDirection.close: 'close',
  PlayableNavigationDirection.ctaClick: 'cta_click',
  PlayableNavigationDirection.adsClick: 'ads_click',
  PlayableNavigationDirection.unknown: 'unknown',
};

const _$PlayerStartTriggersEnumMap = {
  PlayerStartTriggers.widget: 'widget',
  PlayerStartTriggers.deeplink: 'deeplink',
  PlayerStartTriggers.entryPoint: 'entry_point',
  PlayerStartTriggers.widgetAutoPlay: 'auto_play_from_widget',
  PlayerStartTriggers.notification: 'notification',
  PlayerStartTriggers.appForeground: 'app_foreground',
  PlayerStartTriggers.focusRegained: 'focus_regained',
  PlayerStartTriggers.inline: 'inline',
  PlayerStartTriggers.momentsTabs: 'moments_tabs',
  PlayerStartTriggers.momentsContainer: 'moments_container',
  PlayerStartTriggers.viewingModeTransition: 'viewing_mode_transition',
  PlayerStartTriggers.skip: 'skip',
  PlayerStartTriggers.swipe: 'swipe',
  PlayerStartTriggers.autoSkip: 'auto_skip',
  PlayerStartTriggers.autoAdvance: 'auto_advance',
  PlayerStartTriggers.catchup: 'catchup',
  PlayerStartTriggers.catchupReturn: 'catchup_return',
  PlayerStartTriggers.share: 'share',
  PlayerStartTriggers.singleContent: 'single_content',
  PlayerStartTriggers.embeddedPlayerInViewport: 'embedded_player_in_viewport',
  PlayerStartTriggers.widgetTabs: 'widget_tabs',
  PlayerStartTriggers.unknown: 'unknown',
};

const _$PlayerExitTriggersEnumMap = {
  PlayerExitTriggers.swipe: 'swipe',
  PlayerExitTriggers.skip: 'skip',
  PlayerExitTriggers.autoSkip: 'auto_skip',
  PlayerExitTriggers.videoFinished: 'video_finished',
  PlayerExitTriggers.userSkipNext: 'user_skip_next',
  PlayerExitTriggers.userSkipPrevious: 'user_skip_previous',
  PlayerExitTriggers.closeButton: 'close_button',
  PlayerExitTriggers.appClose: 'app_close',
  PlayerExitTriggers.assetsExpiry: 'url_expiration',
  PlayerExitTriggers.storiesCompleted: 'story_completed',
  PlayerExitTriggers.appBackground: 'app_background',
  PlayerExitTriggers.focusLost: 'focus_lost',
  PlayerExitTriggers.userSwipeToDismiss: 'user_swipe_to_dismiss',
  PlayerExitTriggers.inline: 'inline',
  PlayerExitTriggers.viewingModeTransition: 'viewing_mode_transition',
  PlayerExitTriggers.swipeUp: 'swipe_up',
  PlayerExitTriggers.ctaClick: 'cta_click',
  PlayerExitTriggers.backButton: 'back_button',
  PlayerExitTriggers.pipDismissed: 'pip_dismissed',
  PlayerExitTriggers.unknown: 'unknown',
};

const _$AudioStateEnumMap = {
  AudioState.mute: 'mute',
  AudioState.unmute: 'unmute',
  AudioState.unknown: 'unknown',
};

const _$BlazeAnalyticsAdGestureTypeEnumMap = {
  BlazeAnalyticsAdGestureType.swipeUp: 'swipe_up',
  BlazeAnalyticsAdGestureType.click: 'click',
  BlazeAnalyticsAdGestureType.unknown: 'unknown',
};

_$MomentsPropsImpl _$$MomentsPropsImplFromJson(Map<String, dynamic> json) =>
    _$MomentsPropsImpl(
      moments_session_id: json['moments_session_id'] as String?,
      moment_id: json['moment_id'] as String?,
      moment_title: json['moment_title'] as String?,
      moment_index: (json['moment_index'] as num?)?.toInt(),
      total_moments_count: (json['total_moments_count'] as num?)?.toInt(),
      remaining_unread_count: (json['remaining_unread_count'] as num?)?.toInt(),
      next_moment_id: json['next_moment_id'] as String?,
      is_liked: json['is_liked'] as bool?,
      moment_navigation_type: $enumDecodeNullable(
          _$PlayableNavigationTypeEnumMap, json['moment_navigation_type'],
          unknownValue: PlayableNavigationType.unknown),
      moment_navigation_direction: $enumDecodeNullable(
          _$PlayableNavigationDirectionEnumMap,
          json['moment_navigation_direction'],
          unknownValue: PlayableNavigationDirection.unknown),
      moment_start_trigger: $enumDecodeNullable(
          _$PlayerStartTriggersEnumMap, json['moment_start_trigger'],
          unknownValue: PlayerStartTriggers.unknown),
      moment_exit_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['moment_exit_trigger'],
          unknownValue: PlayerExitTriggers.unknown),
      moment_duration: (json['moment_duration'] as num?)?.toDouble(),
      moment_duration_viewed_percent:
          (json['moment_duration_viewed_percent'] as num?)?.toDouble(),
      audio_state: $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state'],
          unknownValue: AudioState.unknown),
      content_ratio: json['content_ratio'] as String?,
      loop_number: (json['loop_number'] as num?)?.toInt(),
      loop_settings: json['loop_settings'] == null
          ? null
          : AnalyticsLoopSettings.fromJson(
              json['loop_settings'] as Map<String, dynamic>),
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      cc_state: json['cc_state'] as String?,
      custom_button_name: json['custom_button_name'] as String?,
      cta_config: json['cta_config'] == null
          ? null
          : AnalyticsCtaConfig.fromJson(
              json['cta_config'] as Map<String, dynamic>),
      cta_shown: json['cta_shown'] as bool?,
      custom_action_button_config: json['custom_action_button_config'] == null
          ? null
          : AnalyticsCustomActionButtonConfig.fromJson(
              json['custom_action_button_config'] as Map<String, dynamic>),
      custom_action_button_shown: json['custom_action_button_shown'] as bool?,
      attribution_token: json['attribution_token'] as String?,
      follow_state: (json['follow_state'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      follow_button_visible: json['follow_button_visible'] as bool?,
      follow_subject_type: json['follow_subject_type'] as String?,
      follow_subject_id: json['follow_subject_id'] as String?,
      follow_subject_provider_name:
          json['follow_subject_provider_name'] as String?,
      active_tab_title: json['active_tab_title'] as String?,
      initial_tab_title: json['initial_tab_title'] as String?,
      tabs_enabled: json['tabs_enabled'] as bool?,
      tabs_configuration: (json['tabs_configuration'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      localization: (json['localization'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      seek_type: $enumDecodeNullable(_$VideoSeekTypeEnumMap, json['seek_type'],
          unknownValue: VideoSeekType.unknown),
      seek_start_time: (json['seek_start_time'] as num?)?.toDouble(),
      seek_end_time: (json['seek_end_time'] as num?)?.toDouble(),
      seek_total_time: (json['seek_total_time'] as num?)?.toDouble(),
      seek_direction: $enumDecodeNullable(
          _$VideoSeekDirectionEnumMap, json['seek_direction'],
          unknownValue: VideoSeekDirection.unknown),
      seek_interval_setting:
          (json['seek_interval_setting'] as num?)?.toDouble(),
      playback_speed_type: $enumDecodeNullable(
          _$PlaybackSpeedTypeEnumMap, json['playback_speed_type'],
          unknownValue: PlaybackSpeedType.unknown),
      playback_speed: (json['playback_speed'] as num?)?.toDouble(),
      speed_start_time: (json['speed_start_time'] as num?)?.toDouble(),
      speed_end_time: (json['speed_end_time'] as num?)?.toDouble(),
      speed_total_time: (json['speed_total_time'] as num?)?.toDouble(),
      user_lifetime_engagements:
          (json['user_lifetime_engagements'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MomentsPropsImplToJson(_$MomentsPropsImpl instance) =>
    <String, dynamic>{
      'moments_session_id': instance.moments_session_id,
      'moment_id': instance.moment_id,
      'moment_title': instance.moment_title,
      'moment_index': instance.moment_index,
      'total_moments_count': instance.total_moments_count,
      'remaining_unread_count': instance.remaining_unread_count,
      'next_moment_id': instance.next_moment_id,
      'is_liked': instance.is_liked,
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
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'content_ratio': instance.content_ratio,
      'loop_number': instance.loop_number,
      'loop_settings': instance.loop_settings?.toJson(),
      'content_extra_info': instance.content_extra_info,
      'cc_state': instance.cc_state,
      'custom_button_name': instance.custom_button_name,
      'cta_config': instance.cta_config?.toJson(),
      'cta_shown': instance.cta_shown,
      'custom_action_button_config':
          instance.custom_action_button_config?.toJson(),
      'custom_action_button_shown': instance.custom_action_button_shown,
      'attribution_token': instance.attribution_token,
      'follow_state': instance.follow_state,
      'follow_button_visible': instance.follow_button_visible,
      'follow_subject_type': instance.follow_subject_type,
      'follow_subject_id': instance.follow_subject_id,
      'follow_subject_provider_name': instance.follow_subject_provider_name,
      'active_tab_title': instance.active_tab_title,
      'initial_tab_title': instance.initial_tab_title,
      'tabs_enabled': instance.tabs_enabled,
      'tabs_configuration': instance.tabs_configuration,
      'localization': instance.localization,
      'seek_type': _$VideoSeekTypeEnumMap[instance.seek_type],
      'seek_start_time': instance.seek_start_time,
      'seek_end_time': instance.seek_end_time,
      'seek_total_time': instance.seek_total_time,
      'seek_direction': _$VideoSeekDirectionEnumMap[instance.seek_direction],
      'seek_interval_setting': instance.seek_interval_setting,
      'playback_speed_type':
          _$PlaybackSpeedTypeEnumMap[instance.playback_speed_type],
      'playback_speed': instance.playback_speed,
      'speed_start_time': instance.speed_start_time,
      'speed_end_time': instance.speed_end_time,
      'speed_total_time': instance.speed_total_time,
      'user_lifetime_engagements': instance.user_lifetime_engagements,
    };

const _$VideoSeekTypeEnumMap = {
  VideoSeekType.seekbar: 'seek_bar',
  VideoSeekType.doubleTap: 'double_tap',
  VideoSeekType.seekButton: 'seek_button',
  VideoSeekType.unknown: 'unknown',
};

const _$VideoSeekDirectionEnumMap = {
  VideoSeekDirection.forward: 'forward',
  VideoSeekDirection.backward: 'backward',
  VideoSeekDirection.unknown: 'unknown',
};

const _$PlaybackSpeedTypeEnumMap = {
  PlaybackSpeedType.pressHold: 'press_hold',
  PlaybackSpeedType.unknown: 'unknown',
};

_$VideoPropsImpl _$$VideoPropsImplFromJson(Map<String, dynamic> json) =>
    _$VideoPropsImpl(
      video_session_id: json['video_session_id'] as String?,
      video_id: json['video_id'] as String?,
      next_video_id: json['next_video_id'] as String?,
      video_title: json['video_title'] as String?,
      video_index: (json['video_index'] as num?)?.toInt(),
      total_videos_count: (json['total_videos_count'] as num?)?.toInt(),
      remaining_unread_count: (json['remaining_unread_count'] as num?)?.toInt(),
      is_liked: json['is_liked'] as bool?,
      audio_state: $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state'],
          unknownValue: AudioState.unknown),
      video_start_trigger: $enumDecodeNullable(
          _$PlayerStartTriggersEnumMap, json['video_start_trigger'],
          unknownValue: PlayerStartTriggers.unknown),
      video_end_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['video_end_trigger'],
          unknownValue: PlayerExitTriggers.unknown),
      video_current_time: (json['video_current_time'] as num?)?.toDouble(),
      video_duration: (json['video_duration'] as num?)?.toDouble(),
      video_time_start: (json['video_time_start'] as num?)?.toDouble(),
      video_time_end: (json['video_time_end'] as num?)?.toDouble(),
      seek_type: $enumDecodeNullable(_$VideoSeekTypeEnumMap, json['seek_type'],
          unknownValue: VideoSeekType.unknown),
      seek_start_time: (json['seek_start_time'] as num?)?.toDouble(),
      seek_end_time: (json['seek_end_time'] as num?)?.toDouble(),
      seek_total_time: (json['seek_total_time'] as num?)?.toDouble(),
      seek_direction: $enumDecodeNullable(
          _$VideoSeekDirectionEnumMap, json['seek_direction'],
          unknownValue: VideoSeekDirection.unknown),
      seek_interval_setting:
          (json['seek_interval_setting'] as num?)?.toDouble(),
      device_orientation: $enumDecodeNullable(
          _$BlazeAnalyticsOrientationEnumMap, json['device_orientation'],
          unknownValue: BlazeAnalyticsOrientation.unknown),
      content_ratio: json['content_ratio'] as String?,
      video_orientation_changed_trigger: $enumDecodeNullable(
          _$OrientationChangeTriggerEnumMap,
          json['video_orientation_changed_trigger'],
          unknownValue: OrientationChangeTrigger.unknown),
      viewing_mode: $enumDecodeNullable(
          _$PlayerViewingModeEnumMap, json['viewing_mode'],
          unknownValue: PlayerViewingMode.unknown),
      cast_duration: (json['cast_duration'] as num?)?.toDouble(),
      quality: json['quality'] as String?,
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      cc_state: json['cc_state'] as String?,
      cta_config: json['cta_config'] == null
          ? null
          : AnalyticsCtaConfig.fromJson(
              json['cta_config'] as Map<String, dynamic>),
      cta_shown: json['cta_shown'] as bool?,
      localization: (json['localization'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      playback_speed_type: $enumDecodeNullable(
          _$PlaybackSpeedTypeEnumMap, json['playback_speed_type'],
          unknownValue: PlaybackSpeedType.unknown),
      playback_speed: (json['playback_speed'] as num?)?.toDouble(),
      speed_start_time: (json['speed_start_time'] as num?)?.toDouble(),
      speed_end_time: (json['speed_end_time'] as num?)?.toDouble(),
      speed_total_time: (json['speed_total_time'] as num?)?.toDouble(),
      user_lifetime_engagements:
          (json['user_lifetime_engagements'] as num?)?.toInt(),
      attribution_token: json['attribution_token'] as String?,
      stream_status: $enumDecodeNullable(
          _$AnalyticsStreamStatusEnumMap, json['stream_status'],
          unknownValue: AnalyticsStreamStatus.unknown),
      is_at_live_edge: json['is_at_live_edge'] as bool?,
      stream_elapsed_time: (json['stream_elapsed_time'] as num?)?.toDouble(),
      back_to_live_trigger: $enumDecodeNullable(
          _$BackToLiveTriggerEnumMap, json['back_to_live_trigger'],
          unknownValue: BackToLiveTrigger.unknown),
      catchup_surface: $enumDecodeNullable(
          _$CatchupSurfaceEnumMap, json['catchup_surface'],
          unknownValue: CatchupSurface.unknown),
      catchup_target: $enumDecodeNullable(
          _$CatchupTargetEnumMap, json['catchup_target'],
          unknownValue: CatchupTarget.unknown),
      audio_track: json['audio_track'] as String?,
      audio_track_previous: json['audio_track_previous'] as String?,
      audio_track_is_preferred: json['audio_track_is_preferred'] as bool?,
      search_session_id: json['search_session_id'] as String?,
      query_id: json['query_id'] as String?,
      result_id: json['result_id'] as String?,
    );

Map<String, dynamic> _$$VideoPropsImplToJson(_$VideoPropsImpl instance) =>
    <String, dynamic>{
      'video_session_id': instance.video_session_id,
      'video_id': instance.video_id,
      'next_video_id': instance.next_video_id,
      'video_title': instance.video_title,
      'video_index': instance.video_index,
      'total_videos_count': instance.total_videos_count,
      'remaining_unread_count': instance.remaining_unread_count,
      'is_liked': instance.is_liked,
      'audio_state': _$AudioStateEnumMap[instance.audio_state],
      'video_start_trigger':
          _$PlayerStartTriggersEnumMap[instance.video_start_trigger],
      'video_end_trigger':
          _$PlayerExitTriggersEnumMap[instance.video_end_trigger],
      'video_current_time': instance.video_current_time,
      'video_duration': instance.video_duration,
      'video_time_start': instance.video_time_start,
      'video_time_end': instance.video_time_end,
      'seek_type': _$VideoSeekTypeEnumMap[instance.seek_type],
      'seek_start_time': instance.seek_start_time,
      'seek_end_time': instance.seek_end_time,
      'seek_total_time': instance.seek_total_time,
      'seek_direction': _$VideoSeekDirectionEnumMap[instance.seek_direction],
      'seek_interval_setting': instance.seek_interval_setting,
      'device_orientation':
          _$BlazeAnalyticsOrientationEnumMap[instance.device_orientation],
      'content_ratio': instance.content_ratio,
      'video_orientation_changed_trigger': _$OrientationChangeTriggerEnumMap[
          instance.video_orientation_changed_trigger],
      'viewing_mode': _$PlayerViewingModeEnumMap[instance.viewing_mode],
      'cast_duration': instance.cast_duration,
      'quality': instance.quality,
      'content_extra_info': instance.content_extra_info,
      'cc_state': instance.cc_state,
      'cta_config': instance.cta_config?.toJson(),
      'cta_shown': instance.cta_shown,
      'localization': instance.localization,
      'playback_speed_type':
          _$PlaybackSpeedTypeEnumMap[instance.playback_speed_type],
      'playback_speed': instance.playback_speed,
      'speed_start_time': instance.speed_start_time,
      'speed_end_time': instance.speed_end_time,
      'speed_total_time': instance.speed_total_time,
      'user_lifetime_engagements': instance.user_lifetime_engagements,
      'attribution_token': instance.attribution_token,
      'stream_status': _$AnalyticsStreamStatusEnumMap[instance.stream_status],
      'is_at_live_edge': instance.is_at_live_edge,
      'stream_elapsed_time': instance.stream_elapsed_time,
      'back_to_live_trigger':
          _$BackToLiveTriggerEnumMap[instance.back_to_live_trigger],
      'catchup_surface': _$CatchupSurfaceEnumMap[instance.catchup_surface],
      'catchup_target': _$CatchupTargetEnumMap[instance.catchup_target],
      'audio_track': instance.audio_track,
      'audio_track_previous': instance.audio_track_previous,
      'audio_track_is_preferred': instance.audio_track_is_preferred,
      'search_session_id': instance.search_session_id,
      'query_id': instance.query_id,
      'result_id': instance.result_id,
    };

const _$BlazeAnalyticsOrientationEnumMap = {
  BlazeAnalyticsOrientation.portrait: 'portrait',
  BlazeAnalyticsOrientation.landscape: 'landscape',
  BlazeAnalyticsOrientation.unknown: 'unknown',
};

const _$OrientationChangeTriggerEnumMap = {
  OrientationChangeTrigger.initialRequest: 'initial_request',
  OrientationChangeTrigger.button: 'button',
  OrientationChangeTrigger.deviceRotation: 'device_rotation',
  OrientationChangeTrigger.unknown: 'unknown',
};

const _$PlayerViewingModeEnumMap = {
  PlayerViewingMode.inlinePreview: 'inline_preview',
  PlayerViewingMode.inlineInteractive: 'inline_interactive',
  PlayerViewingMode.fullscreen: 'fullscreen',
  PlayerViewingMode.pictureInPicture: 'picture_in_picture',
  PlayerViewingMode.outOfScreen: 'out_of_screen',
  PlayerViewingMode.casting: 'casting',
  PlayerViewingMode.unknown: 'unknown',
};

const _$AnalyticsStreamStatusEnumMap = {
  AnalyticsStreamStatus.live: 'live',
  AnalyticsStreamStatus.upcoming: 'upcoming',
  AnalyticsStreamStatus.ended: 'ended',
  AnalyticsStreamStatus.unknown: 'unknown',
};

const _$BackToLiveTriggerEnumMap = {
  BackToLiveTrigger.backToLiveButton: 'back_to_live_button',
  BackToLiveTrigger.manualScrub: 'manual_scrub',
  BackToLiveTrigger.doubleTapForward: 'double_tap_forward',
  BackToLiveTrigger.seekForwardButton: 'seek_forward_button',
  BackToLiveTrigger.unknown: 'unknown',
};

const _$CatchupSurfaceEnumMap = {
  CatchupSurface.catchupScreen: 'catchup_screen',
  CatchupSurface.banner: 'banner',
  CatchupSurface.icon: 'icon',
  CatchupSurface.unknown: 'unknown',
};

const _$CatchupTargetEnumMap = {
  CatchupTarget.story: 'story',
  CatchupTarget.goLive: 'go_live',
  CatchupTarget.close: 'close',
  CatchupTarget.unknown: 'unknown',
};

_$AdEventPropsImpl _$$AdEventPropsImplFromJson(Map<String, dynamic> json) =>
    _$AdEventPropsImpl(
      session_id: json['session_id'] as String?,
      content_id: json['content_id'] as String?,
      content_title: json['content_title'] as String?,
      content_type: $enumDecodeNullable(
          _$ContentTypeEnumMap, json['content_type'],
          unknownValue: ContentType.unknown),
      ad_duration: (json['ad_duration'] as num?)?.toDouble(),
      advertiser_name: json['advertiser_name'] as String?,
      content_extra_info:
          (json['content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      story_page_content_extra_info:
          (json['story_page_content_extra_info'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      backoffice_campaign_data: json['backoffice_campaign_data'] as String?,
      ad_exit_trigger: $enumDecodeNullable(
          _$PlayerExitTriggersEnumMap, json['ad_exit_trigger'],
          unknownValue: PlayerExitTriggers.unknown),
      ad_duration_viewed_percent:
          (json['ad_duration_viewed_percent'] as num?)?.toDouble(),
      audio_state: $enumDecodeNullable(_$AudioStateEnumMap, json['audio_state'],
          unknownValue: AudioState.unknown),
      advertiser_id: json['advertiser_id'] as String?,
      campaign_id: json['campaign_id'] as String?,
      campaign_name: json['campaign_name'] as String?,
      ad_server: json['ad_server'] as String?,
      ad_insertion_logic: json['ad_insertion_logic'] as String?,
      ad_index: (json['ad_index'] as num?)?.toInt(),
      gesture_type: $enumDecodeNullable(
          _$BlazeAnalyticsAdGestureTypeEnumMap, json['gesture_type'],
          unknownValue: BlazeAnalyticsAdGestureType.unknown),
      ad_id: json['ad_id'] as String?,
      ad_title: json['ad_title'] as String?,
      ad_description: json['ad_description'] as String?,
      ad_system: json['ad_system'] as String?,
      skippable: json['skippable'] as bool?,
      skip_time_offset: (json['skip_time_offset'] as num?)?.toDouble(),
      ima_url: json['ima_url'] as String?,
      ad_unit_id: json['ad_unit_id'] as String?,
    );

Map<String, dynamic> _$$AdEventPropsImplToJson(_$AdEventPropsImpl instance) =>
    <String, dynamic>{
      'session_id': instance.session_id,
      'content_id': instance.content_id,
      'content_title': instance.content_title,
      'content_type': _$ContentTypeEnumMap[instance.content_type],
      'ad_duration': instance.ad_duration,
      'advertiser_name': instance.advertiser_name,
      'content_extra_info': instance.content_extra_info,
      'story_page_content_extra_info': instance.story_page_content_extra_info,
      'backoffice_campaign_data': instance.backoffice_campaign_data,
      'ad_exit_trigger': _$PlayerExitTriggersEnumMap[instance.ad_exit_trigger],
      'ad_duration_viewed_percent': instance.ad_duration_viewed_percent,
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
      'ad_unit_id': instance.ad_unit_id,
    };

_$InteractionPropsImpl _$$InteractionPropsImplFromJson(
        Map<String, dynamic> json) =>
    _$InteractionPropsImpl(
      content_session_id: json['content_session_id'] as String?,
      content_type: $enumDecodeNullable(
          _$ContentTypeEnumMap, json['content_type'],
          unknownValue: ContentType.unknown),
      content_id: json['content_id'] as String?,
      content_name: json['content_name'] as String?,
      content_page_id: json['content_page_id'] as String?,
      interaction_id: json['interaction_id'] as String?,
      interaction_type: json['interaction_type'] as String?,
      interaction_selected_answer:
          json['interaction_selected_answer'] as String?,
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
      'content_name': instance.content_name,
      'content_page_id': instance.content_page_id,
      'interaction_id': instance.interaction_id,
      'interaction_type': instance.interaction_type,
      'interaction_selected_answer': instance.interaction_selected_answer,
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
      event_category: $enumDecode(
          _$EventCategoryEnumMap, json['event_category'],
          unknownValue: EventCategory.unknown),
      event_action: $enumDecode(_$EventActionNameEnumMap, json['event_action'],
          unknownValue: EventActionName.unknown),
      tech: TechProps.fromJson(json['tech'] as Map<String, dynamic>),
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
      search: json['search'] == null
          ? null
          : SearchProps.fromJson(json['search'] as Map<String, dynamic>),
      tab: json['tab'] == null
          ? null
          : TabProps.fromJson(json['tab'] as Map<String, dynamic>),
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
      'tech': instance.tech.toJson(),
      'user': instance.user.toJson(),
      'referring': instance.referring.toJson(),
      'widget': instance.widget?.toJson(),
      'story': instance.story?.toJson(),
      'moment': instance.moment?.toJson(),
      'video': instance.video?.toJson(),
      'ad': instance.ad?.toJson(),
      'interaction': instance.interaction?.toJson(),
      'search': instance.search?.toJson(),
      'tab': instance.tab?.toJson(),
    };

const _$EventCategoryEnumMap = {
  EventCategory.story: 'story',
  EventCategory.widget: 'widget',
  EventCategory.moment: 'moment',
  EventCategory.video: 'video',
  EventCategory.ad: 'ad',
  EventCategory.interaction: 'interaction',
  EventCategory.search: 'search',
  EventCategory.tab: 'tab',
  EventCategory.global: 'global',
  EventCategory.unknown: 'unknown',
};

const _$EventActionNameEnumMap = {
  EventActionName.sdkInit: 'sdk_init',
  EventActionName.userLogout: 'user_logout',
  EventActionName.ctaClick: 'cta_click',
  EventActionName.shareClick: 'share_click',
  EventActionName.userInitiatedPlaybackPause: 'user_initiated_playback_pause',
  EventActionName.userInitiatedPlaybackPlay: 'user_initiated_playback_play',
  EventActionName.ccOff: 'cc_off',
  EventActionName.ccOn: 'cc_on',
  EventActionName.customActionButtonClick: 'custom_action_button_click',
  EventActionName.playbackInitialStart: 'playback_initial_start',
  EventActionName.like: 'like',
  EventActionName.unlike: 'unlike',
  EventActionName.follow: 'follow',
  EventActionName.unfollow: 'unfollow',
  EventActionName.descriptionExpanded: 'description_expanded',
  EventActionName.descriptionCollapsed: 'description_collapsed',
  EventActionName.audioTrackChange: 'audio_track_change',
  EventActionName.storyStart: 'story_start',
  EventActionName.storyExit: 'story_exit',
  EventActionName.storyPageStart: 'story_page_start',
  EventActionName.storyPageExit: 'story_page_exit',
  EventActionName.widgetLoad: 'widget_load',
  EventActionName.widgetClick: 'widget_click',
  EventActionName.tabDataLoad: 'tab_data_load',
  EventActionName.tabTransition: 'tab_transition',
  EventActionName.momentStart: 'moment_start',
  EventActionName.momentExit: 'moment_exit',
  EventActionName.videoStart: 'video_start',
  EventActionName.videoEnd: 'video_end',
  EventActionName.seek: 'seek',
  EventActionName.playbackSpeedChange: 'playback_speed_change',
  EventActionName.viewingModeTransition: 'viewing_mode_transition',
  EventActionName.viewingOrientationChanged: 'viewing_orientation_changed',
  EventActionName.backToLive: 'back_to_live',
  EventActionName.videoChangedStatus: 'video_changed_status',
  EventActionName.catchupScreenImpression: 'catchup_screen_impression',
  EventActionName.catchupClick: 'catchup_click',
  EventActionName.bannerAdLoad: 'banner_ad_load',
  EventActionName.bannerAdView: 'banner_ad_view',
  EventActionName.bannerAdClick: 'banner_ad_click',
  EventActionName.bannerAdRequested: 'banner_ad_requested',
  EventActionName.adView: 'ad_view',
  EventActionName.adClick: 'ad_click',
  EventActionName.adExit: 'ad_exit',
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
  EventActionName.searchOpened: 'search_opened',
  EventActionName.searchQuerySubmitted: 'search_query_submitted',
  EventActionName.searchResultsShown: 'search_results_shown',
  EventActionName.searchResultClicked: 'search_result_clicked',
  EventActionName.searchSuggestionsClicked: 'search_suggestions_clicked',
  EventActionName.unknown: 'unknown',
};
