// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_base_player_delegate_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeOnDataLoadStartedParams _$BlazeOnDataLoadStartedParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnDataLoadStartedParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnDataLoadStartedParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadStartedParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnDataLoadStartedParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadStartedParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnDataLoadStartedParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnDataLoadStartedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnDataLoadStartedParamsCopyWith<BlazeOnDataLoadStartedParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnDataLoadStartedParamsCopyWith<$Res> {
  factory $BlazeOnDataLoadStartedParamsCopyWith(
          BlazeOnDataLoadStartedParams value,
          $Res Function(BlazeOnDataLoadStartedParams) then) =
      _$BlazeOnDataLoadStartedParamsCopyWithImpl<$Res,
          BlazeOnDataLoadStartedParams>;
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId});
}

/// @nodoc
class _$BlazeOnDataLoadStartedParamsCopyWithImpl<$Res,
        $Val extends BlazeOnDataLoadStartedParams>
    implements $BlazeOnDataLoadStartedParamsCopyWith<$Res> {
  _$BlazeOnDataLoadStartedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnDataLoadStartedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnDataLoadStartedParamsImplCopyWith<$Res>
    implements $BlazeOnDataLoadStartedParamsCopyWith<$Res> {
  factory _$$BlazeOnDataLoadStartedParamsImplCopyWith(
          _$BlazeOnDataLoadStartedParamsImpl value,
          $Res Function(_$BlazeOnDataLoadStartedParamsImpl) then) =
      __$$BlazeOnDataLoadStartedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId});
}

