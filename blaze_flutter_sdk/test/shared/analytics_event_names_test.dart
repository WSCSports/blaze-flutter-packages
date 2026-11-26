import 'dart:convert';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

// Wire values of native 2.0 (iOS `public-2.0.0` `BlazeAnalyticsEventCategory`
// and Android `publicSDK/v2.0.1` `EventCategoryType`; both send the same set).
const _nativeCategories = [
  'story',
  'widget',
  'moment',
  'video',
  'ad',
  'interaction',
  'search',
  'tab',
  'global',
];

// Wire values of native 2.0 `EventActionName` (same set on both platforms).
const _nativeActions = [
  'sdk_init',
  'user_logout',
  'cta_click',
  'share_click',
  'user_initiated_playback_pause',
  'user_initiated_playback_play',
  'cc_off',
  'cc_on',
  'like',
  'unlike',
  'custom_action_button_click',
  'playback_initial_start',
  'widget_load',
  'widget_click',
  'tab_data_load',
  'tab_transition',
  'story_start',
  'story_exit',
  'story_page_start',
  'story_page_exit',
  'moment_start',
  'moment_exit',
  'follow',
  'unfollow',
  'description_expanded',
  'description_collapsed',
  'video_start',
  'video_end',
  'seek',
  'playback_speed_change',
  'viewing_mode_transition',
  'viewing_orientation_changed',
  'back_to_live',
  'video_changed_status',
  'catchup_screen_impression',
  'catchup_click',
  'audio_track_change',
  'banner_ad_load',
  'banner_ad_view',
  'banner_ad_click',
  'banner_ad_requested',
  'ad_view',
  'ad_click',
  'ad_exit',
  'ad_requested',
  'ima_all_ads_completed',
  'ima_ad_clicked',
  'ima_ad_completed',
  'ima_ad_loaded',
  'ima_ad_paused',
  'ima_ad_resumed',
  'ima_ad_skipped',
  'ima_ad_started',
  'ima_ad_tapped',
  'ima_ad_first_quartile',
  'ima_ad_midpoint',
  'ima_ad_third_quartile',
  'ima_ad_requested',
  'interaction_view',
  'interaction_answer',
  'search_opened',
  'search_suggestions_clicked',
  'search_query_submitted',
  'search_results_shown',
  'search_result_clicked',
];

// Actions native 1.x sent that 2.0 no longer declares.
const _removedActions = [
  'app_pause',
  'app_continue',
  'audio',
  'playback_pause',
  'playback_play',
  'forced_playback_pause',
  'forced_playback_play',
  'moments_playlist_start',
  'moments_playlist_exit',
  'buffer_start',
  'buffer_end',
  'cta_visible',
  'cta_dismissed',
  'ad_playback_pause',
  'ad_playback_play',
  'ad_forced_playback_pause',
  'ad_forced_playback_play',
  'casting_started',
  'casting_ended',
  'pip_enabled',
  'pip_disabled',
  'search_click',
  'search_suggestions_shown',
  'container_data_load',
];

