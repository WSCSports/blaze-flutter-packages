// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moments_player_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeMomentsPlayerStyleImpl _$$BlazeMomentsPlayerStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeMomentsPlayerStyleImpl(
      headingText: json['headingText'] == null
          ? null
          : BlazeMomentsPlayerHeadingTextStyle.fromJson(
              json['headingText'] as Map<String, dynamic>),
      bodyText: json['bodyText'] == null
          ? null
          : BlazeMomentsPlayerBodyTextStyle.fromJson(
              json['bodyText'] as Map<String, dynamic>),
      buttons: json['buttons'] == null
          ? null
          : BlazeMomentsPlayerButtonsStyle.fromJson(
              json['buttons'] as Map<String, dynamic>),
      chips: json['chips'] == null
          ? null
          : BlazeMomentsPlayerChipsStyle.fromJson(
              json['chips'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] as String?,
      cta: json['cta'] == null
          ? null
          : BlazeMomentsPlayerCtaStyle.fromJson(
              json['cta'] as Map<String, dynamic>),
      headerGradient: json['headerGradient'] == null
          ? null
          : BlazeMomentsPlayerHeaderGradientStyle.fromJson(
              json['headerGradient'] as Map<String, dynamic>),
      footerGradient: json['footerGradient'] == null
          ? null
          : BlazeMomentsPlayerFooterGradientStyle.fromJson(
              json['footerGradient'] as Map<String, dynamic>),
      firstTimeSlide: json['firstTimeSlide'] == null
          ? null
          : BlazeMomentsPlayerFirstTimeSlideStyle.fromJson(
              json['firstTimeSlide'] as Map<String, dynamic>),
      seekBar: json['seekBar'] == null
          ? null
          : BlazeMomentsPlayerSeekBarStyle.fromJson(
              json['seekBar'] as Map<String, dynamic>),
      bottomComponentsAlignment: $enumDecodeNullable(
          _$BlazeMomentsPlayerBottomComponentsAlignmentEnumMap,
          json['bottomComponentsAlignment']),
      playerDisplayMode: $enumDecodeNullable(
          _$BlazePlayerDisplayModeEnumMap, json['playerDisplayMode']),
    );

Map<String, dynamic> _$$BlazeMomentsPlayerStyleImplToJson(
        _$BlazeMomentsPlayerStyleImpl instance) =>
    <String, dynamic>{
      'headingText': instance.headingText?.toJson(),
      'bodyText': instance.bodyText?.toJson(),
      'buttons': instance.buttons?.toJson(),
      'chips': instance.chips?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'cta': instance.cta?.toJson(),
      'headerGradient': instance.headerGradient?.toJson(),
      'footerGradient': instance.footerGradient?.toJson(),
      'firstTimeSlide': instance.firstTimeSlide?.toJson(),
      'seekBar': instance.seekBar?.toJson(),
      'bottomComponentsAlignment':
          _$BlazeMomentsPlayerBottomComponentsAlignmentEnumMap[
              instance.bottomComponentsAlignment],
      'playerDisplayMode':
          _$BlazePlayerDisplayModeEnumMap[instance.playerDisplayMode],
    };

const _$BlazeMomentsPlayerBottomComponentsAlignmentEnumMap = {
  BlazeMomentsPlayerBottomComponentsAlignment.relativeToContainer:
      'RelativeToContainer',
  BlazeMomentsPlayerBottomComponentsAlignment.relativeToPlayer:
      'RelativeToPlayer',
  BlazeMomentsPlayerBottomComponentsAlignment.fitCtaBelowPlayer:
      'FitCtaBelowPlayer',
};

const _$BlazePlayerDisplayModeEnumMap = {
  BlazePlayerDisplayMode.fixedRatio9x16: 'FixedRatio_9_16',
  BlazePlayerDisplayMode.resizeAspectFillCenterCrop:
      'ResizeAspectFillCenterCrop',
};

