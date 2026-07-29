// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_casting_delegate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeCastingStateChangedParams _$BlazeCastingStateChangedParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeCastingStateChangedParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeCastingStateChangedParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  BlazeCastingState get state => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCastingStateChangedParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCastingStateChangedParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCastingStateChangedParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeCastingStateChangedParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeCastingStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeCastingStateChangedParamsCopyWith<BlazeCastingStateChangedParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeCastingStateChangedParamsCopyWith<$Res> {
  factory $BlazeCastingStateChangedParamsCopyWith(
          BlazeCastingStateChangedParams value,
          $Res Function(BlazeCastingStateChangedParams) then) =
      _$BlazeCastingStateChangedParamsCopyWithImpl<$Res,
          BlazeCastingStateChangedParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType, String? sourceId, BlazeCastingState state});
}

/// @nodoc
class _$BlazeCastingStateChangedParamsCopyWithImpl<$Res,
        $Val extends BlazeCastingStateChangedParams>
    implements $BlazeCastingStateChangedParamsCopyWith<$Res> {
  _$BlazeCastingStateChangedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeCastingStateChangedParams
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
              as BlazeCastingState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeCastingStateChangedParamsImplCopyWith<$Res>
    implements $BlazeCastingStateChangedParamsCopyWith<$Res> {
  factory _$$BlazeCastingStateChangedParamsImplCopyWith(
          _$BlazeCastingStateChangedParamsImpl value,
          $Res Function(_$BlazeCastingStateChangedParamsImpl) then) =
      __$$BlazeCastingStateChangedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType, String? sourceId, BlazeCastingState state});
}

/// @nodoc
class __$$BlazeCastingStateChangedParamsImplCopyWithImpl<$Res>
    extends _$BlazeCastingStateChangedParamsCopyWithImpl<$Res,
        _$BlazeCastingStateChangedParamsImpl>
    implements _$$BlazeCastingStateChangedParamsImplCopyWith<$Res> {
  __$$BlazeCastingStateChangedParamsImplCopyWithImpl(
      _$BlazeCastingStateChangedParamsImpl _value,
      $Res Function(_$BlazeCastingStateChangedParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCastingStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? state = null,
  }) {
    return _then(_$BlazeCastingStateChangedParamsImpl(
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
              as BlazeCastingState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeCastingStateChangedParamsImpl
    implements _BlazeCastingStateChangedParams {
  const _$BlazeCastingStateChangedParamsImpl(
      {required this.playerType, this.sourceId, required this.state});

  factory _$BlazeCastingStateChangedParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCastingStateChangedParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final BlazeCastingState state;

  @override
  String toString() {
    return 'BlazeCastingStateChangedParams(playerType: $playerType, sourceId: $sourceId, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCastingStateChangedParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId, state);

  /// Create a copy of BlazeCastingStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeCastingStateChangedParamsImplCopyWith<
          _$BlazeCastingStateChangedParamsImpl>
      get copyWith => __$$BlazeCastingStateChangedParamsImplCopyWithImpl<
          _$BlazeCastingStateChangedParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCastingStateChangedParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCastingStateChangedParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCastingStateChangedParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCastingStateChangedParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeCastingStateChangedParams
    implements BlazeCastingStateChangedParams {
  const factory _BlazeCastingStateChangedParams(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final BlazeCastingState state}) =
      _$BlazeCastingStateChangedParamsImpl;

  factory _BlazeCastingStateChangedParams.fromJson(Map<String, dynamic> json) =
      _$BlazeCastingStateChangedParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  BlazeCastingState get state;

  /// Create a copy of BlazeCastingStateChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeCastingStateChangedParamsImplCopyWith<
          _$BlazeCastingStateChangedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
