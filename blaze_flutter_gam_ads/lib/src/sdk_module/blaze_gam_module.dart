import 'package:flutter/services.dart';
import '../blaze_gam_banner_ads_delegate.dart';
import '../blaze_gam_custom_native_ads_delegate.dart';

class BlazeGAM {
  static final _BlazeGAMInternal _sdk = _BlazeGAMInternal._instance;

  /// Call this function to enable Google Ads Manager Custom Native ads.
  static Future<void> enableCustomNativeAds({
    BlazeGAMCustomNativeAdsDefaultConfig? defaultAdConfig,
    BlazeGAMCustomNativeAdsDelegate? delegate,
  }) =>
      _sdk.enableCustomNativeAds(
        defaultAdConfig: defaultAdConfig,
        delegate: delegate,
      );

  /// Call this function to disable Google Ads Manager Custom Native ads.
  static Future<void> disableCustomNativeAds() => _sdk.disableCustomNativeAds();

  /// Call this function to enable Google Ads Manager Banner ads.
  static Future<void> enableBannerAds({
    BlazeGAMBannerAdsDelegate? delegate,
  }) =>
      _sdk.enableBannerAds(
        delegate: delegate,
      );

  /// Call this function to disable Google Ads Manager Banner ads.
  static Future<void> disableBannerAds() => _sdk.disableBannerAds();
}

class _BlazeGAMInternal {
  // Private instance variable to hold the singleton instance.
  static final _BlazeGAMInternal _instance = _BlazeGAMInternal._();

  final MethodChannel _channel = const MethodChannel('blaze-gam-module');

  // Private constructor to prevent instantiation.
  _BlazeGAMInternal._();

  Future<void> enableCustomNativeAds({
    BlazeGAMCustomNativeAdsDefaultConfig? defaultAdConfig,
    BlazeGAMCustomNativeAdsDelegate? delegate,
  }) async {
    // Register the delegate if provided
    BlazeCustomNativeAdsDelegateHelper.registerDelegate(delegate);

    // Convert defaultAdConfig to Map for native side
    final Map<String, dynamic> params = {};
    if (defaultAdConfig != null) {
      params['defaultAdConfig'] = defaultAdConfig.toJson();
    }

    return _channel.invokeMethod('enableCustomNativeAds', params);
  }

  Future<void> disableCustomNativeAds() async {
    // Unregister the delegate
    BlazeCustomNativeAdsDelegateHelper.registerDelegate(null);

    return _channel.invokeMethod('disableCustomNativeAds', {});
  }

  Future<void> enableBannerAds({
    BlazeGAMBannerAdsDelegate? delegate,
  }) async {
    // Register the delegate if provided
    BlazeBannerAdsDelegateHelper.registerDelegate(delegate);

    return _channel.invokeMethod('enableBannerAds', {});
  }

  Future<void> disableBannerAds() async {
    // Unregister the delegate
    BlazeBannerAdsDelegateHelper.registerDelegate(null);

    return _channel.invokeMethod('disableBannerAds', {});
  }
}
