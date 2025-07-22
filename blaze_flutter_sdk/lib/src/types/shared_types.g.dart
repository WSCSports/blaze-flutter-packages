// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeColorImpl _$$BlazeColorImplFromJson(Map<String, dynamic> json) =>
    _$BlazeColorImpl(
      colorName: json['colorName'] as String?,
      colorFileName: json['colorFileName'] as String?,
    );

Map<String, dynamic> _$$BlazeColorImplToJson(_$BlazeColorImpl instance) =>
    <String, dynamic>{
      'colorName': instance.colorName,
      'colorFileName': instance.colorFileName,
    };

_$BlazeFirstTimeSlideCTAStyleImpl _$$BlazeFirstTimeSlideCTAStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeFirstTimeSlideCTAStyleImpl(
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

Map<String, dynamic> _$$BlazeFirstTimeSlideCTAStyleImplToJson(
        _$BlazeFirstTimeSlideCTAStyleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'backgroundColor': instance.backgroundColor?.toJson(),
      'textColor': instance.textColor?.toJson(),
      'font': instance.font?.toJson(),
      'textSize': instance.textSize,
      'cornerRadius': instance.cornerRadius,
    };

_$BlazePlayerButtonStyleImpl _$$BlazePlayerButtonStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerButtonStyleImpl(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      color: json['color'] as String?,
      isVisible: json['isVisible'] as bool?,
      scaleType:
          $enumDecodeNullable(_$BlazeButtonScaleTypeEnumMap, json['scaleType']),
      isVisibleForAds: json['isVisibleForAds'] as bool?,
      customImage: json['customImage'] == null
          ? null
          : BlazePlayerItemButtonImageStates.fromJson(
              json['customImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazePlayerButtonStyleImplToJson(
        _$BlazePlayerButtonStyleImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'isVisible': instance.isVisible,
      'scaleType': _$BlazeButtonScaleTypeEnumMap[instance.scaleType],
      'isVisibleForAds': instance.isVisibleForAds,
      'customImage': instance.customImage?.toJson(),
    };

const _$BlazeButtonScaleTypeEnumMap = {
  BlazeButtonScaleType.matrix: 'MATRIX',
  BlazeButtonScaleType.fitXY: 'FIT_XY',
  BlazeButtonScaleType.fitStart: 'FIT_START',
  BlazeButtonScaleType.fitCenter: 'FIT_CENTER',
  BlazeButtonScaleType.fitEnd: 'FIT_END',
  BlazeButtonScaleType.center: 'CENTER',
  BlazeButtonScaleType.centerCrop: 'CENTER_CROP',
  BlazeButtonScaleType.centerInside: 'CENTER_INSIDE',
};

_$BlazeFirstTimeSlideInstructionStyleImpl
    _$$BlazeFirstTimeSlideInstructionStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeFirstTimeSlideInstructionStyleImpl(
          headerText: json['headerText'] == null
              ? null
              : BlazeFirstTimeSlideTextStyle.fromJson(
                  json['headerText'] as Map<String, dynamic>),
          descriptionText: json['descriptionText'] == null
              ? null
              : BlazeFirstTimeSlideTextStyle.fromJson(
                  json['descriptionText'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeFirstTimeSlideInstructionStyleImplToJson(
        _$BlazeFirstTimeSlideInstructionStyleImpl instance) =>
    <String, dynamic>{
      'headerText': instance.headerText?.toJson(),
      'descriptionText': instance.descriptionText?.toJson(),
    };

_$BlazeFirstTimeSlideTextStyleImpl _$$BlazeFirstTimeSlideTextStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeFirstTimeSlideTextStyleImpl(
      text: json['text'] as String?,
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      textColor: json['textColor'] == null
          ? null
          : BlazeColor.fromJson(json['textColor'] as Map<String, dynamic>),
      textSize: (json['textSize'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BlazeFirstTimeSlideTextStyleImplToJson(
        _$BlazeFirstTimeSlideTextStyleImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'font': instance.font?.toJson(),
      'textColor': instance.textColor?.toJson(),
      'textSize': instance.textSize,
    };

_$BlazePlayerItemButtonImageStatesImpl
    _$$BlazePlayerItemButtonImageStatesImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazePlayerItemButtonImageStatesImpl(
          selectedImage: json['selectedImage'] == null
              ? null
              : BlazeImage.fromJson(
                  json['selectedImage'] as Map<String, dynamic>),
          unselectedImage: json['unselectedImage'] == null
              ? null
              : BlazeImage.fromJson(
                  json['unselectedImage'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazePlayerItemButtonImageStatesImplToJson(
        _$BlazePlayerItemButtonImageStatesImpl instance) =>
    <String, dynamic>{
      'selectedImage': instance.selectedImage?.toJson(),
      'unselectedImage': instance.unselectedImage?.toJson(),
    };

_$BlazeSeekBarStyleImpl _$$BlazeSeekBarStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeSeekBarStyleImpl(
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

Map<String, dynamic> _$$BlazeSeekBarStyleImplToJson(
        _$BlazeSeekBarStyleImpl instance) =>
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