_$BlazeMomentsPlayerHeadingTextStyleImpl
    _$$BlazeMomentsPlayerHeadingTextStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerHeadingTextStyleImpl(
          font: json['font'] == null
              ? null
              : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
          textColor: json['textColor'] as String?,
          textSize: (json['textSize'] as num?)?.toDouble(),
          contentSource: $enumDecodeNullable(
              _$BlazeMomentsPlayerHeadingTextContentSourceEnumMap,
              json['contentSource']),
          isVisible: json['isVisible'] as bool?,
        );

Map<String, dynamic> _$$BlazeMomentsPlayerHeadingTextStyleImplToJson(
        _$BlazeMomentsPlayerHeadingTextStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textColor': instance.textColor,
      'textSize': instance.textSize,
      'contentSource': _$BlazeMomentsPlayerHeadingTextContentSourceEnumMap[
          instance.contentSource],
      'isVisible': instance.isVisible,
    };

const _$BlazeMomentsPlayerHeadingTextContentSourceEnumMap = {
  BlazeMomentsPlayerHeadingTextContentSource.title: 'Title',
  BlazeMomentsPlayerHeadingTextContentSource.subtitle: 'Subtitle',
};

_$BlazeMomentsPlayerBodyTextStyleImpl
    _$$BlazeMomentsPlayerBodyTextStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerBodyTextStyleImpl(
          font: json['font'] == null
              ? null
              : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
          textColor: json['textColor'] as String?,
          textSize: (json['textSize'] as num?)?.toDouble(),
          contentSource: $enumDecodeNullable(
              _$BlazeMomentsPlayerItemBodyTextContentSourceEnumMap,
              json['contentSource']),
          isVisible: json['isVisible'] as bool?,
        );

Map<String, dynamic> _$$BlazeMomentsPlayerBodyTextStyleImplToJson(
        _$BlazeMomentsPlayerBodyTextStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textColor': instance.textColor,
      'textSize': instance.textSize,
      'contentSource': _$BlazeMomentsPlayerItemBodyTextContentSourceEnumMap[
          instance.contentSource],
      'isVisible': instance.isVisible,
    };

const _$BlazeMomentsPlayerItemBodyTextContentSourceEnumMap = {
  BlazeMomentsPlayerItemBodyTextContentSource.title: 'Title',
  BlazeMomentsPlayerItemBodyTextContentSource.subtitle: 'Subtitle',
  BlazeMomentsPlayerItemBodyTextContentSource.description: 'Description',
};

