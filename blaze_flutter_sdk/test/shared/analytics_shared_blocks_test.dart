import 'dart:convert';
import 'dart:io';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

// The fixtures are payloads recorded through the bridge from native iOS 2.0.0
// (simulator) and native Android 2.0.1 (emulator), unedited. Both sessions ran
// the same steps in the example app.
const _fixtures = 'test/fixtures/analytics';

BlazeAnalyticsEvent _fixture(String name) => BlazeAnalyticsEvent.fromJson(
    jsonDecode(File('$_fixtures/$name').readAsStringSync())
        as Map<String, dynamic>);

void main() {
  for (final platform in const ['ios', 'android']) {
    group(platform, () {
      test('every event of the recorded session parses', () {
        final lines = File('$_fixtures/${platform}_session.jsonl')
            .readAsLinesSync()
            .where((l) => l.trim().isNotEmpty)
            .toList();
        expect(lines, isNotEmpty);

        for (final line in lines) {
          final event = BlazeAnalyticsEvent.fromJson(
              jsonDecode(line) as Map<String, dynamic>);
          expect(event.event_category, isNot(EventCategory.unknown),
              reason: line);
          expect(event.event_action, isNot(EventActionName.unknown),
              reason: line);
        }
      });

      group('tech', () {
        test('is populated on a widget event', () {
          final tech = _fixture('${platform}_widget_load.json').tech;

          expect(tech.device_type, DeviceType.phone);
          expect(tech.connection_type, ConnectionType.wifi);
          expect(tech.operating_system, platform);
          expect(tech.app_id, isNotEmpty);
          expect(tech.screen_resolution, isNotEmpty);
          // Optional on native, and absent from this recording.
          expect(tech.localization_setting, isNull);
        });
      });

      group('tab', () {
        test('a tab_transition by tap exposes both tabs and the method', () {
          final event = _fixture('${platform}_tab_transition_tap.json');

          expect(event.event_category, EventCategory.tab);
          expect(event.event_action, EventActionName.tabTransition);
          expect(event.tab?.transition_method, TabTransitionMethod.tap);
          expect(event.tab?.current_tab_id, 'tab-for-you');
          expect(event.tab?.current_tab_index, 0);
          expect(event.tab?.next_tab_id, 'tab-trending');
          expect(event.tab?.next_tab_index, 1);
          expect(event.tab?.total_tabs_count, 3);
          // A transition names the two tabs, not a single one.
          expect(event.tab?.tab_id, isNull);
        });

        test('a tab_transition by swipe decodes the method', () {
          final event = _fixture('${platform}_tab_transition_swipe.json');

          expect(event.tab?.transition_method, TabTransitionMethod.swipe);
          expect(event.tab?.next_tab_id, 'tab-latest');
        });

        test('a tab_data_load exposes the loaded tab', () {
          final tab = _fixture('${platform}_tab_data_load.json').tab;

          expect(tab?.tab_id, 'tab-for-you');
          expect(tab?.tab_title, 'For You');
          expect(tab?.tab_index, 0);
          expect(tab?.content_count, greaterThan(0));
          expect(tab?.tabs_source_id, isNotEmpty);
          expect(tab?.transition_method, isNull);
        });

        test('is absent from events outside a tabs player', () {
          expect(_fixture('${platform}_widget_load.json').tab, isNull);
        });
      });

      group('user', () {
        test('carries experiments and followed entities', () {
          final user = _fixture('${platform}_widget_load.json').user;

          expect(user.external_user_id, 'fixture-user');
          expect(user.experiments, isEmpty);
          expect(user.followed_entities, hasLength(1));
          expect(user.followed_entities?.single.id, 'fixture-team');
          expect(user.followed_entities?.single.entity_type, 'team');
          expect(user.logout_trigger, isNull);
        });

        test('a user_logout carries the trigger and the outgoing user', () {
          final event = _fixture('${platform}_user_logout.json');

          expect(event.event_category, EventCategory.global);
          expect(event.event_action, EventActionName.userLogout);
          expect(event.user.logout_trigger, LogoutTrigger.logout);
          expect(event.user.external_user_id, 'fixture-user');
        });
      });

      group('referring', () {
        test('a player opened from a tabs widget lists both surfaces', () {
          final referring =
              _fixture('${platform}_moment_start_from_tabs_widget.json')
                  .referring;

          expect(referring.origin_source_type,
              [OriginSourceType.widget, OriginSourceType.momentsTab]);
          expect(referring.origin_source_id,
              ['home-moments-tabs-row', 'tab-for-you']);
          expect(referring.origin_source_id?.length,
              referring.origin_source_type?.length);
          expect(referring.data_source_type,
              isNot(ReferringDataSourceType.unknown));
          expect(referring.data_source_type, isNotNull);
        });

        test('a widget_load names the data source and no origin', () {
          final referring = _fixture('${platform}_widget_load.json').referring;

          expect(referring.data_source_type,
              ReferringDataSourceType.labelExpression);
          expect(referring.data_source_value, isNotEmpty);
          expect(referring.origin_source_id, isNull);
          expect(referring.origin_source_type, isNull);
        });

        test('an empty block decodes with every field null', () {
          final referring = _fixture('${platform}_user_logout.json').referring;

          expect(referring, const ReferringPropsAnalytics());
        });
      });

      test('sdk_type names the platform', () {
        expect(_fixture('${platform}_widget_load.json').sdk_type,
            '$platform-flutter');
      });
    });
  }

  group('referring', () {
    test('a player opened from a plain widget lists one surface', () {
      final referring =
          _fixture('android_moment_start_from_widget.json').referring;

      expect(referring.origin_source_type, [OriginSourceType.widget]);
      expect(referring.origin_source_id, hasLength(1));
    });
  });

  group('user', () {
    // Recorded on the Android emulator: a user was stored, then the app
    // relaunched with restoreExternalUserId off.
    test('a launch that drops the stored user logs the init trigger', () {
      final event = _fixture('android_user_logout_on_init.json');

      expect(event.event_action, EventActionName.userLogout);
      expect(event.user.logout_trigger, LogoutTrigger.init);
      expect(event.user.external_user_id, 'toggle-user');
    });
  });

  group('search', () {
    // Recorded on both platforms: open search, submit "goal", open a result.
    for (final platform in const ['ios', 'android']) {
    test('$platform: a recorded search flow shares one session and query', () {
      final opened = _fixture('${platform}_search_opened.json');
      final submitted = _fixture('${platform}_search_query_submitted.json');
      final shown = _fixture('${platform}_search_results_shown.json');
      final clicked = _fixture('${platform}_search_result_clicked.json');

      expect(opened.event_category, EventCategory.search);
      expect(opened.event_action, EventActionName.searchOpened);
      expect(submitted.event_action, EventActionName.searchQuerySubmitted);
      expect(shown.event_action, EventActionName.searchResultsShown);
      expect(clicked.event_action, EventActionName.searchResultClicked);

      final session = opened.search?.search_session_id;
      expect(session, isNotEmpty);
      for (final e in [submitted, shown, clicked]) {
        expect(e.search?.search_session_id, session);
      }
      expect(submitted.search?.query, 'goal');
      expect(shown.search?.query_id, submitted.search?.query_id);
      expect(shown.search?.total_results, 11);
      expect(shown.search?.story_ids, hasLength(2));
      expect(clicked.search?.content_type, ContentType.moments);
      expect(clicked.search?.position, isNonNegative);
    });

    test('$platform: a player opened from a result carries the search IDs', () {
      final clicked = _fixture('${platform}_search_result_clicked.json');
      final start = _fixture('${platform}_moment_start_from_search.json');

      expect(start.referring.data_source_type, ReferringDataSourceType.search);
      expect(start.referring.search_session_id,
          clicked.search?.search_session_id);
      expect(start.referring.search_query_id, clicked.search?.query_id);
      expect(start.referring.search_result_id, clicked.search?.result_id);
    });
    }

    // The shape both natives declare.
    test('decodes the declared fields', () {
      final search = SearchProps.fromJson({
        'search_session_id': 's',
        'query_id': 'q',
        'query': 'goal',
        'result_id': 'r',
        'moment_ids': ['m1', 'm2'],
        'total_results': 2,
        'content_id': 'm1',
        'content_type': 'moment',
        'position': 0,
      });

      expect(search.query, 'goal');
      expect(search.moment_ids, ['m1', 'm2']);
      expect(search.story_ids, isNull);
      expect(search.content_type, ContentType.moments);
      expect(search.position, 0);
    });
  });
}
