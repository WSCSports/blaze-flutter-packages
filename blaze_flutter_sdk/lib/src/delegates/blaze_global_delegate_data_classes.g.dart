// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_global_delegate_data_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeOnEventTriggeredParamsImpl _$$BlazeOnEventTriggeredParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeOnEventTriggeredParamsImpl(
      event:
          BlazeAnalyticsEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeOnEventTriggeredParamsImplToJson(
        _$BlazeOnEventTriggeredParamsImpl instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
    };

_$BlazeOnErrorThrownParamsImpl _$$BlazeOnErrorThrownParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeOnErrorThrownParamsImpl(
      error: BlazeError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeOnErrorThrownParamsImplToJson(
        _$BlazeOnErrorThrownParamsImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

_$BlazeOnEventTriggeredInternalDataImpl
    _$$BlazeOnEventTriggeredInternalDataImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeOnEventTriggeredInternalDataImpl(
          eventData: json['eventData'] as String,
        );

Map<String, dynamic> _$$BlazeOnEventTriggeredInternalDataImplToJson(
        _$BlazeOnEventTriggeredInternalDataImpl instance) =>
    <String, dynamic>{
      'eventData': instance.eventData,
    };
