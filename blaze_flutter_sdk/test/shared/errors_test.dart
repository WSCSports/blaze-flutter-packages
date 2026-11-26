import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  test('a convertible error keeps the native domain and reason strings', () {
    final error = tryParseBlazeError(PlatformException(
        code: 'BLAZE_CONVERTIBLE_ERROR',
        details:
            '{"domain":"initialization","reason":"applicationNotInitialised"}'));

    expect(error?.domain, 'initialization');
    expect(error?.reason, 'applicationNotInitialised');
  });

  test('a missing reason stays null', () {
    final error = tryParseBlazeError(PlatformException(
        code: 'BLAZE_CONVERTIBLE_ERROR', details: '{"domain":"general"}'));

    expect(error?.reason, isNull);
  });

  test('setExternalUserId throws a BlazeException carrying the reason',
      () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(sdkModuleChannel, (call) async {
      throw PlatformException(
          code: 'BLAZE_CONVERTIBLE_ERROR',
          details:
              '{"domain":"userManagement","reason":"failedToSetExternalUserId"}');
    });
    addTearDown(() => TestDefaultBinaryMessengerBinding
        .instance.defaultBinaryMessenger
        .setMockMethodCallHandler(sdkModuleChannel, null));

    await expectLater(
        BlazeSDK.setExternalUserId('user-1'),
        throwsA(isA<BlazeException>().having((e) => e.blazeError.reason,
            'reason', 'failedToSetExternalUserId')));
  });
}
