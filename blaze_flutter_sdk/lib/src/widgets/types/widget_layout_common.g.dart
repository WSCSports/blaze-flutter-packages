// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_layout_common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeMarginsImpl _$$BlazeMarginsImplFromJson(Map<String, dynamic> json) =>
    _$BlazeMarginsImpl(
      top: (json['top'] as num?)?.toDouble(),
      leading: (json['leading'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
      trailing: (json['trailing'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BlazeMarginsImplToJson(_$BlazeMarginsImpl instance) =>
    <String, dynamic>{
      'top': instance.top,
      'leading': instance.leading,
      'bottom': instance.bottom,
      'trailing': instance.trailing,
    };

_$BlazeFontImpl _$$BlazeFontImplFromJson(Map<String, dynamic> json) =>
    _$BlazeFontImpl(
      fontName: json['fontName'] as String?,
      fontFileName: json['fontFileName'] as String?,
    );

Map<String, dynamic> _$$BlazeFontImplToJson(_$BlazeFontImpl instance) =>
    <String, dynamic>{
      'fontName': instance.fontName,
      'fontFileName': instance.fontFileName,
    };

_$BlazeImageImpl _$$BlazeImageImplFromJson(Map<String, dynamic> json) =>
    _$BlazeImageImpl(
      imageName: json['imageName'] as String?,
    );

Map<String, dynamic> _$$BlazeImageImplToJson(_$BlazeImageImpl instance) =>
    <String, dynamic>{
      'imageName': instance.imageName,
    };

_$BlazeObjectPositioningImpl _$$BlazeObjectPositioningImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeObjectPositioningImpl(
      xPosition:
          $enumDecodeNullable(_$BlazeObjectXPositionEnumMap, json['xPosition']),
      yPosition:
          $enumDecodeNullable(_$BlazeObjectYPositionEnumMap, json['yPosition']),
    );

Map<String, dynamic> _$$BlazeObjectPositioningImplToJson(
        _$BlazeObjectPositioningImpl instance) =>
    <String, dynamic>{
      'xPosition': _$BlazeObjectXPositionEnumMap[instance.xPosition],
      'yPosition': _$BlazeObjectYPositionEnumMap[instance.yPosition],
    };

const _$BlazeObjectXPositionEnumMap = {
  BlazeObjectXPosition.leadingToLeading: 'LeadingToLeading',
  BlazeObjectXPosition.leadingToTrailing: 'LeadingToTrailing',
  BlazeObjectXPosition.trailingToLeading: 'TrailingToLeading',
  BlazeObjectXPosition.trailingToTrailing: 'TrailingToTrailing',
  BlazeObjectXPosition.centerX: 'CenterX',
  BlazeObjectXPosition.centerToLeading: 'CenterToLeading',
  BlazeObjectXPosition.centerToTrailing: 'CenterToTrailing',
};

const _$BlazeObjectYPositionEnumMap = {
  BlazeObjectYPosition.bottomToTop: 'BottomToTop',
  BlazeObjectYPosition.bottomToBottom: 'BottomToBottom',
  BlazeObjectYPosition.topToBottom: 'TopToBottom',
  BlazeObjectYPosition.topToTop: 'TopToTop',
  BlazeObjectYPosition.centerToTop: 'CenterToTop',
  BlazeObjectYPosition.centerY: 'CenterY',
  BlazeObjectYPosition.centerToBottom: 'CenterToBottom',
};

_$BlazeTitleStyleImpl _$$BlazeTitleStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeTitleStyleImpl(
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      textSize: (json['textSize'] as num?)?.toDouble(),
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
      textColor: json['textColor'] as String?,
      lineHeight: (json['lineHeight'] as num?)?.toDouble(),
      maxLines: (json['maxLines'] as num?)?.toInt(),
      textAlign:
          $enumDecodeNullable(_$BlazeTextAlignEnumMap, json['textAlign']),
    );

Map<String, dynamic> _$$BlazeTitleStyleImplToJson(
        _$BlazeTitleStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textSize': instance.textSize,
      'letterSpacing': instance.letterSpacing,
      'textColor': instance.textColor,
      'lineHeight': instance.lineHeight,
      'maxLines': instance.maxLines,
      'textAlign': _$BlazeTextAlignEnumMap[instance.textAlign],
    };

const _$BlazeTextAlignEnumMap = {
  BlazeTextAlign.start: 'Start',
  BlazeTextAlign.center: 'Center',
  BlazeTextAlign.end: 'End',
};
