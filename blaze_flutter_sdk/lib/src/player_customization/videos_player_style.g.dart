// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_player_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeVideosPlayerStyleImpl _$$BlazeVideosPlayerStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeVideosPlayerStyleImpl(
      headingText: json['headingText'] == null
          ? null
          : BlazeVideosPlayerHeadingTextStyle.fromJson(
              json['headingText'] as Map<String, dynamic>),
      buttons: json['buttons'] == null
          ? null
          : BlazeVideosPlayerButtonsStyle.fromJson(
              json['buttons'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] as String?,
      cta: json['cta'] == null
          ? null
          : BlazeVideosPlayerCtaStyle.fromJson(
              json['cta'] as Map<String, dynamic>),
      seekBar: json['seekBar'] == null
          ? null
          : BlazeVideosPlayerSeekBarStyle.fromJson(
              json['seekBar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeVideosPlayerStyleImplToJson(
        _$BlazeVideosPlayerStyleImpl instance) =>
    <String, dynamic>{
      'headingText': instance.headingText?.toJson(),
      'buttons': instance.buttons?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'cta': instance.cta?.toJson(),
      'seekBar': instance.seekBar?.toJson(),
    };

_$BlazeVideosPlayerHeadingTextStyleImpl
    _$$BlazeVideosPlayerHeadingTextStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeVideosPlayerHeadingTextStyleImpl(
          font: json['font'] == null
              ? null
              : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
          textColor: json['textColor'] as String?,
          textSize: (json['textSize'] as num?)?.toDouble(),
          contentSource: $enumDecodeNullable(
              _$BlazeVideosPlayerHeadingTextContentSourceEnumMap,
              json['contentSource']),
          isVisible: json['isVisible'] as bool?,
          numberOfLines: (json['numberOfLines'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$BlazeVideosPlayerHeadingTextStyleImplToJson(
        _$BlazeVideosPlayerHeadingTextStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textColor': instance.textColor,
      'textSize': instance.textSize,
      'contentSource': _$BlazeVideosPlayerHeadingTextContentSourceEnumMap[
          instance.contentSource],
      'isVisible': instance.isVisible,
      'numberOfLines': instance.numberOfLines,
    };

const _$BlazeVideosPlayerHeadingTextContentSourceEnumMap = {
  BlazeVideosPlayerHeadingTextContentSource.title: 'Title',
};

_$BlazeVideosPlayerButtonsStyleImpl
    _$$BlazeVideosPlayerButtonsStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeVideosPlayerButtonsStyleImpl(
          mute: json['mute'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['mute'] as Map<String, dynamic>),
          exit: json['exit'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['exit'] as Map<String, dynamic>),
          share: json['share'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['share'] as Map<String, dynamic>),
          like: json['like'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['like'] as Map<String, dynamic>),
          playPause: json['playPause'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['playPause'] as Map<String, dynamic>),
          previous: json['previous'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['previous'] as Map<String, dynamic>),
          next: json['next'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['next'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeVideosPlayerButtonsStyleImplToJson(
        _$BlazeVideosPlayerButtonsStyleImpl instance) =>
    <String, dynamic>{
      'mute': instance.mute?.toJson(),
      'exit': instance.exit?.toJson(),
      'share': instance.share?.toJson(),
      'like': instance.like?.toJson(),
      'playPause': instance.playPause?.toJson(),
      'previous': instance.previous?.toJson(),
      'next': instance.next?.toJson(),
    };

_$BlazeVideosPlayerCtaStyleImpl _$$BlazeVideosPlayerCtaStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeVideosPlayerCtaStyleImpl(
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
      textSize: (json['textSize'] as num?)?.toDouble(),
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      icon: json['icon'] == null
          ? null
          : BlazeVideosPlayerCtaIconStyle.fromJson(
              json['icon'] as Map<String, dynamic>),
      ctaVisibility: json['ctaVisibility'] == null
          ? null
          : BlazeVideosPlayerCtaVisibility.fromJson(
              json['ctaVisibility'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeVideosPlayerCtaStyleImplToJson(
        _$BlazeVideosPlayerCtaStyleImpl instance) =>
    <String, dynamic>{
      'cornerRadius': instance.cornerRadius,
      'textSize': instance.textSize,
      'font': instance.font?.toJson(),
      'width': instance.width,
      'height': instance.height,
      'icon': instance.icon?.toJson(),
      'ctaVisibility': instance.ctaVisibility?.toJson(),
    };

_$BlazeVideosPlayerCtaVisibilityImpl
    _$$BlazeVideosPlayerCtaVisibilityImplFromJson(Map<String, dynamic> json) =>
        _$BlazeVideosPlayerCtaVisibilityImpl(
          type: $enumDecodeNullable(
              _$BlazeVideosPlayerCtaVisibilityTypeEnumMap, json['type']),
          duration: (json['duration'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$BlazeVideosPlayerCtaVisibilityImplToJson(
        _$BlazeVideosPlayerCtaVisibilityImpl instance) =>
    <String, dynamic>{
      'type': _$BlazeVideosPlayerCtaVisibilityTypeEnumMap[instance.type],
      'duration': instance.duration,
    };

const _$BlazeVideosPlayerCtaVisibilityTypeEnumMap = {
  BlazeVideosPlayerCtaVisibilityType.visibleAfterOverlayHidden:
      'visibleAfterOverlayHidden',
  BlazeVideosPlayerCtaVisibilityType.alwaysVisible: 'alwaysVisible',
};

_$BlazeVideosPlayerCtaIconStyleImpl
    _$$BlazeVideosPlayerCtaIconStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeVideosPlayerCtaIconStyleImpl(
          iconImage: json['iconImage'] == null
              ? null
              : BlazeImage.fromJson(json['iconImage'] as Map<String, dynamic>),
          iconPositioning: $enumDecodeNullable(
              _$BlazeVideosPlayerCTAIconPositioningEnumMap,
              json['iconPositioning']),
          iconTint: json['iconTint'] as String?,
        );

Map<String, dynamic> _$$BlazeVideosPlayerCtaIconStyleImplToJson(
        _$BlazeVideosPlayerCtaIconStyleImpl instance) =>
    <String, dynamic>{
      'iconImage': instance.iconImage?.toJson(),
      'iconPositioning': _$BlazeVideosPlayerCTAIconPositioningEnumMap[
          instance.iconPositioning],
      'iconTint': instance.iconTint,
    };

const _$BlazeVideosPlayerCTAIconPositioningEnumMap = {
  BlazeVideosPlayerCTAIconPositioning.start: 'Start',
};

_$BlazeVideosPlayerSeekBarStyleImpl
    _$$BlazeVideosPlayerSeekBarStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeVideosPlayerSeekBarStyleImpl(
          isVisible: json['isVisible'] as bool?,
          playingState: json['playingState'] == null
              ? null
              : BlazeSeekBarStyle.fromJson(
                  json['playingState'] as Map<String, dynamic>),
          pausedState: json['pausedState'] == null
              ? null
              : BlazeSeekBarStyle.fromJson(
                  json['pausedState'] as Map<String, dynamic>),
          horizontalSpacing: (json['horizontalSpacing'] as num?)?.toDouble(),
          bottomSpacing: (json['bottomSpacing'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$BlazeVideosPlayerSeekBarStyleImplToJson(
        _$BlazeVideosPlayerSeekBarStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'playingState': instance.playingState?.toJson(),
      'pausedState': instance.pausedState?.toJson(),
      'horizontalSpacing': instance.horizontalSpacing,
      'bottomSpacing': instance.bottomSpacing,
    };
