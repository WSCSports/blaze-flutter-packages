import 'package:flutter_test/flutter_test.dart';
import 'package:blaze_flutter_gam_ads/src/blaze_flutter_sdk_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('MethodChannelBlazeFlutterSdk can be instantiated', () {
    final platform = MethodChannelBlazeFlutterSdk();
    expect(platform, isNotNull);
    expect(platform, isA<MethodChannelBlazeFlutterSdk>());
  });
}
