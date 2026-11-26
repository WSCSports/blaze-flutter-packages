import 'dart:convert';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

// Wire values of native 2.0 start triggers: iOS `public-2.0.0`
// `PlayerStartTriggers` and Android `publicSDK/v2.0.1` `EventStartTrigger`.
const _iosStartTriggers = [
  'widget',
  'deeplink',
  'entry_point',
  'auto_play_from_widget',
  'notification',
  'app_foreground',
  'focus_regained',
  'inline',
  'moments_tabs',
  'skip',
  'swipe',
  'auto_advance',
  'auto_skip',
  'viewing_mode_transition',
  'catchup',
  'catchup_return',
];
const _androidOnlyStartTriggers = [
  'moments_container',
  'share',
  'single_content',
  'embedded_player_in_viewport',
  'widget_tabs',
];

// iOS `PlayerExitTriggers` and Android `EventExitTrigger`.
const _iosExitTriggers = [
  'auto_skip',
  'skip',
  'swipe',
  'video_finished',
  'close_button',
  'app_close',
  'url_expiration',
  'story_completed',
  'app_background',
  'viewing_mode_transition',
  'focus_lost',
  'user_skip_next',
  'user_skip_previous',
  'inline',
  'user_swipe_to_dismiss',
];
const _androidOnlyExitTriggers = [
  'swipe_up',
  'cta_click',
  'back_button',
  'pip_dismissed',
];

// The remaining enumerated values, per field.
const _otherValues = <String, List<String>>{
  'moment_navigation_type': ['automatic', 'manual'],
  'moment_navigation_direction': [
    'forward',
    'backward',
    'close',
    'cta_click',
    'ads_click'
  ],
  'audio_state': ['mute', 'unmute'],
};

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('every native start trigger decodes to a named member', () {
    final wires = [..._iosStartTriggers, ..._androidOnlyStartTriggers];
    for (final wire in wires) {
      final props = MomentsProps.fromJson({'moment_start_trigger': wire});
      expect(props.moment_start_trigger, isNot(PlayerStartTriggers.unknown),
          reason: wire);
    }
    expect(PlayerStartTriggers.values.length, wires.length + 1);
    expect(
        MomentsProps.fromJson({'moment_start_trigger': 'auto_play_from_widget'})
            .moment_start_trigger,
        PlayerStartTriggers.widgetAutoPlay);
    expect(
        MomentsProps.fromJson({'moment_start_trigger': 'focus_regained'})
            .moment_start_trigger,
        PlayerStartTriggers.focusRegained);
  });

  test('every native exit trigger decodes to a named member', () {
    final wires = [..._iosExitTriggers, ..._androidOnlyExitTriggers];
    for (final wire in wires) {
      final props = MomentsProps.fromJson({'moment_exit_trigger': wire});
      expect(props.moment_exit_trigger, isNot(PlayerExitTriggers.unknown),
          reason: wire);
    }
    expect(PlayerExitTriggers.values.length, wires.length + 1);
    expect(
        MomentsProps.fromJson({'moment_exit_trigger': 'story_completed'})
            .moment_exit_trigger,
        PlayerExitTriggers.storiesCompleted);
    expect(
        MomentsProps.fromJson({'moment_exit_trigger': 'focus_lost'})
            .moment_exit_trigger,
        PlayerExitTriggers.focusLost);
  });

  test('the other enumerated moment values decode to named members', () {
    for (final entry in _otherValues.entries) {
      for (final wire in entry.value) {
        final decoded =
            MomentsProps.fromJson({entry.key: wire}).toJson()[entry.key];
        expect(decoded, wire, reason: '${entry.key}=$wire');
      }
    }
  });

  test('widget, video and ad values decode to named members', () {
    final widget = WidgetProps.fromJson({
      'widget_type': 'grid',
      'content_type': 'moment',
      'thumbnail_type': 'main',
      'thumbnail_format': 'animated',
    });
    expect(widget.widget_type, WidgetType.grid);
    expect(widget.content_type, ContentType.moments);
    expect(widget.thumbnail_type, ThumbnailType.main);
    expect(widget.thumbnail_format, ThumbnailFormat.animated);

    final video = VideoProps.fromJson({
      'seek_type': 'seek_button',
      'seek_direction': 'backward',
      'device_orientation': 'landscape',
    });
    expect(video.seek_type, VideoSeekType.seekButton);
    expect(video.seek_direction, VideoSeekDirection.backward);
    expect(video.device_orientation, BlazeAnalyticsOrientation.landscape);

    expect(AdEventProps.fromJson({'gesture_type': 'swipe_up'}).gesture_type,
        BlazeAnalyticsAdGestureType.swipeUp);
  });

  test('a 1.x Title Case trigger decodes to unknown and keeps the other fields',
      () {
    final props = MomentsProps.fromJson({
      'moment_id': 'm',
      'moment_start_trigger': 'Auto Play from Widget',
      'moment_exit_trigger': 'Swipe Down',
    });

    expect(props.moment_id, 'm');
    expect(props.moment_start_trigger, PlayerStartTriggers.unknown);
    expect(props.moment_exit_trigger, PlayerExitTriggers.unknown);
  });

  test('an absent trigger stays null', () {
    final props = MomentsProps.fromJson({'moment_id': 'm'});

    expect(props.moment_start_trigger, isNull);
    expect(props.moment_exit_trigger, isNull);
  });

  test('a swipe moment event reaches onEventTriggered', () async {
    BlazeOnEventTriggeredParams? received;
    BlazeSDK.setGlobalDelegate(
        BlazeGlobalDelegate(onEventTriggered: (p) => received = p));
    addTearDown(() => BlazeSDK.setGlobalDelegate(null));

    final event = {
      'timestamp_utc': '2026-11-12 09:28:15.799',
      'timestamp_user_tz': '2026-11-12 12:28:15.799',
      'sdk_version': '2.0.1;2.0.0',
      'sdk_type': 'android-flutter',
      'event_category': 'moment',
      'event_action': 'moment_start',
      'tech': <String, Object?>{},
      'user': {'generated_user_id': 'u', 'locale': 'en'},
      'referring': <String, Object?>{},
      'moment': {'moment_id': 'm', 'moment_start_trigger': 'swipe'},
    };
    await sendAsyncBridgeEvent(
        'Blaze.onEventTriggered', {'eventData': json.encode(event)});

    expect(received?.event.event_category, EventCategory.moment);
    expect(received?.event.moment?.moment_start_trigger,
        PlayerStartTriggers.swipe);
  });
}
