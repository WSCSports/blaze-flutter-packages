import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'blaze_flutter_sdk_method_channel.dart';

abstract class BlazeFlutterSdkPlatform extends PlatformInterface {
  /// Constructs a BlazeFlutterSdkPlatform.
  BlazeFlutterSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static BlazeFlutterSdkPlatform _instance = MethodChannelBlazeFlutterSdk();

  /// The default instance of [BlazeFlutterSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelBlazeFlutterSdk].
  static BlazeFlutterSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BlazeFlutterSdkPlatform] when
  /// they register themselves.
  static set instance(BlazeFlutterSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

class BlazeFlutterSdk {
  Future<String?> getPlatformVersion() {
    return BlazeFlutterSdkPlatform.instance.getPlatformVersion();
  }
}
