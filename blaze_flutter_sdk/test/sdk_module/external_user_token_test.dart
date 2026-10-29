import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  test('setExternalUserToken sends token and policy, returns stored token',
      () async {
    final calls = mockSdkModule({'setExternalUserToken': 'abc'});

    final stored = await BlazeSDK.setExternalUserToken('abc',
        cachedContentPolicy: BlazeFetchedContentPolicy.evict);

    expect(stored, 'abc');
    expect(calls.single.method, 'setExternalUserToken');
    expect(calls.single.arguments,
        {'externalUserToken': 'abc', 'cachedContentPolicy': 'evict'});
  });

  test('setExternalUserToken with null clears the token', () async {
    final calls = mockSdkModule({'setExternalUserToken': null});

    final stored = await BlazeSDK.setExternalUserToken(null,
        cachedContentPolicy: BlazeFetchedContentPolicy.keep);

    expect(stored, isNull);
    expect(calls.single.arguments,
        {'externalUserToken': null, 'cachedContentPolicy': 'keep'});
  });

  test('setExternalUserToken surfaces native errors', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(sdkModuleChannel, (call) async {
      throw PlatformException(code: 'BLAZE_FLUTTER_ERROR', message: 'boom');
    });
    addTearDown(() => TestDefaultBinaryMessengerBinding
        .instance.defaultBinaryMessenger
        .setMockMethodCallHandler(sdkModuleChannel, null));

    await expectLater(
        BlazeSDK.setExternalUserToken('abc',
            cachedContentPolicy: BlazeFetchedContentPolicy.keep),
        throwsA(anything));
  });

  test('initSDK forwards externalUserToken when set', () async {
    final calls = mockSdkModule({'initSDK': null});

    await BlazeSDK.initSDK(apiKey: 'k', externalUserToken: 't');

    final init = calls.singleWhere((c) => c.method == 'initSDK');
    expect(init.arguments['externalUserToken'], 't');
  });

  test('initSDK omits externalUserToken when unset', () async {
    final calls = mockSdkModule({'initSDK': null});

    await BlazeSDK.initSDK(apiKey: 'k');

    final init = calls.singleWhere((c) => c.method == 'initSDK');
    expect((init.arguments as Map).containsKey('externalUserToken'), isFalse);
  });
}
