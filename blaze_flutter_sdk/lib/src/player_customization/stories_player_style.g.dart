// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_player_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeStoryPlayerStyleImpl _$$BlazeStoryPlayerStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeStoryPlayerStyleImpl(
      title: json['title'] == null
          ? null
          : BlazeStoryPlayerTitleTextStyle.fromJson(
              json['title'] as Map<String, dynamic>),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : BlazeStoryPlayerLastUpdateTextStyle.fromJson(
              json['lastUpdate'] as Map<String, dynamic>),
      buttons: json['buttons'] == null
          ? null
          : BlazeStoryPlayerButtonsStyle.fromJson(
              json['buttons'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] as String?,
      cta: json['cta'] == null
          ? null
          : BlazeStoryPlayerCtaStyle.fromJson(
              json['cta'] as Map<String, dynamic>),
      chips: json['chips'] == null
          ? null
          : BlazeStoryPlayerChipsStyle.fromJson(
              json['chips'] as Map<String, dynamic>),
      headerGradient: json['headerGradient'] == null
          ? null
          : BlazeStoryPlayerHeaderGradientStyle.fromJson(
              json['headerGradient'] as Map<String, dynamic>),
      firstTimeSlide: json['firstTimeSlide'] == null
          ? null
          : BlazeStoryPlayerFirstTimeSlideStyle.fromJson(
              json['firstTimeSlide'] as Map<String, dynamic>),
      progressBar: json['progressBar'] == null
          ? null
          : BlazeStoryPlayerProgressBarStyle.fromJson(
              json['progressBar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeStoryPlayerStyleImplToJson(
        _$BlazeStoryPlayerStyleImpl instance) =>
    <String, dynamic>{
      'title': instance.title?.toJson(),
      'lastUpdate': instance.lastUpdate?.toJson(),
      'buttons': instance.buttons?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'cta': instance.cta?.toJson(),
      'chips': instance.chips?.toJson(),
      'headerGradient': instance.headerGradient?.toJson(),
      'firstTimeSlide': instance.firstTimeSlide?.toJson(),
      'progressBar': instance.progressBar?.toJson(),
    };

_$BlazeStoryPlayerFirstTimeSlideStyleImpl
    _$$BlazeStoryPlayerFirstTimeSlideStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeStoryPlayerFirstTimeSlideStyleImpl(
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
              : BlazeStoryPlayerFirstTimeSlideInstructionsStyle.fromJson(
                  json['instructions'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeStoryPlayerFirstTimeSlideStyleImplToJson(
        _$BlazeStoryPlayerFirstTimeSlideStyleImpl instance) =>
    <String, dynamic>{
      'show': instance.show,
      'cta': instance.cta?.toJson(),
      'backgroundColor': instance.backgroundColor?.toJson(),
      'mainTitle': instance.mainTitle?.toJson(),
      'subtitle': instance.subtitle?.toJson(),
      'instructions': instance.instructions?.toJson(),
    };

_$BlazeStoryPlayerProgressBarStyleImpl
    _$$BlazeStoryPlayerProgressBarStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeStoryPlayerProgressBarStyleImpl(
          backgroundColor: json['backgroundColor'] as String?,
          progressColor: json['progressColor'] as String?,
        );

Map<String, dynamic> _$$BlazeStoryPlayerProgressBarStyleImplToJson(
        _$BlazeStoryPlayerProgressBarStyleImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'progressColor': instance.progressColor,
    };

_$BlazeStoryPlayerFirstTimeSlideInstructionsStyleImpl
    _$$BlazeStoryPlayerFirstTimeSlideInstructionsStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeStoryPlayerFirstTimeSlideInstructionsStyleImpl(
          forward: json['forward'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['forward'] as Map<String, dynamic>),
          pause: json['pause'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['pause'] as Map<String, dynamic>),
          backward: json['backward'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['backward'] as Map<String, dynamic>),
          transition: json['transition'] == null
              ? null
              : BlazeFirstTimeSlideInstructionStyle.fromJson(
                  json['transition'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BlazeStoryPlayerFirstTimeSlideInstructionsStyleImplToJson(
            _$BlazeStoryPlayerFirstTimeSlideInstructionsStyleImpl instance) =>
        <String, dynamic>{
          'forward': instance.forward?.toJson(),
          'pause': instance.pause?.toJson(),
          'backward': instance.backward?.toJson(),
          'transition': instance.transition?.toJson(),
        };

_$BlazeStoryPlayerButtonsStyleImpl _$$BlazeStoryPlayerButtonsStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeStoryPlayerButtonsStyleImpl(
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
    );

Map<String, dynamic> _$$BlazeStoryPlayerButtonsStyleImplToJson(
        _$BlazeStoryPlayerButtonsStyleImpl instance) =>
    <String, dynamic>{
      'mute': instance.mute?.toJson(),
      'exit': instance.exit?.toJson(),
      'share': instance.share?.toJson(),
    };

_$BlazeStoryPlayerCtaStyleImpl _$$BlazeStoryPlayerCtaStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeStoryPlayerCtaStyleImpl(
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble(),
      textSize: (json['textSize'] as num?)?.toDouble(),
      font: json['font'] == null
          ? null
          : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeStoryPlayerCtaStyleImplToJson(
        _$BlazeStoryPlayerCtaStyleImpl instance) =>
    <String, dynamic>{
      'cornerRadius': instance.cornerRadius,
      'textSize': instance.textSize,
      'font': instance.font?.toJson(),
    };

_$BlazeStoryPlayerTitleTextStyleImpl
    _$$BlazeStoryPlayerTitleTextStyleImplFromJson(Map<String, dynamic> json) =>
        _$BlazeStoryPlayerTitleTextStyleImpl(
          font: json['font'] == null
              ? null
              : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
          textSize: (json['textSize'] as num?)?.toDouble(),
          textColor: json['textColor'] as String?,
          isVisible: json['isVisible'] as bool?,
        );

Map<String, dynamic> _$$BlazeStoryPlayerTitleTextStyleImplToJson(
        _$BlazeStoryPlayerTitleTextStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textSize': instance.textSize,
      'textColor': instance.textColor,
      'isVisible': instance.isVisible,
    };

_$BlazeStoryPlayerLastUpdateTextStyleImpl
    _$$BlazeStoryPlayerLastUpdateTextStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeStoryPlayerLastUpdateTextStyleImpl(
          font: json['font'] == null
              ? null
              : BlazeFont.fromJson(json['font'] as Map<String, dynamic>),
          textColor: json['textColor'] as String?,
          textSize: (json['textSize'] as num?)?.toDouble(),
          textCase:
              $enumDecodeNullable(_$BlazeTextCaseEnumMap, json['textCase']),
          isVisible: json['isVisible'] as bool?,
        );

Map<String, dynamic> _$$BlazeStoryPlayerLastUpdateTextStyleImplToJson(
        _$BlazeStoryPlayerLastUpdateTextStyleImpl instance) =>
    <String, dynamic>{
      'font': instance.font?.toJson(),
      'textColor': instance.textColor,
      'textSize': instance.textSize,
      'textCase': _$BlazeTextCaseEnumMap[instance.textCase],
      'isVisible': instance.isVisible,
    };

const _$BlazeTextCaseEnumMap = {
  BlazeTextCase.uppercase: 'Uppercase',
  BlazeTextCase.lowercase: 'Lowercase',
};

_$BlazeStoryPlayerHeaderGradientStyleImpl
    _$$BlazeStoryPlayerHeaderGradientStyleImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeStoryPlayerHeaderGradientStyleImpl(
          isVisible: json['isVisible'] as bool?,
          startColor: json['startColor'] as String?,
          endColor: json['endColor'] as String?,
        );

Map<String, dynamic> _$$BlazeStoryPlayerHeaderGradientStyleImplToJson(
        _$BlazeStoryPlayerHeaderGradientStyleImpl instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'startColor': instance.startColor,
      'endColor': instance.endColor,
    };

_$BlazeStoryPlayerChipStyleImpl _$$BlazeStoryPlayerChipStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeStoryPlayerChipStyleImpl(
      titlePadding: json['titlePadding'] == null
          ? null
          : BlazeMargins.fromJson(json['titlePadding'] as Map<String, dynamic>),
      text: json['text'] as String?,
      textColor: json['textColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      isVisible: json['isVisible'] as bool?,
    );

Map<String, dynamic> _$$BlazeStoryPlayerChipStyleImplToJson(
        _$BlazeStoryPlayerChipStyleImpl instance) =>
    <String, dynamic>{
      'titlePadding': instance.titlePadding?.toJson(),
      'text': instance.text,
      'textColor': instance.textColor,
      'backgroundColor': instance.backgroundColor,
      'isVisible': instance.isVisible,
    };

_$BlazeStoryPlayerChipsStyleImpl _$$BlazeStoryPlayerChipsStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeStoryPlayerChipsStyleImpl(
      live: json['live'] == null
          ? null
          : BlazeStoryPlayerChipStyle.fromJson(
              json['live'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : BlazeStoryPlayerChipStyle.fromJson(
              json['ad'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeStoryPlayerChipsStyleImplToJson(
        _$BlazeStoryPlayerChipsStyleImpl instance) =>
    <String, dynamic>{
      'live': instance.live?.toJson(),
      'ad': instance.ad?.toJson(),
    };
