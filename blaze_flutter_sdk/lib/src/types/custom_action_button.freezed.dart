// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_action_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisibilityCondition _$VisibilityConditionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'always':
      return VisibilityConditionAlways.fromJson(json);
    case 'never':
      return VisibilityConditionNever.fromJson(json);
    case 'keyExists':
      return VisibilityConditionKeyExists.fromJson(json);
    case 'keyNotExists':
      return VisibilityConditionKeyNotExists.fromJson(json);
    case 'keyEquals':
      return VisibilityConditionKeyEquals.fromJson(json);
    case 'keyNotEquals':
      return VisibilityConditionKeyNotEquals.fromJson(json);
    case 'keyIn':
      return VisibilityConditionKeyIn.fromJson(json);
    case 'keyNotIn':
      return VisibilityConditionKeyNotIn.fromJson(json);
    case 'keyGreaterThan':
      return VisibilityConditionKeyGreaterThan.fromJson(json);
    case 'keyLessThan':
      return VisibilityConditionKeyLessThan.fromJson(json);
    case 'keyBetween':
      return VisibilityConditionKeyBetween.fromJson(json);
    case 'keyContains':
      return VisibilityConditionKeyContains.fromJson(json);
    case 'and':
      return VisibilityConditionAnd.fromJson(json);
    case 'or':
      return VisibilityConditionOr.fromJson(json);
    case 'not':
      return VisibilityConditionNot.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'VisibilityCondition',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$VisibilityCondition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this VisibilityCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibilityConditionCopyWith<$Res> {
  factory $VisibilityConditionCopyWith(
          VisibilityCondition value, $Res Function(VisibilityCondition) then) =
      _$VisibilityConditionCopyWithImpl<$Res, VisibilityCondition>;
}

