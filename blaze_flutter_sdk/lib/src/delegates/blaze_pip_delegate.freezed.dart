// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_pip_delegate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazePipStateChangedParams _$BlazePipStateChangedParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazePipStateChangedParams.fromJson(json);
}

/// @nodoc
mixin _$BlazePipStateChangedParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  BlazePipState get state => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePipStateChangedParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePipStateChangedParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePipStateChangedParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazePipStateChangedParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazePipStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazePipStateChangedParamsCopyWith<BlazePipStateChangedParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazePipStateChangedParamsCopyWith<$Res> {
  factory $BlazePipStateChangedParamsCopyWith(BlazePipStateChangedParams value,
          $Res Function(BlazePipStateChangedParams) then) =
      _$BlazePipStateChangedParamsCopyWithImpl<$Res,
          BlazePipStateChangedParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType, String? sourceId, BlazePipState state});
}

/// @nodoc
class _$BlazePipStateChangedParamsCopyWithImpl<$Res,
        $Val extends BlazePipStateChangedParams>
    implements $BlazePipStateChangedParamsCopyWith<$Res> {
  _$BlazePipStateChangedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazePipStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BlazePipState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazePipStateChangedParamsImplCopyWith<$Res>
    implements $BlazePipStateChangedParamsCopyWith<$Res> {
  factory _$$BlazePipStateChangedParamsImplCopyWith(
          _$BlazePipStateChangedParamsImpl value,
          $Res Function(_$BlazePipStateChangedParamsImpl) then) =
      __$$BlazePipStateChangedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType, String? sourceId, BlazePipState state});
}

/// @nodoc
class __$$BlazePipStateChangedParamsImplCopyWithImpl<$Res>
    extends _$BlazePipStateChangedParamsCopyWithImpl<$Res,
        _$BlazePipStateChangedParamsImpl>
    implements _$$BlazePipStateChangedParamsImplCopyWith<$Res> {
  __$$BlazePipStateChangedParamsImplCopyWithImpl(
      _$BlazePipStateChangedParamsImpl _value,
      $Res Function(_$BlazePipStateChangedParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePipStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? state = null,
  }) {
    return _then(_$BlazePipStateChangedParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BlazePipState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePipStateChangedParamsImpl implements _BlazePipStateChangedParams {
  const _$BlazePipStateChangedParamsImpl(
      {required this.playerType, this.sourceId, required this.state});

  factory _$BlazePipStateChangedParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazePipStateChangedParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final BlazePipState state;

  @override
  String toString() {
    return 'BlazePipStateChangedParams(playerType: $playerType, sourceId: $sourceId, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePipStateChangedParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId, state);

  /// Create a copy of BlazePipStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePipStateChangedParamsImplCopyWith<_$BlazePipStateChangedParamsImpl>
      get copyWith => __$$BlazePipStateChangedParamsImplCopyWithImpl<
          _$BlazePipStateChangedParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePipStateChangedParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePipStateChangedParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePipStateChangedParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePipStateChangedParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazePipStateChangedParams
    implements BlazePipStateChangedParams {
  const factory _BlazePipStateChangedParams(
      {required final BlazePlayerType playerType,
      final String? sourceId,
      required final BlazePipState state}) = _$BlazePipStateChangedParamsImpl;

  factory _BlazePipStateChangedParams.fromJson(Map<String, dynamic> json) =
      _$BlazePipStateChangedParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  BlazePipState get state;

  /// Create a copy of BlazePipStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePipStateChangedParamsImplCopyWith<_$BlazePipStateChangedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