Map<String, Object?> _event({
  String category = 'video',
  String action = 'video_start',
  Map<String, Object?>? video,
}) =>
    {
      'timestamp_utc': '2026-11-12 09:28:15.799',
      'timestamp_user_tz': '2026-11-12 12:28:15.799',
      'sdk_version': '2.0.0;2.0.0',
      'sdk_type': 'ios-flutter',
      'event_category': category,
      'event_action': action,
      'tech': <String, Object?>{},
      'user': {'generated_user_id': 'u', 'locale': 'en'},
      'referring': <String, Object?>{},
      if (video != null) 'video': video,
    };

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('every native category decodes to a named member', () {
    for (final category in _nativeCategories) {
      final event = BlazeAnalyticsEvent.fromJson(_event(category: category));
      expect(event.event_category, isNot(EventCategory.unknown),
          reason: category);
    }
    expect(EventCategory.values.length, _nativeCategories.length + 1);
    expect(BlazeAnalyticsEvent.fromJson(_event(category: 'tab')).event_category,
        EventCategory.tab);
    expect(
        BlazeAnalyticsEvent.fromJson(_event(category: 'global')).event_category,
        EventCategory.global);
  });

  test('every native action decodes to a named member', () {
    for (final action in _nativeActions) {
      final event = BlazeAnalyticsEvent.fromJson(_event(action: action));
      expect(event.event_action, isNot(EventActionName.unknown),
          reason: action);
    }
    // No Dart member is left without a native 2.0 counterpart.
    expect(EventActionName.values.length, _nativeActions.length + 1);
  });

  test('the actions added in 2.0 decode to their members', () {
    EventActionName decode(String action) =>
        BlazeAnalyticsEvent.fromJson(_event(action: action)).event_action;

    expect(decode('user_logout'), EventActionName.userLogout);
    expect(decode('tab_data_load'), EventActionName.tabDataLoad);
    expect(decode('tab_transition'), EventActionName.tabTransition);
    expect(decode('user_initiated_playback_pause'),
        EventActionName.userInitiatedPlaybackPause);
    expect(decode('user_initiated_playback_play'),
        EventActionName.userInitiatedPlaybackPlay);
    expect(decode('catchup_screen_impression'),
        EventActionName.catchupScreenImpression);
    expect(decode('catchup_click'), EventActionName.catchupClick);
    expect(decode('audio_track_change'), EventActionName.audioTrackChange);
  });

  test('the 1.x category casing and the removed actions decode to unknown', () {
    expect(BlazeAnalyticsEvent.fromJson(_event(category: 'Story')).event_category,
        EventCategory.unknown);
    for (final action in _removedActions) {
      expect(BlazeAnalyticsEvent.fromJson(_event(action: action)).event_action,
          EventActionName.unknown,
          reason: action);
    }
  });

  test('a global sdk_init event reaches onEventTriggered', () async {
    BlazeOnEventTriggeredParams? received;
    BlazeSDK.setGlobalDelegate(
        BlazeGlobalDelegate(onEventTriggered: (p) => received = p));
    addTearDown(() => BlazeSDK.setGlobalDelegate(null));

    await sendAsyncBridgeEvent('Blaze.onEventTriggered', {
      'eventData': json.encode(_event(category: 'global', action: 'sdk_init'))
    });

    expect(received?.event.event_category, EventCategory.global);
    expect(received?.event.event_action, EventActionName.sdkInit);
  });

  group('an event that cannot be decoded', () {
    BlazeOnEventTriggeredParams? event;
    final errors = <BlazeError>[];

    setUp(() {
      event = null;
      errors.clear();
      BlazeSDK.setGlobalDelegate(BlazeGlobalDelegate(
        onEventTriggered: (p) => event = p,
        onErrorThrown: (p) => errors.add(p.error),
      ));
      addTearDown(() => BlazeSDK.setGlobalDelegate(null));
    });

    test('is reported through onErrorThrown, naming the event', () async {
      final broken = _event(category: 'story', action: 'story_start')
        ..remove('tech');

      await sendAsyncBridgeEvent(
          'Blaze.onEventTriggered', {'eventData': json.encode(broken)});

      expect(event, isNull);
      expect(errors, hasLength(1));
      expect(errors.single.domain, 'general');
      expect(errors.single.reason, 'failedToParseAnalyticsEvent');
      expect(errors.single.metadata,
          {'event_category': 'story', 'event_action': 'story_start'});
    });

    test('is reported without metadata when it is not JSON', () async {
      await sendAsyncBridgeEvent(
          'Blaze.onEventTriggered', {'eventData': 'not json'});

      expect(event, isNull);
      expect(errors.single.reason, 'failedToParseAnalyticsEvent');
      expect(errors.single.metadata, isEmpty);
    });
  });

  test('an exception in the app callback is not reported as a parse failure',
      () async {
    final errors = <BlazeError>[];
    BlazeSDK.setGlobalDelegate(BlazeGlobalDelegate(
      onEventTriggered: (_) => throw StateError('app bug'),
      onErrorThrown: (p) => errors.add(p.error),
    ));
    addTearDown(() => BlazeSDK.setGlobalDelegate(null));

    await sendAsyncBridgeEvent('Blaze.onEventTriggered', {
      'eventData': json.encode(_event(category: 'global', action: 'sdk_init'))
    });

    expect(errors, isEmpty);
  });
}
