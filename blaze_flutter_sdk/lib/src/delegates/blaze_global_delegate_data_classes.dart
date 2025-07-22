import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../shared/blaze_analytics_event.dart';

part 'blaze_global_delegate_data_classes.freezed.dart';
part 'blaze_global_delegate_data_classes.g.dart';

/// Error interface - represents data from BlazeError
@freezed
class BlazeError with _$BlazeError {
  const factory BlazeError({
    required String domain,
    required String reason,
    required String message,
  }) = _BlazeError;

  factory BlazeError.fromJson(Map<String, dynamic> json) =>
      _$BlazeErrorFromJson(json);
}

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
