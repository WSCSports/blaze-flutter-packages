// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_videos_filter_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeVideosFilterParamsImpl _$$BlazeVideosFilterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeVideosFilterParamsImpl(
      contentTypes: (json['contentTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$BlazeVideoContentTypeEnumMap, e))
          .toList(),
      streamStates: (json['streamStates'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$BlazeLiveStreamStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$BlazeVideosFilterParamsImplToJson(
        _$BlazeVideosFilterParamsImpl instance) =>
    <String, dynamic>{
      'contentTypes': instance.contentTypes
          ?.map((e) => _$BlazeVideoContentTypeEnumMap[e]!)
          .toList(),
      'streamStates': instance.streamStates
          ?.map((e) => _$BlazeLiveStreamStatusEnumMap[e]!)
          .toList(),
    };

const _$BlazeVideoContentTypeEnumMap = {
  BlazeVideoContentType.video: 'video',
  BlazeVideoContentType.stream: 'stream',
};

const _$BlazeLiveStreamStatusEnumMap = {
  BlazeLiveStreamStatus.live: 'live',
  BlazeLiveStreamStatus.upcoming: 'upcoming',
  BlazeLiveStreamStatus.ended: 'ended',
};
