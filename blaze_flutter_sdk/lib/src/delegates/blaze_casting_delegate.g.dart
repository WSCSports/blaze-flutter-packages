// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_casting_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeCastingStateChangedParamsImpl
    _$$BlazeCastingStateChangedParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeCastingStateChangedParamsImpl(
          playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
          sourceId: json['sourceId'] as String?,
          state: $enumDecode(_$BlazeCastingStateEnumMap, json['state']),
        );

Map<String, dynamic> _$$BlazeCastingStateChangedParamsImplToJson(
        _$BlazeCastingStateChangedParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'state': _$BlazeCastingStateEnumMap[instance.state]!,
    };

const _$BlazePlayerTypeEnumMap = {
  BlazePlayerType.moments: 'moments',
  BlazePlayerType.stories: 'stories',
  BlazePlayerType.videos: 'videos',
};

const _$BlazeCastingStateEnumMap = {
  BlazeCastingState.on: 'on',
  BlazeCastingState.off: 'off',
};
