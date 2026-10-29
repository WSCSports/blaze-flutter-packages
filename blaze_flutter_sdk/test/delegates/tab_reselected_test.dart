import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

const _dataSource = BlazeDataSourceType.ids(ids: ['1']);

Widget _tabsRow(String widgetId,
        {BlazePlayerContainerTabsDelegate? delegate,
        BlazeMomentsWidgetController? controller}) =>
    Directionality(
      textDirection: TextDirection.ltr,
      child: BlazeMomentsRowView.tabs(
        widgetId: widgetId,
        tabsConfiguration: const BlazeMomentsWidgetTabsConfiguration(
          containerSourceId: 'c',
          tabs: [
            BlazeMomentsContainerTabItem(
                containerId: 't1', title: 'T1', dataSource: _dataSource),
            BlazeMomentsContainerTabItem(
                containerId: 't2', title: 'T2', dataSource: _dataSource),
          ],
        ),
        presetWidgetLayout:
            BlazeWidgetLayoutPreset.moments_row_verticalRectangles,
        momentsContainerTabsDelegate: delegate,
        controller: controller,
      ),
    );

void main() {
  testWidgets('a reselect event calls momentsContainerTabsDelegate.onTabReselected',
      (tester) async {
    capturePlatformViewCreationParams();
    BlazeOnTabSelectedParams? reselected;
    BlazeOnTabSelectedParams? selected;
    await tester.pumpWidget(_tabsRow('w-reselect',
        delegate: BlazePlayerContainerTabsDelegate(
          onTabReselected: (p) => reselected = p,
          onTabSelected: (p) => selected = p,
        )));

    await sendWidgetEvent('w-reselect', 'onMomentsContainerTabsTabReselected',
        {'playerType': 'moments', 'sourceId': 's', 'tabIndex': 1});

    expect(reselected?.tabIndex, 1);
    expect(reselected?.sourceId, 's');
    expect(selected, isNull, reason: 'reselect must not fire onTabSelected');
  });

  testWidgets('reloadTab and reloadTabByContainerId reach the widget channel',
      (tester) async {
    capturePlatformViewCreationParams();
    final calls = <MethodCall>[];
    const channel = MethodChannel('blaze-widget-w-reload');
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
      calls.add(call);
      return null;
    });
    addTearDown(() => TestDefaultBinaryMessengerBinding
        .instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null));
    final controller = BlazeMomentsWidgetController();
    await tester.pumpWidget(_tabsRow('w-reload', controller: controller));
    await tester.pumpAndSettle();

    controller.reloadTab(at: 2);
    controller.reloadTabByContainerId(containerId: 't1');
    await tester.pump();

    expect(calls.map((c) => c.method), ['reloadTab', 'reloadTabByContainerId']);
    expect(calls[0].arguments, {'at': 2});
    expect(calls[1].arguments, {'containerId': 't1'});
  });
}
