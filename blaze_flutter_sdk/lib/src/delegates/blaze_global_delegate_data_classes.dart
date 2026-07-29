import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../shared/blaze_analytics_event.dart';
import '../shared/errors/errors.dart';

part 'blaze_global_delegate_data_classes.freezed.dart';
part 'blaze_global_delegate_data_classes.g.dart';

/// Global delegate event triggered parameters
@freezed
class BlazeOnEventTriggeredParams with _$BlazeOnEventTriggeredParams {
  const factory BlazeOnEventTriggeredParams({
    required BlazeAnalyticsEvent event,
  }) = _BlazeOnEventTriggeredParams;

  factory BlazeOnEventTriggeredParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnEventTriggeredParamsFromJson(json);
}

/// Global delegate error thrown parameters
@freezed
class BlazeOnErrorThrownParams with _$BlazeOnErrorThrownParams {
  const factory BlazeOnErrorThrownParams({
    required BlazeError error,
  }) = _BlazeOnErrorThrownParams;

  factory BlazeOnErrorThrownParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnErrorThrownParamsFromJson(json);
}

/// Internal data class for parsing event data from native side
@freezed
class BlazeOnEventTriggeredInternalData
    with _$BlazeOnEventTriggeredInternalData {
  const factory BlazeOnEventTriggeredInternalData({
    required String eventData,
  }) = _BlazeOnEventTriggeredInternalData;

  factory BlazeOnEventTriggeredInternalData.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeOnEventTriggeredInternalDataFromJson(json);
}

/// Request passed to [BlazeGlobalDelegate.playbackModificationHandler] before
/// playing HLS or MP4 content.
@freezed
class BlazePlaybackModificationRequest with _$BlazePlaybackModificationRequest {
  const factory BlazePlaybackModificationRequest({
    /// The original content URL the SDK is about to play.
    required String originalURL,
  }) = _BlazePlaybackModificationRequest;

  factory BlazePlaybackModificationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$BlazePlaybackModificationRequestFromJson(json);
}

/// Response returned from [BlazeGlobalDelegate.playbackModificationHandler]
/// describing the URL that should actually be played.
@freezed
class BlazePlaybackModificationResponse
    with _$BlazePlaybackModificationResponse {
  const factory BlazePlaybackModificationResponse({
    /// The URL to play instead of the original one.
    required String modifiedURL,
  }) = _BlazePlaybackModificationResponse;

  factory BlazePlaybackModificationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$BlazePlaybackModificationResponseFromJson(json);
}