_$BlazeMomentsPlayerButtonsStyleImpl
    _$$BlazeMomentsPlayerButtonsStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerButtonsStyleImpl(
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
          play: json['play'] == null
              ? null
              : BlazePlayerButtonStyle.fromJson(
                  json['play'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeMomentsPlayerButtonsStyleImplToJson(
        _$BlazeMomentsPlayerButtonsStyleImpl instance) =>
    <String, dynamic>{
      'mute': instance.mute?.toJson(),
      'exit': instance.exit?.toJson(),
      'share': instance.share?.toJson(),
      'like': instance.like?.toJson(),
      'play': instance.play?.toJson(),
    };

_$BlazeMomentsPlayerChipsStyleImpl _$$BlazeMomentsPlayerChipsStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeMomentsPlayerChipsStyleImpl(
      ad: json['ad'] == null
          ? null
          : BlazeMomentsPlayerChipStyle.fromJson(
              json['ad'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeMomentsPlayerChipsStyleImplToJson(
        _$BlazeMomentsPlayerChipsStyleImpl instance) =>
    <String, dynamic>{
      'ad': instance.ad?.toJson(),
    };

_$BlazeMomentsPlayerChipStyleImpl _$$BlazeMomentsPlayerChipStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeMomentsPlayerChipStyleImpl(
      titlePadding: json['titlePadding'] == null
          ? null
          : BlazeMargins.fromJson(json['titlePadding'] as Map<String, dynamic>),
      text: json['text'] as String?,
      textColor: json['textColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      isVisible: json['isVisible'] as bool?,
    );

Map<String, dynamic> _$$BlazeMomentsPlayerChipStyleImplToJson(
        _$BlazeMomentsPlayerChipStyleImpl instance) =>
    <String, dynamic>{
      'titlePadding': instance.titlePadding?.toJson(),
      'text': instance.text,
      'textColor': instance.textColor,
      'backgroundColor': instance.backgroundColor,
      'isVisible': instance.isVisible,
    };

_$BlazeMomentsPlayerCtaStyleImpl _$$BlazeMomentsPlayerCtaStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeMomentsPlayerCtaStyleImpl(
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
      textSize: (json['textSize'] as num?)?.toDouble(),
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      layoutPositioning: $enumDecodeNullable(
          _$BlazeMomentsPlayerCTAPositioningEnumMap, json['layoutPositioning']),
      horizontalAlignment: $enumDecodeNullable(
          _$BlazeMomentsPlayerCTAHorizontalAlignmentEnumMap,
          json['horizontalAlignment']),
      icon: json['icon'] == null
          ? null
          : BlazeMomentsPlayerCtaIconStyle.fromJson(
              json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeMomentsPlayerCtaStyleImplToJson(
        _$BlazeMomentsPlayerCtaStyleImpl instance) =>
    <String, dynamic>{
      'cornerRadius': instance.cornerRadius,
      'textSize': instance.textSize,
      'font': instance.font?.toJson(),
      'width': instance.width,
      'height': instance.height,
      'layoutPositioning':
          _$BlazeMomentsPlayerCTAPositioningEnumMap[instance.layoutPositioning],
      'horizontalAlignment': _$BlazeMomentsPlayerCTAHorizontalAlignmentEnumMap[
          instance.horizontalAlignment],
      'icon': instance.icon?.toJson(),
    };

const _$BlazeMomentsPlayerCTAPositioningEnumMap = {
  BlazeMomentsPlayerCTAPositioning.ctaBellowBottomButtonsBox:
      'CtaBellowBottomButtonsBox',
  BlazeMomentsPlayerCTAPositioning.ctaNextToBottomButtonsBox:
      'CtaNextToBottomButtonsBox',
};

const _$BlazeMomentsPlayerCTAHorizontalAlignmentEnumMap = {
  BlazeMomentsPlayerCTAHorizontalAlignment.start: 'Start',
  BlazeMomentsPlayerCTAHorizontalAlignment.center: 'Center',
  BlazeMomentsPlayerCTAHorizontalAlignment.end: 'End',
  BlazeMomentsPlayerCTAHorizontalAlignment.fullAvailableWidth:
      'FullAvailableWidth',
};

_$BlazeMomentsPlayerCtaIconStyleImpl
    _$$BlazeMomentsPlayerCtaIconStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerCtaIconStyleImpl(
          iconImage: json['iconImage'] == null
              ? null
              : BlazeImage.fromJson(json['iconImage'] as Map<String, dynamic>),
          iconPositioning: $enumDecodeNullable(
              _$BlazeMomentsPlayerCTAIconPositioningEnumMap,
              json['iconPositioning']),
          iconTint: json['iconTint'] as String?,
        );

Map<String, dynamic> _$$BlazeMomentsPlayerCtaIconStyleImplToJson(
        _$BlazeMomentsPlayerCtaIconStyleImpl instance) =>
    <String, dynamic>{
      'iconImage': instance.iconImage?.toJson(),
      'iconPositioning': _$BlazeMomentsPlayerCTAIconPositioningEnumMap[
          instance.iconPositioning],
      'iconTint': instance.iconTint,
    };

const _$BlazeMomentsPlayerCTAIconPositioningEnumMap = {
  BlazeMomentsPlayerCTAIconPositioning.start: 'Start',
};

_$BlazeMomentsPlayerHeaderGradientStyleImpl
    _$$BlazeMomentsPlayerHeaderGradientStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerHeaderGradientStyleImpl(
          isVisible: json['isVisible'] as bool?,
          startColor: json['startColor'] as String?,
          endColor: json['endColor'] as String?,
        );

Map<String, dynamic> _$$BlazeMomentsPlayerHeaderGradientStyleImplToJson(
        _$BlazeMomentsPlayerHeaderGradientStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'startColor': instance.startColor,
      'endColor': instance.endColor,
    };

_$BlazeMomentsPlayerFooterGradientStyleImpl
    _$$BlazeMomentsPlayerFooterGradientStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerFooterGradientStyleImpl(
          isVisible: json['isVisible'] as bool?,
          startColor: json['startColor'] as String?,
          endColor: json['endColor'] as String?,
          endPositioning: $enumDecodeNullable(
              _$BlazeMomentsPlayerFooterGradientPositioningEnumMap,
              json['endPositioning']),
        );

Map<String, dynamic> _$$BlazeMomentsPlayerFooterGradientStyleImplToJson(
        _$BlazeMomentsPlayerFooterGradientStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'startColor': instance.startColor,
      'endColor': instance.endColor,
      'endPositioning': _$BlazeMomentsPlayerFooterGradientPositioningEnumMap[
          instance.endPositioning],
    };

const _$BlazeMomentsPlayerFooterGradientPositioningEnumMap = {
  BlazeMomentsPlayerFooterGradientPositioning.bottomToPlayer: 'BottomToPlayer',
  BlazeMomentsPlayerFooterGradientPositioning.bottomToContainer:
      'BottomToContainer',
};

_$BlazeMomentsPlayerFirstTimeSlideStyleImpl
    _$$BlazeMomentsPlayerFirstTimeSlideStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerFirstTimeSlideStyleImpl(
          show: json['show'] as bool?,
          cta: json['cta'] == null
              ? null
              : BlazeFirstTimeSlideCTAStyle.fromJson(
                  json['cta'] as Map<String, dynamic>),
          backgroundColor: json['backgroundColor'] == null
              ? null
              : BlazeColor.fromJson(
                  json['backgroundColor'] as Map<String, dynamic>),
          mainTitle: json['mainTitle'] == null
              ? null
              : BlazeFirstTimeSlideTextStyle.fromJson(
                  json['mainTitle'] as Map<String, dynamic>),
          subtitle: json['subtitle'] == null
              ? null
              : BlazeFirstTimeSlideTextStyle.fromJson(
                  json['subtitle'] as Map<String, dynamic>),
          instructions: json['instructions'] == null
              ? null
              : BlazeMomentsPlayerFirstTimeSlideInstructionsStyle.fromJson(
                  json['instructions'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeMomentsPlayerFirstTimeSlideStyleImplToJson(
        _$BlazeMomentsPlayerFirstTimeSlideStyleImpl instance) =>
    <String, dynamic>{
      'show': instance.show,
      'cta': instance.cta?.toJson(),
      'backgroundColor': instance.backgroundColor?.toJson(),
      'mainTitle': instance.mainTitle?.toJson(),
      'subtitle': instance.subtitle?.toJson(),
      'instructions': instance.instructions?.toJson(),
    };

_$BlazeMomentsPlayerFirstTimeSlideInstructionsStyleImpl
    _$$BlazeMomentsPlayerFirstTimeSlideInstructionsStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerFirstTimeSlideInstructionsStyleImpl(
          next: json['next'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['next'] as Map<String, dynamic>),
          previous: json['previous'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['previous'] as Map<String, dynamic>),
          pause: json['pause'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['pause'] as Map<String, dynamic>),
          play: json['play'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['play'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BlazeMomentsPlayerFirstTimeSlideInstructionsStyleImplToJson(
            _$BlazeMomentsPlayerFirstTimeSlideInstructionsStyleImpl instance) =>
        <String, dynamic>{
          'next': instance.next?.toJson(),
          'previous': instance.previous?.toJson(),
          'pause': instance.pause?.toJson(),
          'play': instance.play?.toJson(),
        };

_$BlazeMomentsPlayerSeekBarStyleImpl
    _$$BlazeMomentsPlayerSeekBarStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeMomentsPlayerSeekBarStyleImpl(
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

Map<String, dynamic> _$$BlazeMomentsPlayerSeekBarStyleImplToJson(
        _$BlazeMomentsPlayerSeekBarStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'playingState': instance.playingState?.toJson(),
      'pausedState': instance.pausedState?.toJson(),
      'horizontalSpacing': instance.horizontalSpacing,
      'bottomSpacing': instance.bottomSpacing,
    };
