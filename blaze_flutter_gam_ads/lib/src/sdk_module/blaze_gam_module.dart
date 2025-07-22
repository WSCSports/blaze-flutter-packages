import 'package:flutter/services.dart';
import '../blaze_gam_delegate.dart';

class BlazeGAM {
  static final _BlazeGAMInternal _sdk = _BlazeGAMInternal._instance;

  /// Enable GAM Custom Native Ads with configuration and delegate support
  static Future<void> enableCustomNativeAds({
    BlazeGAMCustomNativeAdsDefaultConfig? defaultAdConfig,
    BlazeGAMCustomNativeAdsDelegate? delegate,
  }) =>
      _sdk.enableCustomNativeAds(
        defaultAdConfig: defaultAdConfig,
        delegate: delegate,
      );

  /// Disable GAM Custom Native Ads
  static Future<void> disableCustomNativeAds() => _sdk.disableCustomNativeAds();
}

class _BlazeGAMInternal {
  // Private instance variable to hold the singleton instance.
  static final _BlazeGAMInternal _instance = _BlazeGAMInternal._();

  final MethodChannel _channel = const MethodChannel('blaze-gam-module');

  // Private constructor to prevent instantiation.
  _BlazeGAMInternal._();

  /// Enable GAM Custom Native Ads with full options support
  Future<void> enableCustomNativeAds({
    BlazeGAMCustomNativeAdsDefaultConfig? defaultAdConfig,
    BlazeGAMCustomNativeAdsDelegate? delegate,
  }) async {
    // Register the delegate if provided
    BlazeGlobalDelegateHelper.registerDelegate(delegate);

    // Convert defaultAdConfig to Map for native side
    final Map<String, dynamic> params = {};
    if (defaultAdConfig != null) {
      params['defaultAdConfig'] = defaultAdConfig.toJson();
    }

    return _channel.invokeMethod('enableCustomNativeAds', params);
  }

  /// Disable GAM Custom Native Ads
  Future<void> disableCustomNativeAds() async {
    // Unregister the delegate
    BlazeGlobalDelegateHelper.registerDelegate(null);

    return _channel.invokeMethod('disableCustomNativeAds', {});
  }
}
