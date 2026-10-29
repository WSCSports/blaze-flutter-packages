import 'dart:convert';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

// Wire values of native 1.21.0 `EventStartTrigger` / `EventExitTrigger`
// (Android `internalSDK/v1.21.0`; iOS `internal-1.21.0` sends the same strings).
const _nativeStartTriggers = [
  'Widget',
  'Deeplink',
  'Entry Point',
  'Auto Play from Widget',
  'Notification',
  'App Foreground',
  'Inline',
  'Moments Container',
  'Viewing Mode Transition',
  'Skip',
  'Swipe',
  'Auto Skip',
];

const _nativeExitTriggers = [
  'Swipe',
  'Swipe Down',
  'User Swipe To Dismiss',
  'Skip',
  'User Skip Next',
  'User Skip Previous',
  'Video Finished',
  'Close Button',
  'App Close',
  'Back Button',
  'Stories completed',
  'URL Expiration',
  'App Background',
  'Inline',
  'Viewing Mode Transition',
  'PIP Dismissed',
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('every native start trigger decodes', () {
    for (final wire in _nativeStartTriggers) {
      final props = MomentsProps.fromJson({'moment_start_trigger': wire});
      expect(props.moment_start_trigger, isNotNull, reason: wire);
    }
    expect(MomentsProps.fromJson({'moment_start_trigger': 'Swipe'})
        .moment_start_trigger, PlayerStartTriggers.swipe);
    expect(
        MomentsProps.fromJson({'moment_start_trigger': 'Auto Play from Widget'})
            .moment_start_trigger,
        PlayerStartTriggers.widgetAutoPlay);
  });

  test('every native exit trigger decodes', () {
    for (final wire in _nativeExitTriggers) {
      final props = MomentsProps.fromJson({'moment_exit_trigger': wire});
      expect(props.moment_exit_trigger, isNotNull, reason: wire);
    }
    expect(MomentsProps.fromJson({'moment_exit_trigger': 'PIP Dismissed'})
        .moment_exit_trigger, PlayerExitTriggers.pipDismissed);
  });

  test('an unknown trigger decodes to null and keeps the other fields', () {
    final props = MomentsProps.fromJson({
      'moment_id': 'm',
      'moment_start_trigger': 'SomethingNew',
      'moment_exit_trigger': 'SomethingElse',
    });

    expect(props.moment_id, 'm');
    expect(props.moment_start_trigger, isNull);
    expect(props.moment_exit_trigger, isNull);
  });

  test('unknown triggers are tolerated on every props type', () {
    expect(StoryProps.fromJson({'story_start_trigger': 'X', 'story_exit_trigger': 'X'}),
        isA<StoryProps>());
    expect(VideoProps.fromJson({'video_start_trigger': 'X', 'video_end_trigger': 'X'}),
        isA<VideoProps>());
    expect(AdEventProps.fromJson({'ad_exit_trigger': 'X'}), isA<AdEventProps>());
  });

  test('a Swipe moment event reaches onEventTriggered', () async {
    BlazeOnEventTriggeredParams? received;
    BlazeSDK.setGlobalDelegate(
        BlazeGlobalDelegate(onEventTriggered: (p) => received = p));
    addTearDown(() => BlazeSDK.setGlobalDelegate(null));

    final event = {
      'timestamp_utc': '2026-10-13 09:28:15.799',
      'timestamp_user_tz': '2026-10-13 12:28:15.799',
      'sdk_version': '1.21.0',
      'sdk_type': 'Android',
      'event_category': 'Moment',
      'event_action': 'moment_start',
      'user': {'generated_user_id': 'u', 'locale': 'en'},
      'referring': <String, Object?>{},
      'moment': {'moment_id': 'm', 'moment_start_trigger': 'Swipe'},
    };
    await sendAsyncBridgeEvent(
        'Blaze.onEventTriggered', {'eventData': json.encode(event)});

    expect(received?.event.moment?.moment_start_trigger,
        PlayerStartTriggers.swipe);
  });
}
