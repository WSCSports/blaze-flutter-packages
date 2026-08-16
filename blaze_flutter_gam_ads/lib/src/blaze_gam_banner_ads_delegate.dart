import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blaze_gam_banner_ads_delegate.freezed.dart';
part 'blaze_gam_banner_ads_delegate.g.dart';

//---------------- Public ----------------//

@JsonEnum()
enum BlazeBannerAdEventType {
  @JsonValue('adLoaded')
  adLoaded,
  @JsonValue('adClicked')
  adClicked,
  @JsonValue('adImpression')
  adImpression,
  @JsonValue('adRequested')
  adRequested,
}

@freezed
class BlazeGAMBannerAdsDelegateOnAdEventParams
    with _$BlazeGAMBannerAdsDelegateOnAdEventParams {
  const factory BlazeGAMBannerAdsDelegateOnAdEventParams({
    required BlazeBannerAdEventType eventType,

    /// Contextual metadata about the content surrounding the banner, as
    /// delivered by the native SDK alongside the event. `null` when the native
    /// SDK attached no extra info to this event.
    BlazeContentExtraInfo? extraInfo,
  }) = _BlazeGAMBannerAdsDelegateOnAdEventParams;

  factory BlazeGAMBannerAdsDelegateOnAdEventParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeGAMBannerAdsDelegateOnAdEventParamsFromJson(json);
}

@freezed
class BlazeGAMBannerAdsDelegateOnAdErrorParams
    with _$BlazeGAMBannerAdsDelegateOnAdErrorParams {
  const factory BlazeGAMBannerAdsDelegateOnAdErrorParams({
    /// The error message associated with the error.
    required String errorMessage,

    /// Contextual metadata about the content surrounding the failed banner, as
    /// delivered by the native SDK alongside the error. `null` when the native
    /// SDK attached no extra info to this error.
    BlazeContentExtraInfo? extraInfo,
  }) = _BlazeGAMBannerAdsDelegateOnAdErrorParams;

  factory BlazeGAMBannerAdsDelegateOnAdErrorParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeGAMBannerAdsDelegateOnAdErrorParamsFromJson(json);
}

/// GAM Custom Native Ads Delegate
class BlazeGAMBannerAdsDelegate {
  /// This function will be triggered every time an event on an ad will happen.
  ///
  /// [params] The data associated with the ad involved in the event.
  final void Function(BlazeGAMBannerAdsDelegateOnAdEventParams params)?
      onGAMBannerAdsAdEvent;

  /// Called when an error occurs during ad loading or playback.
  ///
  /// [params] The error message and the data associated with the ad involved in
  /// the error.
  final void Function(BlazeGAMBannerAdsDelegateOnAdErrorParams params)?
      onGAMBannerAdsAdError;

  const BlazeGAMBannerAdsDelegate({
    this.onGAMBannerAdsAdEvent,
    this.onGAMBannerAdsAdError,
  });
}

//---------------- Internal ----------------//

@freezed
class _OnAdEventParams with _$OnAdEventParams {
  const factory _OnAdEventParams({
    required String eventType,
    required BlazeContentExtraInfo? extraInfo,
  }) = __OnAdEventParams;

  factory _OnAdEventParams.fromJson(Map<String, dynamic> json) =>
      _$OnAdEventParamsFromJson(json);
}

class BlazeBannerAdsDelegateHelper {
  static void registerDelegate(BlazeGAMBannerAdsDelegate? delegate) {
    // Register event listeners for regular events
    _onGAMBannerAdsAdEvent(delegate?.onGAMBannerAdsAdEvent);
    _onGAMBannerAdsAdError(delegate?.onGAMBannerAdsAdError);
  }

  static void _onGAMBannerAdsAdEvent(
    void Function(BlazeGAMBannerAdsDelegateOnAdEventParams params)? callback,
  ) {
    const methodName = 'BlazeGAM.onGAMBannerAdsAdEvent';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            // Parse using freezed object
            final eventData = _OnAdEventParams.fromJson(args.params);

            // Convert string to enum using generated helper
            final eventType = $enumDecode(
                _$BlazeBannerAdEventTypeEnumMap, eventData.eventType);

            final eventParams = BlazeGAMBannerAdsDelegateOnAdEventParams(
              eventType: eventType,
              extraInfo: eventData.extraInfo,
            );
            callback(eventParams);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onGAMBannerAdsAdEvent',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onGAMBannerAdsAdError(
    void Function(BlazeGAMBannerAdsDelegateOnAdErrorParams params)? callback,
  ) {
    const methodName = 'BlazeGAM.onGAMBannerAdsAdError';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            // Parse using freezed object
            final errorData =
                BlazeGAMBannerAdsDelegateOnAdErrorParams.fromJson(args.params);
            callback(errorData);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onGAMBannerAdsAdError',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }
}
