// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_playback_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeStoriesPlaybackConfigurationImpl
    _$$BlazeStoriesPlaybackConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeStoriesPlaybackConfigurationImpl(
          bufferingSpinnerDelayMs:
              (json['bufferingSpinnerDelayMs'] as num?)?.toInt(),
          ads: json['ads'] == null
              ? null
              : BlazeStoriesAdsPlaybackConfiguration.fromJson(
                  json['ads'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeStoriesPlaybackConfigurationImplToJson(
        _$BlazeStoriesPlaybackConfigurationImpl instance) =>
    <String, dynamic>{
      'bufferingSpinnerDelayMs': instance.bufferingSpinnerDelayMs,
      'ads': instance.ads?.toJson(),
    };

_$BlazeStoriesAdsPlaybackConfigurationImpl
    _$$BlazeStoriesAdsPlaybackConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeStoriesAdsPlaybackConfigurationImpl(
          enablePreroll: json['enablePreroll'] as bool?,
        );

Map<String, dynamic> _$$BlazeStoriesAdsPlaybackConfigurationImplToJson(
        _$BlazeStoriesAdsPlaybackConfigurationImpl instance) =>
    <String, dynamic>{
      'enablePreroll': instance.enablePreroll,
    };
