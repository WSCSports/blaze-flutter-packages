import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  test('logout invokes the logout channel method', () async {
    final calls = mockSdkModule({'logout': null});

    await BlazeSDK.logout();

    expect(calls.single.method, 'logout');
  });

  test('setExternalUserId sends a blank value unchanged', () async {
    final calls = mockSdkModule({'setExternalUserId': null});

    await BlazeSDK.setExternalUserId(' ');

    expect(calls.single.method, 'setExternalUserId');
    expect(calls.single.arguments, {'externalUserId': ' '});
  });

  test('initSDK omits restoreExternalUserId when null', () async {
    final calls = mockSdkModule({'initSDK': null});

    await BlazeSDK.initSDK(apiKey: 'k');

    final init = calls.firstWhere((c) => c.method == 'initSDK');
    expect((init.arguments as Map).containsKey('restoreExternalUserId'),
        isFalse);
  });

  test('initSDK sends restoreExternalUserId when set', () async {
    final calls = mockSdkModule({'initSDK': null});

    await BlazeSDK.initSDK(apiKey: 'k', restoreExternalUserId: false);

    final init = calls.firstWhere((c) => c.method == 'initSDK');
    expect((init.arguments as Map)['restoreExternalUserId'], false);
  });
}
