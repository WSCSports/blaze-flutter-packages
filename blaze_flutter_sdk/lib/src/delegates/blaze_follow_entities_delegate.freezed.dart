// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_follow_entities_delegate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeFollowEntity _$BlazeFollowEntityFromJson(Map<String, dynamic> json) {
  return _BlazeFollowEntity.fromJson(json);
}

/// @nodoc
mixin _$BlazeFollowEntity {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFollowEntity value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFollowEntity value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFollowEntity value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeFollowEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeFollowEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeFollowEntityCopyWith<BlazeFollowEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeFollowEntityCopyWith<$Res> {
  factory $BlazeFollowEntityCopyWith(
          BlazeFollowEntity value, $Res Function(BlazeFollowEntity) then) =
      _$BlazeFollowEntityCopyWithImpl<$Res, BlazeFollowEntity>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$BlazeFollowEntityCopyWithImpl<$Res, $Val extends BlazeFollowEntity>
    implements $BlazeFollowEntityCopyWith<$Res> {
  _$BlazeFollowEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeFollowEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeFollowEntityImplCopyWith<$Res>
    implements $BlazeFollowEntityCopyWith<$Res> {
  factory _$$BlazeFollowEntityImplCopyWith(_$BlazeFollowEntityImpl value,
          $Res Function(_$BlazeFollowEntityImpl) then) =
      __$$BlazeFollowEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$BlazeFollowEntityImplCopyWithImpl<$Res>
    extends _$BlazeFollowEntityCopyWithImpl<$Res, _$BlazeFollowEntityImpl>
    implements _$$BlazeFollowEntityImplCopyWith<$Res> {
  __$$BlazeFollowEntityImplCopyWithImpl(_$BlazeFollowEntityImpl _value,
      $Res Function(_$BlazeFollowEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeFollowEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BlazeFollowEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeFollowEntityImpl implements _BlazeFollowEntity {
  const _$BlazeFollowEntityImpl({required this.id});

  factory _$BlazeFollowEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeFollowEntityImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'BlazeFollowEntity(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeFollowEntityImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BlazeFollowEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeFollowEntityImplCopyWith<_$BlazeFollowEntityImpl> get copyWith =>
      __$$BlazeFollowEntityImplCopyWithImpl<_$BlazeFollowEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFollowEntity value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFollowEntity value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFollowEntity value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeFollowEntityImplToJson(
      this,
    );
  }
}

abstract class _BlazeFollowEntity implements BlazeFollowEntity {
  const factory _BlazeFollowEntity({required final String id}) =
      _$BlazeFollowEntityImpl;

  factory _BlazeFollowEntity.fromJson(Map<String, dynamic> json) =
      _$BlazeFollowEntityImpl.fromJson;

  @override
  String get id;

  /// Create a copy of BlazeFollowEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeFollowEntityImplCopyWith<_$BlazeFollowEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeOnFollowEntityClickedParams _$BlazeOnFollowEntityClickedParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnFollowEntityClickedParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnFollowEntityClickedParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  bool get newFollowingState => throw _privateConstructorUsedError;
  BlazeFollowEntity get followEntity => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnFollowEntityClickedParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnFollowEntityClickedParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnFollowEntityClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnFollowEntityClickedParamsCopyWith<BlazeOnFollowEntityClickedParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnFollowEntityClickedParamsCopyWith<$Res> {
  factory $BlazeOnFollowEntityClickedParamsCopyWith(
          BlazeOnFollowEntityClickedParams value,
          $Res Function(BlazeOnFollowEntityClickedParams) then) =
      _$BlazeOnFollowEntityClickedParamsCopyWithImpl<$Res,
          BlazeOnFollowEntityClickedParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      bool newFollowingState,
      BlazeFollowEntity followEntity});

  $BlazeFollowEntityCopyWith<$Res> get followEntity;
}

/// @nodoc
class _$BlazeOnFollowEntityClickedParamsCopyWithImpl<$Res,
        $Val extends BlazeOnFollowEntityClickedParams>
    implements $BlazeOnFollowEntityClickedParamsCopyWith<$Res> {
  _$BlazeOnFollowEntityClickedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnFollowEntityClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? newFollowingState = null,
    Object? followEntity = null,
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
      newFollowingState: null == newFollowingState
          ? _value.newFollowingState
          : newFollowingState // ignore: cast_nullable_to_non_nullable
              as bool,
      followEntity: null == followEntity
          ? _value.followEntity
          : followEntity // ignore: cast_nullable_to_non_nullable
              as BlazeFollowEntity,
    ) as $Val);
  }

  /// Create a copy of BlazeOnFollowEntityClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeFollowEntityCopyWith<$Res> get followEntity {
    return $BlazeFollowEntityCopyWith<$Res>(_value.followEntity, (value) {
      return _then(_value.copyWith(followEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeOnFollowEntityClickedParamsImplCopyWith<$Res>
    implements $BlazeOnFollowEntityClickedParamsCopyWith<$Res> {
  factory _$$BlazeOnFollowEntityClickedParamsImplCopyWith(
          _$BlazeOnFollowEntityClickedParamsImpl value,
          $Res Function(_$BlazeOnFollowEntityClickedParamsImpl) then) =
      __$$BlazeOnFollowEntityClickedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      bool newFollowingState,
      BlazeFollowEntity followEntity});

  @override
  $BlazeFollowEntityCopyWith<$Res> get followEntity;
}

/// @nodoc
class __$$BlazeOnFollowEntityClickedParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnFollowEntityClickedParamsCopyWithImpl<$Res,
        _$BlazeOnFollowEntityClickedParamsImpl>
    implements _$$BlazeOnFollowEntityClickedParamsImplCopyWith<$Res> {
  __$$BlazeOnFollowEntityClickedParamsImplCopyWithImpl(
      _$BlazeOnFollowEntityClickedParamsImpl _value,
      $Res Function(_$BlazeOnFollowEntityClickedParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnFollowEntityClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? newFollowingState = null,
    Object? followEntity = null,
  }) {
    return _then(_$BlazeOnFollowEntityClickedParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      newFollowingState: null == newFollowingState
          ? _value.newFollowingState
          : newFollowingState // ignore: cast_nullable_to_non_nullable
              as bool,
      followEntity: null == followEntity
          ? _value.followEntity
          : followEntity // ignore: cast_nullable_to_non_nullable
              as BlazeFollowEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnFollowEntityClickedParamsImpl
    implements _BlazeOnFollowEntityClickedParams {
  const _$BlazeOnFollowEntityClickedParamsImpl(
      {required this.playerType,
      this.sourceId,
      required this.newFollowingState,
      required this.followEntity});

  factory _$BlazeOnFollowEntityClickedParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnFollowEntityClickedParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final bool newFollowingState;
  @override
  final BlazeFollowEntity followEntity;

  @override
  String toString() {
    return 'BlazeOnFollowEntityClickedParams(playerType: $playerType, sourceId: $sourceId, newFollowingState: $newFollowingState, followEntity: $followEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnFollowEntityClickedParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.newFollowingState, newFollowingState) ||
                other.newFollowingState == newFollowingState) &&
            (identical(other.followEntity, followEntity) ||
                other.followEntity == followEntity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, playerType, sourceId, newFollowingState, followEntity);

  /// Create a copy of BlazeOnFollowEntityClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnFollowEntityClickedParamsImplCopyWith<
          _$BlazeOnFollowEntityClickedParamsImpl>
      get copyWith => __$$BlazeOnFollowEntityClickedParamsImplCopyWithImpl<
          _$BlazeOnFollowEntityClickedParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnFollowEntityClickedParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnFollowEntityClickedParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnFollowEntityClickedParams
    implements BlazeOnFollowEntityClickedParams {
  const factory _BlazeOnFollowEntityClickedParams(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final bool newFollowingState,
          required final BlazeFollowEntity followEntity}) =
      _$BlazeOnFollowEntityClickedParamsImpl;

  factory _BlazeOnFollowEntityClickedParams.fromJson(
          Map<String, dynamic> json) =
      _$BlazeOnFollowEntityClickedParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  bool get newFollowingState;
  @override
  BlazeFollowEntity get followEntity;

  /// Create a copy of BlazeOnFollowEntityClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnFollowEntityClickedParamsImplCopyWith<
          _$BlazeOnFollowEntityClickedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnFollowEntityClickedInternalData
    _$BlazeOnFollowEntityClickedInternalDataFromJson(
        Map<String, dynamic> json) {
  return _BlazeOnFollowEntityClickedInternalData.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnFollowEntityClickedInternalData {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  bool get newFollowingState => throw _privateConstructorUsedError;
  String get followEntityId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedInternalData value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnFollowEntityClickedInternalData value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedInternalData value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnFollowEntityClickedInternalData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnFollowEntityClickedInternalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnFollowEntityClickedInternalDataCopyWith<
          BlazeOnFollowEntityClickedInternalData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnFollowEntityClickedInternalDataCopyWith<$Res> {
  factory $BlazeOnFollowEntityClickedInternalDataCopyWith(
          BlazeOnFollowEntityClickedInternalData value,
          $Res Function(BlazeOnFollowEntityClickedInternalData) then) =
      _$BlazeOnFollowEntityClickedInternalDataCopyWithImpl<$Res,
          BlazeOnFollowEntityClickedInternalData>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      bool newFollowingState,
      String followEntityId});
}

/// @nodoc
class _$BlazeOnFollowEntityClickedInternalDataCopyWithImpl<$Res,
        $Val extends BlazeOnFollowEntityClickedInternalData>
    implements $BlazeOnFollowEntityClickedInternalDataCopyWith<$Res> {
  _$BlazeOnFollowEntityClickedInternalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnFollowEntityClickedInternalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? newFollowingState = null,
    Object? followEntityId = null,
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
      newFollowingState: null == newFollowingState
          ? _value.newFollowingState
          : newFollowingState // ignore: cast_nullable_to_non_nullable
              as bool,
      followEntityId: null == followEntityId
          ? _value.followEntityId
          : followEntityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnFollowEntityClickedInternalDataImplCopyWith<$Res>
    implements $BlazeOnFollowEntityClickedInternalDataCopyWith<$Res> {
  factory _$$BlazeOnFollowEntityClickedInternalDataImplCopyWith(
          _$BlazeOnFollowEntityClickedInternalDataImpl value,
          $Res Function(_$BlazeOnFollowEntityClickedInternalDataImpl) then) =
      __$$BlazeOnFollowEntityClickedInternalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      bool newFollowingState,
      String followEntityId});
}

/// @nodoc
class __$$BlazeOnFollowEntityClickedInternalDataImplCopyWithImpl<$Res>
    extends _$BlazeOnFollowEntityClickedInternalDataCopyWithImpl<$Res,
        _$BlazeOnFollowEntityClickedInternalDataImpl>
    implements _$$BlazeOnFollowEntityClickedInternalDataImplCopyWith<$Res> {
  __$$BlazeOnFollowEntityClickedInternalDataImplCopyWithImpl(
      _$BlazeOnFollowEntityClickedInternalDataImpl _value,
      $Res Function(_$BlazeOnFollowEntityClickedInternalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnFollowEntityClickedInternalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? newFollowingState = null,
    Object? followEntityId = null,
  }) {
    return _then(_$BlazeOnFollowEntityClickedInternalDataImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      newFollowingState: null == newFollowingState
          ? _value.newFollowingState
          : newFollowingState // ignore: cast_nullable_to_non_nullable
              as bool,
      followEntityId: null == followEntityId
          ? _value.followEntityId
          : followEntityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnFollowEntityClickedInternalDataImpl
    implements _BlazeOnFollowEntityClickedInternalData {
  const _$BlazeOnFollowEntityClickedInternalDataImpl(
      {required this.playerType,
      this.sourceId,
      required this.newFollowingState,
      required this.followEntityId});

  factory _$BlazeOnFollowEntityClickedInternalDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnFollowEntityClickedInternalDataImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final bool newFollowingState;
  @override
  final String followEntityId;

  @override
  String toString() {
    return 'BlazeOnFollowEntityClickedInternalData(playerType: $playerType, sourceId: $sourceId, newFollowingState: $newFollowingState, followEntityId: $followEntityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnFollowEntityClickedInternalDataImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.newFollowingState, newFollowingState) ||
                other.newFollowingState == newFollowingState) &&
            (identical(other.followEntityId, followEntityId) ||
                other.followEntityId == followEntityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, playerType, sourceId, newFollowingState, followEntityId);

  /// Create a copy of BlazeOnFollowEntityClickedInternalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnFollowEntityClickedInternalDataImplCopyWith<
          _$BlazeOnFollowEntityClickedInternalDataImpl>
      get copyWith =>
          __$$BlazeOnFollowEntityClickedInternalDataImplCopyWithImpl<
              _$BlazeOnFollowEntityClickedInternalDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedInternalData value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnFollowEntityClickedInternalData value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnFollowEntityClickedInternalData value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnFollowEntityClickedInternalDataImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnFollowEntityClickedInternalData
    implements BlazeOnFollowEntityClickedInternalData {
  const factory _BlazeOnFollowEntityClickedInternalData(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final bool newFollowingState,
          required final String followEntityId}) =
      _$BlazeOnFollowEntityClickedInternalDataImpl;

  factory _BlazeOnFollowEntityClickedInternalData.fromJson(
          Map<String, dynamic> json) =
      _$BlazeOnFollowEntityClickedInternalDataImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  bool get newFollowingState;
  @override
  String get followEntityId;

  /// Create a copy of BlazeOnFollowEntityClickedInternalData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnFollowEntityClickedInternalDataImplCopyWith<
          _$BlazeOnFollowEntityClickedInternalDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
