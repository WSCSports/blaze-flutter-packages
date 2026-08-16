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

_$BlazeIMAAdInfoImpl _$$BlazeIMAAdInfoImplFromJson(Map<String, dynamic> json) =>
    _$BlazeIMAAdInfoImpl(
      adId: json['adId'] as String?,
      adTitle: json['adTitle'] as String?,
      adDescription: json['adDescription'] as String?,
      adSystem: json['adSystem'] as String?,
      isSkippable: json['isSkippable'] as bool?,
      skipTimeOffset: (json['skipTimeOffset'] as num?)?.toDouble(),
      adDuration: (json['adDuration'] as num?)?.toDouble(),
      advertiserName: json['advertiserName'] as String?,
      adTag: json['adTag'] as String?,
      extraInfo: json['extraInfo'] == null
          ? null
          : BlazeContentExtraInfo.fromJson(
              json['extraInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeIMAAdInfoImplToJson(
        _$BlazeIMAAdInfoImpl instance) =>
    <String, dynamic>{
      'adId': instance.adId,
      'adTitle': instance.adTitle,
      'adDescription': instance.adDescription,
      'adSystem': instance.adSystem,
      'isSkippable': instance.isSkippable,
      'skipTimeOffset': instance.skipTimeOffset,
      'adDuration': instance.adDuration,
      'advertiserName': instance.advertiserName,
      'adTag': instance.adTag,
      'extraInfo': instance.extraInfo?.toJson(),
    };

_$BlazeIMADelegateOnAdEventParamsImpl
    _$$BlazeIMADelegateOnAdEventParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeIMADelegateOnAdEventParamsImpl(
          eventType: $enumDecode(
              _$BlazeIMAOnAdEventEventTypeEnumMap, json['eventType']),
          adInfo: json['adInfo'] == null
              ? null
              : BlazeIMAAdInfo.fromJson(json['adInfo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeIMADelegateOnAdEventParamsImplToJson(
        _$BlazeIMADelegateOnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': _$BlazeIMAOnAdEventEventTypeEnumMap[instance.eventType]!,
      'adInfo': instance.adInfo?.toJson(),
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

_$_OnAdEventParamsImpl _$$_OnAdEventParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$_OnAdEventParamsImpl(
      eventType: json['eventType'] as String,
      adInfo: json['adInfo'] == null
          ? null
          : BlazeIMAAdInfo.fromJson(json['adInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OnAdEventParamsImplToJson(
        _$_OnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'adInfo': instance.adInfo?.toJson(),
    };

_$_OnAdErrorParamsImpl _$$_OnAdErrorParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$_OnAdErrorParamsImpl(
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$$_OnAdErrorParamsImplToJson(
        _$_OnAdErrorParamsImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };
