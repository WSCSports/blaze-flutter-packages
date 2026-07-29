// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_player_container_tabs_delegate_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeOnTabSelectedParams _$BlazeOnTabSelectedParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnTabSelectedParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnTabSelectedParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  int get tabIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTabSelectedParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTabSelectedParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTabSelectedParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnTabSelectedParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnTabSelectedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnTabSelectedParamsCopyWith<BlazeOnTabSelectedParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnTabSelectedParamsCopyWith<$Res> {
  factory $BlazeOnTabSelectedParamsCopyWith(BlazeOnTabSelectedParams value,
          $Res Function(BlazeOnTabSelectedParams) then) =
      _$BlazeOnTabSelectedParamsCopyWithImpl<$Res, BlazeOnTabSelectedParams>;
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId, int tabIndex});
}

/// @nodoc
class _$BlazeOnTabSelectedParamsCopyWithImpl<$Res,
        $Val extends BlazeOnTabSelectedParams>
    implements $BlazeOnTabSelectedParamsCopyWith<$Res> {
  _$BlazeOnTabSelectedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnTabSelectedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? tabIndex = null,
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
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnTabSelectedParamsImplCopyWith<$Res>
    implements $BlazeOnTabSelectedParamsCopyWith<$Res> {
  factory _$$BlazeOnTabSelectedParamsImplCopyWith(
          _$BlazeOnTabSelectedParamsImpl value,
          $Res Function(_$BlazeOnTabSelectedParamsImpl) then) =
      __$$BlazeOnTabSelectedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId, int tabIndex});
}

/// @nodoc
class __$$BlazeOnTabSelectedParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnTabSelectedParamsCopyWithImpl<$Res,
        _$BlazeOnTabSelectedParamsImpl>
    implements _$$BlazeOnTabSelectedParamsImplCopyWith<$Res> {
  __$$BlazeOnTabSelectedParamsImplCopyWithImpl(
      _$BlazeOnTabSelectedParamsImpl _value,
      $Res Function(_$BlazeOnTabSelectedParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnTabSelectedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? tabIndex = null,
  }) {
    return _then(_$BlazeOnTabSelectedParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnTabSelectedParamsImpl implements _BlazeOnTabSelectedParams {
  const _$BlazeOnTabSelectedParamsImpl(
      {required this.playerType, this.sourceId, required this.tabIndex});

  factory _$BlazeOnTabSelectedParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeOnTabSelectedParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final int tabIndex;

  @override
  String toString() {
    return 'BlazeOnTabSelectedParams(playerType: $playerType, sourceId: $sourceId, tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnTabSelectedParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId, tabIndex);

  /// Create a copy of BlazeOnTabSelectedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnTabSelectedParamsImplCopyWith<_$BlazeOnTabSelectedParamsImpl>
      get copyWith => __$$BlazeOnTabSelectedParamsImplCopyWithImpl<
          _$BlazeOnTabSelectedParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTabSelectedParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTabSelectedParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTabSelectedParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnTabSelectedParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnTabSelectedParams implements BlazeOnTabSelectedParams {
  const factory _BlazeOnTabSelectedParams(
      {required final BlazePlayerType playerType,
      final String? sourceId,
      required final int tabIndex}) = _$BlazeOnTabSelectedParamsImpl;

  factory _BlazeOnTabSelectedParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnTabSelectedParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  int get tabIndex;

  /// Create a copy of BlazeOnTabSelectedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnTabSelectedParamsImplCopyWith<_$BlazeOnTabSelectedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
