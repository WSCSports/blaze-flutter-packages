import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

BlazeCustomActionButton _button(String id) => BlazeCustomActionButton(
      customParams: BlazeCustomActionButtonParams(id: id, name: id),
    );

BlazeStoryPlayerStyle _storyStyle(List<BlazeCustomActionButton>? buttons) =>
    BlazeStoryPlayerStyle(
      buttons: BlazeStoryPlayerButtonsStyle(customActionButtons: buttons),
    );

BlazeMomentsPlayerStyle _momentsStyle(List<BlazeCustomActionButton>? buttons) =>
    BlazeMomentsPlayerStyle(
      buttons: BlazeMomentsPlayerButtonsStyle(customActionButtons: buttons),
    );

final _threeButtons = [_button('a'), _button('b'), _button('c')];
final _duplicateIds = [_button('a'), _button('a')];
final _twoButtons = [_button('a'), _button('b')];

const _dataSource = BlazeDataSourceType.ids(ids: ['1']);

const _preset = BlazeWidgetLayoutPreset.moments_row_verticalRectangles;

Widget _host(Widget row) => Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(height: 100, child: row),
    );

Widget _momentsRow(BlazeMomentsPlayerStyle playerStyle) =>
    _host(BlazeMomentsRowView(
      widgetId: 'buttons-limit',
      dataSource: _dataSource,
      presetWidgetLayout: _preset,
      playerStyle: playerStyle,
    ));

Widget _momentsTabsRow(BlazeMomentsPlayerStyle playerStyle) =>
    _host(BlazeMomentsRowView.tabs(
      widgetId: 'buttons-limit-tabs',
      presetWidgetLayout: _preset,
      tabsConfiguration: BlazeMomentsWidgetTabsConfiguration(
        containerSourceId: 'tabs',
        tabs: const [],
        playerStyle: playerStyle,
      ),
    ));

void main() {
  group('play calls and initSDK', () {
    final invalidCalls = <String, Future<void> Function()>{
      'playStory, three buttons': () => BlazeSDK.playStory(
          storyId: 's', playerStyle: _storyStyle(_threeButtons)),
      'playStory, duplicate id': () => BlazeSDK.playStory(
          storyId: 's', playerStyle: _storyStyle(_duplicateIds)),
      'playStories, three buttons': () => BlazeSDK.playStories(
          dataSource: _dataSource, playerStyle: _storyStyle(_threeButtons)),
      'playMoment, three buttons': () => BlazeSDK.playMoment(
          momentId: 'm', playerStyle: _momentsStyle(_threeButtons)),
      'playMoments, duplicate id': () => BlazeSDK.playMoments(
          dataSource: _dataSource, playerStyle: _momentsStyle(_duplicateIds)),
      'initSDK, default story style': () => BlazeSDK.initSDK(
          apiKey: 'k', defaultStoryPlayerStyle: _storyStyle(_threeButtons)),
      'initSDK, default moments style': () => BlazeSDK.initSDK(
          apiKey: 'k', defaultMomentsPlayerStyle: _momentsStyle(_duplicateIds)),
    };

    invalidCalls.forEach((name, call) {
      test('$name fails before native is reached', () async {
        final calls = mockSdkModule({});

        await expectLater(call(), throwsArgumentError);

        expect(calls, isEmpty);
      });
    });

    test('the error names the rule and the offending value', () {
      mockSdkModule({});

      expect(
        BlazeSDK.playMoment(
            momentId: 'm', playerStyle: _momentsStyle(_threeButtons)),
        throwsA(isA<ArgumentError>()
            .having((e) => e.name, 'name', 'customActionButtons')
            .having((e) => '$e', 'text', contains('At most 2'))
            .having((e) => e.invalidValue, 'value', 3)),
      );
      expect(
        BlazeSDK.playStory(
            storyId: 's', playerStyle: _storyStyle(_duplicateIds)),
        throwsA(isA<ArgumentError>()
            .having((e) => '$e', 'text', contains('unique customParams.id'))
            .having((e) => e.invalidValue, 'value', 'a')),
      );
    });

    test('two buttons with different ids reach native', () async {
      final calls = mockSdkModule({});

      await BlazeSDK.playMoments(
          dataSource: _dataSource, playerStyle: _momentsStyle(_twoButtons));

      final buttons = (calls.single.arguments as Map)['playerStyle']['buttons']
          ['customActionButtons'] as List;
      expect(buttons, hasLength(2));
    });

    test('an empty list is sent as an empty list', () async {
      final calls = mockSdkModule({});

      await BlazeSDK.playStory(storyId: 's', playerStyle: _storyStyle([]));

      final buttons =
          (calls.single.arguments as Map)['playerStyle']['buttons'] as Map;
      expect(buttons['customActionButtons'], isEmpty);
    });

    test('an omitted list is sent as null', () async {
      final calls = mockSdkModule({});

      await BlazeSDK.playStory(storyId: 's', playerStyle: _storyStyle(null));

      final buttons =
          (calls.single.arguments as Map)['playerStyle']['buttons'] as Map;
      expect(buttons['customActionButtons'], isNull);
    });
  });

  group('widgets', () {
    testWidgets('a widget playerStyle with three buttons fails',
        (tester) async {
      final created = capturePlatformViewCreationParams();

      await tester.pumpWidget(_momentsRow(_momentsStyle(_threeButtons)));

      expect(tester.takeException(), isArgumentError);
      expect(created, isEmpty);
    });

    testWidgets('a tabs configuration playerStyle with a duplicate id fails',
        (tester) async {
      final created = capturePlatformViewCreationParams();

      await tester.pumpWidget(_momentsTabsRow(_momentsStyle(_duplicateIds)));

      expect(tester.takeException(), isArgumentError);
      expect(created, isEmpty);
    });

    testWidgets('a widget playerStyle with two buttons is created',
        (tester) async {
      final created = capturePlatformViewCreationParams();

      await tester.pumpWidget(_momentsRow(_momentsStyle(_twoButtons)));

      expect(tester.takeException(), isNull);
      expect(created, hasLength(1));
    });
  });
}
