import 'dart:convert';
import 'dart:io';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

const _fixtures = 'test/fixtures/analytics';

const _contentBlocks = [
  'story',
  'moment',
  'video',
  'ad',
  'interaction',
  'widget'
];

Map<String, dynamic> _read(String name) =>
    jsonDecode(File('$_fixtures/$name').readAsStringSync())
        as Map<String, dynamic>;

/// What a host gets back when it serializes the parsed event.
Map<String, dynamic> _roundTrip(Map<String, dynamic> raw) =>
    jsonDecode(jsonEncode(BlazeAnalyticsEvent.fromJson(raw).toJson()))
        as Map<String, dynamic>;

/// The paths of every value in [raw] that [out] lost or changed. Keys that
/// only [out] has are ignored: Dart writes absent optional fields as null.
List<String> _lost(Object? raw, Object? out, [String path = '']) {
  if (raw is Map) {
    if (out is! Map) return [path];
    return [
      for (final entry in raw.entries)
        ..._lost(entry.value, out[entry.key], '$path/${entry.key}'),
    ];
  }
  if (raw is List) {
    if (out is! List || out.length != raw.length) return [path];
    return [
      for (var i = 0; i < raw.length; i++) ..._lost(raw[i], out[i], '$path/$i'),
    ];
  }
  return raw == out ? const [] : [path];
}

List<String> _lostContent(Map<String, dynamic> raw) {
  final out = _roundTrip(raw);
  return [
    for (final block in _contentBlocks)
      if (raw[block] != null) ..._lost(raw[block], out[block], block),
  ];
}

