// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_widget_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeWidgetLabel _$BlazeWidgetLabelFromJson(Map<String, dynamic> json) {
  return _BlazeWidgetLabel.fromJson(json);
}

/// @nodoc
mixin _$BlazeWidgetLabel {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetLabel value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetLabel value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetLabel value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeWidgetLabel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeWidgetLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeWidgetLabelCopyWith<BlazeWidgetLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeWidgetLabelCopyWith<$Res> {
  factory $BlazeWidgetLabelCopyWith(
          BlazeWidgetLabel value, $Res Function(BlazeWidgetLabel) then) =
      _$BlazeWidgetLabelCopyWithImpl<$Res, BlazeWidgetLabel>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$BlazeWidgetLabelCopyWithImpl<$Res, $Val extends BlazeWidgetLabel>
    implements $BlazeWidgetLabelCopyWith<$Res> {
  _$BlazeWidgetLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeWidgetLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeWidgetLabelImplCopyWith<$Res>
    implements $BlazeWidgetLabelCopyWith<$Res> {
  factory _$$BlazeWidgetLabelImplCopyWith(_$BlazeWidgetLabelImpl value,
          $Res Function(_$BlazeWidgetLabelImpl) then) =
      __$$BlazeWidgetLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$BlazeWidgetLabelImplCopyWithImpl<$Res>
    extends _$BlazeWidgetLabelCopyWithImpl<$Res, _$BlazeWidgetLabelImpl>
    implements _$$BlazeWidgetLabelImplCopyWith<$Res> {
  __$$BlazeWidgetLabelImplCopyWithImpl(_$BlazeWidgetLabelImpl _value,
      $Res Function(_$BlazeWidgetLabelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeWidgetLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BlazeWidgetLabelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeWidgetLabelImpl extends _BlazeWidgetLabel {
  const _$BlazeWidgetLabelImpl({required this.value}) : super._();

  factory _$BlazeWidgetLabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeWidgetLabelImplFromJson(json);

  @override
  final String value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeWidgetLabelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of BlazeWidgetLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeWidgetLabelImplCopyWith<_$BlazeWidgetLabelImpl> get copyWith =>
      __$$BlazeWidgetLabelImplCopyWithImpl<_$BlazeWidgetLabelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetLabel value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetLabel value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetLabel value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeWidgetLabelImplToJson(
      this,
    );
  }
}

abstract class _BlazeWidgetLabel extends BlazeWidgetLabel {
  const factory _BlazeWidgetLabel({required final String value}) =
      _$BlazeWidgetLabelImpl;
  const _BlazeWidgetLabel._() : super._();

  factory _BlazeWidgetLabel.fromJson(Map<String, dynamic> json) =
      _$BlazeWidgetLabelImpl.fromJson;

  @override
  String get value;

  /// Create a copy of BlazeWidgetLabel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeWidgetLabelImplCopyWith<_$BlazeWidgetLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
