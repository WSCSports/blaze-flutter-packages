// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moments_widget_tabs_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazePlayerTabItemCustomImageStatesImpl
    _$$BlazePlayerTabItemCustomImageStatesImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazePlayerTabItemCustomImageStatesImpl(
          selectedImage: json['selectedImage'] == null
              ? null
              : BlazeImage.fromJson(
                  json['selectedImage'] as Map<String, dynamic>),
          unselectedImage: json['unselectedImage'] == null
              ? null
              : BlazeImage.fromJson(
                  json['unselectedImage'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazePlayerTabItemCustomImageStatesImplToJson(
        _$BlazePlayerTabItemCustomImageStatesImpl instance) =>
    <String, dynamic>{
      'selectedImage': instance.selectedImage?.toJson(),
      'unselectedImage': instance.unselectedImage?.toJson(),
    };

_$BlazeMomentsContainerTabItemImpl _$$BlazeMomentsContainerTabItemImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeMomentsContainerTabItemImpl(
      containerId: json['containerId'] as String,
      title: json['title'] as String,
      dataSource: BlazeDataSourceType.fromJson(
          json['dataSource'] as Map<String, dynamic>),
      isVisible: json['isVisible'] as bool?,
      shouldOrderMomentsByReadStatus:
          json['shouldOrderMomentsByReadStatus'] as bool?,
      cachePolicyLevel: $enumDecodeNullable(
          _$BlazeCachingLevelEnumMap, json['cachePolicyLevel']),
      icon: json['icon'] == null
          ? null
          : BlazePlayerTabItemCustomImageStates.fromJson(
              json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeMomentsContainerTabItemImplToJson(
        _$BlazeMomentsContainerTabItemImpl instance) =>
    <String, dynamic>{
      'containerId': instance.containerId,
      'title': instance.title,
      'dataSource': instance.dataSource.toJson(),
      'isVisible': instance.isVisible,
      'shouldOrderMomentsByReadStatus': instance.shouldOrderMomentsByReadStatus,
      'cachePolicyLevel': _$BlazeCachingLevelEnumMap[instance.cachePolicyLevel],
      'icon': instance.icon?.toJson(),
    };

const _$BlazeCachingLevelEnumMap = {
  BlazeCachingLevel.low: 'low',
  BlazeCachingLevel.defaultLevel: 'defaultLevel',
  BlazeCachingLevel.high: 'high',
  BlazeCachingLevel.extreme: 'extreme',
};

_$BlazePlayerTabItemStyleImpl _$$BlazePlayerTabItemStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerTabItemStyleImpl(
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      textColor: json['textColor'] as String?,
      textSize: (json['textSize'] as num?)?.toDouble(),
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
      lineHeight: (json['lineHeight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BlazePlayerTabItemStyleImplToJson(
        _$BlazePlayerTabItemStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textColor': instance.textColor,
      'textSize': instance.textSize,
      'letterSpacing': instance.letterSpacing,
      'lineHeight': instance.lineHeight,
    };

_$BlazePlayerTabsGradientStyleImpl _$$BlazePlayerTabsGradientStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerTabsGradientStyleImpl(
      isVisible: json['isVisible'] as bool?,
      startColor: json['startColor'] as String?,
      middleColor: json['middleColor'] as String?,
      endColor: json['endColor'] as String?,
    );

Map<String, dynamic> _$$BlazePlayerTabsGradientStyleImplToJson(
        _$BlazePlayerTabsGradientStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'startColor': instance.startColor,
      'middleColor': instance.middleColor,
      'endColor': instance.endColor,
    };

_$BlazePlayerTabItemIconStyleImpl _$$BlazePlayerTabItemIconStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerTabItemIconStyleImpl(
      iconTint: json['iconTint'] as String?,
      padding: (json['padding'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BlazePlayerTabItemIconStyleImplToJson(
        _$BlazePlayerTabItemIconStyleImpl instance) =>
    <String, dynamic>{
      'iconTint': instance.iconTint,
      'padding': instance.padding,
    };

_$BlazePlayerTabsStyleImpl _$$BlazePlayerTabsStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerTabsStyleImpl(
      padding: json['padding'] == null
          ? null
          : BlazeMargins.fromJson(json['padding'] as Map<String, dynamic>),
      gradient: json['gradient'] == null
          ? null
          : BlazePlayerTabsGradientStyle.fromJson(
              json['gradient'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : BlazePlayerTabItemIconStyle.fromJson(
              json['icon'] as Map<String, dynamic>),
      selectedTabState: json['selectedTabState'] == null
          ? null
          : BlazePlayerTabItemStyle.fromJson(
              json['selectedTabState'] as Map<String, dynamic>),
      unselectedTabState: json['unselectedTabState'] == null
          ? null
          : BlazePlayerTabItemStyle.fromJson(
              json['unselectedTabState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazePlayerTabsStyleImplToJson(
        _$BlazePlayerTabsStyleImpl instance) =>
    <String, dynamic>{
      'padding': instance.padding?.toJson(),
      'gradient': instance.gradient?.toJson(),
      'icon': instance.icon?.toJson(),
      'selectedTabState': instance.selectedTabState?.toJson(),
      'unselectedTabState': instance.unselectedTabState?.toJson(),
    };

_$BlazeMomentsWidgetTabsConfigurationImpl
    _$$BlazeMomentsWidgetTabsConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsWidgetTabsConfigurationImpl(
          containerSourceId: json['containerSourceId'] as String,
          tabs: (json['tabs'] as List<dynamic>)
              .map((e) => BlazeMomentsContainerTabItem.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          playerStyle: json['playerStyle'] == null
              ? null
              : BlazeMomentsPlayerStyle.fromJson(
                  json['playerStyle'] as Map<String, dynamic>),
          tabsStyle: json['tabsStyle'] == null
              ? null
              : BlazePlayerTabsStyle.fromJson(
                  json['tabsStyle'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeMomentsWidgetTabsConfigurationImplToJson(
        _$BlazeMomentsWidgetTabsConfigurationImpl instance) =>
    <String, dynamic>{
      'containerSourceId': instance.containerSourceId,
      'tabs': instance.tabs.map((e) => e.toJson()).toList(),
      'playerStyle': instance.playerStyle?.toJson(),
      'tabsStyle': instance.tabsStyle?.toJson(),
    };
