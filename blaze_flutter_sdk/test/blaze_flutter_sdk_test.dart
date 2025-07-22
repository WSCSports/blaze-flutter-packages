import 'package:flutter_test/flutter_test.dart';
import 'package:blaze_flutter_sdk/src/blaze_flutter_sdk_platform_interface.dart';
import 'package:blaze_flutter_sdk/src/blaze_flutter_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBlazeFlutterSdkPlatform
    with MockPlatformInterfaceMixin
    implements BlazeFlutterSdkPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BlazeFlutterSdkPlatform initialPlatform =
      BlazeFlutterSdkPlatform.instance;

  test('$MethodChannelBlazeFlutterSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBlazeFlutterSdk>());
  });

  test('getPlatformVersion', () async {
    BlazeFlutterSdk blazeFlutterSdkPlugin = BlazeFlutterSdk();
    MockBlazeFlutterSdkPlatform fakePlatform = MockBlazeFlutterSdkPlatform();
    BlazeFlutterSdkPlatform.instance = fakePlatform;

    expect(await blazeFlutterSdkPlugin.getPlatformVersion(), '42');
  });
}