/// @nodoc
class __$$BlazeOnDataLoadStartedParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnDataLoadStartedParamsCopyWithImpl<$Res,
        _$BlazeOnDataLoadStartedParamsImpl>
    implements _$$BlazeOnDataLoadStartedParamsImplCopyWith<$Res> {
  __$$BlazeOnDataLoadStartedParamsImplCopyWithImpl(
      _$BlazeOnDataLoadStartedParamsImpl _value,
      $Res Function(_$BlazeOnDataLoadStartedParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnDataLoadStartedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
  }) {
    return _then(_$BlazeOnDataLoadStartedParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnDataLoadStartedParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnDataLoadStartedParams {
  const _$BlazeOnDataLoadStartedParamsImpl(
      {required this.playerType, this.sourceId});

  factory _$BlazeOnDataLoadStartedParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnDataLoadStartedParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnDataLoadStartedParams(playerType: $playerType, sourceId: $sourceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnDataLoadStartedParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnDataLoadStartedParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId);

  /// Create a copy of BlazeOnDataLoadStartedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnDataLoadStartedParamsImplCopyWith<
          _$BlazeOnDataLoadStartedParamsImpl>
      get copyWith => __$$BlazeOnDataLoadStartedParamsImplCopyWithImpl<
          _$BlazeOnDataLoadStartedParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadStartedParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnDataLoadStartedParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadStartedParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnDataLoadStartedParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnDataLoadStartedParams
    implements BlazeOnDataLoadStartedParams {
  const factory _BlazeOnDataLoadStartedParams(
      {required final BlazePlayerType playerType,
      final String? sourceId}) = _$BlazeOnDataLoadStartedParamsImpl;

  factory _BlazeOnDataLoadStartedParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnDataLoadStartedParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;

  /// Create a copy of BlazeOnDataLoadStartedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnDataLoadStartedParamsImplCopyWith<
          _$BlazeOnDataLoadStartedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnDataLoadCompleteParams _$BlazeOnDataLoadCompleteParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnDataLoadCompleteParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnDataLoadCompleteParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  int get itemsCount => throw _privateConstructorUsedError;
  BlazeError? get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadCompleteParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnDataLoadCompleteParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadCompleteParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnDataLoadCompleteParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnDataLoadCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnDataLoadCompleteParamsCopyWith<BlazeOnDataLoadCompleteParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnDataLoadCompleteParamsCopyWith<$Res> {
  factory $BlazeOnDataLoadCompleteParamsCopyWith(
          BlazeOnDataLoadCompleteParams value,
          $Res Function(BlazeOnDataLoadCompleteParams) then) =
      _$BlazeOnDataLoadCompleteParamsCopyWithImpl<$Res,
          BlazeOnDataLoadCompleteParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      int itemsCount,
      BlazeError? error});

  $BlazeErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$BlazeOnDataLoadCompleteParamsCopyWithImpl<$Res,
        $Val extends BlazeOnDataLoadCompleteParams>
    implements $BlazeOnDataLoadCompleteParamsCopyWith<$Res> {
  _$BlazeOnDataLoadCompleteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnDataLoadCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? itemsCount = null,
    Object? error = freezed,
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
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BlazeError?,
    ) as $Val);
  }

  /// Create a copy of BlazeOnDataLoadCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $BlazeErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeOnDataLoadCompleteParamsImplCopyWith<$Res>
    implements $BlazeOnDataLoadCompleteParamsCopyWith<$Res> {
  factory _$$BlazeOnDataLoadCompleteParamsImplCopyWith(
          _$BlazeOnDataLoadCompleteParamsImpl value,
          $Res Function(_$BlazeOnDataLoadCompleteParamsImpl) then) =
      __$$BlazeOnDataLoadCompleteParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      int itemsCount,
      BlazeError? error});

  @override
  $BlazeErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$BlazeOnDataLoadCompleteParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnDataLoadCompleteParamsCopyWithImpl<$Res,
        _$BlazeOnDataLoadCompleteParamsImpl>
    implements _$$BlazeOnDataLoadCompleteParamsImplCopyWith<$Res> {
  __$$BlazeOnDataLoadCompleteParamsImplCopyWithImpl(
      _$BlazeOnDataLoadCompleteParamsImpl _value,
      $Res Function(_$BlazeOnDataLoadCompleteParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnDataLoadCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? itemsCount = null,
    Object? error = freezed,
  }) {
    return _then(_$BlazeOnDataLoadCompleteParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BlazeError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnDataLoadCompleteParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnDataLoadCompleteParams {
  const _$BlazeOnDataLoadCompleteParamsImpl(
      {required this.playerType,
      this.sourceId,
      required this.itemsCount,
      this.error});

  factory _$BlazeOnDataLoadCompleteParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnDataLoadCompleteParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final int itemsCount;
  @override
  final BlazeError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnDataLoadCompleteParams(playerType: $playerType, sourceId: $sourceId, itemsCount: $itemsCount, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnDataLoadCompleteParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('itemsCount', itemsCount))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnDataLoadCompleteParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, playerType, sourceId, itemsCount, error);

  /// Create a copy of BlazeOnDataLoadCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnDataLoadCompleteParamsImplCopyWith<
          _$BlazeOnDataLoadCompleteParamsImpl>
      get copyWith => __$$BlazeOnDataLoadCompleteParamsImplCopyWithImpl<
          _$BlazeOnDataLoadCompleteParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadCompleteParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnDataLoadCompleteParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnDataLoadCompleteParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnDataLoadCompleteParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnDataLoadCompleteParams
    implements BlazeOnDataLoadCompleteParams {
  const factory _BlazeOnDataLoadCompleteParams(
      {required final BlazePlayerType playerType,
      final String? sourceId,
      required final int itemsCount,
      final BlazeError? error}) = _$BlazeOnDataLoadCompleteParamsImpl;

  factory _BlazeOnDataLoadCompleteParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnDataLoadCompleteParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  int get itemsCount;
  @override
  BlazeError? get error;

  /// Create a copy of BlazeOnDataLoadCompleteParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnDataLoadCompleteParamsImplCopyWith<
          _$BlazeOnDataLoadCompleteParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnPlayerDidAppearParams _$BlazeOnPlayerDidAppearParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnPlayerDidAppearParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnPlayerDidAppearParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidAppearParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnPlayerDidAppearParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidAppearParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnPlayerDidAppearParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnPlayerDidAppearParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnPlayerDidAppearParamsCopyWith<BlazeOnPlayerDidAppearParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnPlayerDidAppearParamsCopyWith<$Res> {
  factory $BlazeOnPlayerDidAppearParamsCopyWith(
          BlazeOnPlayerDidAppearParams value,
          $Res Function(BlazeOnPlayerDidAppearParams) then) =
      _$BlazeOnPlayerDidAppearParamsCopyWithImpl<$Res,
          BlazeOnPlayerDidAppearParams>;
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId});
}

/// @nodoc
class _$BlazeOnPlayerDidAppearParamsCopyWithImpl<$Res,
        $Val extends BlazeOnPlayerDidAppearParams>
    implements $BlazeOnPlayerDidAppearParamsCopyWith<$Res> {
  _$BlazeOnPlayerDidAppearParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnPlayerDidAppearParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnPlayerDidAppearParamsImplCopyWith<$Res>
    implements $BlazeOnPlayerDidAppearParamsCopyWith<$Res> {
  factory _$$BlazeOnPlayerDidAppearParamsImplCopyWith(
          _$BlazeOnPlayerDidAppearParamsImpl value,
          $Res Function(_$BlazeOnPlayerDidAppearParamsImpl) then) =
      __$$BlazeOnPlayerDidAppearParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId});
}

/// @nodoc
class __$$BlazeOnPlayerDidAppearParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnPlayerDidAppearParamsCopyWithImpl<$Res,
        _$BlazeOnPlayerDidAppearParamsImpl>
    implements _$$BlazeOnPlayerDidAppearParamsImplCopyWith<$Res> {
  __$$BlazeOnPlayerDidAppearParamsImplCopyWithImpl(
      _$BlazeOnPlayerDidAppearParamsImpl _value,
      $Res Function(_$BlazeOnPlayerDidAppearParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnPlayerDidAppearParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
  }) {
    return _then(_$BlazeOnPlayerDidAppearParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnPlayerDidAppearParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnPlayerDidAppearParams {
  const _$BlazeOnPlayerDidAppearParamsImpl(
      {required this.playerType, this.sourceId});

  factory _$BlazeOnPlayerDidAppearParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnPlayerDidAppearParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnPlayerDidAppearParams(playerType: $playerType, sourceId: $sourceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnPlayerDidAppearParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnPlayerDidAppearParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId);

  /// Create a copy of BlazeOnPlayerDidAppearParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnPlayerDidAppearParamsImplCopyWith<
          _$BlazeOnPlayerDidAppearParamsImpl>
      get copyWith => __$$BlazeOnPlayerDidAppearParamsImplCopyWithImpl<
          _$BlazeOnPlayerDidAppearParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidAppearParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnPlayerDidAppearParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidAppearParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnPlayerDidAppearParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnPlayerDidAppearParams
    implements BlazeOnPlayerDidAppearParams {
  const factory _BlazeOnPlayerDidAppearParams(
      {required final BlazePlayerType playerType,
      final String? sourceId}) = _$BlazeOnPlayerDidAppearParamsImpl;

  factory _BlazeOnPlayerDidAppearParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnPlayerDidAppearParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;

  /// Create a copy of BlazeOnPlayerDidAppearParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnPlayerDidAppearParamsImplCopyWith<
          _$BlazeOnPlayerDidAppearParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnPlayerDidDismissParams _$BlazeOnPlayerDidDismissParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnPlayerDidDismissParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnPlayerDidDismissParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidDismissParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnPlayerDidDismissParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidDismissParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnPlayerDidDismissParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnPlayerDidDismissParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnPlayerDidDismissParamsCopyWith<BlazeOnPlayerDidDismissParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnPlayerDidDismissParamsCopyWith<$Res> {
  factory $BlazeOnPlayerDidDismissParamsCopyWith(
          BlazeOnPlayerDidDismissParams value,
          $Res Function(BlazeOnPlayerDidDismissParams) then) =
      _$BlazeOnPlayerDidDismissParamsCopyWithImpl<$Res,
          BlazeOnPlayerDidDismissParams>;
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId});
}

/// @nodoc
class _$BlazeOnPlayerDidDismissParamsCopyWithImpl<$Res,
        $Val extends BlazeOnPlayerDidDismissParams>
    implements $BlazeOnPlayerDidDismissParamsCopyWith<$Res> {
  _$BlazeOnPlayerDidDismissParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnPlayerDidDismissParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnPlayerDidDismissParamsImplCopyWith<$Res>
    implements $BlazeOnPlayerDidDismissParamsCopyWith<$Res> {
  factory _$$BlazeOnPlayerDidDismissParamsImplCopyWith(
          _$BlazeOnPlayerDidDismissParamsImpl value,
          $Res Function(_$BlazeOnPlayerDidDismissParamsImpl) then) =
      __$$BlazeOnPlayerDidDismissParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId});
}

/// @nodoc
class __$$BlazeOnPlayerDidDismissParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnPlayerDidDismissParamsCopyWithImpl<$Res,
        _$BlazeOnPlayerDidDismissParamsImpl>
    implements _$$BlazeOnPlayerDidDismissParamsImplCopyWith<$Res> {
  __$$BlazeOnPlayerDidDismissParamsImplCopyWithImpl(
      _$BlazeOnPlayerDidDismissParamsImpl _value,
      $Res Function(_$BlazeOnPlayerDidDismissParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnPlayerDidDismissParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
  }) {
    return _then(_$BlazeOnPlayerDidDismissParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnPlayerDidDismissParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnPlayerDidDismissParams {
  const _$BlazeOnPlayerDidDismissParamsImpl(
      {required this.playerType, this.sourceId});

  factory _$BlazeOnPlayerDidDismissParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnPlayerDidDismissParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnPlayerDidDismissParams(playerType: $playerType, sourceId: $sourceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnPlayerDidDismissParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnPlayerDidDismissParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId);

  /// Create a copy of BlazeOnPlayerDidDismissParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnPlayerDidDismissParamsImplCopyWith<
          _$BlazeOnPlayerDidDismissParamsImpl>
      get copyWith => __$$BlazeOnPlayerDidDismissParamsImplCopyWithImpl<
          _$BlazeOnPlayerDidDismissParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidDismissParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnPlayerDidDismissParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerDidDismissParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnPlayerDidDismissParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnPlayerDidDismissParams
    implements BlazeOnPlayerDidDismissParams {
  const factory _BlazeOnPlayerDidDismissParams(
      {required final BlazePlayerType playerType,
      final String? sourceId}) = _$BlazeOnPlayerDidDismissParamsImpl;

  factory _BlazeOnPlayerDidDismissParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnPlayerDidDismissParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;

  /// Create a copy of BlazeOnPlayerDidDismissParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnPlayerDidDismissParamsImplCopyWith<
          _$BlazeOnPlayerDidDismissParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnTriggerCTAParams _$BlazeOnTriggerCTAParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnTriggerCTAParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnTriggerCTAParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  BlazeCTAActionType get actionType => throw _privateConstructorUsedError;
  String get actionParam => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCTAParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTriggerCTAParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCTAParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnTriggerCTAParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnTriggerCTAParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnTriggerCTAParamsCopyWith<BlazeOnTriggerCTAParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnTriggerCTAParamsCopyWith<$Res> {
  factory $BlazeOnTriggerCTAParamsCopyWith(BlazeOnTriggerCTAParams value,
          $Res Function(BlazeOnTriggerCTAParams) then) =
      _$BlazeOnTriggerCTAParamsCopyWithImpl<$Res, BlazeOnTriggerCTAParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      BlazeCTAActionType actionType,
      String actionParam});
}

/// @nodoc
class _$BlazeOnTriggerCTAParamsCopyWithImpl<$Res,
        $Val extends BlazeOnTriggerCTAParams>
    implements $BlazeOnTriggerCTAParamsCopyWith<$Res> {
  _$BlazeOnTriggerCTAParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnTriggerCTAParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? actionType = null,
    Object? actionParam = null,
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
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as BlazeCTAActionType,
      actionParam: null == actionParam
          ? _value.actionParam
          : actionParam // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnTriggerCTAParamsImplCopyWith<$Res>
    implements $BlazeOnTriggerCTAParamsCopyWith<$Res> {
  factory _$$BlazeOnTriggerCTAParamsImplCopyWith(
          _$BlazeOnTriggerCTAParamsImpl value,
          $Res Function(_$BlazeOnTriggerCTAParamsImpl) then) =
      __$$BlazeOnTriggerCTAParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      BlazeCTAActionType actionType,
      String actionParam});
}

/// @nodoc
class __$$BlazeOnTriggerCTAParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnTriggerCTAParamsCopyWithImpl<$Res,
        _$BlazeOnTriggerCTAParamsImpl>
    implements _$$BlazeOnTriggerCTAParamsImplCopyWith<$Res> {
  __$$BlazeOnTriggerCTAParamsImplCopyWithImpl(
      _$BlazeOnTriggerCTAParamsImpl _value,
      $Res Function(_$BlazeOnTriggerCTAParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnTriggerCTAParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? actionType = null,
    Object? actionParam = null,
  }) {
    return _then(_$BlazeOnTriggerCTAParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as BlazeCTAActionType,
      actionParam: null == actionParam
          ? _value.actionParam
          : actionParam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnTriggerCTAParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnTriggerCTAParams {
  const _$BlazeOnTriggerCTAParamsImpl(
      {required this.playerType,
      this.sourceId,
      required this.actionType,
      required this.actionParam});

  factory _$BlazeOnTriggerCTAParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeOnTriggerCTAParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final BlazeCTAActionType actionType;
  @override
  final String actionParam;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnTriggerCTAParams(playerType: $playerType, sourceId: $sourceId, actionType: $actionType, actionParam: $actionParam)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnTriggerCTAParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('actionType', actionType))
      ..add(DiagnosticsProperty('actionParam', actionParam));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnTriggerCTAParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.actionParam, actionParam) ||
                other.actionParam == actionParam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, playerType, sourceId, actionType, actionParam);

  /// Create a copy of BlazeOnTriggerCTAParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnTriggerCTAParamsImplCopyWith<_$BlazeOnTriggerCTAParamsImpl>
      get copyWith => __$$BlazeOnTriggerCTAParamsImplCopyWithImpl<
          _$BlazeOnTriggerCTAParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCTAParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTriggerCTAParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCTAParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnTriggerCTAParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnTriggerCTAParams implements BlazeOnTriggerCTAParams {
  const factory _BlazeOnTriggerCTAParams(
      {required final BlazePlayerType playerType,
      final String? sourceId,
      required final BlazeCTAActionType actionType,
      required final String actionParam}) = _$BlazeOnTriggerCTAParamsImpl;

  factory _BlazeOnTriggerCTAParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnTriggerCTAParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  BlazeCTAActionType get actionType;
  @override
  String get actionParam;

  /// Create a copy of BlazeOnTriggerCTAParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnTriggerCTAParamsImplCopyWith<_$BlazeOnTriggerCTAParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnTriggerPlayerBodyTextLinkParams
    _$BlazeOnTriggerPlayerBodyTextLinkParamsFromJson(
        Map<String, dynamic> json) {
  return _BlazeOnTriggerPlayerBodyTextLinkParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnTriggerPlayerBodyTextLinkParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  String get actionParam => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerPlayerBodyTextLinkParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTriggerPlayerBodyTextLinkParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerPlayerBodyTextLinkParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnTriggerPlayerBodyTextLinkParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnTriggerPlayerBodyTextLinkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnTriggerPlayerBodyTextLinkParamsCopyWith<
          BlazeOnTriggerPlayerBodyTextLinkParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnTriggerPlayerBodyTextLinkParamsCopyWith<$Res> {
  factory $BlazeOnTriggerPlayerBodyTextLinkParamsCopyWith(
          BlazeOnTriggerPlayerBodyTextLinkParams value,
          $Res Function(BlazeOnTriggerPlayerBodyTextLinkParams) then) =
      _$BlazeOnTriggerPlayerBodyTextLinkParamsCopyWithImpl<$Res,
          BlazeOnTriggerPlayerBodyTextLinkParams>;
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId, String actionParam});
}

/// @nodoc
class _$BlazeOnTriggerPlayerBodyTextLinkParamsCopyWithImpl<$Res,
        $Val extends BlazeOnTriggerPlayerBodyTextLinkParams>
    implements $BlazeOnTriggerPlayerBodyTextLinkParamsCopyWith<$Res> {
  _$BlazeOnTriggerPlayerBodyTextLinkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnTriggerPlayerBodyTextLinkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? actionParam = null,
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
      actionParam: null == actionParam
          ? _value.actionParam
          : actionParam // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWith<$Res>
    implements $BlazeOnTriggerPlayerBodyTextLinkParamsCopyWith<$Res> {
  factory _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWith(
          _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl value,
          $Res Function(_$BlazeOnTriggerPlayerBodyTextLinkParamsImpl) then) =
      __$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazePlayerType playerType, String? sourceId, String actionParam});
}

/// @nodoc
class __$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnTriggerPlayerBodyTextLinkParamsCopyWithImpl<$Res,
        _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl>
    implements _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWith<$Res> {
  __$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWithImpl(
      _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl _value,
      $Res Function(_$BlazeOnTriggerPlayerBodyTextLinkParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnTriggerPlayerBodyTextLinkParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? actionParam = null,
  }) {
    return _then(_$BlazeOnTriggerPlayerBodyTextLinkParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      actionParam: null == actionParam
          ? _value.actionParam
          : actionParam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnTriggerPlayerBodyTextLinkParams {
  const _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl(
      {required this.playerType, this.sourceId, required this.actionParam});

  factory _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final String actionParam;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnTriggerPlayerBodyTextLinkParams(playerType: $playerType, sourceId: $sourceId, actionParam: $actionParam)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BlazeOnTriggerPlayerBodyTextLinkParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('actionParam', actionParam));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.actionParam, actionParam) ||
                other.actionParam == actionParam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, playerType, sourceId, actionParam);

  /// Create a copy of BlazeOnTriggerPlayerBodyTextLinkParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWith<
          _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl>
      get copyWith =>
          __$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWithImpl<
              _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerPlayerBodyTextLinkParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTriggerPlayerBodyTextLinkParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerPlayerBodyTextLinkParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnTriggerPlayerBodyTextLinkParams
    implements BlazeOnTriggerPlayerBodyTextLinkParams {
  const factory _BlazeOnTriggerPlayerBodyTextLinkParams(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final String actionParam}) =
      _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl;

  factory _BlazeOnTriggerPlayerBodyTextLinkParams.fromJson(
          Map<String, dynamic> json) =
      _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  String get actionParam;

  /// Create a copy of BlazeOnTriggerPlayerBodyTextLinkParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnTriggerPlayerBodyTextLinkParamsImplCopyWith<
          _$BlazeOnTriggerPlayerBodyTextLinkParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnPlayerEventTriggeredParams _$BlazeOnPlayerEventTriggeredParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnPlayerEventTriggeredParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnPlayerEventTriggeredParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  BlazePlayerEvent get event => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerEventTriggeredParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnPlayerEventTriggeredParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerEventTriggeredParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnPlayerEventTriggeredParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnPlayerEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnPlayerEventTriggeredParamsCopyWith<BlazeOnPlayerEventTriggeredParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnPlayerEventTriggeredParamsCopyWith<$Res> {
  factory $BlazeOnPlayerEventTriggeredParamsCopyWith(
          BlazeOnPlayerEventTriggeredParams value,
          $Res Function(BlazeOnPlayerEventTriggeredParams) then) =
      _$BlazeOnPlayerEventTriggeredParamsCopyWithImpl<$Res,
          BlazeOnPlayerEventTriggeredParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType, String? sourceId, BlazePlayerEvent event});

  $BlazePlayerEventCopyWith<$Res> get event;
}

/// @nodoc
class _$BlazeOnPlayerEventTriggeredParamsCopyWithImpl<$Res,
        $Val extends BlazeOnPlayerEventTriggeredParams>
    implements $BlazeOnPlayerEventTriggeredParamsCopyWith<$Res> {
  _$BlazeOnPlayerEventTriggeredParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnPlayerEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? event = null,
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as BlazePlayerEvent,
    ) as $Val);
  }

  /// Create a copy of BlazeOnPlayerEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerEventCopyWith<$Res> get event {
    return $BlazePlayerEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeOnPlayerEventTriggeredParamsImplCopyWith<$Res>
    implements $BlazeOnPlayerEventTriggeredParamsCopyWith<$Res> {
  factory _$$BlazeOnPlayerEventTriggeredParamsImplCopyWith(
          _$BlazeOnPlayerEventTriggeredParamsImpl value,
          $Res Function(_$BlazeOnPlayerEventTriggeredParamsImpl) then) =
      __$$BlazeOnPlayerEventTriggeredParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType, String? sourceId, BlazePlayerEvent event});

  @override
  $BlazePlayerEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$BlazeOnPlayerEventTriggeredParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnPlayerEventTriggeredParamsCopyWithImpl<$Res,
        _$BlazeOnPlayerEventTriggeredParamsImpl>
    implements _$$BlazeOnPlayerEventTriggeredParamsImplCopyWith<$Res> {
  __$$BlazeOnPlayerEventTriggeredParamsImplCopyWithImpl(
      _$BlazeOnPlayerEventTriggeredParamsImpl _value,
      $Res Function(_$BlazeOnPlayerEventTriggeredParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnPlayerEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? event = null,
  }) {
    return _then(_$BlazeOnPlayerEventTriggeredParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as BlazePlayerEvent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnPlayerEventTriggeredParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnPlayerEventTriggeredParams {
  const _$BlazeOnPlayerEventTriggeredParamsImpl(
      {required this.playerType, this.sourceId, required this.event});

  factory _$BlazeOnPlayerEventTriggeredParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnPlayerEventTriggeredParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final BlazePlayerEvent event;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnPlayerEventTriggeredParams(playerType: $playerType, sourceId: $sourceId, event: $event)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnPlayerEventTriggeredParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('event', event));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnPlayerEventTriggeredParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId, event);

  /// Create a copy of BlazeOnPlayerEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnPlayerEventTriggeredParamsImplCopyWith<
          _$BlazeOnPlayerEventTriggeredParamsImpl>
      get copyWith => __$$BlazeOnPlayerEventTriggeredParamsImplCopyWithImpl<
          _$BlazeOnPlayerEventTriggeredParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerEventTriggeredParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnPlayerEventTriggeredParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnPlayerEventTriggeredParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnPlayerEventTriggeredParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnPlayerEventTriggeredParams
    implements BlazeOnPlayerEventTriggeredParams {
  const factory _BlazeOnPlayerEventTriggeredParams(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final BlazePlayerEvent event}) =
      _$BlazeOnPlayerEventTriggeredParamsImpl;

  factory _BlazeOnPlayerEventTriggeredParams.fromJson(
          Map<String, dynamic> json) =
      _$BlazeOnPlayerEventTriggeredParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  BlazePlayerEvent get event;

  /// Create a copy of BlazeOnPlayerEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnPlayerEventTriggeredParamsImplCopyWith<
          _$BlazeOnPlayerEventTriggeredParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazePlayerEvent _$BlazePlayerEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'onMomentStart':
      return BlazePlayerEventOnMomentStart.fromJson(json);
    case 'onStoryStart':
      return BlazePlayerEventOnStoryStart.fromJson(json);
    case 'onVideoStart':
      return BlazePlayerEventOnVideoStart.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BlazePlayerEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BlazePlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String momentId) onMomentStart,
    required TResult Function(String storyId) onStoryStart,
    required TResult Function(String videoId) onVideoStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String momentId)? onMomentStart,
    TResult? Function(String storyId)? onStoryStart,
    TResult? Function(String videoId)? onVideoStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String momentId)? onMomentStart,
    TResult Function(String storyId)? onStoryStart,
    TResult Function(String videoId)? onVideoStart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazePlayerEventOnMomentStart value)
        onMomentStart,
    required TResult Function(BlazePlayerEventOnStoryStart value) onStoryStart,
    required TResult Function(BlazePlayerEventOnVideoStart value) onVideoStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult? Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult? Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazePlayerEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazePlayerEventCopyWith<$Res> {
  factory $BlazePlayerEventCopyWith(
          BlazePlayerEvent value, $Res Function(BlazePlayerEvent) then) =
      _$BlazePlayerEventCopyWithImpl<$Res, BlazePlayerEvent>;
}

