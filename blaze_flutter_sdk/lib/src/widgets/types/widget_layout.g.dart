// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_layout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeWidgetItemStyleImpl _$$BlazeWidgetItemStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeWidgetItemStyleImpl(
      title: json['title'] == null
          ? null
          : BlazeWidgetItemTitleStyle.fromJson(
              json['title'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : BlazeWidgetItemImageStyle.fromJson(
              json['image'] as Map<String, dynamic>),
      statusIndicator: json['statusIndicator'] == null
          ? null
          : BlazeWidgetItemStatusIndicatorStyle.fromJson(
              json['statusIndicator'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] as String?,
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
      cornerRadiusRatio: (json['cornerRadiusRatio'] as num?)?.toDouble(),
      margins: json['margins'] == null
          ? null
          : BlazeMargins.fromJson(json['margins'] as Map<String, dynamic>),
      badge: json['badge'] == null
          ? null
          : BlazeWidgetItemBadgeStyle.fromJson(
              json['badge'] as Map<String, dynamic>),
      durationElement: json['durationElement'] == null
          ? null
          : BlazeWidgetItemDurationElementStyle.fromJson(
              json['durationElement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeWidgetItemStyleImplToJson(
        _$BlazeWidgetItemStyleImpl instance) =>
    <String, dynamic>{
      'title': instance.title?.toJson(),
      'image': instance.image?.toJson(),
      'statusIndicator': instance.statusIndicator?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'cornerRadius': instance.cornerRadius,
      'cornerRadiusRatio': instance.cornerRadiusRatio,
      'margins': instance.margins?.toJson(),
      'badge': instance.badge?.toJson(),
      'durationElement': instance.durationElement?.toJson(),
    };

_$BlazeWidgetLayoutImpl _$$BlazeWidgetLayoutImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeWidgetLayoutImpl(
      horizontalItemsSpacing:
          (json['horizontalItemsSpacing'] as num?)?.toDouble(),
      verticalItemsSpacing: (json['verticalItemsSpacing'] as num?)?.toDouble(),
      itemRatio: (json['itemRatio'] as num?)?.toDouble(),
      margins: json['margins'] == null
          ? null
          : BlazeMargins.fromJson(json['margins'] as Map<String, dynamic>),
      columns: (json['columns'] as num?)?.toInt(),
      maxDisplayItemsCount: (json['maxDisplayItemsCount'] as num?)?.toInt(),
      widgetItemStyle: json['widgetItemStyle'] == null
          ? null
          : BlazeWidgetItemStyle.fromJson(
              json['widgetItemStyle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeWidgetLayoutImplToJson(
        _$BlazeWidgetLayoutImpl instance) =>
    <String, dynamic>{
      'horizontalItemsSpacing': instance.horizontalItemsSpacing,
      'verticalItemsSpacing': instance.verticalItemsSpacing,
      'itemRatio': instance.itemRatio,
      'margins': instance.margins?.toJson(),
      'columns': instance.columns,
      'maxDisplayItemsCount': instance.maxDisplayItemsCount,
      'widgetItemStyle': instance.widgetItemStyle?.toJson(),
    };
