// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_pip_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazePipStateChangedParamsImpl _$$BlazePipStateChangedParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazePipStateChangedParamsImpl(
      playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
      sourceId: json['sourceId'] as String?,
      state: $enumDecode(_$BlazePipStateEnumMap, json['state']),
    );

Map<String, dynamic> _$$BlazePipStateChangedParamsImplToJson(
        _$BlazePipStateChangedParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'state': _$BlazePipStateEnumMap[instance.state]!,
    };

const _$BlazePlayerTypeEnumMap = {
  BlazePlayerType.moments: 'moments',
  BlazePlayerType.stories: 'stories',
  BlazePlayerType.videos: 'videos',
};

const _$BlazePipStateEnumMap = {
  BlazePipState.on: 'on',
  BlazePipState.off: 'off',
};
