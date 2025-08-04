// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_gam_banner_ads_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeGAMBannerAdsDelegateOnAdEventParamsImpl
    _$$BlazeGAMBannerAdsDelegateOnAdEventParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeGAMBannerAdsDelegateOnAdEventParamsImpl(
          eventType:
              $enumDecode(_$BlazeBannerAdEventTypeEnumMap, json['eventType']),
        );

Map<String, dynamic> _$$BlazeGAMBannerAdsDelegateOnAdEventParamsImplToJson(
        _$BlazeGAMBannerAdsDelegateOnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': _$BlazeBannerAdEventTypeEnumMap[instance.eventType]!,
    };

const _$BlazeBannerAdEventTypeEnumMap = {
  BlazeBannerAdEventType.adLoaded: 'adLoaded',
  BlazeBannerAdEventType.adClicked: 'adClicked',
  BlazeBannerAdEventType.adImpression: 'adImpression',
  BlazeBannerAdEventType.adRequested: 'adRequested',
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
