import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  test('setLiquidGlassEnabled sends the flag', () async {
    final calls = mockSdkModule({});

    await BlazeSDK.setLiquidGlassEnabled(true);

    expect(calls.single.method, 'setLiquidGlassEnabled');
    expect(calls.single.arguments, {'isEnabled': true});
  });

  test('isLiquidGlassEnabled returns the native value', () async {
    final calls = mockSdkModule({'isLiquidGlassEnabled': true});

    expect(await BlazeSDK.isLiquidGlassEnabled(), isTrue);
    expect(calls.single.method, 'isLiquidGlassEnabled');
  });
}
