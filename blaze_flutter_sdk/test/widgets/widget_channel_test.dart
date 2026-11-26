import 'dart:convert';

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

const _payload = <String, Object?>{
  'playerType': 'moments',
  'sourceId': 's',
  'reason': 'GeoBlocked',
  'contentParams': {
    'contentIndex': 0,
    'contentId': 'c',
    'extraInfo': <String, String>{},
    'contentThumbnailUrl': null,
  },
};

Widget _row(String widgetId, void Function() onRestricted) => SizedBox(
      height: 100,
      child: BlazeMomentsRowView(
        widgetId: widgetId,
        dataSource: const BlazeDataSourceType.ids(ids: ['1']),
        presetWidgetLayout:
            BlazeWidgetLayoutPreset.moments_row_verticalRectangles,
        widgetDelegate:
            BlazeWidgetDelegate(onContentRestricted: (_) => onRestricted()),
      ),
    );

void main() {
  testWidgets('two mounted widgets with one widgetId have separate channels',
      (tester) async {
    final created = capturePlatformViewCreationParams();
    var first = 0;
    var second = 0;
    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: Column(children: [
        _row('same-label', () => first++),
        _row('same-label', () => second++),
      ]),
    ));

    expect(created, hasLength(2));
    expect(created[0]['widgetId'], 'same-label');
    expect(created[1]['widgetId'], 'same-label');
    expect(created[0]['channelId'], isNot(created[1]['channelId']));

    // An event from the first native widget reaches the first delegate only.
    await TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .handlePlatformMessage(
      'blaze-widget-${created[0]['channelId']}',
      const StandardMethodCodec().encodeMethodCall(
          MethodCall('onContentRestricted', json.encode(_payload))),
      (_) {},
    );

    expect(first, 1);
    expect(second, 0);
  });
}
