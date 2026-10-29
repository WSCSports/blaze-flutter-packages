import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

const _payload = <String, Object?>{
  'playerType': 'stories',
  'sourceId': 's',
  'interactionId': 'i',
  'interactionType': 'poll',
  'url': 'myapp://x',
};

const _dataSource = BlazeDataSourceType.ids(ids: ['1']);

void main() {
  test('BlazeOnTriggerInteractionLinkParams decodes the native payload', () {
    final p = BlazeOnTriggerInteractionLinkParams.fromJson(_payload);

    expect(p.playerType, BlazePlayerType.stories);
    expect(p.sourceId, 's');
    expect(p.interactionId, 'i');
    expect(p.interactionType, 'poll');
    expect(p.url, 'myapp://x');
  });

  group('onTriggerInteractionLink dispatch', () {
    testWidgets('widget channel calls widgetDelegate.onTriggerInteractionLink',
        (tester) async {
      capturePlatformViewCreationParams();
      BlazeOnTriggerInteractionLinkParams? received;
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: BlazeStoriesRowView(
          widgetId: 'w-link',
          dataSource: _dataSource,
          presetWidgetLayout: BlazeWidgetLayoutPreset.stories_row_circles,
          widgetDelegate: BlazeWidgetDelegate(
              onTriggerInteractionLink: (p) => received = p),
        ),
      ));

      await sendWidgetEvent('w-link', 'onTriggerInteractionLink', _payload);

      expect(received?.url, 'myapp://x');
    });

    testWidgets(
        'tabs event calls momentsContainerTabsDelegate.onTriggerInteractionLink',
        (tester) async {
      capturePlatformViewCreationParams();
      BlazeOnTriggerInteractionLinkParams? received;
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: BlazeMomentsRowView.tabs(
          widgetId: 'w-tabs-link',
          tabsConfiguration: const BlazeMomentsWidgetTabsConfiguration(
            containerSourceId: 'c',
            tabs: [
              BlazeMomentsContainerTabItem(
                  containerId: 't1', title: 'T1', dataSource: _dataSource),
            ],
          ),
          presetWidgetLayout:
              BlazeWidgetLayoutPreset.moments_row_verticalRectangles,
          momentsContainerTabsDelegate: BlazePlayerContainerTabsDelegate(
              onTriggerInteractionLink: (p) => received = p),
        ),
      ));

      await sendWidgetEvent('w-tabs-link',
          'onMomentsContainerTabsTriggerInteractionLink', _payload);

      expect(received?.interactionId, 'i');
    });

    test(
        'async-bridge event calls playerEntryPointDelegate.onTriggerInteractionLink',
        () async {
      BlazeOnTriggerInteractionLinkParams? received;
      BlazeSDK.setPlayerEntryPointDelegate(BlazePlayerEntryPointDelegate(
          onTriggerInteractionLink: (p) => received = p));
      addTearDown(() => BlazeSDK.setPlayerEntryPointDelegate(null));

      await sendAsyncBridgeEvent('Blaze.onTriggerInteractionLink', _payload);

      expect(received?.interactionType, 'poll');
    });
  });

  group('interactionLinkHandling', () {
    Widget row({BlazeInteractionLinkHandleType? handling}) => Directionality(
          textDirection: TextDirection.ltr,
          child: BlazeStoriesRowView(
            widgetId: 'w-link-handling',
            dataSource: _dataSource,
            presetWidgetLayout: BlazeWidgetLayoutPreset.stories_row_circles,
            interactionLinkHandling: handling,
          ),
        );

    testWidgets('creation param is present and null when unset',
        (tester) async {
      final created = capturePlatformViewCreationParams();

      await tester.pumpWidget(row());

      expect(created.single.containsKey('interactionLinkHandling'), isTrue);
      expect(created.single['interactionLinkHandling'], isNull);
    });

    testWidgets('creation param carries the enum name when set',
        (tester) async {
      final created = capturePlatformViewCreationParams();

      await tester.pumpWidget(row(handling: BlazeInteractionLinkHandleType.web));

      expect(created.single['interactionLinkHandling'], 'web');
    });

    test('initSDK sends the enum name when set and omits it when unset',
        () async {
      final calls = mockSdkModule({'initSDK': null});

      await BlazeSDK.initSDK(
          apiKey: 'k',
          interactionLinkHandling: BlazeInteractionLinkHandleType.handled);
      await BlazeSDK.initSDK(apiKey: 'k');

      final inits = calls.where((c) => c.method == 'initSDK').toList();
      expect(inits[0].arguments['interactionLinkHandling'], 'handled');
      expect((inits[1].arguments as Map).containsKey('interactionLinkHandling'),
          isFalse);
    });
  });
}
