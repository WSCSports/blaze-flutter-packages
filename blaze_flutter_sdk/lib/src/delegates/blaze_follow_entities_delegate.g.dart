// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_follow_entities_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeFollowEntityImpl _$$BlazeFollowEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeFollowEntityImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$BlazeFollowEntityImplToJson(
        _$BlazeFollowEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$BlazeOnFollowEntityClickedParamsImpl
    _$$BlazeOnFollowEntityClickedParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeOnFollowEntityClickedParamsImpl(
          playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
          sourceId: json['sourceId'] as String?,
          newFollowingState: json['newFollowingState'] as bool,
          followEntity: BlazeFollowEntity.fromJson(
              json['followEntity'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeOnFollowEntityClickedParamsImplToJson(
        _$BlazeOnFollowEntityClickedParamsImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'newFollowingState': instance.newFollowingState,
      'followEntity': instance.followEntity.toJson(),
    };

const _$BlazePlayerTypeEnumMap = {
  BlazePlayerType.moments: 'moments',
  BlazePlayerType.stories: 'stories',
  BlazePlayerType.videos: 'videos',
};

_$BlazeOnFollowEntityClickedInternalDataImpl
    _$$BlazeOnFollowEntityClickedInternalDataImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeOnFollowEntityClickedInternalDataImpl(
          playerType: $enumDecode(_$BlazePlayerTypeEnumMap, json['playerType']),
          sourceId: json['sourceId'] as String?,
          newFollowingState: json['newFollowingState'] as bool,
          followEntityId: json['followEntityId'] as String,
        );

Map<String, dynamic> _$$BlazeOnFollowEntityClickedInternalDataImplToJson(
        _$BlazeOnFollowEntityClickedInternalDataImpl instance) =>
    <String, dynamic>{
      'playerType': _$BlazePlayerTypeEnumMap[instance.playerType]!,
      'sourceId': instance.sourceId,
      'newFollowingState': instance.newFollowingState,
      'followEntityId': instance.followEntityId,
    };