/// @nodoc
class _$BlazePlayerEventCopyWithImpl<$Res, $Val extends BlazePlayerEvent>
    implements $BlazePlayerEventCopyWith<$Res> {
  _$BlazePlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlazePlayerEventOnMomentStartImplCopyWith<$Res> {
  factory _$$BlazePlayerEventOnMomentStartImplCopyWith(
          _$BlazePlayerEventOnMomentStartImpl value,
          $Res Function(_$BlazePlayerEventOnMomentStartImpl) then) =
      __$$BlazePlayerEventOnMomentStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String momentId});
}

/// @nodoc
class __$$BlazePlayerEventOnMomentStartImplCopyWithImpl<$Res>
    extends _$BlazePlayerEventCopyWithImpl<$Res,
        _$BlazePlayerEventOnMomentStartImpl>
    implements _$$BlazePlayerEventOnMomentStartImplCopyWith<$Res> {
  __$$BlazePlayerEventOnMomentStartImplCopyWithImpl(
      _$BlazePlayerEventOnMomentStartImpl _value,
      $Res Function(_$BlazePlayerEventOnMomentStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? momentId = null,
  }) {
    return _then(_$BlazePlayerEventOnMomentStartImpl(
      momentId: null == momentId
          ? _value.momentId
          : momentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePlayerEventOnMomentStartImpl
    with DiagnosticableTreeMixin
    implements BlazePlayerEventOnMomentStart {
  const _$BlazePlayerEventOnMomentStartImpl(
      {required this.momentId, final String? $type})
      : $type = $type ?? 'onMomentStart';

  factory _$BlazePlayerEventOnMomentStartImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazePlayerEventOnMomentStartImplFromJson(json);

  @override
  final String momentId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazePlayerEvent.onMomentStart(momentId: $momentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazePlayerEvent.onMomentStart'))
      ..add(DiagnosticsProperty('momentId', momentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePlayerEventOnMomentStartImpl &&
            (identical(other.momentId, momentId) ||
                other.momentId == momentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, momentId);

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePlayerEventOnMomentStartImplCopyWith<
          _$BlazePlayerEventOnMomentStartImpl>
      get copyWith => __$$BlazePlayerEventOnMomentStartImplCopyWithImpl<
          _$BlazePlayerEventOnMomentStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String momentId) onMomentStart,
    required TResult Function(String storyId) onStoryStart,
    required TResult Function(String videoId) onVideoStart,
  }) {
    return onMomentStart(momentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String momentId)? onMomentStart,
    TResult? Function(String storyId)? onStoryStart,
    TResult? Function(String videoId)? onVideoStart,
  }) {
    return onMomentStart?.call(momentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String momentId)? onMomentStart,
    TResult Function(String storyId)? onStoryStart,
    TResult Function(String videoId)? onVideoStart,
    required TResult orElse(),
  }) {
    if (onMomentStart != null) {
      return onMomentStart(momentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazePlayerEventOnMomentStart value)
        onMomentStart,
    required TResult Function(BlazePlayerEventOnStoryStart value) onStoryStart,
    required TResult Function(BlazePlayerEventOnVideoStart value) onVideoStart,
  }) {
    return onMomentStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult? Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult? Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
  }) {
    return onMomentStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
    required TResult orElse(),
  }) {
    if (onMomentStart != null) {
      return onMomentStart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePlayerEventOnMomentStartImplToJson(
      this,
    );
  }
}

abstract class BlazePlayerEventOnMomentStart implements BlazePlayerEvent {
  const factory BlazePlayerEventOnMomentStart(
      {required final String momentId}) = _$BlazePlayerEventOnMomentStartImpl;

  factory BlazePlayerEventOnMomentStart.fromJson(Map<String, dynamic> json) =
      _$BlazePlayerEventOnMomentStartImpl.fromJson;

  String get momentId;

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePlayerEventOnMomentStartImplCopyWith<
          _$BlazePlayerEventOnMomentStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlazePlayerEventOnStoryStartImplCopyWith<$Res> {
  factory _$$BlazePlayerEventOnStoryStartImplCopyWith(
          _$BlazePlayerEventOnStoryStartImpl value,
          $Res Function(_$BlazePlayerEventOnStoryStartImpl) then) =
      __$$BlazePlayerEventOnStoryStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String storyId});
}

