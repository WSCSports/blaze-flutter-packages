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
          extraInfo: json['extraInfo'] == null
              ? null
              : BlazeContentExtraInfo.fromJson(
                  json['extraInfo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeGAMBannerAdsDelegateOnAdEventParamsImplToJson(
        _$BlazeGAMBannerAdsDelegateOnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': _$BlazeBannerAdEventTypeEnumMap[instance.eventType]!,
      'extraInfo': instance.extraInfo?.toJson(),
    };

const _$BlazeBannerAdEventTypeEnumMap = {
  BlazeBannerAdEventType.adLoaded: 'adLoaded',
  BlazeBannerAdEventType.adClicked: 'adClicked',
  BlazeBannerAdEventType.adImpression: 'adImpression',
  BlazeBannerAdEventType.adRequested: 'adRequested',
};

_$BlazeGAMBannerAdsDelegateOnAdErrorParamsImpl
    _$$BlazeGAMBannerAdsDelegateOnAdErrorParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeGAMBannerAdsDelegateOnAdErrorParamsImpl(
          errorMessage: json['errorMessage'] as String,
          extraInfo: json['extraInfo'] == null
              ? null
              : BlazeContentExtraInfo.fromJson(
                  json['extraInfo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeGAMBannerAdsDelegateOnAdErrorParamsImplToJson(
        _$BlazeGAMBannerAdsDelegateOnAdErrorParamsImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'extraInfo': instance.extraInfo?.toJson(),
    };

_$_OnAdEventParamsImpl _$$_OnAdEventParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$_OnAdEventParamsImpl(
      eventType: json['eventType'] as String,
      extraInfo: json['extraInfo'] == null
          ? null
          : BlazeContentExtraInfo.fromJson(
              json['extraInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OnAdEventParamsImplToJson(
        _$_OnAdEventParamsImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'extraInfo': instance.extraInfo?.toJson(),
    };
