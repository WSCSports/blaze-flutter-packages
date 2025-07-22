// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_style_overrides.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeWidgetItemCustomMappingImpl _$$BlazeWidgetItemCustomMappingImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeWidgetItemCustomMappingImpl(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$BlazeWidgetItemCustomMappingImplToJson(
        _$BlazeWidgetItemCustomMappingImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$BlazeWidgetItemStyleOverridesImpl
    _$$BlazeWidgetItemStyleOverridesImplFromJson(Map<String, dynamic> json) =>
        _$BlazeWidgetItemStyleOverridesImpl(
          statusIndicator: json['statusIndicator'] == null
              ? null
              : BlazeWidgetItemStatusIndicatorStyle.fromJson(
                  json['statusIndicator'] as Map<String, dynamic>),
          imageBorder: json['imageBorder'] == null
              ? null
              : BlazeWidgetItemImageContainerBorderStyle.fromJson(
                  json['imageBorder'] as Map<String, dynamic>),
          badge: json['badge'] == null
              ? null
              : BlazeWidgetItemBadgeStyle.fromJson(
                  json['badge'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeWidgetItemStyleOverridesImplToJson(
        _$BlazeWidgetItemStyleOverridesImpl instance) =>
    <String, dynamic>{
      'statusIndicator': instance.statusIndicator?.toJson(),
      'imageBorder': instance.imageBorder?.toJson(),
      'badge': instance.badge?.toJson(),
    };
