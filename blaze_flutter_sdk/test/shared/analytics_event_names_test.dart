import 'dart:convert';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

// `EventActionName` values native 1.21.0 sends that Dart lacked before D24.
const _newActions = [
  'follow',
  'unfollow',
  'casting_started',
  'casting_ended',
  'pip_enabled',
  'pip_disabled',
  'search_click',
  'search_opened',
  'search_query_submitted',
  'search_results_shown',
  'search_result_clicked',
  'search_suggestions_shown',
  'search_suggestions_clicked',
  'back_to_live',
  'playback_speed_change',
  'video_changed_status',
  'viewing_mode_transition',
  'viewing_orientation_changed',
  'container_data_load',
  'description_expanded',
  'description_collapsed',
];

Map<String, Object?> _event({
  String category = 'Video',
  String action = 'video_start',
  Map<String, Object?>? video,
}) =>
    {
      'timestamp_utc': '2026-10-13 09:28:15.799',
      'timestamp_user_tz': '2026-10-13 12:28:15.799',
      'sdk_version': '1.21.0',
      'sdk_type': 'iOS',
      'event_category': category,
      'event_action': action,
      'user': {'generated_user_id': 'u', 'locale': 'en'},
      'referring': <String, Object?>{},
      if (video != null) 'video': video,
    };

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('every new native action decodes to a known value', () {
    for (final action in _newActions) {
      final event = BlazeAnalyticsEvent.fromJson(_event(action: action));
      expect(event.event_action, isNot(EventActionName.unknown),
          reason: action);
    }
  });

  test('the Search category and the Seek Button seek type decode', () {
    expect(BlazeAnalyticsEvent.fromJson(_event(category: 'Search')).event_category,
        EventCategory.search);
    expect(
        BlazeAnalyticsEvent.fromJson(_event(video: {'seek_type': 'Seek Button'}))
            .video
            ?.seek_type,
        VideoSeekType.seekButton);
  });

  test('unknown actions and categories decode to unknown and keep the event',
      () {
    final event = BlazeAnalyticsEvent.fromJson(_event(
      category: 'SomethingNew',
      action: 'something_new',
      video: {'seek_type': 'Something'},
    ));

    expect(event.event_category, EventCategory.unknown);
    expect(event.event_action, EventActionName.unknown);
    expect(event.video?.seek_type, isNull);
    expect(event.sdk_version, '1.21.0');
  });

  test('a casting_ended event reaches onEventTriggered', () async {
    BlazeOnEventTriggeredParams? received;
    BlazeSDK.setGlobalDelegate(
        BlazeGlobalDelegate(onEventTriggered: (p) => received = p));
    addTearDown(() => BlazeSDK.setGlobalDelegate(null));

    await sendAsyncBridgeEvent('Blaze.onEventTriggered',
        {'eventData': json.encode(_event(action: 'casting_ended'))});

    expect(received?.event.event_action, EventActionName.castingEnded);
  });
}