/// @nodoc
class _$VisibilityConditionCopyWithImpl<$Res, $Val extends VisibilityCondition>
    implements $VisibilityConditionCopyWith<$Res> {
  _$VisibilityConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VisibilityConditionAlwaysImplCopyWith<$Res> {
  factory _$$VisibilityConditionAlwaysImplCopyWith(
          _$VisibilityConditionAlwaysImpl value,
          $Res Function(_$VisibilityConditionAlwaysImpl) then) =
      __$$VisibilityConditionAlwaysImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VisibilityConditionAlwaysImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionAlwaysImpl>
    implements _$$VisibilityConditionAlwaysImplCopyWith<$Res> {
  __$$VisibilityConditionAlwaysImplCopyWithImpl(
      _$VisibilityConditionAlwaysImpl _value,
      $Res Function(_$VisibilityConditionAlwaysImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionAlwaysImpl implements VisibilityConditionAlways {
  const _$VisibilityConditionAlwaysImpl({final String? $type})
      : $type = $type ?? 'always';

  factory _$VisibilityConditionAlwaysImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityConditionAlwaysImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.always()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionAlwaysImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return always();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return always?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (always != null) {
      return always();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return always(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return always?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (always != null) {
      return always(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionAlwaysImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionAlways implements VisibilityCondition {
  const factory VisibilityConditionAlways() = _$VisibilityConditionAlwaysImpl;

  factory VisibilityConditionAlways.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionAlwaysImpl.fromJson;
}

/// @nodoc
abstract class _$$VisibilityConditionNeverImplCopyWith<$Res> {
  factory _$$VisibilityConditionNeverImplCopyWith(
          _$VisibilityConditionNeverImpl value,
          $Res Function(_$VisibilityConditionNeverImpl) then) =
      __$$VisibilityConditionNeverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VisibilityConditionNeverImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionNeverImpl>
    implements _$$VisibilityConditionNeverImplCopyWith<$Res> {
  __$$VisibilityConditionNeverImplCopyWithImpl(
      _$VisibilityConditionNeverImpl _value,
      $Res Function(_$VisibilityConditionNeverImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionNeverImpl implements VisibilityConditionNever {
  const _$VisibilityConditionNeverImpl({final String? $type})
      : $type = $type ?? 'never';

  factory _$VisibilityConditionNeverImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityConditionNeverImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.never()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionNeverImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return never();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return never?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (never != null) {
      return never();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return never(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return never?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (never != null) {
      return never(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionNeverImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionNever implements VisibilityCondition {
  const factory VisibilityConditionNever() = _$VisibilityConditionNeverImpl;

  factory VisibilityConditionNever.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionNeverImpl.fromJson;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyExistsImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyExistsImplCopyWith(
          _$VisibilityConditionKeyExistsImpl value,
          $Res Function(_$VisibilityConditionKeyExistsImpl) then) =
      __$$VisibilityConditionKeyExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$VisibilityConditionKeyExistsImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyExistsImpl>
    implements _$$VisibilityConditionKeyExistsImplCopyWith<$Res> {
  __$$VisibilityConditionKeyExistsImplCopyWithImpl(
      _$VisibilityConditionKeyExistsImpl _value,
      $Res Function(_$VisibilityConditionKeyExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$VisibilityConditionKeyExistsImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyExistsImpl
    implements VisibilityConditionKeyExists {
  const _$VisibilityConditionKeyExistsImpl(
      {required this.key, final String? $type})
      : $type = $type ?? 'keyExists';

  factory _$VisibilityConditionKeyExistsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyExistsImplFromJson(json);

  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyExists(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyExistsImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyExistsImplCopyWith<
          _$VisibilityConditionKeyExistsImpl>
      get copyWith => __$$VisibilityConditionKeyExistsImplCopyWithImpl<
          _$VisibilityConditionKeyExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyExists(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyExists?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyExists != null) {
      return keyExists(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyExists != null) {
      return keyExists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyExistsImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyExists implements VisibilityCondition {
  const factory VisibilityConditionKeyExists({required final String key}) =
      _$VisibilityConditionKeyExistsImpl;

  factory VisibilityConditionKeyExists.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyExistsImpl.fromJson;

  String get key;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyExistsImplCopyWith<
          _$VisibilityConditionKeyExistsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyNotExistsImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyNotExistsImplCopyWith(
          _$VisibilityConditionKeyNotExistsImpl value,
          $Res Function(_$VisibilityConditionKeyNotExistsImpl) then) =
      __$$VisibilityConditionKeyNotExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$VisibilityConditionKeyNotExistsImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyNotExistsImpl>
    implements _$$VisibilityConditionKeyNotExistsImplCopyWith<$Res> {
  __$$VisibilityConditionKeyNotExistsImplCopyWithImpl(
      _$VisibilityConditionKeyNotExistsImpl _value,
      $Res Function(_$VisibilityConditionKeyNotExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$VisibilityConditionKeyNotExistsImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyNotExistsImpl
    implements VisibilityConditionKeyNotExists {
  const _$VisibilityConditionKeyNotExistsImpl(
      {required this.key, final String? $type})
      : $type = $type ?? 'keyNotExists';

  factory _$VisibilityConditionKeyNotExistsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyNotExistsImplFromJson(json);

  @override
  final String key;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyNotExists(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyNotExistsImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyNotExistsImplCopyWith<
          _$VisibilityConditionKeyNotExistsImpl>
      get copyWith => __$$VisibilityConditionKeyNotExistsImplCopyWithImpl<
          _$VisibilityConditionKeyNotExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyNotExists(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyNotExists?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyNotExists != null) {
      return keyNotExists(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyNotExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyNotExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyNotExists != null) {
      return keyNotExists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyNotExistsImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyNotExists implements VisibilityCondition {
  const factory VisibilityConditionKeyNotExists({required final String key}) =
      _$VisibilityConditionKeyNotExistsImpl;

  factory VisibilityConditionKeyNotExists.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyNotExistsImpl.fromJson;

  String get key;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyNotExistsImplCopyWith<
          _$VisibilityConditionKeyNotExistsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyEqualsImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyEqualsImplCopyWith(
          _$VisibilityConditionKeyEqualsImpl value,
          $Res Function(_$VisibilityConditionKeyEqualsImpl) then) =
      __$$VisibilityConditionKeyEqualsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, Object value});
}

/// @nodoc
class __$$VisibilityConditionKeyEqualsImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyEqualsImpl>
    implements _$$VisibilityConditionKeyEqualsImplCopyWith<$Res> {
  __$$VisibilityConditionKeyEqualsImplCopyWithImpl(
      _$VisibilityConditionKeyEqualsImpl _value,
      $Res Function(_$VisibilityConditionKeyEqualsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$VisibilityConditionKeyEqualsImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value ? _value.value : value,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyEqualsImpl
    implements VisibilityConditionKeyEquals {
  const _$VisibilityConditionKeyEqualsImpl(
      {required this.key, required this.value, final String? $type})
      : $type = $type ?? 'keyEquals';

  factory _$VisibilityConditionKeyEqualsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyEqualsImplFromJson(json);

  @override
  final String key;
  @override
  final Object value;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyEquals(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyEqualsImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyEqualsImplCopyWith<
          _$VisibilityConditionKeyEqualsImpl>
      get copyWith => __$$VisibilityConditionKeyEqualsImplCopyWithImpl<
          _$VisibilityConditionKeyEqualsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyEquals(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyEquals?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyEquals != null) {
      return keyEquals(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyEquals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyEquals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyEquals != null) {
      return keyEquals(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyEqualsImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyEquals implements VisibilityCondition {
  const factory VisibilityConditionKeyEquals(
      {required final String key,
      required final Object value}) = _$VisibilityConditionKeyEqualsImpl;

  factory VisibilityConditionKeyEquals.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyEqualsImpl.fromJson;

  String get key;
  Object get value;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyEqualsImplCopyWith<
          _$VisibilityConditionKeyEqualsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyNotEqualsImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyNotEqualsImplCopyWith(
          _$VisibilityConditionKeyNotEqualsImpl value,
          $Res Function(_$VisibilityConditionKeyNotEqualsImpl) then) =
      __$$VisibilityConditionKeyNotEqualsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, Object value});
}

/// @nodoc
class __$$VisibilityConditionKeyNotEqualsImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyNotEqualsImpl>
    implements _$$VisibilityConditionKeyNotEqualsImplCopyWith<$Res> {
  __$$VisibilityConditionKeyNotEqualsImplCopyWithImpl(
      _$VisibilityConditionKeyNotEqualsImpl _value,
      $Res Function(_$VisibilityConditionKeyNotEqualsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$VisibilityConditionKeyNotEqualsImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value ? _value.value : value,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyNotEqualsImpl
    implements VisibilityConditionKeyNotEquals {
  const _$VisibilityConditionKeyNotEqualsImpl(
      {required this.key, required this.value, final String? $type})
      : $type = $type ?? 'keyNotEquals';

  factory _$VisibilityConditionKeyNotEqualsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyNotEqualsImplFromJson(json);

  @override
  final String key;
  @override
  final Object value;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyNotEquals(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyNotEqualsImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(value));

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyNotEqualsImplCopyWith<
          _$VisibilityConditionKeyNotEqualsImpl>
      get copyWith => __$$VisibilityConditionKeyNotEqualsImplCopyWithImpl<
          _$VisibilityConditionKeyNotEqualsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyNotEquals(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyNotEquals?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyNotEquals != null) {
      return keyNotEquals(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyNotEquals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyNotEquals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyNotEquals != null) {
      return keyNotEquals(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyNotEqualsImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyNotEquals implements VisibilityCondition {
  const factory VisibilityConditionKeyNotEquals(
      {required final String key,
      required final Object value}) = _$VisibilityConditionKeyNotEqualsImpl;

  factory VisibilityConditionKeyNotEquals.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyNotEqualsImpl.fromJson;

  String get key;
  Object get value;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyNotEqualsImplCopyWith<
          _$VisibilityConditionKeyNotEqualsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyInImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyInImplCopyWith(
          _$VisibilityConditionKeyInImpl value,
          $Res Function(_$VisibilityConditionKeyInImpl) then) =
      __$$VisibilityConditionKeyInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, List<Object> values});
}

/// @nodoc
class __$$VisibilityConditionKeyInImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyInImpl>
    implements _$$VisibilityConditionKeyInImplCopyWith<$Res> {
  __$$VisibilityConditionKeyInImplCopyWithImpl(
      _$VisibilityConditionKeyInImpl _value,
      $Res Function(_$VisibilityConditionKeyInImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? values = null,
  }) {
    return _then(_$VisibilityConditionKeyInImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyInImpl implements VisibilityConditionKeyIn {
  const _$VisibilityConditionKeyInImpl(
      {required this.key,
      required final List<Object> values,
      final String? $type})
      : _values = values,
        $type = $type ?? 'keyIn';

  factory _$VisibilityConditionKeyInImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyInImplFromJson(json);

  @override
  final String key;
  final List<Object> _values;
  @override
  List<Object> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyIn(key: $key, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyInImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_values));

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyInImplCopyWith<_$VisibilityConditionKeyInImpl>
      get copyWith => __$$VisibilityConditionKeyInImplCopyWithImpl<
          _$VisibilityConditionKeyInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyIn(key, values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyIn?.call(key, values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyIn != null) {
      return keyIn(key, values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyIn != null) {
      return keyIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyInImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyIn implements VisibilityCondition {
  const factory VisibilityConditionKeyIn(
      {required final String key,
      required final List<Object> values}) = _$VisibilityConditionKeyInImpl;

  factory VisibilityConditionKeyIn.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyInImpl.fromJson;

  String get key;
  List<Object> get values;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyInImplCopyWith<_$VisibilityConditionKeyInImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyNotInImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyNotInImplCopyWith(
          _$VisibilityConditionKeyNotInImpl value,
          $Res Function(_$VisibilityConditionKeyNotInImpl) then) =
      __$$VisibilityConditionKeyNotInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, List<Object> values});
}

/// @nodoc
class __$$VisibilityConditionKeyNotInImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyNotInImpl>
    implements _$$VisibilityConditionKeyNotInImplCopyWith<$Res> {
  __$$VisibilityConditionKeyNotInImplCopyWithImpl(
      _$VisibilityConditionKeyNotInImpl _value,
      $Res Function(_$VisibilityConditionKeyNotInImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? values = null,
  }) {
    return _then(_$VisibilityConditionKeyNotInImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyNotInImpl implements VisibilityConditionKeyNotIn {
  const _$VisibilityConditionKeyNotInImpl(
      {required this.key,
      required final List<Object> values,
      final String? $type})
      : _values = values,
        $type = $type ?? 'keyNotIn';

  factory _$VisibilityConditionKeyNotInImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyNotInImplFromJson(json);

  @override
  final String key;
  final List<Object> _values;
  @override
  List<Object> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyNotIn(key: $key, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyNotInImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_values));

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyNotInImplCopyWith<_$VisibilityConditionKeyNotInImpl>
      get copyWith => __$$VisibilityConditionKeyNotInImplCopyWithImpl<
          _$VisibilityConditionKeyNotInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyNotIn(key, values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyNotIn?.call(key, values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyNotIn != null) {
      return keyNotIn(key, values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyNotIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyNotIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyNotIn != null) {
      return keyNotIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyNotInImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyNotIn implements VisibilityCondition {
  const factory VisibilityConditionKeyNotIn(
      {required final String key,
      required final List<Object> values}) = _$VisibilityConditionKeyNotInImpl;

  factory VisibilityConditionKeyNotIn.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyNotInImpl.fromJson;

  String get key;
  List<Object> get values;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyNotInImplCopyWith<_$VisibilityConditionKeyNotInImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyGreaterThanImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyGreaterThanImplCopyWith(
          _$VisibilityConditionKeyGreaterThanImpl value,
          $Res Function(_$VisibilityConditionKeyGreaterThanImpl) then) =
      __$$VisibilityConditionKeyGreaterThanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, num threshold});
}

/// @nodoc
class __$$VisibilityConditionKeyGreaterThanImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyGreaterThanImpl>
    implements _$$VisibilityConditionKeyGreaterThanImplCopyWith<$Res> {
  __$$VisibilityConditionKeyGreaterThanImplCopyWithImpl(
      _$VisibilityConditionKeyGreaterThanImpl _value,
      $Res Function(_$VisibilityConditionKeyGreaterThanImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? threshold = null,
  }) {
    return _then(_$VisibilityConditionKeyGreaterThanImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyGreaterThanImpl
    implements VisibilityConditionKeyGreaterThan {
  const _$VisibilityConditionKeyGreaterThanImpl(
      {required this.key, required this.threshold, final String? $type})
      : $type = $type ?? 'keyGreaterThan';

  factory _$VisibilityConditionKeyGreaterThanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyGreaterThanImplFromJson(json);

  @override
  final String key;
  @override
  final num threshold;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyGreaterThan(key: $key, threshold: $threshold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyGreaterThanImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, threshold);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyGreaterThanImplCopyWith<
          _$VisibilityConditionKeyGreaterThanImpl>
      get copyWith => __$$VisibilityConditionKeyGreaterThanImplCopyWithImpl<
          _$VisibilityConditionKeyGreaterThanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyGreaterThan(key, threshold);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyGreaterThan?.call(key, threshold);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyGreaterThan != null) {
      return keyGreaterThan(key, threshold);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyGreaterThan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyGreaterThan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyGreaterThan != null) {
      return keyGreaterThan(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyGreaterThanImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyGreaterThan
    implements VisibilityCondition {
  const factory VisibilityConditionKeyGreaterThan(
      {required final String key,
      required final num threshold}) = _$VisibilityConditionKeyGreaterThanImpl;

  factory VisibilityConditionKeyGreaterThan.fromJson(
          Map<String, dynamic> json) =
      _$VisibilityConditionKeyGreaterThanImpl.fromJson;

  String get key;
  num get threshold;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyGreaterThanImplCopyWith<
          _$VisibilityConditionKeyGreaterThanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyLessThanImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyLessThanImplCopyWith(
          _$VisibilityConditionKeyLessThanImpl value,
          $Res Function(_$VisibilityConditionKeyLessThanImpl) then) =
      __$$VisibilityConditionKeyLessThanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, num threshold});
}

/// @nodoc
class __$$VisibilityConditionKeyLessThanImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyLessThanImpl>
    implements _$$VisibilityConditionKeyLessThanImplCopyWith<$Res> {
  __$$VisibilityConditionKeyLessThanImplCopyWithImpl(
      _$VisibilityConditionKeyLessThanImpl _value,
      $Res Function(_$VisibilityConditionKeyLessThanImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? threshold = null,
  }) {
    return _then(_$VisibilityConditionKeyLessThanImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyLessThanImpl
    implements VisibilityConditionKeyLessThan {
  const _$VisibilityConditionKeyLessThanImpl(
      {required this.key, required this.threshold, final String? $type})
      : $type = $type ?? 'keyLessThan';

  factory _$VisibilityConditionKeyLessThanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyLessThanImplFromJson(json);

  @override
  final String key;
  @override
  final num threshold;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyLessThan(key: $key, threshold: $threshold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyLessThanImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, threshold);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyLessThanImplCopyWith<
          _$VisibilityConditionKeyLessThanImpl>
      get copyWith => __$$VisibilityConditionKeyLessThanImplCopyWithImpl<
          _$VisibilityConditionKeyLessThanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyLessThan(key, threshold);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyLessThan?.call(key, threshold);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyLessThan != null) {
      return keyLessThan(key, threshold);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyLessThan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyLessThan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyLessThan != null) {
      return keyLessThan(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyLessThanImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyLessThan implements VisibilityCondition {
  const factory VisibilityConditionKeyLessThan(
      {required final String key,
      required final num threshold}) = _$VisibilityConditionKeyLessThanImpl;

  factory VisibilityConditionKeyLessThan.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyLessThanImpl.fromJson;

  String get key;
  num get threshold;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyLessThanImplCopyWith<
          _$VisibilityConditionKeyLessThanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyBetweenImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyBetweenImplCopyWith(
          _$VisibilityConditionKeyBetweenImpl value,
          $Res Function(_$VisibilityConditionKeyBetweenImpl) then) =
      __$$VisibilityConditionKeyBetweenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, num min, num max});
}

/// @nodoc
class __$$VisibilityConditionKeyBetweenImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyBetweenImpl>
    implements _$$VisibilityConditionKeyBetweenImplCopyWith<$Res> {
  __$$VisibilityConditionKeyBetweenImplCopyWithImpl(
      _$VisibilityConditionKeyBetweenImpl _value,
      $Res Function(_$VisibilityConditionKeyBetweenImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$VisibilityConditionKeyBetweenImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as num,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyBetweenImpl
    implements VisibilityConditionKeyBetween {
  const _$VisibilityConditionKeyBetweenImpl(
      {required this.key,
      required this.min,
      required this.max,
      final String? $type})
      : $type = $type ?? 'keyBetween';

  factory _$VisibilityConditionKeyBetweenImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyBetweenImplFromJson(json);

  @override
  final String key;
  @override
  final num min;
  @override
  final num max;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyBetween(key: $key, min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyBetweenImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, min, max);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyBetweenImplCopyWith<
          _$VisibilityConditionKeyBetweenImpl>
      get copyWith => __$$VisibilityConditionKeyBetweenImplCopyWithImpl<
          _$VisibilityConditionKeyBetweenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyBetween(key, min, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyBetween?.call(key, min, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyBetween != null) {
      return keyBetween(key, min, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyBetween(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyBetween?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyBetween != null) {
      return keyBetween(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyBetweenImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyBetween implements VisibilityCondition {
  const factory VisibilityConditionKeyBetween(
      {required final String key,
      required final num min,
      required final num max}) = _$VisibilityConditionKeyBetweenImpl;

  factory VisibilityConditionKeyBetween.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyBetweenImpl.fromJson;

  String get key;
  num get min;
  num get max;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyBetweenImplCopyWith<
          _$VisibilityConditionKeyBetweenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionKeyContainsImplCopyWith<$Res> {
  factory _$$VisibilityConditionKeyContainsImplCopyWith(
          _$VisibilityConditionKeyContainsImpl value,
          $Res Function(_$VisibilityConditionKeyContainsImpl) then) =
      __$$VisibilityConditionKeyContainsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, String substring});
}

/// @nodoc
class __$$VisibilityConditionKeyContainsImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionKeyContainsImpl>
    implements _$$VisibilityConditionKeyContainsImplCopyWith<$Res> {
  __$$VisibilityConditionKeyContainsImplCopyWithImpl(
      _$VisibilityConditionKeyContainsImpl _value,
      $Res Function(_$VisibilityConditionKeyContainsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? substring = null,
  }) {
    return _then(_$VisibilityConditionKeyContainsImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      substring: null == substring
          ? _value.substring
          : substring // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionKeyContainsImpl
    implements VisibilityConditionKeyContains {
  const _$VisibilityConditionKeyContainsImpl(
      {required this.key, required this.substring, final String? $type})
      : $type = $type ?? 'keyContains';

  factory _$VisibilityConditionKeyContainsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VisibilityConditionKeyContainsImplFromJson(json);

  @override
  final String key;
  @override
  final String substring;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.keyContains(key: $key, substring: $substring)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionKeyContainsImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.substring, substring) ||
                other.substring == substring));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, substring);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionKeyContainsImplCopyWith<
          _$VisibilityConditionKeyContainsImpl>
      get copyWith => __$$VisibilityConditionKeyContainsImplCopyWithImpl<
          _$VisibilityConditionKeyContainsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return keyContains(key, substring);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return keyContains?.call(key, substring);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (keyContains != null) {
      return keyContains(key, substring);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return keyContains(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return keyContains?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (keyContains != null) {
      return keyContains(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionKeyContainsImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionKeyContains implements VisibilityCondition {
  const factory VisibilityConditionKeyContains(
      {required final String key,
      required final String substring}) = _$VisibilityConditionKeyContainsImpl;

  factory VisibilityConditionKeyContains.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionKeyContainsImpl.fromJson;

  String get key;
  String get substring;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionKeyContainsImplCopyWith<
          _$VisibilityConditionKeyContainsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionAndImplCopyWith<$Res> {
  factory _$$VisibilityConditionAndImplCopyWith(
          _$VisibilityConditionAndImpl value,
          $Res Function(_$VisibilityConditionAndImpl) then) =
      __$$VisibilityConditionAndImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VisibilityCondition> conditions});
}

/// @nodoc
class __$$VisibilityConditionAndImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionAndImpl>
    implements _$$VisibilityConditionAndImplCopyWith<$Res> {
  __$$VisibilityConditionAndImplCopyWithImpl(
      _$VisibilityConditionAndImpl _value,
      $Res Function(_$VisibilityConditionAndImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = null,
  }) {
    return _then(_$VisibilityConditionAndImpl(
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<VisibilityCondition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionAndImpl implements VisibilityConditionAnd {
  const _$VisibilityConditionAndImpl(
      {required final List<VisibilityCondition> conditions,
      final String? $type})
      : _conditions = conditions,
        $type = $type ?? 'and';

  factory _$VisibilityConditionAndImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityConditionAndImplFromJson(json);

  final List<VisibilityCondition> _conditions;
  @override
  List<VisibilityCondition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.and(conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionAndImpl &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionAndImplCopyWith<_$VisibilityConditionAndImpl>
      get copyWith => __$$VisibilityConditionAndImplCopyWithImpl<
          _$VisibilityConditionAndImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return and(conditions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return and?.call(conditions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (and != null) {
      return and(conditions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return and(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return and?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (and != null) {
      return and(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionAndImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionAnd implements VisibilityCondition {
  const factory VisibilityConditionAnd(
          {required final List<VisibilityCondition> conditions}) =
      _$VisibilityConditionAndImpl;

  factory VisibilityConditionAnd.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionAndImpl.fromJson;

  List<VisibilityCondition> get conditions;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionAndImplCopyWith<_$VisibilityConditionAndImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionOrImplCopyWith<$Res> {
  factory _$$VisibilityConditionOrImplCopyWith(
          _$VisibilityConditionOrImpl value,
          $Res Function(_$VisibilityConditionOrImpl) then) =
      __$$VisibilityConditionOrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VisibilityCondition> conditions});
}

/// @nodoc
class __$$VisibilityConditionOrImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res, _$VisibilityConditionOrImpl>
    implements _$$VisibilityConditionOrImplCopyWith<$Res> {
  __$$VisibilityConditionOrImplCopyWithImpl(_$VisibilityConditionOrImpl _value,
      $Res Function(_$VisibilityConditionOrImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = null,
  }) {
    return _then(_$VisibilityConditionOrImpl(
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<VisibilityCondition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionOrImpl implements VisibilityConditionOr {
  const _$VisibilityConditionOrImpl(
      {required final List<VisibilityCondition> conditions,
      final String? $type})
      : _conditions = conditions,
        $type = $type ?? 'or';

  factory _$VisibilityConditionOrImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityConditionOrImplFromJson(json);

  final List<VisibilityCondition> _conditions;
  @override
  List<VisibilityCondition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.or(conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionOrImpl &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionOrImplCopyWith<_$VisibilityConditionOrImpl>
      get copyWith => __$$VisibilityConditionOrImplCopyWithImpl<
          _$VisibilityConditionOrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return or(conditions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return or?.call(conditions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (or != null) {
      return or(conditions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return or(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return or?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (or != null) {
      return or(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionOrImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionOr implements VisibilityCondition {
  const factory VisibilityConditionOr(
          {required final List<VisibilityCondition> conditions}) =
      _$VisibilityConditionOrImpl;

  factory VisibilityConditionOr.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionOrImpl.fromJson;

  List<VisibilityCondition> get conditions;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionOrImplCopyWith<_$VisibilityConditionOrImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityConditionNotImplCopyWith<$Res> {
  factory _$$VisibilityConditionNotImplCopyWith(
          _$VisibilityConditionNotImpl value,
          $Res Function(_$VisibilityConditionNotImpl) then) =
      __$$VisibilityConditionNotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VisibilityCondition condition});

  $VisibilityConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$VisibilityConditionNotImplCopyWithImpl<$Res>
    extends _$VisibilityConditionCopyWithImpl<$Res,
        _$VisibilityConditionNotImpl>
    implements _$$VisibilityConditionNotImplCopyWith<$Res> {
  __$$VisibilityConditionNotImplCopyWithImpl(
      _$VisibilityConditionNotImpl _value,
      $Res Function(_$VisibilityConditionNotImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
  }) {
    return _then(_$VisibilityConditionNotImpl(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as VisibilityCondition,
    ));
  }

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisibilityConditionCopyWith<$Res> get condition {
    return $VisibilityConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityConditionNotImpl implements VisibilityConditionNot {
  const _$VisibilityConditionNotImpl(
      {required this.condition, final String? $type})
      : $type = $type ?? 'not';

  factory _$VisibilityConditionNotImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityConditionNotImplFromJson(json);

  @override
  final VisibilityCondition condition;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'VisibilityCondition.not(condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityConditionNotImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, condition);

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityConditionNotImplCopyWith<_$VisibilityConditionNotImpl>
      get copyWith => __$$VisibilityConditionNotImplCopyWithImpl<
          _$VisibilityConditionNotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() always,
    required TResult Function() never,
    required TResult Function(String key) keyExists,
    required TResult Function(String key) keyNotExists,
    required TResult Function(String key, Object value) keyEquals,
    required TResult Function(String key, Object value) keyNotEquals,
    required TResult Function(String key, List<Object> values) keyIn,
    required TResult Function(String key, List<Object> values) keyNotIn,
    required TResult Function(String key, num threshold) keyGreaterThan,
    required TResult Function(String key, num threshold) keyLessThan,
    required TResult Function(String key, num min, num max) keyBetween,
    required TResult Function(String key, String substring) keyContains,
    required TResult Function(List<VisibilityCondition> conditions) and,
    required TResult Function(List<VisibilityCondition> conditions) or,
    required TResult Function(VisibilityCondition condition) not,
  }) {
    return not(condition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? always,
    TResult? Function()? never,
    TResult? Function(String key)? keyExists,
    TResult? Function(String key)? keyNotExists,
    TResult? Function(String key, Object value)? keyEquals,
    TResult? Function(String key, Object value)? keyNotEquals,
    TResult? Function(String key, List<Object> values)? keyIn,
    TResult? Function(String key, List<Object> values)? keyNotIn,
    TResult? Function(String key, num threshold)? keyGreaterThan,
    TResult? Function(String key, num threshold)? keyLessThan,
    TResult? Function(String key, num min, num max)? keyBetween,
    TResult? Function(String key, String substring)? keyContains,
    TResult? Function(List<VisibilityCondition> conditions)? and,
    TResult? Function(List<VisibilityCondition> conditions)? or,
    TResult? Function(VisibilityCondition condition)? not,
  }) {
    return not?.call(condition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? always,
    TResult Function()? never,
    TResult Function(String key)? keyExists,
    TResult Function(String key)? keyNotExists,
    TResult Function(String key, Object value)? keyEquals,
    TResult Function(String key, Object value)? keyNotEquals,
    TResult Function(String key, List<Object> values)? keyIn,
    TResult Function(String key, List<Object> values)? keyNotIn,
    TResult Function(String key, num threshold)? keyGreaterThan,
    TResult Function(String key, num threshold)? keyLessThan,
    TResult Function(String key, num min, num max)? keyBetween,
    TResult Function(String key, String substring)? keyContains,
    TResult Function(List<VisibilityCondition> conditions)? and,
    TResult Function(List<VisibilityCondition> conditions)? or,
    TResult Function(VisibilityCondition condition)? not,
    required TResult orElse(),
  }) {
    if (not != null) {
      return not(condition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibilityConditionAlways value) always,
    required TResult Function(VisibilityConditionNever value) never,
    required TResult Function(VisibilityConditionKeyExists value) keyExists,
    required TResult Function(VisibilityConditionKeyNotExists value)
        keyNotExists,
    required TResult Function(VisibilityConditionKeyEquals value) keyEquals,
    required TResult Function(VisibilityConditionKeyNotEquals value)
        keyNotEquals,
    required TResult Function(VisibilityConditionKeyIn value) keyIn,
    required TResult Function(VisibilityConditionKeyNotIn value) keyNotIn,
    required TResult Function(VisibilityConditionKeyGreaterThan value)
        keyGreaterThan,
    required TResult Function(VisibilityConditionKeyLessThan value) keyLessThan,
    required TResult Function(VisibilityConditionKeyBetween value) keyBetween,
    required TResult Function(VisibilityConditionKeyContains value) keyContains,
    required TResult Function(VisibilityConditionAnd value) and,
    required TResult Function(VisibilityConditionOr value) or,
    required TResult Function(VisibilityConditionNot value) not,
  }) {
    return not(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibilityConditionAlways value)? always,
    TResult? Function(VisibilityConditionNever value)? never,
    TResult? Function(VisibilityConditionKeyExists value)? keyExists,
    TResult? Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult? Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult? Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult? Function(VisibilityConditionKeyIn value)? keyIn,
    TResult? Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult? Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult? Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult? Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult? Function(VisibilityConditionKeyContains value)? keyContains,
    TResult? Function(VisibilityConditionAnd value)? and,
    TResult? Function(VisibilityConditionOr value)? or,
    TResult? Function(VisibilityConditionNot value)? not,
  }) {
    return not?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibilityConditionAlways value)? always,
    TResult Function(VisibilityConditionNever value)? never,
    TResult Function(VisibilityConditionKeyExists value)? keyExists,
    TResult Function(VisibilityConditionKeyNotExists value)? keyNotExists,
    TResult Function(VisibilityConditionKeyEquals value)? keyEquals,
    TResult Function(VisibilityConditionKeyNotEquals value)? keyNotEquals,
    TResult Function(VisibilityConditionKeyIn value)? keyIn,
    TResult Function(VisibilityConditionKeyNotIn value)? keyNotIn,
    TResult Function(VisibilityConditionKeyGreaterThan value)? keyGreaterThan,
    TResult Function(VisibilityConditionKeyLessThan value)? keyLessThan,
    TResult Function(VisibilityConditionKeyBetween value)? keyBetween,
    TResult Function(VisibilityConditionKeyContains value)? keyContains,
    TResult Function(VisibilityConditionAnd value)? and,
    TResult Function(VisibilityConditionOr value)? or,
    TResult Function(VisibilityConditionNot value)? not,
    required TResult orElse(),
  }) {
    if (not != null) {
      return not(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityConditionNotImplToJson(
      this,
    );
  }
}

abstract class VisibilityConditionNot implements VisibilityCondition {
  const factory VisibilityConditionNot(
          {required final VisibilityCondition condition}) =
      _$VisibilityConditionNotImpl;

  factory VisibilityConditionNot.fromJson(Map<String, dynamic> json) =
      _$VisibilityConditionNotImpl.fromJson;

  VisibilityCondition get condition;

  /// Create a copy of VisibilityCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityConditionNotImplCopyWith<_$VisibilityConditionNotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeCustomActionButtonParams _$BlazeCustomActionButtonParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeCustomActionButtonParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeCustomActionButtonParams {
  /// Unique identifier for the button.
  String get id => throw _privateConstructorUsedError;

  /// Display name for the button.
  String get name => throw _privateConstructorUsedError;

  /// Optional app-defined metadata keyed by string.
  Map<String, Object>? get appMetadata => throw _privateConstructorUsedError;

  /// Optional condition controlling the button's visibility.
  VisibilityCondition? get visibilityCondition =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButtonParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCustomActionButtonParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButtonParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeCustomActionButtonParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeCustomActionButtonParamsCopyWith<BlazeCustomActionButtonParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeCustomActionButtonParamsCopyWith<$Res> {
  factory $BlazeCustomActionButtonParamsCopyWith(
          BlazeCustomActionButtonParams value,
          $Res Function(BlazeCustomActionButtonParams) then) =
      _$BlazeCustomActionButtonParamsCopyWithImpl<$Res,
          BlazeCustomActionButtonParams>;
  @useResult
  $Res call(
      {String id,
      String name,
      Map<String, Object>? appMetadata,
      VisibilityCondition? visibilityCondition});

  $VisibilityConditionCopyWith<$Res>? get visibilityCondition;
}

/// @nodoc
class _$BlazeCustomActionButtonParamsCopyWithImpl<$Res,
        $Val extends BlazeCustomActionButtonParams>
    implements $BlazeCustomActionButtonParamsCopyWith<$Res> {
  _$BlazeCustomActionButtonParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? appMetadata = freezed,
    Object? visibilityCondition = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      appMetadata: freezed == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      visibilityCondition: freezed == visibilityCondition
          ? _value.visibilityCondition
          : visibilityCondition // ignore: cast_nullable_to_non_nullable
              as VisibilityCondition?,
    ) as $Val);
  }

  /// Create a copy of BlazeCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisibilityConditionCopyWith<$Res>? get visibilityCondition {
    if (_value.visibilityCondition == null) {
      return null;
    }

    return $VisibilityConditionCopyWith<$Res>(_value.visibilityCondition!,
        (value) {
      return _then(_value.copyWith(visibilityCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeCustomActionButtonParamsImplCopyWith<$Res>
    implements $BlazeCustomActionButtonParamsCopyWith<$Res> {
  factory _$$BlazeCustomActionButtonParamsImplCopyWith(
          _$BlazeCustomActionButtonParamsImpl value,
          $Res Function(_$BlazeCustomActionButtonParamsImpl) then) =
      __$$BlazeCustomActionButtonParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Map<String, Object>? appMetadata,
      VisibilityCondition? visibilityCondition});

  @override
  $VisibilityConditionCopyWith<$Res>? get visibilityCondition;
}

/// @nodoc
class __$$BlazeCustomActionButtonParamsImplCopyWithImpl<$Res>
    extends _$BlazeCustomActionButtonParamsCopyWithImpl<$Res,
        _$BlazeCustomActionButtonParamsImpl>
    implements _$$BlazeCustomActionButtonParamsImplCopyWith<$Res> {
  __$$BlazeCustomActionButtonParamsImplCopyWithImpl(
      _$BlazeCustomActionButtonParamsImpl _value,
      $Res Function(_$BlazeCustomActionButtonParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? appMetadata = freezed,
    Object? visibilityCondition = freezed,
  }) {
    return _then(_$BlazeCustomActionButtonParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      appMetadata: freezed == appMetadata
          ? _value._appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      visibilityCondition: freezed == visibilityCondition
          ? _value.visibilityCondition
          : visibilityCondition // ignore: cast_nullable_to_non_nullable
              as VisibilityCondition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeCustomActionButtonParamsImpl
    implements _BlazeCustomActionButtonParams {
  const _$BlazeCustomActionButtonParamsImpl(
      {required this.id,
      required this.name,
      final Map<String, Object>? appMetadata,
      this.visibilityCondition})
      : _appMetadata = appMetadata;

  factory _$BlazeCustomActionButtonParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCustomActionButtonParamsImplFromJson(json);

  /// Unique identifier for the button.
  @override
  final String id;

  /// Display name for the button.
  @override
  final String name;

  /// Optional app-defined metadata keyed by string.
  final Map<String, Object>? _appMetadata;

  /// Optional app-defined metadata keyed by string.
  @override
  Map<String, Object>? get appMetadata {
    final value = _appMetadata;
    if (value == null) return null;
    if (_appMetadata is EqualUnmodifiableMapView) return _appMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Optional condition controlling the button's visibility.
  @override
  final VisibilityCondition? visibilityCondition;

  @override
  String toString() {
    return 'BlazeCustomActionButtonParams(id: $id, name: $name, appMetadata: $appMetadata, visibilityCondition: $visibilityCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCustomActionButtonParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._appMetadata, _appMetadata) &&
            (identical(other.visibilityCondition, visibilityCondition) ||
                other.visibilityCondition == visibilityCondition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_appMetadata), visibilityCondition);

  /// Create a copy of BlazeCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeCustomActionButtonParamsImplCopyWith<
          _$BlazeCustomActionButtonParamsImpl>
      get copyWith => __$$BlazeCustomActionButtonParamsImplCopyWithImpl<
          _$BlazeCustomActionButtonParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButtonParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCustomActionButtonParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButtonParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCustomActionButtonParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeCustomActionButtonParams
    implements BlazeCustomActionButtonParams {
  const factory _BlazeCustomActionButtonParams(
          {required final String id,
          required final String name,
          final Map<String, Object>? appMetadata,
          final VisibilityCondition? visibilityCondition}) =
      _$BlazeCustomActionButtonParamsImpl;

  factory _BlazeCustomActionButtonParams.fromJson(Map<String, dynamic> json) =
      _$BlazeCustomActionButtonParamsImpl.fromJson;

  /// Unique identifier for the button.
  @override
  String get id;

  /// Display name for the button.
  @override
  String get name;

  /// Optional app-defined metadata keyed by string.
  @override
  Map<String, Object>? get appMetadata;

  /// Optional condition controlling the button's visibility.
  @override
  VisibilityCondition? get visibilityCondition;

  /// Create a copy of BlazeCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeCustomActionButtonParamsImplCopyWith<
          _$BlazeCustomActionButtonParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeCustomActionButton _$BlazeCustomActionButtonFromJson(
    Map<String, dynamic> json) {
  return _BlazeCustomActionButton.fromJson(json);
}

/// @nodoc
mixin _$BlazeCustomActionButton {
  /// The button parameters (id, name, metadata, visibility).
  BlazeCustomActionButtonParams get customParams =>
      throw _privateConstructorUsedError;

  /// Optional style overrides for the button.
  BlazePlayerButtonStyle? get style => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButton value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCustomActionButton value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButton value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeCustomActionButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeCustomActionButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeCustomActionButtonCopyWith<BlazeCustomActionButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeCustomActionButtonCopyWith<$Res> {
  factory $BlazeCustomActionButtonCopyWith(BlazeCustomActionButton value,
          $Res Function(BlazeCustomActionButton) then) =
      _$BlazeCustomActionButtonCopyWithImpl<$Res, BlazeCustomActionButton>;
  @useResult
  $Res call(
      {BlazeCustomActionButtonParams customParams,
      BlazePlayerButtonStyle? style});

  $BlazeCustomActionButtonParamsCopyWith<$Res> get customParams;
  $BlazePlayerButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$BlazeCustomActionButtonCopyWithImpl<$Res,
        $Val extends BlazeCustomActionButton>
    implements $BlazeCustomActionButtonCopyWith<$Res> {
  _$BlazeCustomActionButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeCustomActionButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customParams = null,
    Object? style = freezed,
  }) {
    return _then(_value.copyWith(
      customParams: null == customParams
          ? _value.customParams
          : customParams // ignore: cast_nullable_to_non_nullable
              as BlazeCustomActionButtonParams,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
    ) as $Val);
  }

  /// Create a copy of BlazeCustomActionButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeCustomActionButtonParamsCopyWith<$Res> get customParams {
    return $BlazeCustomActionButtonParamsCopyWith<$Res>(_value.customParams,
        (value) {
      return _then(_value.copyWith(customParams: value) as $Val);
    });
  }

  /// Create a copy of BlazeCustomActionButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeCustomActionButtonImplCopyWith<$Res>
    implements $BlazeCustomActionButtonCopyWith<$Res> {
  factory _$$BlazeCustomActionButtonImplCopyWith(
          _$BlazeCustomActionButtonImpl value,
          $Res Function(_$BlazeCustomActionButtonImpl) then) =
      __$$BlazeCustomActionButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeCustomActionButtonParams customParams,
      BlazePlayerButtonStyle? style});

  @override
  $BlazeCustomActionButtonParamsCopyWith<$Res> get customParams;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$BlazeCustomActionButtonImplCopyWithImpl<$Res>
    extends _$BlazeCustomActionButtonCopyWithImpl<$Res,
        _$BlazeCustomActionButtonImpl>
    implements _$$BlazeCustomActionButtonImplCopyWith<$Res> {
  __$$BlazeCustomActionButtonImplCopyWithImpl(
      _$BlazeCustomActionButtonImpl _value,
      $Res Function(_$BlazeCustomActionButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCustomActionButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customParams = null,
    Object? style = freezed,
  }) {
    return _then(_$BlazeCustomActionButtonImpl(
      customParams: null == customParams
          ? _value.customParams
          : customParams // ignore: cast_nullable_to_non_nullable
              as BlazeCustomActionButtonParams,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeCustomActionButtonImpl implements _BlazeCustomActionButton {
  const _$BlazeCustomActionButtonImpl({required this.customParams, this.style});

  factory _$BlazeCustomActionButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeCustomActionButtonImplFromJson(json);

  /// The button parameters (id, name, metadata, visibility).
  @override
  final BlazeCustomActionButtonParams customParams;

  /// Optional style overrides for the button.
  @override
  final BlazePlayerButtonStyle? style;

  @override
  String toString() {
    return 'BlazeCustomActionButton(customParams: $customParams, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCustomActionButtonImpl &&
            (identical(other.customParams, customParams) ||
                other.customParams == customParams) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customParams, style);

  /// Create a copy of BlazeCustomActionButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeCustomActionButtonImplCopyWith<_$BlazeCustomActionButtonImpl>
      get copyWith => __$$BlazeCustomActionButtonImplCopyWithImpl<
          _$BlazeCustomActionButtonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButton value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCustomActionButton value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCustomActionButton value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCustomActionButtonImplToJson(
      this,
    );
  }
}

abstract class _BlazeCustomActionButton implements BlazeCustomActionButton {
  const factory _BlazeCustomActionButton(
      {required final BlazeCustomActionButtonParams customParams,
      final BlazePlayerButtonStyle? style}) = _$BlazeCustomActionButtonImpl;

  factory _BlazeCustomActionButton.fromJson(Map<String, dynamic> json) =
      _$BlazeCustomActionButtonImpl.fromJson;

  /// The button parameters (id, name, metadata, visibility).
  @override
  BlazeCustomActionButtonParams get customParams;

  /// Optional style overrides for the button.
  @override
  BlazePlayerButtonStyle? get style;

  /// Create a copy of BlazeCustomActionButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeCustomActionButtonImplCopyWith<_$BlazeCustomActionButtonImpl>
      get copyWith => throw _privateConstructorUsedError;
}
