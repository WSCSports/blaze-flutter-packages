// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captions_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeCaptionsStyleImpl _$$BlazeCaptionsStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsStyleImpl(
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      textSize: (json['textSize'] as num?)?.toDouble(),
      positioning: json['positioning'] == null
          ? null
          : BlazeCaptionsPositioning.fromJson(
              json['positioning'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeCaptionsStyleImplToJson(
        _$BlazeCaptionsStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textSize': instance.textSize,
      'positioning': instance.positioning?.toJson(),
    };

_$BlazeCaptionsPositioningImpl _$$BlazeCaptionsPositioningImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsPositioningImpl(
      xPosition: json['xPosition'] == null
          ? null
          : BlazeCaptionsXPosition.fromJson(
              json['xPosition'] as Map<String, dynamic>),
      yPosition: json['yPosition'] == null
          ? null
          : BlazeCaptionsYPosition.fromJson(
              json['yPosition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeCaptionsPositioningImplToJson(
        _$BlazeCaptionsPositioningImpl instance) =>
    <String, dynamic>{
      'xPosition': instance.xPosition?.toJson(),
      'yPosition': instance.yPosition?.toJson(),
    };

_$BlazeCaptionsXPositionStartImpl _$$BlazeCaptionsXPositionStartImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsXPositionStartImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BlazeCaptionsXPositionStartImplToJson(
        _$BlazeCaptionsXPositionStartImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$BlazeCaptionsXPositionCenterImpl _$$BlazeCaptionsXPositionCenterImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsXPositionCenterImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BlazeCaptionsXPositionCenterImplToJson(
        _$BlazeCaptionsXPositionCenterImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$BlazeCaptionsXPositionCustomImpl _$$BlazeCaptionsXPositionCustomImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsXPositionCustomImpl(
      offsetPercent: (json['offsetPercent'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BlazeCaptionsXPositionCustomImplToJson(
        _$BlazeCaptionsXPositionCustomImpl instance) =>
    <String, dynamic>{
      'offsetPercent': instance.offsetPercent,
      'type': instance.$type,
    };

_$BlazeCaptionsYPositionTopImpl _$$BlazeCaptionsYPositionTopImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsYPositionTopImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BlazeCaptionsYPositionTopImplToJson(
        _$BlazeCaptionsYPositionTopImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$BlazeCaptionsYPositionCenterImpl _$$BlazeCaptionsYPositionCenterImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsYPositionCenterImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BlazeCaptionsYPositionCenterImplToJson(
        _$BlazeCaptionsYPositionCenterImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$BlazeCaptionsYPositionBottomImpl _$$BlazeCaptionsYPositionBottomImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsYPositionBottomImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BlazeCaptionsYPositionBottomImplToJson(
        _$BlazeCaptionsYPositionBottomImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$BlazeCaptionsYPositionCustomImpl _$$BlazeCaptionsYPositionCustomImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCaptionsYPositionCustomImpl(
      offsetPercent: (json['offsetPercent'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BlazeCaptionsYPositionCustomImplToJson(
        _$BlazeCaptionsYPositionCustomImpl instance) =>
    <String, dynamic>{
      'offsetPercent': instance.offsetPercent,
      'type': instance.$type,
    };
