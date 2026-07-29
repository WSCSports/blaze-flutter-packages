// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_player_container_tabs_delegate_data_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeOnTabSelectedParamsImpl _$$BlazeOnTabSelectedParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeOnTabSelectedParamsImpl(
      playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
      sourceId: json['sourceId'] as String?,
      tabIndex: (json['tabIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$BlazeOnTabSelectedParamsImplToJson(
        _$BlazeOnTabSelectedParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'tabIndex': instance.tabIndex,
    };

const _$BlazePlayerTypeEnumMap = {
  BlazePlayerType.moments: 'moments',
  BlazePlayerType.stories: 'stories',
  BlazePlayerType.videos: 'videos',
};
