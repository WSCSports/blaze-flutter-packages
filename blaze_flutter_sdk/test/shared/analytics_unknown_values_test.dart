import 'dart:convert';
import 'dart:io';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

const _unlisted = 'zz_not_a_value';

// Every enum-typed field of every block, written out. The source scan at the
// bottom fails when a field is added to the model and not to this list.
const _enumFields = <String, List<String>>{
  'widget': ['widget_type', 'content_type', 'thumbnail_type', 'thumbnail_format'],
  'story': [
    'story_page_navigation_type',
    'story_page_navigation_direction',
    'story_start_trigger',
    'story_exit_trigger',
    'audio_state',
    'gesture_type',
  ],
  'moment': [
    'moment_navigation_type',
    'moment_navigation_direction',
    'moment_start_trigger',
    'moment_exit_trigger',
    'audio_state',
    'seek_type',
    'seek_direction',
    'playback_speed_type',
  ],
  'video': [
    'audio_state',
    'video_start_trigger',
    'video_end_trigger',
    'seek_type',
    'seek_direction',
    'device_orientation',
    'viewing_mode',
    'video_orientation_changed_trigger',
    'playback_speed_type',
    'stream_status',
    'back_to_live_trigger',
    'catchup_surface',
    'catchup_target',
  ],
  'ad': ['content_type', 'ad_exit_trigger', 'audio_state', 'gesture_type'],
  'interaction': ['content_type'],
  'tech': ['device_type', 'connection_type'],
  'user': ['logout_trigger'],
  'referring': ['data_source_type', 'origin_source_type'],
  'tab': ['transition_method'],
  'search': ['content_type'],
};

// Enum fields that hold a list of values.
const _listFields = {'origin_source_type'};

// Blocks with required fields, which a test block must keep.
const _requiredFields = <String, Map<String, Object?>>{
  'user': {'generated_user_id': 'u', 'locale': 'en'},
};

Map<String, Object?> _block(String name, Iterable<String> fields) => {
      ...?_requiredFields[name],
      for (final field in fields)
        field: _listFields.contains(field) ? [_unlisted] : _unlisted,
    };

Map<String, dynamic> _event([Map<String, Object?> blocks = const {}]) => {
      'timestamp_utc': '2026-11-12 09:28:15.799',
      'timestamp_user_tz': '2026-11-12 12:28:15.799',
      'sdk_version': '2.0.0;2.0.0',
      'sdk_type': 'ios-flutter',
      'event_category': 'story',
      'event_action': 'story_start',
      'tech': <String, Object?>{},
      'user': {'generated_user_id': 'u', 'locale': 'en'},
      'referring': <String, Object?>{},
      ...blocks,
    };

final _source =
    File('lib/src/shared/blaze_analytics_event.dart').readAsStringSync();

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  for (final block in _enumFields.entries) {
    for (final field in block.value) {
      test('${block.key}.$field decodes an unlisted value to unknown', () {
        final event = BlazeAnalyticsEvent.fromJson(
            _event({block.key: _block(block.key, [field])}));

        // The enum types differ per field, so compare by name.
        final decoded = (event.toJson()[block.key] as Map)[field];
        expect(decoded, _listFields.contains(field) ? ['unknown'] : 'unknown');
      });
    }
  }

  test('an unlisted category and action decode to unknown', () {
    final event = BlazeAnalyticsEvent.fromJson(
        _event()..addAll({'event_category': _unlisted, 'event_action': _unlisted}));

    expect(event.event_category, EventCategory.unknown);
    expect(event.event_action, EventActionName.unknown);
  });

  test('an event with an unlisted value in every enum field is delivered',
      () async {
    BlazeOnEventTriggeredParams? received;
    BlazeSDK.setGlobalDelegate(
        BlazeGlobalDelegate(onEventTriggered: (p) => received = p));
    addTearDown(() => BlazeSDK.setGlobalDelegate(null));

    final event = _event({
      for (final block in _enumFields.entries)
        block.key: _block(block.key, block.value)
    })
      ..addAll({'event_category': _unlisted, 'event_action': _unlisted});
    await sendAsyncBridgeEvent(
        'Blaze.onEventTriggered', {'eventData': json.encode(event)});

    expect(received, isNotNull);
    expect(received?.event.story?.story_start_trigger,
        PlayerStartTriggers.unknown);
    expect(received?.event.ad?.gesture_type, BlazeAnalyticsAdGestureType.unknown);
  });

  group('model source', () {
    final enumNames = RegExp(r'^enum (\w+) \{', multiLine: true)
        .allMatches(_source)
        .map((m) => m.group(1)!)
        .toList();

    test('every enum has an unknown member', () {
      expect(enumNames, isNotEmpty);
      for (final match
          in RegExp(r'^enum (\w+) \{(.*?)^\}', multiLine: true, dotAll: true)
              .allMatches(_source)) {
        expect(match.group(2), contains("@JsonValue('unknown')\n  unknown,"),
            reason: match.group(1));
      }
    });

    test('every enum field falls back to unknown and is listed above', () {
      final lines = _source.split('\n');
      final fieldPattern = RegExp(
          '^    (?:required )?(?:List<)?(${enumNames.join('|')})>?\\?? (\\w+),\$');
      var enumFieldCount = 0;
      for (var i = 0; i < lines.length; i++) {
        final match = fieldPattern.firstMatch(lines[i]);
        if (match == null) continue;
        enumFieldCount++;
        expect(lines[i - 1].trim(),
            '@JsonKey(unknownEnumValue: ${match.group(1)}.unknown)',
            reason: match.group(2));
      }

      // +2 for event_category and event_action.
      final listed = _enumFields.values.fold<int>(0, (n, f) => n + f.length);
      expect(enumFieldCount, listed + 2);
    });
  });
}
