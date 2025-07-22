// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_player_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlazeReactFirstTimeSlideCTAStyle _$BlazeReactFirstTimeSlideCTAStyleFromJson(
        Map<String, dynamic> json) =>
    BlazeReactFirstTimeSlideCTAStyle(
      title: json['title'] as String?,
      backgroundColor: json['backgroundColor'] == null
          ? null
          : BlazeColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      textColor: json['textColor'] == null
          ? null
          : BlazeColor.fromJson(json['textColor'] as Map<String, dynamic>),
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      textSize: (json['textSize'] as num?)?.toDouble(),
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BlazeReactFirstTimeSlideCTAStyleToJson(
        BlazeReactFirstTimeSlideCTAStyle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'backgroundColor': instance.backgroundColor?.toJson(),
      'textColor': instance.textColor?.toJson(),
      'font': instance.font?.toJson(),
      'textSize': instance.textSize,
      'cornerRadius': instance.cornerRadius,
    };

BlazeReactFirstTimeSlideInstructionStyle
    _$BlazeReactFirstTimeSlideInstructionStyleFromJson(
            Map<String, dynamic> json) =>
        BlazeReactFirstTimeSlideInstructionStyle(
          headerText: json['headerText'] == null
              ? null
              : BlazeReactFirstTimeSlideTextStyle.fromJson(
                  json['headerText'] as Map<String, dynamic>),
          descriptionText: json['descriptionText'] == null
              ? null
              : BlazeReactFirstTimeSlideTextStyle.fromJson(
                  json['descriptionText'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BlazeReactFirstTimeSlideInstructionStyleToJson(
        BlazeReactFirstTimeSlideInstructionStyle instance) =>
    <String, dynamic>{
      'headerText': instance.headerText?.toJson(),
      'descriptionText': instance.descriptionText?.toJson(),
    };

BlazeReactFirstTimeSlideTextStyle _$BlazeReactFirstTimeSlideTextStyleFromJson(
        Map<String, dynamic> json) =>
    BlazeReactFirstTimeSlideTextStyle(
      text: json['text'] as String?,
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      textSize: (json['textSize'] as num?)?.toDouble(),
      textColor: json['textColor'] == null
          ? null
          : BlazeColor.fromJson(json['textColor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlazeReactFirstTimeSlideTextStyleToJson(
        BlazeReactFirstTimeSlideTextStyle instance) =>
    <String, dynamic>{
      'text': instance.text,
      'font': instance.font?.toJson(),
      'textSize': instance.textSize,
      'textColor': instance.textColor?.toJson(),
    };

BlazeReactSeekBarStyle _$BlazeReactSeekBarStyleFromJson(
        Map<String, dynamic> json) =>
    BlazeReactSeekBarStyle(
      isVisible: json['isVisible'] as bool?,
      backgroundColor: json['backgroundColor'] as String?,
      progressColor: json['progressColor'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
      thumbColor: json['thumbColor'] as String?,
      thumbImage: json['thumbImage'] == null
          ? null
          : BlazeImage.fromJson(json['thumbImage'] as Map<String, dynamic>),
      thumbSize: (json['thumbSize'] as num?)?.toDouble(),
      isThumbVisible: json['isThumbVisible'] as bool?,
    );

Map<String, dynamic> _$BlazeReactSeekBarStyleToJson(
        BlazeReactSeekBarStyle instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'backgroundColor': instance.backgroundColor,
      'progressColor': instance.progressColor,
      'height': instance.height,
      'cornerRadius': instance.cornerRadius,
      'thumbColor': instance.thumbColor,
      'thumbImage': instance.thumbImage?.toJson(),
      'thumbSize': instance.thumbSize,
      'isThumbVisible': instance.isThumbVisible,
    };
