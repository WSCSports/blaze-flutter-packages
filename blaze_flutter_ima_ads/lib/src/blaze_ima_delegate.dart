import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blaze_ima_delegate.freezed.dart';
part 'blaze_ima_delegate.g.dart';

//---------------- Public ----------------//

/// Event types for IMA ad events
enum BlazeIMAOnAdEventEventType {
  @JsonValue('adStarted')
  adStarted, // Ad has started.

  @JsonValue('allAdsCompleted')
  allAdsCompleted, // All valid ads managed by the ads manager have completed.

  @JsonValue('adClicked')
  adClicked, // Ad clicked.

  @JsonValue('adCompleted')
  adCompleted, // Single ad has finished.

  @JsonValue('adLoaded')
  adLoaded, // An ad was loaded.

  @JsonValue('adPaused')
  adPaused, // Ad paused.

  @JsonValue('adResumed')
  adResumed, // Ad resumed.

  @JsonValue('adSkipped')
  adSkipped, // Ad has skipped.

  @JsonValue('adTapped')
  adTapped, // Ad tapped.

  @JsonValue('adFirstQuartile')
  adFirstQuartile, // First quartile of a linear ad was reached.

  @JsonValue('adMidpoint')
  adMidpoint, // Midpoint of a linear ad was reached.

  @JsonValue('adThirdQuartile')
  adThirdQuartile, // Third quartile of a linear ad was reached.

  @JsonValue('adRequested')
  adRequested, // Ad Requested.
}

/// IMA settings configuration
@freezed
class BlazeIMASettings with _$BlazeIMASettings {
  const factory BlazeIMASettings({
    String? language,
    String? ppid,
    String? sessionId,
  }) = _BlazeIMASettings;

  factory BlazeIMASettings.fromJson(Map<String, dynamic> json) =>
      _$BlazeIMASettingsFromJson(json);
}

/// Ad request info containing extra content information
@freezed
class BlazeIMAAdRequestInfo with _$BlazeIMAAdRequestInfo {
  const factory BlazeIMAAdRequestInfo({
    required BlazeContentExtraInfo extraInfo,
  }) = _BlazeIMAAdRequestInfo;

  factory BlazeIMAAdRequestInfo.fromJson(Map<String, dynamic> json) =>
      _$BlazeIMAAdRequestInfoFromJson(json);
}

/// Ad request parameters passed to delegate methods
@freezed
class BlazeIMAAdRequestParams with _$BlazeIMAAdRequestParams {
  const factory BlazeIMAAdRequestParams({
    required BlazeIMAAdRequestInfo requestDataInfo,
  }) = _BlazeIMAAdRequestParams;

  factory BlazeIMAAdRequestParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeIMAAdRequestParamsFromJson(json);
}

/// Information about the ad involved in an IMA ad event, as reported by the IMA
/// SDK from the VAST response.
///
/// Every field is optional: for some events Google returns no ad information at
/// all (for example `allAdsCompleted`), and individual fields are absent
/// whenever the VAST response omits them.
@freezed
class BlazeIMAAdInfo with _$BlazeIMAAdInfo {
  const factory BlazeIMAAdInfo({
    /// The unique identifier of the ad as specified in the VAST response.
    String? adId,

    /// The title of the ad provided in the VAST response.
    String? adTitle,

    /// A description of the ad.
    String? adDescription,

    /// Information about the source ad server included in the ad response.
    String? adSystem,

    /// Whether the ad is skippable.
    bool? isSkippable,

    /// The number of seconds of playback before the ad becomes skippable.
    /// Native reports `-1` for non-skippable ads or when unavailable.
    double? skipTimeOffset,

    /// The total duration of the ad in seconds, as provided in the VAST
    /// response.
    double? adDuration,

    /// The name of the advertiser as defined by the serving party.
    String? advertiserName,

    /// The ad tag used to fetch the ad.
    String? adTag,

    /// Contextual metadata about the content surrounding the ad.
    BlazeContentExtraInfo? extraInfo,
  }) = _BlazeIMAAdInfo;

  factory BlazeIMAAdInfo.fromJson(Map<String, dynamic> json) =>
      _$BlazeIMAAdInfoFromJson(json);
}

/// Parameters for IMA ad event callbacks
@freezed
class BlazeIMADelegateOnAdEventParams with _$BlazeIMADelegateOnAdEventParams {
  const factory BlazeIMADelegateOnAdEventParams({
    required BlazeIMAOnAdEventEventType eventType,

    /// Details of the ad this event refers to. `null` when the IMA SDK reported
    /// no ad information for the event.
    BlazeIMAAdInfo? adInfo,
  }) = _BlazeIMADelegateOnAdEventParams;

  factory BlazeIMADelegateOnAdEventParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeIMADelegateOnAdEventParamsFromJson(json);
}

/// IMA delegate interface for handling ad events and providing custom data
class BlazeIMADelegate {
  /// This function will be triggered every time an event on an ad will happen.
  final void Function(BlazeIMADelegateOnAdEventParams params)? onIMAAdEvent;

