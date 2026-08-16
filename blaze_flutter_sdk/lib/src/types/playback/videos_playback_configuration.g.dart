// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_playback_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazePipConfigurationImpl _$$BlazePipConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePipConfigurationImpl(
      enterPipOnAppBackground: json['enterPipOnAppBackground'] as bool?,
    );

Map<String, dynamic> _$$BlazePipConfigurationImplToJson(
        _$BlazePipConfigurationImpl instance) =>
    <String, dynamic>{
      'enterPipOnAppBackground': instance.enterPipOnAppBackground,
    };

_$BlazeVideosPlaybackConfigurationImpl
    _$$BlazeVideosPlaybackConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeVideosPlaybackConfigurationImpl(
          multiAspectRatio: json['multiAspectRatio'] as bool?,
          shouldOpenInLandscape: json['shouldOpenInLandscape'] as bool,
          pipConfiguration: json['pipConfiguration'] == null
              ? null
              : BlazePipConfiguration.fromJson(
                  json['pipConfiguration'] as Map<String, dynamic>),
          bufferingSpinnerDelayMs:
              (json['bufferingSpinnerDelayMs'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$BlazeVideosPlaybackConfigurationImplToJson(
        _$BlazeVideosPlaybackConfigurationImpl instance) =>
    <String, dynamic>{
      'multiAspectRatio': instance.multiAspectRatio,
      'shouldOpenInLandscape': instance.shouldOpenInLandscape,
      'pipConfiguration': instance.pipConfiguration?.toJson(),
      'bufferingSpinnerDelayMs': instance.bufferingSpinnerDelayMs,
    };
