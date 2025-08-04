// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeErrorImpl _$$BlazeErrorImplFromJson(Map<String, dynamic> json) =>
    _$BlazeErrorImpl(
      domain: json['domain'] as String?,
      reason: json['reason'] as String?,
      message: json['message'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      underlyingError: json['underlyingError'] as String?,
    );

Map<String, dynamic> _$$BlazeErrorImplToJson(_$BlazeErrorImpl instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'reason': instance.reason,
      'message': instance.message,
      'metadata': instance.metadata,
      'underlyingError': instance.underlyingError,
    };
