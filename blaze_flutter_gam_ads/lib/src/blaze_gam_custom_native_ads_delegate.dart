import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blaze_gam_custom_native_ads_delegate.freezed.dart';
part 'blaze_gam_custom_native_ads_delegate.g.dart';

//---------------- Public ----------------//

@JsonEnum()
enum BlazeCustomNativeAdEventType {
  @JsonValue('openedAd')
  openedAd,
  @JsonValue('adPageStart')
  adPageStart,
  @JsonValue('adPageFirstQuarter')
  adPageFirstQuarter,
  @JsonValue('adPageThird')
  adPageThird,
  @JsonValue('adPageMid')
  adPageMid,
  @JsonValue('adPageComplete')
  adPageComplete,
  @JsonValue('pausedAdPage')
  pausedAdPage,
  @JsonValue('resumedAdPage')
  resumedAdPage,
  @JsonValue('ctaClicked')
  ctaClicked,
}

@freezed
class BlazeGAMCustomNativeAdsDelegateOnAdEventParams
    with _$BlazeGAMCustomNativeAdsDelegateOnAdEventParams {
  const factory BlazeGAMCustomNativeAdsDelegateOnAdEventParams({
    required BlazeCustomNativeAdEventType eventType,
  }) = _BlazeGAMDelegateOnAdEventParams;

  factory BlazeGAMCustomNativeAdsDelegateOnAdEventParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeGAMCustomNativeAdsDelegateOnAdEventParamsFromJson(json);
}

@freezed
class BlazeGAMCustomNativeAdRequestInfo
    with _$BlazeGAMCustomNativeAdRequestInfo {
  const factory BlazeGAMCustomNativeAdRequestInfo({
    required String adUnitId,
    required String templateId,
    required Map<String, String> adContext,
    required BlazeContentExtraInfo extraInfo,
  }) = _BlazeGAMCustomNativeAdRequestInfo;

  factory BlazeGAMCustomNativeAdRequestInfo.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeGAMCustomNativeAdRequestInfoFromJson(json);
}

@freezed
class BlazeGAMCustomNativeAdRequestParams
    with _$BlazeGAMCustomNativeAdRequestParams {
  const factory BlazeGAMCustomNativeAdRequestParams({
    required BlazeGAMCustomNativeAdRequestInfo requestDataInfo,
  }) = _BlazeGAMCustomNativeAdRequestParams;

  factory BlazeGAMCustomNativeAdRequestParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeGAMCustomNativeAdRequestParamsFromJson(json);
}

@freezed
class BlazeGAMCustomNativeAdsDefaultConfig
    with _$BlazeGAMCustomNativeAdsDefaultConfig {
  const factory BlazeGAMCustomNativeAdsDefaultConfig({
    /// Ad Unit in the GAM system.
    required String adUnit,

    /// Template ID in the GAM system.
    required String templateId,
  }) = _BlazeGAMCustomNativeAdsDefaultConfig;

  factory BlazeGAMCustomNativeAdsDefaultConfig.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeGAMCustomNativeAdsDefaultConfigFromJson(json);
}

/// GAM Custom Native Ads Delegate
class BlazeGAMCustomNativeAdsDelegate {
  /// This function will be triggered every time an event on an ad will happen.
  ///
  /// [params] The data associated with the ad involved in the event.
  final void Function(BlazeGAMCustomNativeAdsDelegateOnAdEventParams params)?
      onGAMAdEvent;

  /// Called when an error occurs during ad loading or playback.
  ///
  /// [errorMessage] The error message associated with the error.
  final void Function(String errorMessage)? onGAMAdError;

  /// Returns custom targeting properties to be added to the GAM ad request.
  /// This is called asynchronously from the native side right before an ad request.
  ///
  /// [params] The request data information provides additional info regarding the current ad request.
  /// Returns a dictionary of key-value pairs to be added to the ad request
  final Future<Map<String, String>> Function(
      BlazeGAMCustomNativeAdRequestParams params)? customGAMTargetingProperties;

  /// Returns custom targeting properties to be added to the GAM ad request.
  /// This is called asynchronously from the native side right before an ad request.
  ///
  /// [params] The request data information provides additional info regarding the current ad request.
  /// Returns a custom publisher-provided identifier (PPID) for more granular targeting.
  final Future<String?> Function(BlazeGAMCustomNativeAdRequestParams params)?
      publisherProvidedId;

  /// Provides additional network extras through GADExtras for customizing ad requests.
  /// Use this to set network-specific parameters that can enhance ad targeting or behavior.
  ///
  /// [params] The request data information provides additional info regarding the current ad request.
  /// Returns a dictionary of key-value pairs to be added to the ad request
  final Future<Map<String, dynamic>> Function(
      BlazeGAMCustomNativeAdRequestParams params)? networkExtras;

