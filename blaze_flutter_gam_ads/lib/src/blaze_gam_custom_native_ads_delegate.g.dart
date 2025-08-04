// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_gam_custom_native_ads_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeGAMDelegateOnAdEventParamsImpl
    _$$BlazeGAMDelegateOnAdEventParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeGAMDelegateOnAdEventParamsImpl(
          eventType: $enumDecode(
              _$BlazeCustomNativeAdEventTypeEnumMap, json['eventType']),
        );

Map<String, dynamic> _$$BlazeGAMDelegateOnAdEventParamsImplToJson(
        _$BlazeGAMDelegateOnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': _$BlazeCustomNativeAdEventTypeEnumMap[instance.eventType]!,
    };

const _$BlazeCustomNativeAdEventTypeEnumMap = {
  BlazeCustomNativeAdEventType.openedAd: 'openedAd',
  BlazeCustomNativeAdEventType.adPageStart: 'adPageStart',
  BlazeCustomNativeAdEventType.adPageFirstQuarter: 'adPageFirstQuarter',
  BlazeCustomNativeAdEventType.adPageThird: 'adPageThird',
  BlazeCustomNativeAdEventType.adPageMid: 'adPageMid',
  BlazeCustomNativeAdEventType.adPageComplete: 'adPageComplete',
  BlazeCustomNativeAdEventType.pausedAdPage: 'pausedAdPage',
  BlazeCustomNativeAdEventType.resumedAdPage: 'resumedAdPage',
  BlazeCustomNativeAdEventType.ctaClicked: 'ctaClicked',
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

_$_OnAdEventParamsImpl _$$_OnAdEventParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$_OnAdEventParamsImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$_OnAdEventParamsImplToJson(
        _$_OnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };
