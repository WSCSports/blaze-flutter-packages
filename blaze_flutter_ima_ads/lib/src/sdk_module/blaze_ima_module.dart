import 'package:flutter/services.dart';
import '../blaze_ima_delegate.dart';

class BlazeIMA {
  static final _BlazeIMAInternal _sdk = _BlazeIMAInternal._instance;

  /// Enable IMA ads with delegate support
  static Future<void> enableAds({
    BlazeIMADelegate? delegate,
  }) =>
      _sdk.enableAds(delegate: delegate);

  /// Disable IMA ads
  static Future<void> disableAds() => _sdk.disableAds();
}

class _BlazeIMAInternal {
  // Private instance variable to hold the singleton instance.
  static final _BlazeIMAInternal _instance = _BlazeIMAInternal._();

  final MethodChannel _channel = const MethodChannel('blaze-ima-module');

  // Private constructor to prevent instantiation.
  _BlazeIMAInternal._();

  /// Enable IMA ads with delegate support
  Future<void> enableAds({
    BlazeIMADelegate? delegate,
  }) async {
    // Register the delegate if provided
    BlazeIMADelegateHelper.registerDelegate(delegate);

    return _channel.invokeMethod('enableAds', {});
  }

  /// Disable IMA ads
  Future<void> disableAds() async {
    // Unregister the delegate
    BlazeIMADelegateHelper.registerDelegate(null);

    return _channel.invokeMethod('disableAds', {});
  }
}
