// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_ima_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeIMASettingsImpl _$$BlazeIMASettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeIMASettingsImpl(
      language: json['language'] as String?,
      ppid: json['ppid'] as String?,
      sessionId: json['sessionId'] as String?,
    );

Map<String, dynamic> _$$BlazeIMASettingsImplToJson(
        _$BlazeIMASettingsImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'ppid': instance.ppid,
      'sessionId': instance.sessionId,
    };

_$BlazeIMAAdRequestInfoImpl _$$BlazeIMAAdRequestInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeIMAAdRequestInfoImpl(
      extraInfo: BlazeContentExtraInfo.fromJson(
          json['extraInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeIMAAdRequestInfoImplToJson(
        _$BlazeIMAAdRequestInfoImpl instance) =>
    <String, dynamic>{
      'extraInfo': instance.extraInfo.toJson(),
    };

_$BlazeIMAAdRequestParamsImpl _$$BlazeIMAAdRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeIMAAdRequestParamsImpl(
      requestDataInfo: BlazeIMAAdRequestInfo.fromJson(
          json['requestDataInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeIMAAdRequestParamsImplToJson(
        _$BlazeIMAAdRequestParamsImpl instance) =>
    <String, dynamic>{
      'requestDataInfo': instance.requestDataInfo.toJson(),
    };

_$BlazeIMADelegateOnAdEventParamsImpl
    _$$BlazeIMADelegateOnAdEventParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeIMADelegateOnAdEventParamsImpl(
          eventType: $enumDecode(
              _$BlazeIMAOnAdEventEventTypeEnumMap, json['eventType']),
        );

Map<String, dynamic> _$$BlazeIMADelegateOnAdEventParamsImplToJson(
        _$BlazeIMADelegateOnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': _$BlazeIMAOnAdEventEventTypeEnumMap[instance.eventType]!,
    };

const _$BlazeIMAOnAdEventEventTypeEnumMap = {
  BlazeIMAOnAdEventEventType.adStarted: 'adStarted',
  BlazeIMAOnAdEventEventType.allAdsCompleted: 'allAdsCompleted',
  BlazeIMAOnAdEventEventType.adClicked: 'adClicked',
  BlazeIMAOnAdEventEventType.adCompleted: 'adCompleted',
  BlazeIMAOnAdEventEventType.adLoaded: 'adLoaded',
  BlazeIMAOnAdEventEventType.adPaused: 'adPaused',
  BlazeIMAOnAdEventEventType.adResumed: 'adResumed',
  BlazeIMAOnAdEventEventType.adSkipped: 'adSkipped',
  BlazeIMAOnAdEventEventType.adTapped: 'adTapped',
  BlazeIMAOnAdEventEventType.adFirstQuartile: 'adFirstQuartile',
  BlazeIMAOnAdEventEventType.adMidpoint: 'adMidpoint',
  BlazeIMAOnAdEventEventType.adThirdQuartile: 'adThirdQuartile',
  BlazeIMAOnAdEventEventType.adRequested: 'adRequested',
};

_$BlazeIMAOnAdEventParamsDataImpl _$$BlazeIMAOnAdEventParamsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeIMAOnAdEventParamsDataImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$BlazeIMAOnAdEventParamsDataImplToJson(
        _$BlazeIMAOnAdEventParamsDataImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$BlazeIMAOnAdErrorParamsImpl _$$BlazeIMAOnAdErrorParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeIMAOnAdErrorParamsImpl(
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$$BlazeIMAOnAdErrorParamsImplToJson(
        _$BlazeIMAOnAdErrorParamsImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };
