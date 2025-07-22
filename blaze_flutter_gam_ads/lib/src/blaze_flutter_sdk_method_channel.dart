import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'blaze_flutter_sdk_platform_interface.dart';

/// An implementation of [BlazeFlutterSdkPlatform] that uses method channels.
class MethodChannelBlazeFlutterSdk extends BlazeFlutterSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('blaze_flutter_gam');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
