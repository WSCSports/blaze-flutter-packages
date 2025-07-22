// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_async_bridge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AsyncBridgeRequestImpl _$$_AsyncBridgeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$_AsyncBridgeRequestImpl(
      methodName: json['methodName'] as String,
      params: json['params'] as String,
      callbackId: json['callbackId'] as String,
    );

Map<String, dynamic> _$$_AsyncBridgeRequestImplToJson(
        _$_AsyncBridgeRequestImpl instance) =>
    <String, dynamic>{
      'methodName': instance.methodName,
      'params': instance.params,
      'callbackId': instance.callbackId,
    };

_$_AsyncBridgeResponseImpl _$$_AsyncBridgeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$_AsyncBridgeResponseImpl(
      callbackId: json['callbackId'] as String,
      success: json['success'] as bool,
      data: json['data'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_AsyncBridgeResponseImplToJson(
        _$_AsyncBridgeResponseImpl instance) =>
    <String, dynamic>{
      'callbackId': instance.callbackId,
      'success': instance.success,
      'data': instance.data,
      'errorMessage': instance.errorMessage,
    };
