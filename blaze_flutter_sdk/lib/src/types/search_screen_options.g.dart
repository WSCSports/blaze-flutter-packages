// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_screen_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeSearchScreenOptionsImpl _$$BlazeSearchScreenOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeSearchScreenOptionsImpl(
      suggestionsDataSource: json['suggestionsDataSource'] == null
          ? null
          : BlazeDataSourceType.fromJson(
              json['suggestionsDataSource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeSearchScreenOptionsImplToJson(
        _$BlazeSearchScreenOptionsImpl instance) =>
    <String, dynamic>{
      'suggestionsDataSource': instance.suggestionsDataSource?.toJson(),
    };
