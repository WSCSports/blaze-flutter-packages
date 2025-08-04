// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_base_player_delegate_data_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeOnDataLoadStartedParamsImpl _$$BlazeOnDataLoadStartedParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeOnDataLoadStartedParamsImpl(
      playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
      sourceId: json['sourceId'] as String?,
    );

Map<String, dynamic> _$$BlazeOnDataLoadStartedParamsImplToJson(
        _$BlazeOnDataLoadStartedParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
    };

const _$BlazePlayerTypeEnumMap = {
  BlazePlayerType.moments: 'moments',
  BlazePlayerType.stories: 'stories',
  BlazePlayerType.videos: 'videos',
};

_$BlazeOnDataLoadCompleteParamsImpl
    _$$BlazeOnDataLoadCompleteParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeOnDataLoadCompleteParamsImpl(
          playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
          sourceId: json['sourceId'] as String?,
          itemsCount: (json['itemsCount'] as num).toInt(),
          error: json['error'] == null
              ? null
              : BlazeError.fromJson(json['error'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeOnDataLoadCompleteParamsImplToJson(
        _$BlazeOnDataLoadCompleteParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'itemsCount': instance.itemsCount,
      'error': instance.error?.toJson(),
    };

_$BlazeOnPlayerDidAppearParamsImpl _$$BlazeOnPlayerDidAppearParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeOnPlayerDidAppearParamsImpl(
      playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
      sourceId: json['sourceId'] as String?,
    );

Map<String, dynamic> _$$BlazeOnPlayerDidAppearParamsImplToJson(
        _$BlazeOnPlayerDidAppearParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
    };

_$BlazeOnPlayerDidDismissParamsImpl
    _$$BlazeOnPlayerDidDismissParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeOnPlayerDidDismissParamsImpl(
          playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
          sourceId: json['sourceId'] as String?,
        );

Map<String, dynamic> _$$BlazeOnPlayerDidDismissParamsImplToJson(
        _$BlazeOnPlayerDidDismissParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
    };

_$BlazeOnTriggerCTAParamsImpl _$$BlazeOnTriggerCTAParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeOnTriggerCTAParamsImpl(
      playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
      sourceId: json['sourceId'] as String?,
      actionType: $enumDecode(_$BlazeCTAActionTypeEnumMap, json['actionType']),
      actionParam: json['actionParam'] as String,
    );

Map<String, dynamic> _$$BlazeOnTriggerCTAParamsImplToJson(
        _$BlazeOnTriggerCTAParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'actionType': _$BlazeCTAActionTypeEnumMap[instance.actionType]!,
      'actionParam': instance.actionParam,
    };

const _$BlazeCTAActionTypeEnumMap = {
  BlazeCTAActionType.deeplink: 'Deeplink',
  BlazeCTAActionType.web: 'Web',
};

_$BlazeOnTriggerPlayerBodyTextLinkParamsImpl
    _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl(
          playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
          sourceId: json['sourceId'] as String?,
          actionParam: json['actionParam'] as String,
        );

Map<String, dynamic> _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplToJson(
        _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'actionParam': instance.actionParam,
    };

_$BlazeOnPlayerEventTriggeredParamsImpl
    _$$BlazeOnPlayerEventTriggeredParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeOnPlayerEventTriggeredParamsImpl(
          playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
          sourceId: json['sourceId'] as String?,
          event:
              BlazePlayerEvent.fromJson(json['event'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeOnPlayerEventTriggeredParamsImplToJson(
        _$BlazeOnPlayerEventTriggeredParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'event': instance.event.toJson(),
    };

_$BlazePlayerEventOnMomentStartImpl
    _$$BlazePlayerEventOnMomentStartImplFromJson(Map<String, dynamic> json) =>
        _$BlazePlayerEventOnMomentStartImpl(
          momentId: json['momentId'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$BlazePlayerEventOnMomentStartImplToJson(
        _$BlazePlayerEventOnMomentStartImpl instance) =>
    <String, dynamic>{
      'momentId': instance.momentId,
      'runtimeType': instance.$type,
    };

_$BlazePlayerEventOnStoryStartImpl _$$BlazePlayerEventOnStoryStartImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerEventOnStoryStartImpl(
      storyId: json['storyId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BlazePlayerEventOnStoryStartImplToJson(
        _$BlazePlayerEventOnStoryStartImpl instance) =>
    <String, dynamic>{
      'storyId': instance.storyId,
      'runtimeType': instance.$type,
    };

_$BlazePlayerEventOnVideoStartImpl _$$BlazePlayerEventOnVideoStartImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerEventOnVideoStartImpl(
      videoId: json['videoId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BlazePlayerEventOnVideoStartImplToJson(
        _$BlazePlayerEventOnVideoStartImpl instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'runtimeType': instance.$type,
    };

_$BlazePlayerEventInternalDataImpl _$$BlazePlayerEventInternalDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerEventInternalDataImpl(
      playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
      sourceId: json['sourceId'] as String?,
      eventData: BlazePlayerEventData.fromJson(
          json['eventData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazePlayerEventInternalDataImplToJson(
        _$BlazePlayerEventInternalDataImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'eventData': instance.eventData.toJson(),
    };

_$BlazePlayerEventDataImpl _$$BlazePlayerEventDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePlayerEventDataImpl(
      playerEventType: json['playerEventType'] as String,
      playerEventParams: json['playerEventParams'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$BlazePlayerEventDataImplToJson(
        _$BlazePlayerEventDataImpl instance) =>
    <String, dynamic>{
      'playerEventType': instance.playerEventType,
      'playerEventParams': instance.playerEventParams,
    };
