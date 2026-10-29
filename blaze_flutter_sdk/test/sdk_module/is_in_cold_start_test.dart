import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  test('isInColdStart sends playerType and returns native bool', () async {
    final calls = mockSdkModule({'isInColdStart': true});

    expect(await BlazeSDK.isInColdStart(BlazePlayerType.moments), isTrue);
    expect(calls.single.method, 'isInColdStart');
    expect(calls.single.arguments, {'playerType': 'moments'});
  });

  test('isInColdStart passes null through', () async {
    final calls = mockSdkModule({'isInColdStart': null});

    expect(await BlazeSDK.isInColdStart(BlazePlayerType.videos), isNull);
    expect(calls.single.arguments, {'playerType': 'videos'});
  });

  test('isInColdStart sends every player type by its wire name', () async {
    final calls = mockSdkModule({'isInColdStart': false});

    for (final type in BlazePlayerType.values) {
      await BlazeSDK.isInColdStart(type);
    }
    expect(calls.map((c) => c.arguments['playerType']),
        ['moments', 'stories', 'videos']);
  });
}
