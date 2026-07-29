// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_action_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisibilityConditionAlwaysImpl _$$VisibilityConditionAlwaysImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionAlwaysImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionAlwaysImplToJson(
        _$VisibilityConditionAlwaysImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$VisibilityConditionNeverImpl _$$VisibilityConditionNeverImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionNeverImpl(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionNeverImplToJson(
        _$VisibilityConditionNeverImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$VisibilityConditionKeyExistsImpl _$$VisibilityConditionKeyExistsImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionKeyExistsImpl(
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionKeyExistsImplToJson(
        _$VisibilityConditionKeyExistsImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'type': instance.$type,
    };

_$VisibilityConditionKeyNotExistsImpl
    _$$VisibilityConditionKeyNotExistsImplFromJson(Map<String, dynamic> json) =>
        _$VisibilityConditionKeyNotExistsImpl(
          key: json['key'] as String,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$VisibilityConditionKeyNotExistsImplToJson(
        _$VisibilityConditionKeyNotExistsImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'type': instance.$type,
    };

_$VisibilityConditionKeyEqualsImpl _$$VisibilityConditionKeyEqualsImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionKeyEqualsImpl(
      key: json['key'] as String,
      value: json['value'] as Object,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionKeyEqualsImplToJson(
        _$VisibilityConditionKeyEqualsImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'type': instance.$type,
    };

_$VisibilityConditionKeyNotEqualsImpl
    _$$VisibilityConditionKeyNotEqualsImplFromJson(Map<String, dynamic> json) =>
        _$VisibilityConditionKeyNotEqualsImpl(
          key: json['key'] as String,
          value: json['value'] as Object,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$VisibilityConditionKeyNotEqualsImplToJson(
        _$VisibilityConditionKeyNotEqualsImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'type': instance.$type,
    };

_$VisibilityConditionKeyInImpl _$$VisibilityConditionKeyInImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionKeyInImpl(
      key: json['key'] as String,
      values:
          (json['values'] as List<dynamic>).map((e) => e as Object).toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionKeyInImplToJson(
        _$VisibilityConditionKeyInImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'values': instance.values,
      'type': instance.$type,
    };

_$VisibilityConditionKeyNotInImpl _$$VisibilityConditionKeyNotInImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionKeyNotInImpl(
      key: json['key'] as String,
      values:
          (json['values'] as List<dynamic>).map((e) => e as Object).toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionKeyNotInImplToJson(
        _$VisibilityConditionKeyNotInImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'values': instance.values,
      'type': instance.$type,
    };

_$VisibilityConditionKeyGreaterThanImpl
    _$$VisibilityConditionKeyGreaterThanImplFromJson(
            Map<String, dynamic> json) =>
        _$VisibilityConditionKeyGreaterThanImpl(
          key: json['key'] as String,
          threshold: json['threshold'] as num,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$VisibilityConditionKeyGreaterThanImplToJson(
        _$VisibilityConditionKeyGreaterThanImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'threshold': instance.threshold,
      'type': instance.$type,
    };

_$VisibilityConditionKeyLessThanImpl
    _$$VisibilityConditionKeyLessThanImplFromJson(Map<String, dynamic> json) =>
        _$VisibilityConditionKeyLessThanImpl(
          key: json['key'] as String,
          threshold: json['threshold'] as num,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$VisibilityConditionKeyLessThanImplToJson(
        _$VisibilityConditionKeyLessThanImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'threshold': instance.threshold,
      'type': instance.$type,
    };

_$VisibilityConditionKeyBetweenImpl
    _$$VisibilityConditionKeyBetweenImplFromJson(Map<String, dynamic> json) =>
        _$VisibilityConditionKeyBetweenImpl(
          key: json['key'] as String,
          min: json['min'] as num,
          max: json['max'] as num,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$VisibilityConditionKeyBetweenImplToJson(
        _$VisibilityConditionKeyBetweenImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'min': instance.min,
      'max': instance.max,
      'type': instance.$type,
    };

_$VisibilityConditionKeyContainsImpl
    _$$VisibilityConditionKeyContainsImplFromJson(Map<String, dynamic> json) =>
        _$VisibilityConditionKeyContainsImpl(
          key: json['key'] as String,
          substring: json['substring'] as String,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$VisibilityConditionKeyContainsImplToJson(
        _$VisibilityConditionKeyContainsImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'substring': instance.substring,
      'type': instance.$type,
    };

_$VisibilityConditionAndImpl _$$VisibilityConditionAndImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionAndImpl(
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => VisibilityCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionAndImplToJson(
        _$VisibilityConditionAndImpl instance) =>
    <String, dynamic>{
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$VisibilityConditionOrImpl _$$VisibilityConditionOrImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionOrImpl(
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => VisibilityCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionOrImplToJson(
        _$VisibilityConditionOrImpl instance) =>
    <String, dynamic>{
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$VisibilityConditionNotImpl _$$VisibilityConditionNotImplFromJson(
        Map<String, dynamic> json) =>
    _$VisibilityConditionNotImpl(
      condition: VisibilityCondition.fromJson(
          json['condition'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VisibilityConditionNotImplToJson(
        _$VisibilityConditionNotImpl instance) =>
    <String, dynamic>{
      'condition': instance.condition.toJson(),
      'type': instance.$type,
    };

_$BlazeCustomActionButtonParamsImpl
    _$$BlazeCustomActionButtonParamsImplFromJson(Map<String, dynamic> json) =>
        _$BlazeCustomActionButtonParamsImpl(
          id: json['id'] as String,
          name: json['name'] as String,
          appMetadata: (json['appMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ),
          visibilityCondition: json['visibilityCondition'] == null
              ? null
              : VisibilityCondition.fromJson(
                  json['visibilityCondition'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeCustomActionButtonParamsImplToJson(
        _$BlazeCustomActionButtonParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'appMetadata': instance.appMetadata,
      'visibilityCondition': instance.visibilityCondition?.toJson(),
    };

_$BlazeCustomActionButtonImpl _$$BlazeCustomActionButtonImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeCustomActionButtonImpl(
      customParams: BlazeCustomActionButtonParams.fromJson(
          json['customParams'] as Map<String, dynamic>),
      style: json['style'] == null
          ? null
          : BlazePlayerButtonStyle.fromJson(
              json['style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlazeCustomActionButtonImplToJson(
        _$BlazeCustomActionButtonImpl instance) =>
    <String, dynamic>{
      'customParams': instance.customParams.toJson(),
      'style': instance.style?.toJson(),
    };