/// @nodoc
class __$$BlazePlayerEventOnStoryStartImplCopyWithImpl<$Res>
    extends _$BlazePlayerEventCopyWithImpl<$Res,
        _$BlazePlayerEventOnStoryStartImpl>
    implements _$$BlazePlayerEventOnStoryStartImplCopyWith<$Res> {
  __$$BlazePlayerEventOnStoryStartImplCopyWithImpl(
      _$BlazePlayerEventOnStoryStartImpl _value,
      $Res Function(_$BlazePlayerEventOnStoryStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyId = null,
  }) {
    return _then(_$BlazePlayerEventOnStoryStartImpl(
      storyId: null == storyId
          ? _value.storyId
          : storyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePlayerEventOnStoryStartImpl
    with DiagnosticableTreeMixin
    implements BlazePlayerEventOnStoryStart {
  const _$BlazePlayerEventOnStoryStartImpl(
      {required this.storyId, final String? $type})
      : $type = $type ?? 'onStoryStart';

  factory _$BlazePlayerEventOnStoryStartImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazePlayerEventOnStoryStartImplFromJson(json);

  @override
  final String storyId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazePlayerEvent.onStoryStart(storyId: $storyId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazePlayerEvent.onStoryStart'))
      ..add(DiagnosticsProperty('storyId', storyId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePlayerEventOnStoryStartImpl &&
            (identical(other.storyId, storyId) || other.storyId == storyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storyId);

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePlayerEventOnStoryStartImplCopyWith<
          _$BlazePlayerEventOnStoryStartImpl>
      get copyWith => __$$BlazePlayerEventOnStoryStartImplCopyWithImpl<
          _$BlazePlayerEventOnStoryStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String momentId) onMomentStart,
    required TResult Function(String storyId) onStoryStart,
    required TResult Function(String videoId) onVideoStart,
  }) {
    return onStoryStart(storyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String momentId)? onMomentStart,
    TResult? Function(String storyId)? onStoryStart,
    TResult? Function(String videoId)? onVideoStart,
  }) {
    return onStoryStart?.call(storyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String momentId)? onMomentStart,
    TResult Function(String storyId)? onStoryStart,
    TResult Function(String videoId)? onVideoStart,
    required TResult orElse(),
  }) {
    if (onStoryStart != null) {
      return onStoryStart(storyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazePlayerEventOnMomentStart value)
        onMomentStart,
    required TResult Function(BlazePlayerEventOnStoryStart value) onStoryStart,
    required TResult Function(BlazePlayerEventOnVideoStart value) onVideoStart,
  }) {
    return onStoryStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult? Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult? Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
  }) {
    return onStoryStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
    required TResult orElse(),
  }) {
    if (onStoryStart != null) {
      return onStoryStart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePlayerEventOnStoryStartImplToJson(
      this,
    );
  }
}

abstract class BlazePlayerEventOnStoryStart implements BlazePlayerEvent {
  const factory BlazePlayerEventOnStoryStart({required final String storyId}) =
      _$BlazePlayerEventOnStoryStartImpl;

  factory BlazePlayerEventOnStoryStart.fromJson(Map<String, dynamic> json) =
      _$BlazePlayerEventOnStoryStartImpl.fromJson;

  String get storyId;

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePlayerEventOnStoryStartImplCopyWith<
          _$BlazePlayerEventOnStoryStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlazePlayerEventOnVideoStartImplCopyWith<$Res> {
  factory _$$BlazePlayerEventOnVideoStartImplCopyWith(
          _$BlazePlayerEventOnVideoStartImpl value,
          $Res Function(_$BlazePlayerEventOnVideoStartImpl) then) =
      __$$BlazePlayerEventOnVideoStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$BlazePlayerEventOnVideoStartImplCopyWithImpl<$Res>
    extends _$BlazePlayerEventCopyWithImpl<$Res,
        _$BlazePlayerEventOnVideoStartImpl>
    implements _$$BlazePlayerEventOnVideoStartImplCopyWith<$Res> {
  __$$BlazePlayerEventOnVideoStartImplCopyWithImpl(
      _$BlazePlayerEventOnVideoStartImpl _value,
      $Res Function(_$BlazePlayerEventOnVideoStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$BlazePlayerEventOnVideoStartImpl(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePlayerEventOnVideoStartImpl
    with DiagnosticableTreeMixin
    implements BlazePlayerEventOnVideoStart {
  const _$BlazePlayerEventOnVideoStartImpl(
      {required this.videoId, final String? $type})
      : $type = $type ?? 'onVideoStart';

  factory _$BlazePlayerEventOnVideoStartImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazePlayerEventOnVideoStartImplFromJson(json);

  @override
  final String videoId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazePlayerEvent.onVideoStart(videoId: $videoId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazePlayerEvent.onVideoStart'))
      ..add(DiagnosticsProperty('videoId', videoId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePlayerEventOnVideoStartImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePlayerEventOnVideoStartImplCopyWith<
          _$BlazePlayerEventOnVideoStartImpl>
      get copyWith => __$$BlazePlayerEventOnVideoStartImplCopyWithImpl<
          _$BlazePlayerEventOnVideoStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String momentId) onMomentStart,
    required TResult Function(String storyId) onStoryStart,
    required TResult Function(String videoId) onVideoStart,
  }) {
    return onVideoStart(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String momentId)? onMomentStart,
    TResult? Function(String storyId)? onStoryStart,
    TResult? Function(String videoId)? onVideoStart,
  }) {
    return onVideoStart?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String momentId)? onMomentStart,
    TResult Function(String storyId)? onStoryStart,
    TResult Function(String videoId)? onVideoStart,
    required TResult orElse(),
  }) {
    if (onVideoStart != null) {
      return onVideoStart(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazePlayerEventOnMomentStart value)
        onMomentStart,
    required TResult Function(BlazePlayerEventOnStoryStart value) onStoryStart,
    required TResult Function(BlazePlayerEventOnVideoStart value) onVideoStart,
  }) {
    return onVideoStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult? Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult? Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
  }) {
    return onVideoStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazePlayerEventOnMomentStart value)? onMomentStart,
    TResult Function(BlazePlayerEventOnStoryStart value)? onStoryStart,
    TResult Function(BlazePlayerEventOnVideoStart value)? onVideoStart,
    required TResult orElse(),
  }) {
    if (onVideoStart != null) {
      return onVideoStart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePlayerEventOnVideoStartImplToJson(
      this,
    );
  }
}

abstract class BlazePlayerEventOnVideoStart implements BlazePlayerEvent {
  const factory BlazePlayerEventOnVideoStart({required final String videoId}) =
      _$BlazePlayerEventOnVideoStartImpl;

  factory BlazePlayerEventOnVideoStart.fromJson(Map<String, dynamic> json) =
      _$BlazePlayerEventOnVideoStartImpl.fromJson;

  String get videoId;

  /// Create a copy of BlazePlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePlayerEventOnVideoStartImplCopyWith<
          _$BlazePlayerEventOnVideoStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazePlayerEventInternalData _$BlazePlayerEventInternalDataFromJson(
    Map<String, dynamic> json) {
  return _BlazePlayerEventInternalData.fromJson(json);
}

/// @nodoc
mixin _$BlazePlayerEventInternalData {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  BlazePlayerEventData get eventData => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerEventInternalData value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerEventInternalData value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerEventInternalData value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazePlayerEventInternalData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazePlayerEventInternalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazePlayerEventInternalDataCopyWith<BlazePlayerEventInternalData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazePlayerEventInternalDataCopyWith<$Res> {
  factory $BlazePlayerEventInternalDataCopyWith(
          BlazePlayerEventInternalData value,
          $Res Function(BlazePlayerEventInternalData) then) =
      _$BlazePlayerEventInternalDataCopyWithImpl<$Res,
          BlazePlayerEventInternalData>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      BlazePlayerEventData eventData});

  $BlazePlayerEventDataCopyWith<$Res> get eventData;
}

/// @nodoc
class _$BlazePlayerEventInternalDataCopyWithImpl<$Res,
        $Val extends BlazePlayerEventInternalData>
    implements $BlazePlayerEventInternalDataCopyWith<$Res> {
  _$BlazePlayerEventInternalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazePlayerEventInternalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? eventData = null,
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
      eventData: null == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as BlazePlayerEventData,
    ) as $Val);
  }

  /// Create a copy of BlazePlayerEventInternalData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerEventDataCopyWith<$Res> get eventData {
    return $BlazePlayerEventDataCopyWith<$Res>(_value.eventData, (value) {
      return _then(_value.copyWith(eventData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazePlayerEventInternalDataImplCopyWith<$Res>
    implements $BlazePlayerEventInternalDataCopyWith<$Res> {
  factory _$$BlazePlayerEventInternalDataImplCopyWith(
          _$BlazePlayerEventInternalDataImpl value,
          $Res Function(_$BlazePlayerEventInternalDataImpl) then) =
      __$$BlazePlayerEventInternalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      BlazePlayerEventData eventData});

  @override
  $BlazePlayerEventDataCopyWith<$Res> get eventData;
}

/// @nodoc
class __$$BlazePlayerEventInternalDataImplCopyWithImpl<$Res>
    extends _$BlazePlayerEventInternalDataCopyWithImpl<$Res,
        _$BlazePlayerEventInternalDataImpl>
    implements _$$BlazePlayerEventInternalDataImplCopyWith<$Res> {
  __$$BlazePlayerEventInternalDataImplCopyWithImpl(
      _$BlazePlayerEventInternalDataImpl _value,
      $Res Function(_$BlazePlayerEventInternalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePlayerEventInternalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? eventData = null,
  }) {
    return _then(_$BlazePlayerEventInternalDataImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventData: null == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as BlazePlayerEventData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePlayerEventInternalDataImpl
    with DiagnosticableTreeMixin
    implements _BlazePlayerEventInternalData {
  const _$BlazePlayerEventInternalDataImpl(
      {required this.playerType, this.sourceId, required this.eventData});

  factory _$BlazePlayerEventInternalDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazePlayerEventInternalDataImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final BlazePlayerEventData eventData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazePlayerEventInternalData(playerType: $playerType, sourceId: $sourceId, eventData: $eventData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazePlayerEventInternalData'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('eventData', eventData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePlayerEventInternalDataImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.eventData, eventData) ||
                other.eventData == eventData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerType, sourceId, eventData);

  /// Create a copy of BlazePlayerEventInternalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePlayerEventInternalDataImplCopyWith<
          _$BlazePlayerEventInternalDataImpl>
      get copyWith => __$$BlazePlayerEventInternalDataImplCopyWithImpl<
          _$BlazePlayerEventInternalDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerEventInternalData value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerEventInternalData value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerEventInternalData value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePlayerEventInternalDataImplToJson(
      this,
    );
  }
}

abstract class _BlazePlayerEventInternalData
    implements BlazePlayerEventInternalData {
  const factory _BlazePlayerEventInternalData(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final BlazePlayerEventData eventData}) =
      _$BlazePlayerEventInternalDataImpl;

  factory _BlazePlayerEventInternalData.fromJson(Map<String, dynamic> json) =
      _$BlazePlayerEventInternalDataImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  BlazePlayerEventData get eventData;

  /// Create a copy of BlazePlayerEventInternalData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePlayerEventInternalDataImplCopyWith<
          _$BlazePlayerEventInternalDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazePlayerEventData _$BlazePlayerEventDataFromJson(Map<String, dynamic> json) {
  return _BlazePlayerEventData.fromJson(json);
}

/// @nodoc
mixin _$BlazePlayerEventData {
  String get playerEventType => throw _privateConstructorUsedError;
  Map<String, dynamic> get playerEventParams =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerEventData value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerEventData value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerEventData value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazePlayerEventData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazePlayerEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazePlayerEventDataCopyWith<BlazePlayerEventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazePlayerEventDataCopyWith<$Res> {
  factory $BlazePlayerEventDataCopyWith(BlazePlayerEventData value,
          $Res Function(BlazePlayerEventData) then) =
      _$BlazePlayerEventDataCopyWithImpl<$Res, BlazePlayerEventData>;
  @useResult
  $Res call({String playerEventType, Map<String, dynamic> playerEventParams});
}

/// @nodoc
class _$BlazePlayerEventDataCopyWithImpl<$Res,
        $Val extends BlazePlayerEventData>
    implements $BlazePlayerEventDataCopyWith<$Res> {
  _$BlazePlayerEventDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazePlayerEventData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerEventType = null,
    Object? playerEventParams = null,
  }) {
    return _then(_value.copyWith(
      playerEventType: null == playerEventType
          ? _value.playerEventType
          : playerEventType // ignore: cast_nullable_to_non_nullable
              as String,
      playerEventParams: null == playerEventParams
          ? _value.playerEventParams
          : playerEventParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazePlayerEventDataImplCopyWith<$Res>
    implements $BlazePlayerEventDataCopyWith<$Res> {
  factory _$$BlazePlayerEventDataImplCopyWith(_$BlazePlayerEventDataImpl value,
          $Res Function(_$BlazePlayerEventDataImpl) then) =
      __$$BlazePlayerEventDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String playerEventType, Map<String, dynamic> playerEventParams});
}

/// @nodoc
class __$$BlazePlayerEventDataImplCopyWithImpl<$Res>
    extends _$BlazePlayerEventDataCopyWithImpl<$Res, _$BlazePlayerEventDataImpl>
    implements _$$BlazePlayerEventDataImplCopyWith<$Res> {
  __$$BlazePlayerEventDataImplCopyWithImpl(_$BlazePlayerEventDataImpl _value,
      $Res Function(_$BlazePlayerEventDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePlayerEventData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerEventType = null,
    Object? playerEventParams = null,
  }) {
    return _then(_$BlazePlayerEventDataImpl(
      playerEventType: null == playerEventType
          ? _value.playerEventType
          : playerEventType // ignore: cast_nullable_to_non_nullable
              as String,
      playerEventParams: null == playerEventParams
          ? _value._playerEventParams
          : playerEventParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePlayerEventDataImpl
    with DiagnosticableTreeMixin
    implements _BlazePlayerEventData {
  const _$BlazePlayerEventDataImpl(
      {required this.playerEventType,
      required final Map<String, dynamic> playerEventParams})
      : _playerEventParams = playerEventParams;

  factory _$BlazePlayerEventDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazePlayerEventDataImplFromJson(json);

  @override
  final String playerEventType;
  final Map<String, dynamic> _playerEventParams;
  @override
  Map<String, dynamic> get playerEventParams {
    if (_playerEventParams is EqualUnmodifiableMapView)
      return _playerEventParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_playerEventParams);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazePlayerEventData(playerEventType: $playerEventType, playerEventParams: $playerEventParams)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazePlayerEventData'))
      ..add(DiagnosticsProperty('playerEventType', playerEventType))
      ..add(DiagnosticsProperty('playerEventParams', playerEventParams));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePlayerEventDataImpl &&
            (identical(other.playerEventType, playerEventType) ||
                other.playerEventType == playerEventType) &&
            const DeepCollectionEquality()
                .equals(other._playerEventParams, _playerEventParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerEventType,
      const DeepCollectionEquality().hash(_playerEventParams));

  /// Create a copy of BlazePlayerEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePlayerEventDataImplCopyWith<_$BlazePlayerEventDataImpl>
      get copyWith =>
          __$$BlazePlayerEventDataImplCopyWithImpl<_$BlazePlayerEventDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerEventData value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerEventData value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerEventData value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePlayerEventDataImplToJson(
      this,
    );
  }
}

abstract class _BlazePlayerEventData implements BlazePlayerEventData {
  const factory _BlazePlayerEventData(
          {required final String playerEventType,
          required final Map<String, dynamic> playerEventParams}) =
      _$BlazePlayerEventDataImpl;

  factory _BlazePlayerEventData.fromJson(Map<String, dynamic> json) =
      _$BlazePlayerEventDataImpl.fromJson;

  @override
  String get playerEventType;
  @override
  Map<String, dynamic> get playerEventParams;

  /// Create a copy of BlazePlayerEventData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePlayerEventDataImplCopyWith<_$BlazePlayerEventDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