  const BlazeGAMCustomNativeAdsDelegate({
    this.onGAMAdEvent,
    this.onGAMAdError,
    this.customGAMTargetingProperties,
    this.publisherProvidedId,
    this.networkExtras,
  });
}

//---------------- Internal ----------------//

@freezed
class _OnAdErrorParams with _$OnAdErrorParams {
  const factory _OnAdErrorParams({
    required String errorMessage,
  }) = __OnAdErrorParams;

  factory _OnAdErrorParams.fromJson(Map<String, dynamic> json) =>
      _$OnAdErrorParamsFromJson(json);
}

@freezed
class _OnAdEventParams with _$OnAdEventParams {
  const factory _OnAdEventParams({
    required String eventType,
  }) = __OnAdEventParams;

  factory _OnAdEventParams.fromJson(Map<String, dynamic> json) =>
      _$OnAdEventParamsFromJson(json);
}

class BlazeCustomNativeAdsDelegateHelper {
  static void registerDelegate(BlazeGAMCustomNativeAdsDelegate? delegate) {
    // Register event listeners for regular events
    _onGAMAdEvent(delegate?.onGAMAdEvent);
    _onGAMAdError(delegate?.onGAMAdError);
    _customGAMTargetingProperties(delegate?.customGAMTargetingProperties);
    _publisherProvidedId(delegate?.publisherProvidedId);
    _networkExtras(delegate?.networkExtras);
  }

  static void _onGAMAdEvent(
    void Function(BlazeGAMCustomNativeAdsDelegateOnAdEventParams params)?
        callback,
  ) {
    const methodName = 'BlazeGAM.onAdEvent';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            // Parse using freezed object
            final eventData = _OnAdEventParams.fromJson(args.params);

            // Convert string to enum using generated helper
            final eventType = $enumDecode(
                _$BlazeCustomNativeAdEventTypeEnumMap, eventData.eventType);

            final eventParams = BlazeGAMCustomNativeAdsDelegateOnAdEventParams(
                eventType: eventType);
            callback(eventParams);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onGAMAdEvent',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onGAMAdError(
    void Function(String errorMessage)? callback,
  ) {
    const methodName = 'BlazeGAM.onAdError';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            // Parse using freezed object
            final errorData = _OnAdErrorParams.fromJson(args.params);
            callback(errorData.errorMessage);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onGAMAdError',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _customGAMTargetingProperties(
    Future<Map<String, String>> Function(
            BlazeGAMCustomNativeAdRequestParams params)?
        callback,
  ) {
    const eventName = 'BlazeGAM.customGAMTargetingProperties';
    // Register async method handler
    if (callback != null) {
      BlazeAsyncBridge.registerDartMethod(
        eventName,
        (args) async {
          try {
            final requestParams =
                BlazeGAMCustomNativeAdRequestParams.fromJson(args.params);
            final result = await callback(requestParams);
            return result;
          } catch (error, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              error,
              stackTrace,
              context: 'customGAMTargetingProperties',
            );
            return <String, String>{};
          }
        },
      );
    } else {
      // Unregister the handler if no delegate is provided
      BlazeAsyncBridge.unregisterDartMethod(eventName);
    }
  }

  static void _publisherProvidedId(
    Future<String?> Function(BlazeGAMCustomNativeAdRequestParams params)?
        callback,
  ) {
    const eventName = 'BlazeGAM.publisherProvidedId';
    // Register async method handler
    if (callback != null) {
      BlazeAsyncBridge.registerDartMethod(
        eventName,
        (args) async {
          try {
            final requestParams =
                BlazeGAMCustomNativeAdRequestParams.fromJson(args.params);
            final result = await callback(requestParams);
            return result;
          } catch (error, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              error,
              stackTrace,
              context: 'publisherProvidedId',
            );
            return null;
          }
        },
      );
    } else {
      // Unregister the handler if no delegate is provided
      BlazeAsyncBridge.unregisterDartMethod(eventName);
    }
  }

  static void _networkExtras(
    Future<Map<String, dynamic>> Function(
            BlazeGAMCustomNativeAdRequestParams params)?
        callback,
  ) {
    const eventName = 'BlazeGAM.networkExtras';
    // Register async method handler
    if (callback != null) {
      BlazeAsyncBridge.registerDartMethod(
        eventName,
        (args) async {
          try {
            final requestParams =
                BlazeGAMCustomNativeAdRequestParams.fromJson(args.params);
            final result = await callback(requestParams);
            return result;
          } catch (error, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              error,
              stackTrace,
              context: 'networkExtras',
            );
            return <String, dynamic>{};
          }
        },
      );
    } else {
      // Unregister the handler if no delegate is provided
      BlazeAsyncBridge.unregisterDartMethod(eventName);
    }
  }
}
