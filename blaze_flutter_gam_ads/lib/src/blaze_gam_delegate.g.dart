// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_gam_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeGAMDelegateOnAdEventParamsImpl
    _$$BlazeGAMDelegateOnAdEventParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeGAMDelegateOnAdEventParamsImpl(
          eventType:
              $enumDecode(_$BlazeOnAdEventEventTypeEnumMap, json['eventType']),
        );

Map<String, dynamic> _$$BlazeGAMDelegateOnAdEventParamsImplToJson(
        _$BlazeGAMDelegateOnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': _$BlazeOnAdEventEventTypeEnumMap[instance.eventType]!,
    };

const _$BlazeOnAdEventEventTypeEnumMap = {
  BlazeOnAdEventEventType.openedAd: 'openedAd',
  BlazeOnAdEventEventType.adPageStart: 'adPageStart',
  BlazeOnAdEventEventType.adPageFirstQuarter: 'adPageFirstQuarter',
  BlazeOnAdEventEventType.adPageThird: 'adPageThird',
  BlazeOnAdEventEventType.adPageMid: 'adPageMid',
  BlazeOnAdEventEventType.adPageComplete: 'adPageComplete',
  BlazeOnAdEventEventType.pausedAdPage: 'pausedAdPage',
  BlazeOnAdEventEventType.resumedAdPage: 'resumedAdPage',
  BlazeOnAdEventEventType.ctaClicked: 'ctaClicked',
};

_$BlazeGAMCustomNativeAdRequestInfoImpl
    _$$BlazeGAMCustomNativeAdRequestInfoImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeGAMCustomNativeAdRequestInfoImpl(
          adUnitId: json['adUnitId'] as String,
          templateId: json['templateId'] as String,
          adContext: Map<String, String>.from(json['adContext'] as Map),
          extraInfo: BlazeContentExtraInfo.fromJson(
              json['extraInfo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeGAMCustomNativeAdRequestInfoImplToJson(
        _$BlazeGAMCustomNativeAdRequestInfoImpl instance) =>
    <String, dynamic>{
      'adUnitId': instance.adUnitId,
      'templateId': instance.templateId,
      'adContext': instance.adContext,
      'extraInfo': instance.extraInfo.toJson(),
    };

_$BlazeGAMCustomNativeAdRequestParamsImpl
    _$$BlazeGAMCustomNativeAdRequestParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeGAMCustomNativeAdRequestParamsImpl(
          requestDataInfo: BlazeGAMCustomNativeAdRequestInfo.fromJson(
              json['requestDataInfo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeGAMCustomNativeAdRequestParamsImplToJson(
        _$BlazeGAMCustomNativeAdRequestParamsImpl instance) =>
    <String, dynamic>{
      'requestDataInfo': instance.requestDataInfo.toJson(),
    };

_$BlazeGAMCustomNativeAdsDefaultConfigImpl
    _$$BlazeGAMCustomNativeAdsDefaultConfigImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeGAMCustomNativeAdsDefaultConfigImpl(
          adUnit: json['adUnit'] as String,
          templateId: json['templateId'] as String,
        );

Map<String, dynamic> _$$BlazeGAMCustomNativeAdsDefaultConfigImplToJson(
        _$BlazeGAMCustomNativeAdsDefaultConfigImpl instance) =>
    <String, dynamic>{
      'adUnit': instance.adUnit,
      'templateId': instance.templateId,
    };

_$BlazeGAMOnAdErrorParamsImpl _$$BlazeGAMOnAdErrorParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeGAMOnAdErrorParamsImpl(
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$$BlazeGAMOnAdErrorParamsImplToJson(
        _$BlazeGAMOnAdErrorParamsImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

_$BlazeGAMOnAdEventParamsDataImpl _$$BlazeGAMOnAdEventParamsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeGAMOnAdEventParamsDataImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$BlazeGAMOnAdEventParamsDataImplToJson(
        _$BlazeGAMOnAdEventParamsDataImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };
