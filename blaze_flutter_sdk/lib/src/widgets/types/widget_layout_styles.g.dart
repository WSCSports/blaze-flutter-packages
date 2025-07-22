// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_layout_styles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeWidgetGradientImpl _$$BlazeWidgetGradientImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeWidgetGradientImpl(
      isVisible: json['isVisible'] as bool?,
      position: $enumDecodeNullable(
          _$BlazeWidgetGradientPositionEnumMap, json['position']),
      startColor: json['startColor'] as String?,
      endColor: json['endColor'] as String?,
    );

Map<String, dynamic> _$$BlazeWidgetGradientImplToJson(
        _$BlazeWidgetGradientImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'position': _$BlazeWidgetGradientPositionEnumMap[instance.position],
      'startColor': instance.startColor,
      'endColor': instance.endColor,
    };

const _$BlazeWidgetGradientPositionEnumMap = {
  BlazeWidgetGradientPosition.top: 'Top',
  BlazeWidgetGradientPosition.center: 'Center',
  BlazeWidgetGradientPosition.bottom: 'Bottom',
};

_$BlazeWidgetItemImageAnimatedThumbnailStyleImpl
    _$$BlazeWidgetItemImageAnimatedThumbnailStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeWidgetItemImageAnimatedThumbnailStyleImpl(
          isEnabled: json['isEnabled'] as bool?,
          horizontalAnimationTriggerPercentage:
              (json['horizontalAnimationTriggerPercentage'] as num?)
                  ?.toDouble(),
        );

Map<String, dynamic> _$$BlazeWidgetItemImageAnimatedThumbnailStyleImplToJson(
        _$BlazeWidgetItemImageAnimatedThumbnailStyleImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'horizontalAnimationTriggerPercentage':
          instance.horizontalAnimationTriggerPercentage,
    };

_$BlazeWidgetItemImageContainerBorderStateStyleImpl
    _$$BlazeWidgetItemImageContainerBorderStateStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeWidgetItemImageContainerBorderStateStyleImpl(
          isVisible: json['isVisible'] as bool?,
          color: json['color'] as String?,
          margin: (json['margin'] as num?)?.toDouble(),
          width: (json['width'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$BlazeWidgetItemImageContainerBorderStateStyleImplToJson(
        _$BlazeWidgetItemImageContainerBorderStateStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'color': instance.color,
      'margin': instance.margin,
      'width': instance.width,
    };

_$BlazeWidgetItemImageContainerBorderStyleImpl
    _$$BlazeWidgetItemImageContainerBorderStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeWidgetItemImageContainerBorderStyleImpl(
          isVisible: json['isVisible'] as bool?,
          liveReadState: json['liveReadState'] == null
              ? null
              : BlazeWidgetItemImageContainerBorderStateStyle.fromJson(
                  json['liveReadState'] as Map<String, dynamic>),
          liveUnreadState: json['liveUnreadState'] == null
              ? null
              : BlazeWidgetItemImageContainerBorderStateStyle.fromJson(
                  json['liveUnreadState'] as Map<String, dynamic>),
          readState: json['readState'] == null
              ? null
              : BlazeWidgetItemImageContainerBorderStateStyle.fromJson(
                  json['readState'] as Map<String, dynamic>),
          unreadState: json['unreadState'] == null
              ? null
              : BlazeWidgetItemImageContainerBorderStateStyle.fromJson(
                  json['unreadState'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeWidgetItemImageContainerBorderStyleImplToJson(
        _$BlazeWidgetItemImageContainerBorderStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'liveReadState': instance.liveReadState?.toJson(),
      'liveUnreadState': instance.liveUnreadState?.toJson(),
      'readState': instance.readState?.toJson(),
      'unreadState': instance.unreadState?.toJson(),
    };

_$BlazeWidgetItemImageStyleImpl _$$BlazeWidgetItemImageStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeWidgetItemImageStyleImpl(
      position: $enumDecodeNullable(
          _$BlazeWidgetItemImagePositionEnumMap, json['position']),
      thumbnailType: $enumDecodeNullable(
          _$BlazeThumbnailTypeEnumMap, json['thumbnailType']),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      ratio: (json['ratio'] as num?)?.toDouble(),
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
      cornerRadiusRatio: (json['cornerRadiusRatio'] as num?)?.toDouble(),
      border: json['border'] == null
          ? null
          : BlazeWidgetItemImageContainerBorderStyle.fromJson(
              json['border'] as Map<String, dynamic>),
      gradientOverlay: json['gradientOverlay'] == null
          ? null
          : BlazeWidgetGradient.fromJson(
              json['gradientOverlay'] as Map<String, dynamic>),
      margins: json['margins'] == null
          ? null
          : BlazeMargins.fromJson(json['margins'] as Map<String, dynamic>),
      animatedThumbnail: json['animatedThumbnail'] == null
          ? null
          : BlazeWidgetItemImageAnimatedThumbnailStyle.fromJson(
              json['animatedThumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeWidgetItemImageStyleImplToJson(
        _$BlazeWidgetItemImageStyleImpl instance) =>
    <String, dynamic>{
      'position': _$BlazeWidgetItemImagePositionEnumMap[instance.position],
      'thumbnailType': _$BlazeThumbnailTypeEnumMap[instance.thumbnailType],
      'width': instance.width,
      'height': instance.height,
      'ratio': instance.ratio,
      'cornerRadius': instance.cornerRadius,
      'cornerRadiusRatio': instance.cornerRadiusRatio,
      'border': instance.border?.toJson(),
      'gradientOverlay': instance.gradientOverlay?.toJson(),
      'margins': instance.margins?.toJson(),
      'animatedThumbnail': instance.animatedThumbnail?.toJson(),
    };

const _$BlazeWidgetItemImagePositionEnumMap = {
  BlazeWidgetItemImagePosition.topStart: 'TopStart',
  BlazeWidgetItemImagePosition.topCenter: 'TopCenter',
  BlazeWidgetItemImagePosition.topEnd: 'TopEnd',
  BlazeWidgetItemImagePosition.centerStart: 'CenterStart',
  BlazeWidgetItemImagePosition.center: 'Center',
  BlazeWidgetItemImagePosition.centerEnd: 'CenterEnd',
  BlazeWidgetItemImagePosition.bottomStart: 'BottomStart',
  BlazeWidgetItemImagePosition.bottomCenter: 'BottomCenter',
  BlazeWidgetItemImagePosition.bottomEnd: 'BottomEnd',
};

const _$BlazeThumbnailTypeEnumMap = {
  BlazeThumbnailType.squareIcon: 'SquareIcon',
  BlazeThumbnailType.verticalTwoByThree: 'VerticalTwoByThree',
  BlazeThumbnailType.custom: 'Custom',
};

_$BlazeWidgetItemTitleStyleImpl _$$BlazeWidgetItemTitleStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeWidgetItemTitleStyleImpl(
      isVisible: json['isVisible'] as bool?,
      readState: json['readState'] == null
          ? null
          : BlazeTitleStyle.fromJson(json['readState'] as Map<String, dynamic>),
      unreadState: json['unreadState'] == null
          ? null
          : BlazeTitleStyle.fromJson(
              json['unreadState'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : BlazeObjectPositioning.fromJson(
              json['position'] as Map<String, dynamic>),
      margins: json['margins'] == null
          ? null
          : BlazeMargins.fromJson(json['margins'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeWidgetItemTitleStyleImplToJson(
        _$BlazeWidgetItemTitleStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'readState': instance.readState?.toJson(),
      'unreadState': instance.unreadState?.toJson(),
      'position': instance.position?.toJson(),
      'margins': instance.margins?.toJson(),
    };

_$BlazeWidgetItemBadgeStateStyleImpl
    _$$BlazeWidgetItemBadgeStateStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeWidgetItemBadgeStateStyleImpl(
          width: (json['width'] as num?)?.toDouble(),
          height: (json['height'] as num?)?.toDouble(),
          textStyle: json['textStyle'] == null
              ? null
              : BlazeTitleStyle.fromJson(
                  json['textStyle'] as Map<String, dynamic>),
          text: json['text'] as String?,
          backgroundColor: json['backgroundColor'] as String?,
          backgroundImage: json['backgroundImage'] == null
              ? null
              : BlazeImage.fromJson(
                  json['backgroundImage'] as Map<String, dynamic>),
          cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
          cornerRadiusRatio: (json['cornerRadiusRatio'] as num?)?.toDouble(),
          borderColor: json['borderColor'] as String?,
          borderWidth: (json['borderWidth'] as num?)?.toDouble(),
          isVisible: json['isVisible'] as bool?,
        );

Map<String, dynamic> _$$BlazeWidgetItemBadgeStateStyleImplToJson(
        _$BlazeWidgetItemBadgeStateStyleImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'textStyle': instance.textStyle?.toJson(),
      'text': instance.text,
      'backgroundColor': instance.backgroundColor,
      'backgroundImage': instance.backgroundImage?.toJson(),
      'cornerRadius': instance.cornerRadius,
      'cornerRadiusRatio': instance.cornerRadiusRatio,
      'borderColor': instance.borderColor,
      'borderWidth': instance.borderWidth,
      'isVisible': instance.isVisible,
    };

_$BlazeWidgetItemBadgeStyleImpl _$$BlazeWidgetItemBadgeStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeWidgetItemBadgeStyleImpl(
      position: json['position'] == null
          ? null
          : BlazeObjectPositioning.fromJson(
              json['position'] as Map<String, dynamic>),
      isVisible: json['isVisible'] as bool?,
      margins: json['margins'] == null
          ? null
          : BlazeMargins.fromJson(json['margins'] as Map<String, dynamic>),
      titlePadding: json['titlePadding'] == null
          ? null
          : BlazeMargins.fromJson(json['titlePadding'] as Map<String, dynamic>),
      liveUnreadState: json['liveUnreadState'] == null
          ? null
          : BlazeWidgetItemBadgeStateStyle.fromJson(
              json['liveUnreadState'] as Map<String, dynamic>),
      liveReadState: json['liveReadState'] == null
          ? null
          : BlazeWidgetItemBadgeStateStyle.fromJson(
              json['liveReadState'] as Map<String, dynamic>),
      unreadState: json['unreadState'] == null
          ? null
          : BlazeWidgetItemBadgeStateStyle.fromJson(
              json['unreadState'] as Map<String, dynamic>),
      readState: json['readState'] == null
          ? null
          : BlazeWidgetItemBadgeStateStyle.fromJson(
              json['readState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeWidgetItemBadgeStyleImplToJson(
        _$BlazeWidgetItemBadgeStyleImpl instance) =>
    <String, dynamic>{
      'position': instance.position?.toJson(),
      'isVisible': instance.isVisible,
      'margins': instance.margins?.toJson(),
      'titlePadding': instance.titlePadding?.toJson(),
      'liveUnreadState': instance.liveUnreadState?.toJson(),
      'liveReadState': instance.liveReadState?.toJson(),
      'unreadState': instance.unreadState?.toJson(),
      'readState': instance.readState?.toJson(),
    };

_$BlazeWidgetItemStatusIndicatorStateStyleImpl
    _$$BlazeWidgetItemStatusIndicatorStateStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeWidgetItemStatusIndicatorStateStyleImpl(
          isVisible: json['isVisible'] as bool?,
          backgroundColor: json['backgroundColor'] as String?,
          backgroundImage: json['backgroundImage'] == null
              ? null
              : BlazeImage.fromJson(
                  json['backgroundImage'] as Map<String, dynamic>),
          textStyle: json['textStyle'] == null
              ? null
              : BlazeTitleStyle.fromJson(
                  json['textStyle'] as Map<String, dynamic>),
          text: json['text'] as String?,
          cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
          cornerRadiusRatio: (json['cornerRadiusRatio'] as num?)?.toDouble(),
          borderColor: json['borderColor'] as String?,
          borderWidth: (json['borderWidth'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$BlazeWidgetItemStatusIndicatorStateStyleImplToJson(
        _$BlazeWidgetItemStatusIndicatorStateStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'backgroundColor': instance.backgroundColor,
      'backgroundImage': instance.backgroundImage?.toJson(),
      'textStyle': instance.textStyle?.toJson(),
      'text': instance.text,
      'cornerRadius': instance.cornerRadius,
      'cornerRadiusRatio': instance.cornerRadiusRatio,
      'borderColor': instance.borderColor,
      'borderWidth': instance.borderWidth,
    };

_$BlazeWidgetItemStatusIndicatorStyleImpl
    _$$BlazeWidgetItemStatusIndicatorStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeWidgetItemStatusIndicatorStyleImpl(
          isVisible: json['isVisible'] as bool?,
          position: json['position'] == null
              ? null
              : BlazeObjectPositioning.fromJson(
                  json['position'] as Map<String, dynamic>),
          margins: json['margins'] == null
              ? null
              : BlazeMargins.fromJson(json['margins'] as Map<String, dynamic>),
          statusTitlePadding: json['statusTitlePadding'] == null
              ? null
              : BlazeMargins.fromJson(
                  json['statusTitlePadding'] as Map<String, dynamic>),
          liveUnreadState: json['liveUnreadState'] == null
              ? null
              : BlazeWidgetItemStatusIndicatorStateStyle.fromJson(
                  json['liveUnreadState'] as Map<String, dynamic>),
          liveReadState: json['liveReadState'] == null
              ? null
              : BlazeWidgetItemStatusIndicatorStateStyle.fromJson(
                  json['liveReadState'] as Map<String, dynamic>),
          unreadState: json['unreadState'] == null
              ? null
              : BlazeWidgetItemStatusIndicatorStateStyle.fromJson(
                  json['unreadState'] as Map<String, dynamic>),
          readState: json['readState'] == null
              ? null
              : BlazeWidgetItemStatusIndicatorStateStyle.fromJson(
                  json['readState'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeWidgetItemStatusIndicatorStyleImplToJson(
        _$BlazeWidgetItemStatusIndicatorStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'position': instance.position?.toJson(),
      'margins': instance.margins?.toJson(),
      'statusTitlePadding': instance.statusTitlePadding?.toJson(),
      'liveUnreadState': instance.liveUnreadState?.toJson(),
      'liveReadState': instance.liveReadState?.toJson(),
      'unreadState': instance.unreadState?.toJson(),
      'readState': instance.readState?.toJson(),
    };

_$BlazeWidgetItemDurationElementStateStyleImpl
    _$$BlazeWidgetItemDurationElementStateStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeWidgetItemDurationElementStateStyleImpl(
          isVisible: json['isVisible'] as bool?,
          backgroundColor: json['backgroundColor'] as String?,
          backgroundImage: json['backgroundImage'] == null
              ? null
              : BlazeImage.fromJson(
                  json['backgroundImage'] as Map<String, dynamic>),
          textStyle: json['textStyle'] == null
              ? null
              : BlazeTitleStyle.fromJson(
                  json['textStyle'] as Map<String, dynamic>),
          cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
          cornerRadiusRatio: (json['cornerRadiusRatio'] as num?)?.toDouble(),
          borderColor: json['borderColor'] as String?,
          borderWidth: (json['borderWidth'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$BlazeWidgetItemDurationElementStateStyleImplToJson(
        _$BlazeWidgetItemDurationElementStateStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'backgroundColor': instance.backgroundColor,
      'backgroundImage': instance.backgroundImage?.toJson(),
      'textStyle': instance.textStyle?.toJson(),
      'cornerRadius': instance.cornerRadius,
      'cornerRadiusRatio': instance.cornerRadiusRatio,
      'borderColor': instance.borderColor,
      'borderWidth': instance.borderWidth,
    };

_$BlazeWidgetItemDurationElementStyleImpl
    _$$BlazeWidgetItemDurationElementStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeWidgetItemDurationElementStyleImpl(
          isVisible: json['isVisible'] as bool?,
          position: json['position'] == null
              ? null
              : BlazeObjectPositioning.fromJson(
                  json['position'] as Map<String, dynamic>),
          insets: json['insets'] == null
              ? null
              : BlazeMargins.fromJson(json['insets'] as Map<String, dynamic>),
          contentPadding: json['contentPadding'] == null
              ? null
              : BlazeMargins.fromJson(
                  json['contentPadding'] as Map<String, dynamic>),
          icon: json['icon'] == null
              ? null
              : BlazeImage.fromJson(json['icon'] as Map<String, dynamic>),
          liveUnreadState: json['liveUnreadState'] == null
              ? null
              : BlazeWidgetItemDurationElementStateStyle.fromJson(
                  json['liveUnreadState'] as Map<String, dynamic>),
          liveReadState: json['liveReadState'] == null
              ? null
              : BlazeWidgetItemDurationElementStateStyle.fromJson(
                  json['liveReadState'] as Map<String, dynamic>),
          unreadState: json['unreadState'] == null
              ? null
              : BlazeWidgetItemDurationElementStateStyle.fromJson(
                  json['unreadState'] as Map<String, dynamic>),
          readState: json['readState'] == null
              ? null
              : BlazeWidgetItemDurationElementStateStyle.fromJson(
                  json['readState'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeWidgetItemDurationElementStyleImplToJson(
        _$BlazeWidgetItemDurationElementStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'position': instance.position?.toJson(),
      'insets': instance.insets?.toJson(),
      'contentPadding': instance.contentPadding?.toJson(),
      'icon': instance.icon?.toJson(),
      'liveUnreadState': instance.liveUnreadState?.toJson(),
      'liveReadState': instance.liveReadState?.toJson(),
      'unreadState': instance.unreadState?.toJson(),
      'readState': instance.readState?.toJson(),
    };