  /// Called when an error occurs during ad loading or playback.
  final void Function(String errorMessage)? onIMAAdError;

  /// Additional query parameters to be included in the ad tag.
  final Future<Map<String, String>> Function(BlazeIMAAdRequestParams params)?
      additionalIMATagQueryParams;

  /// Custom settings for the IMA SDK.
  final Future<BlazeIMASettings?> Function(BlazeIMAAdRequestParams params)?
      customIMASettings;

  /// Overrides the default ad tag URL with a custom one.
  final Future<String?> Function(BlazeIMAAdRequestParams params)?
      overrideAdTagUrl;

  const BlazeIMADelegate({
    this.onIMAAdEvent,
    this.onIMAAdError,
    this.additionalIMATagQueryParams,
    this.customIMASettings,
    this.overrideAdTagUrl,
  });
}

//---------------- Internal ----------------//

/// Raw event data from native side
@freezed
class _OnAdEventParams with _$OnAdEventParams {
  const factory _OnAdEventParams({
    required String eventType,
    required BlazeIMAAdInfo? adInfo,
  }) = __OnAdEventParams;

  factory _OnAdEventParams.fromJson(Map<String, dynamic> json) =>
      _$OnAdEventParamsFromJson(json);
}

/// Parameters for IMA ad error callbacks
@freezed
class _OnAdErrorParams with _$OnAdErrorParams {
  const factory _OnAdErrorParams({
    required String errorMessage,
  }) = __OnAdErrorParams;

  factory _OnAdErrorParams.fromJson(Map<String, dynamic> json) =>
      _$OnAdErrorParamsFromJson(json);
}

/// Helper class for registering IMA delegate callbacks with AsyncBridge
class BlazeIMADelegateHelper {
  static void registerDelegate(BlazeIMADelegate? delegate) {
    // Register event listeners for regular events
    _onIMAAdEvent(delegate?.onIMAAdEvent);
    _onIMAAdError(delegate?.onIMAAdError);
    _additionalIMATagQueryParams(delegate?.additionalIMATagQueryParams);
    _customIMASettings(delegate?.customIMASettings);
    _overrideAdTagUrl(delegate?.overrideAdTagUrl);
  }

  static void _onIMAAdEvent(
    void Function(BlazeIMADelegateOnAdEventParams params)? callback,
  ) {
    const methodName = 'BlazeIMA.onAdEvent';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            // Parse using freezed object
            final eventData = _OnAdEventParams.fromJson(args.params);

            // Convert string to enum using generated helper
            final eventType = $enumDecode(
                _$BlazeIMAOnAdEventEventTypeEnumMap, eventData.eventType);

            final eventParams = BlazeIMADelegateOnAdEventParams(
              eventType: eventType,
              adInfo: eventData.adInfo,
            );
            callback(eventParams);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onIMAAdEvent',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onIMAAdError(
    void Function(String errorMessage)? callback,
  ) {
    const methodName = 'BlazeIMA.onAdError';
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
              context: 'onIMAAdError',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _additionalIMATagQueryParams(
    Future<Map<String, String>> Function(BlazeIMAAdRequestParams params)?
        callback,
  ) {
    const eventName = 'BlazeIMA.additionalIMATagQueryParams';
    if (callback != null) {
      // Register with automatic type inference
      BlazeAsyncBridge.registerDartMethod(
        eventName,
        (args) async {
          try {
            final requestParams = BlazeIMAAdRequestParams.fromJson(args.params);
            final result = await callback(requestParams);
            return result;
          } catch (error, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              error,
              stackTrace,
              context: 'additionalIMATagQueryParams',
            );
            return <String, String>{};
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartMethod(eventName);
    }
  }

  static void _customIMASettings(
    Future<BlazeIMASettings?> Function(BlazeIMAAdRequestParams params)?
        callback,
  ) {
    const eventName = 'BlazeIMA.customIMASettings';
    if (callback != null) {
      // Register with automatic type inference
      BlazeAsyncBridge.registerDartMethod(
        eventName,
        (args) async {
          try {
            final requestParams = BlazeIMAAdRequestParams.fromJson(args.params);
            final result = await callback(requestParams);
            return result?.toJson();
          } catch (error, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              error,
              stackTrace,
              context: 'customIMASettings',
            );
            return null;
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartMethod(eventName);
    }
  }

  static void _overrideAdTagUrl(
    Future<String?> Function(BlazeIMAAdRequestParams params)? callback,
  ) {
    const eventName = 'BlazeIMA.overrideAdTagUrl';
    if (callback != null) {
      // Register with automatic type inference
      BlazeAsyncBridge.registerDartMethod(
        eventName,
        (args) async {
          try {
            final requestParams = BlazeIMAAdRequestParams.fromJson(args.params);
            final result = await callback(requestParams);
            return result;
          } catch (error, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              error,
              stackTrace,
              context: 'overrideAdTagUrl',
            );
            return null;
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartMethod(eventName);
    }
  }
}