void main() {
  // One event per content block, carrying every field that native iOS 2.0.0 or
  // native Android 2.0.1 declares for that block. Built from the native model
  // declarations, not recorded.
  group('every field native declares', () {
    for (final block in _contentBlocks) {
      test('$block keeps every native field', () {
        final raw = _read('native_fields_$block.json');

        expect(raw[block], isNotEmpty);
        expect(_lostContent(raw), isEmpty);
      });
    }
  });

  // Payloads recorded through the bridge, unedited.
  group('recorded sessions', () {
    for (final session in const [
      'ios_session',
      'android_session',
      'ios_session_stories_videos',
      'ios_session_search_identity',
      'android_session_device_check',
    ]) {
      test('$session keeps every content field of every event', () {
        final lines = File('$_fixtures/$session.jsonl')
            .readAsLinesSync()
            .where((l) => l.trim().isNotEmpty);

        for (final line in lines) {
          expect(
              _lostContent(jsonDecode(line) as Map<String, dynamic>), isEmpty,
              reason: line);
        }
      });
    }
  });

  group('recorded on iOS', () {
    BlazeAnalyticsEvent event(String name) =>
        BlazeAnalyticsEvent.fromJson(_read(name));

    test('a story page exit reports position and a fractional percent', () {
      final story = event('ios_story_page_exit.json').story!;

      expect(story.story_page_duration_viewed_percent, 9.22);
      expect(story.story_page_navigation_direction,
          PlayableNavigationDirection.forward);
      expect(story.story_index, 0);
      expect(story.total_stories_count, 9);
      expect(story.remaining_unread_pages, 1);
      expect(story.is_last_page, isFalse);
      expect(story.story_page_type, 'content');
    });

    test('rotating a video names the trigger and one viewing mode', () {
      final e = event('ios_video_orientation_changed.json');

      expect(e.event_action, EventActionName.viewingOrientationChanged);
      expect(e.video?.video_orientation_changed_trigger,
          OrientationChangeTrigger.deviceRotation);
      expect(e.video?.device_orientation, BlazeAnalyticsOrientation.landscape);
      expect(e.video?.viewing_mode, PlayerViewingMode.fullscreen);
      expect(e.video?.cta_config?.text, isNotEmpty);
    });

    test('an IMA ad event identifies the interrupted video', () {
      final e = event('ios_ima_ad_started.json');

      expect(e.event_category, EventCategory.ad);
      expect(e.event_action, EventActionName.imaAdStarted);
      expect(e.ad?.content_id, '682ada037d1d9f60bd56aa86');
      expect(e.ad?.content_type, ContentType.video);
      expect(e.ad?.backoffice_campaign_data, isNotEmpty);
    });
  });

  group('recorded on Android', () {
    BlazeAnalyticsEvent event(String name) =>
        BlazeAnalyticsEvent.fromJson(_read(name));

    test('entering picture-in-picture names one viewing mode', () {
      final e = event('android_video_viewing_mode_transition.json');

      expect(e.event_category, EventCategory.video);
      expect(e.event_action, EventActionName.viewingModeTransition);
      expect(e.video?.viewing_mode, PlayerViewingMode.pictureInPicture);
      expect(e.video?.device_orientation, BlazeAnalyticsOrientation.portrait);
    });

    test('rotating a video with the player button names the trigger', () {
      final e = event('android_video_orientation_changed.json');

      expect(e.event_action, EventActionName.viewingOrientationChanged);
      expect(e.video?.video_orientation_changed_trigger,
          OrientationChangeTrigger.button);
      expect(e.video?.device_orientation, BlazeAnalyticsOrientation.landscape);
      expect(e.video?.viewing_mode, PlayerViewingMode.fullscreen);
    });
  });

  group('story', () {
    final story =
        BlazeAnalyticsEvent.fromJson(_read('native_fields_story.json')).story!;

    test('exposes the CTA and custom action button config', () {
      expect(story.cta_config?.text, 'Watch now');
      expect(story.cta_config?.color, '#FF0000');
      expect(story.cta_config?.url, 'https://example.com/cta');
      expect(story.cta_shown, isTrue);
      expect(story.custom_action_button_config?.button_id, 'btn-1');
      expect(story.custom_action_button_config?.button_text, 'Buy');
    });

    test('exposes position, count and unread fields', () {
      expect(story.story_index, 2);
      expect(story.total_stories_count, 9);
      expect(story.remaining_unread_count, 6);
      expect(story.remaining_unread_pages, 3);
      expect(story.is_last_page, isFalse);
    });

    test('gesture_type is the gesture enum', () {
      expect(story.gesture_type, BlazeAnalyticsAdGestureType.swipeUp);
    });
  });

  group('moment', () {
    final moment =
        BlazeAnalyticsEvent.fromJson(_read('native_fields_moment.json'))
            .moment!;

    test('exposes follow and tab fields', () {
      expect(moment.follow_button_visible, isTrue);
      expect(moment.follow_subject_id, 'team-1');
      expect(moment.follow_subject_type, 'team');
      expect(moment.tabs_enabled, isTrue);
      expect(moment.tabs_configuration, ['For You', 'Trending']);
      expect(moment.active_tab_title, 'For You');
    });

    test('exposes loop settings and speed fields', () {
      expect(moment.loop_settings?.infinite_loop, isFalse);
      expect(moment.loop_settings?.loop_and_advance, 2);
      expect(moment.playback_speed_type, PlaybackSpeedType.pressHold);
      expect(moment.playback_speed, 2.0);
    });

    for (final platform in const ['ios', 'android']) {
      test('$platform moment_exit reports a fractional viewed percent', () {
        final exits = File('$_fixtures/${platform}_session.jsonl')
            .readAsLinesSync()
            .where((l) => l.trim().isNotEmpty)
            .map((l) => BlazeAnalyticsEvent.fromJson(
                jsonDecode(l) as Map<String, dynamic>))
            .where((e) => e.event_action == EventActionName.momentExit)
            .toList();

        expect(exits, isNotEmpty);
        for (final exit in exits) {
          expect(exit.moment?.moment_duration_viewed_percent,
              inInclusiveRange(0.0, 100.0));
        }
        // Native 1.x reported whole numbers.
        expect(
            exits.any((e) =>
                e.moment!.moment_duration_viewed_percent! % 1 != 0),
            isTrue);
      });
    }
  });

  group('video', () {
    final video =
        BlazeAnalyticsEvent.fromJson(_read('native_fields_video.json')).video!;

    test('viewing_mode is one value', () {
      expect(video.viewing_mode, PlayerViewingMode.pictureInPicture);
    });

    test('stream_status and the orientation trigger are enums', () {
      expect(video.stream_status, AnalyticsStreamStatus.live);
      expect(video.video_orientation_changed_trigger,
          OrientationChangeTrigger.deviceRotation);
      expect(video.device_orientation, BlazeAnalyticsOrientation.landscape);
    });

    test('exposes live catchup and audio-track fields', () {
      expect(video.back_to_live_trigger, BackToLiveTrigger.backToLiveButton);
      expect(video.catchup_surface, CatchupSurface.catchupScreen);
      expect(video.catchup_target, CatchupTarget.goLive);
      expect(video.is_at_live_edge, isTrue);
      expect(video.audio_track, 'en');
      expect(video.audio_track_previous, 'es');
      expect(video.audio_track_is_preferred, isTrue);
    });

    test('cta_config is the shared CTA shape', () {
      expect(video.cta_config?.text, 'Watch now');
    });
  });

  group('ad', () {
    test('content_id and content_title identify the interrupted content', () {
      final ad =
          BlazeAnalyticsEvent.fromJson(_read('native_fields_ad.json')).ad!;

      expect(ad.content_id, 'st-1');
      expect(ad.content_title, 'Title');
      expect(ad.content_type, ContentType.story);
      expect(ad.gesture_type, BlazeAnalyticsAdGestureType.click);
    });
  });

  group('interaction', () {
    test('content_name names the content', () {
      final interaction =
          BlazeAnalyticsEvent.fromJson(_read('native_fields_interaction.json'))
              .interaction!;

      expect(interaction.content_name, 'Title');
    });
  });

  group('widget', () {
    test('exposes placement, content name and localization', () {
      final widget =
          BlazeAnalyticsEvent.fromJson(_read('native_fields_widget.json'))
              .widget!;

      expect(widget.placement_distance, 414.0);
      expect(widget.content_name, 'Title');
      expect(widget.localization, {'language': 'en'});
      expect(widget.placement_id, 'pl-1');
    });
  });
}
