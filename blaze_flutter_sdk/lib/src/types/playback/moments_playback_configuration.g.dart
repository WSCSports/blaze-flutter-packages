// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moments_playback_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeMomentsLoopBehaviorInfiniteLoopImpl
    _$$BlazeMomentsLoopBehaviorInfiniteLoopImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsLoopBehaviorInfiniteLoopImpl(
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$BlazeMomentsLoopBehaviorInfiniteLoopImplToJson(
        _$BlazeMomentsLoopBehaviorInfiniteLoopImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl
    _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl(
          numberOfPlays: (json['numberOfPlays'] as num).toInt(),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplToJson(
        _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl instance) =>
    <String, dynamic>{
      'numberOfPlays': instance.numberOfPlays,
      'type': instance.$type,
    };

_$BlazeMomentsPlaybackConfigurationImpl
    _$$BlazeMomentsPlaybackConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsPlaybackConfigurationImpl(
          loopBehavior: json['loopBehavior'] == null
              ? null
              : BlazeMomentsLoopBehavior.fromJson(
                  json['loopBehavior'] as Map<String, dynamic>),
          bufferingSpinnerDelayMs:
              (json['bufferingSpinnerDelayMs'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$BlazeMomentsPlaybackConfigurationImplToJson(
        _$BlazeMomentsPlaybackConfigurationImpl instance) =>
    <String, dynamic>{
      'loopBehavior': instance.loopBehavior?.toJson(),
      'bufferingSpinnerDelayMs': instance.bufferingSpinnerDelayMs,
    };
