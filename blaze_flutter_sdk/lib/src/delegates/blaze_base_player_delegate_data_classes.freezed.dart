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

BlazeOnTriggerCustomActionButtonParams
    _$BlazeOnTriggerCustomActionButtonParamsFromJson(
        Map<String, dynamic> json) {
  return _BlazeOnTriggerCustomActionButtonParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnTriggerCustomActionButtonParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  String get buttonId => throw _privateConstructorUsedError;
  String get buttonName => throw _privateConstructorUsedError;

  /// Metadata the app attached to the button via
  /// [BlazeCustomActionButtonParams.appMetadata].
  Map<String, dynamic>? get appMetadata => throw _privateConstructorUsedError;

  /// Metadata populated by the SDK, reflecting the content's extra info at
  /// the moment the button was clicked.
  ///
  /// Read-only: there is no corresponding "set" path — the SDK manages this
  /// and the app cannot supply it when constructing a button. `null` when the
  /// SDK attached no metadata.
  Map<String, dynamic>? get sdkMetadata => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCustomActionButtonParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTriggerCustomActionButtonParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCustomActionButtonParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnTriggerCustomActionButtonParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnTriggerCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnTriggerCustomActionButtonParamsCopyWith<
          BlazeOnTriggerCustomActionButtonParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnTriggerCustomActionButtonParamsCopyWith<$Res> {
  factory $BlazeOnTriggerCustomActionButtonParamsCopyWith(
          BlazeOnTriggerCustomActionButtonParams value,
          $Res Function(BlazeOnTriggerCustomActionButtonParams) then) =
      _$BlazeOnTriggerCustomActionButtonParamsCopyWithImpl<$Res,
          BlazeOnTriggerCustomActionButtonParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      String buttonId,
      String buttonName,
      Map<String, dynamic>? appMetadata,
      Map<String, dynamic>? sdkMetadata});
}

/// @nodoc
class _$BlazeOnTriggerCustomActionButtonParamsCopyWithImpl<$Res,
        $Val extends BlazeOnTriggerCustomActionButtonParams>
    implements $BlazeOnTriggerCustomActionButtonParamsCopyWith<$Res> {
  _$BlazeOnTriggerCustomActionButtonParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnTriggerCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? buttonId = null,
    Object? buttonName = null,
    Object? appMetadata = freezed,
    Object? sdkMetadata = freezed,
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
      buttonId: null == buttonId
          ? _value.buttonId
          : buttonId // ignore: cast_nullable_to_non_nullable
              as String,
      buttonName: null == buttonName
          ? _value.buttonName
          : buttonName // ignore: cast_nullable_to_non_nullable
              as String,
      appMetadata: freezed == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sdkMetadata: freezed == sdkMetadata
          ? _value.sdkMetadata
          : sdkMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnTriggerCustomActionButtonParamsImplCopyWith<$Res>
    implements $BlazeOnTriggerCustomActionButtonParamsCopyWith<$Res> {
  factory _$$BlazeOnTriggerCustomActionButtonParamsImplCopyWith(
          _$BlazeOnTriggerCustomActionButtonParamsImpl value,
          $Res Function(_$BlazeOnTriggerCustomActionButtonParamsImpl) then) =
      __$$BlazeOnTriggerCustomActionButtonParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      String buttonId,
      String buttonName,
      Map<String, dynamic>? appMetadata,
      Map<String, dynamic>? sdkMetadata});
}

/// @nodoc
class __$$BlazeOnTriggerCustomActionButtonParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnTriggerCustomActionButtonParamsCopyWithImpl<$Res,
        _$BlazeOnTriggerCustomActionButtonParamsImpl>
    implements _$$BlazeOnTriggerCustomActionButtonParamsImplCopyWith<$Res> {
  __$$BlazeOnTriggerCustomActionButtonParamsImplCopyWithImpl(
      _$BlazeOnTriggerCustomActionButtonParamsImpl _value,
      $Res Function(_$BlazeOnTriggerCustomActionButtonParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnTriggerCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? buttonId = null,
    Object? buttonName = null,
    Object? appMetadata = freezed,
    Object? sdkMetadata = freezed,
  }) {
    return _then(_$BlazeOnTriggerCustomActionButtonParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonId: null == buttonId
          ? _value.buttonId
          : buttonId // ignore: cast_nullable_to_non_nullable
              as String,
      buttonName: null == buttonName
          ? _value.buttonName
          : buttonName // ignore: cast_nullable_to_non_nullable
              as String,
      appMetadata: freezed == appMetadata
          ? _value._appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sdkMetadata: freezed == sdkMetadata
          ? _value._sdkMetadata
          : sdkMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnTriggerCustomActionButtonParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnTriggerCustomActionButtonParams {
  const _$BlazeOnTriggerCustomActionButtonParamsImpl(
      {required this.playerType,
      this.sourceId,
      required this.buttonId,
      required this.buttonName,
      final Map<String, dynamic>? appMetadata,
      final Map<String, dynamic>? sdkMetadata})
      : _appMetadata = appMetadata,
        _sdkMetadata = sdkMetadata;

  factory _$BlazeOnTriggerCustomActionButtonParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnTriggerCustomActionButtonParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final String buttonId;
  @override
  final String buttonName;

  /// Metadata the app attached to the button via
  /// [BlazeCustomActionButtonParams.appMetadata].
  final Map<String, dynamic>? _appMetadata;

  /// Metadata the app attached to the button via
  /// [BlazeCustomActionButtonParams.appMetadata].
  @override
  Map<String, dynamic>? get appMetadata {
    final value = _appMetadata;
    if (value == null) return null;
    if (_appMetadata is EqualUnmodifiableMapView) return _appMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Metadata populated by the SDK, reflecting the content's extra info at
  /// the moment the button was clicked.
  ///
  /// Read-only: there is no corresponding "set" path — the SDK manages this
  /// and the app cannot supply it when constructing a button. `null` when the
  /// SDK attached no metadata.
  final Map<String, dynamic>? _sdkMetadata;

  /// Metadata populated by the SDK, reflecting the content's extra info at
  /// the moment the button was clicked.
  ///
  /// Read-only: there is no corresponding "set" path — the SDK manages this
  /// and the app cannot supply it when constructing a button. `null` when the
  /// SDK attached no metadata.
  @override
  Map<String, dynamic>? get sdkMetadata {
    final value = _sdkMetadata;
    if (value == null) return null;
    if (_sdkMetadata is EqualUnmodifiableMapView) return _sdkMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnTriggerCustomActionButtonParams(playerType: $playerType, sourceId: $sourceId, buttonId: $buttonId, buttonName: $buttonName, appMetadata: $appMetadata, sdkMetadata: $sdkMetadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BlazeOnTriggerCustomActionButtonParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('buttonId', buttonId))
      ..add(DiagnosticsProperty('buttonName', buttonName))
      ..add(DiagnosticsProperty('appMetadata', appMetadata))
      ..add(DiagnosticsProperty('sdkMetadata', sdkMetadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnTriggerCustomActionButtonParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.buttonId, buttonId) ||
                other.buttonId == buttonId) &&
            (identical(other.buttonName, buttonName) ||
                other.buttonName == buttonName) &&
            const DeepCollectionEquality()
                .equals(other._appMetadata, _appMetadata) &&
            const DeepCollectionEquality()
                .equals(other._sdkMetadata, _sdkMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playerType,
      sourceId,
      buttonId,
      buttonName,
      const DeepCollectionEquality().hash(_appMetadata),
      const DeepCollectionEquality().hash(_sdkMetadata));

  /// Create a copy of BlazeOnTriggerCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnTriggerCustomActionButtonParamsImplCopyWith<
          _$BlazeOnTriggerCustomActionButtonParamsImpl>
      get copyWith =>
          __$$BlazeOnTriggerCustomActionButtonParamsImplCopyWithImpl<
              _$BlazeOnTriggerCustomActionButtonParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCustomActionButtonParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnTriggerCustomActionButtonParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnTriggerCustomActionButtonParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnTriggerCustomActionButtonParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnTriggerCustomActionButtonParams
    implements BlazeOnTriggerCustomActionButtonParams {
  const factory _BlazeOnTriggerCustomActionButtonParams(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final String buttonId,
          required final String buttonName,
          final Map<String, dynamic>? appMetadata,
          final Map<String, dynamic>? sdkMetadata}) =
      _$BlazeOnTriggerCustomActionButtonParamsImpl;

  factory _BlazeOnTriggerCustomActionButtonParams.fromJson(
          Map<String, dynamic> json) =
      _$BlazeOnTriggerCustomActionButtonParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  String get buttonId;
  @override
  String get buttonName;

  /// Metadata the app attached to the button via
  /// [BlazeCustomActionButtonParams.appMetadata].
  @override
  Map<String, dynamic>? get appMetadata;

  /// Metadata populated by the SDK, reflecting the content's extra info at
  /// the moment the button was clicked.
  ///
  /// Read-only: there is no corresponding "set" path — the SDK manages this
  /// and the app cannot supply it when constructing a button. `null` when the
  /// SDK attached no metadata.
  @override
  Map<String, dynamic>? get sdkMetadata;

  /// Create a copy of BlazeOnTriggerCustomActionButtonParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnTriggerCustomActionButtonParamsImplCopyWith<
          _$BlazeOnTriggerCustomActionButtonParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeShareContentType _$BlazeShareContentTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'story':
      return BlazeShareContentTypeStory.fromJson(json);
    case 'moment':
      return BlazeShareContentTypeMoment.fromJson(json);
    case 'video':
      return BlazeShareContentTypeVideo.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'BlazeShareContentType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BlazeShareContentType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pageId) story,
    required TResult Function() moment,
    required TResult Function() video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pageId)? story,
    TResult? Function()? moment,
    TResult? Function()? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pageId)? story,
    TResult Function()? moment,
    TResult Function()? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeShareContentTypeStory value) story,
    required TResult Function(BlazeShareContentTypeMoment value) moment,
    required TResult Function(BlazeShareContentTypeVideo value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeShareContentTypeStory value)? story,
    TResult? Function(BlazeShareContentTypeMoment value)? moment,
    TResult? Function(BlazeShareContentTypeVideo value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeShareContentTypeStory value)? story,
    TResult Function(BlazeShareContentTypeMoment value)? moment,
    TResult Function(BlazeShareContentTypeVideo value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeShareContentType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeShareContentTypeCopyWith<$Res> {
  factory $BlazeShareContentTypeCopyWith(BlazeShareContentType value,
          $Res Function(BlazeShareContentType) then) =
      _$BlazeShareContentTypeCopyWithImpl<$Res, BlazeShareContentType>;
}

/// @nodoc
class _$BlazeShareContentTypeCopyWithImpl<$Res,
        $Val extends BlazeShareContentType>
    implements $BlazeShareContentTypeCopyWith<$Res> {
  _$BlazeShareContentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeShareContentType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlazeShareContentTypeStoryImplCopyWith<$Res> {
  factory _$$BlazeShareContentTypeStoryImplCopyWith(
          _$BlazeShareContentTypeStoryImpl value,
          $Res Function(_$BlazeShareContentTypeStoryImpl) then) =
      __$$BlazeShareContentTypeStoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pageId});
}

/// @nodoc
class __$$BlazeShareContentTypeStoryImplCopyWithImpl<$Res>
    extends _$BlazeShareContentTypeCopyWithImpl<$Res,
        _$BlazeShareContentTypeStoryImpl>
    implements _$$BlazeShareContentTypeStoryImplCopyWith<$Res> {
  __$$BlazeShareContentTypeStoryImplCopyWithImpl(
      _$BlazeShareContentTypeStoryImpl _value,
      $Res Function(_$BlazeShareContentTypeStoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeShareContentType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = null,
  }) {
    return _then(_$BlazeShareContentTypeStoryImpl(
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeShareContentTypeStoryImpl
    with DiagnosticableTreeMixin
    implements BlazeShareContentTypeStory {
  const _$BlazeShareContentTypeStoryImpl(
      {required this.pageId, final String? $type})
      : $type = $type ?? 'story';

  factory _$BlazeShareContentTypeStoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeShareContentTypeStoryImplFromJson(json);

  @override
  final String pageId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeShareContentType.story(pageId: $pageId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeShareContentType.story'))
      ..add(DiagnosticsProperty('pageId', pageId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeShareContentTypeStoryImpl &&
            (identical(other.pageId, pageId) || other.pageId == pageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageId);

  /// Create a copy of BlazeShareContentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeShareContentTypeStoryImplCopyWith<_$BlazeShareContentTypeStoryImpl>
      get copyWith => __$$BlazeShareContentTypeStoryImplCopyWithImpl<
          _$BlazeShareContentTypeStoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pageId) story,
    required TResult Function() moment,
    required TResult Function() video,
  }) {
    return story(pageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pageId)? story,
    TResult? Function()? moment,
    TResult? Function()? video,
  }) {
    return story?.call(pageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pageId)? story,
    TResult Function()? moment,
    TResult Function()? video,
    required TResult orElse(),
  }) {
    if (story != null) {
      return story(pageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeShareContentTypeStory value) story,
    required TResult Function(BlazeShareContentTypeMoment value) moment,
    required TResult Function(BlazeShareContentTypeVideo value) video,
  }) {
    return story(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeShareContentTypeStory value)? story,
    TResult? Function(BlazeShareContentTypeMoment value)? moment,
    TResult? Function(BlazeShareContentTypeVideo value)? video,
  }) {
    return story?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeShareContentTypeStory value)? story,
    TResult Function(BlazeShareContentTypeMoment value)? moment,
    TResult Function(BlazeShareContentTypeVideo value)? video,
    required TResult orElse(),
  }) {
    if (story != null) {
      return story(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeShareContentTypeStoryImplToJson(
      this,
    );
  }
}

abstract class BlazeShareContentTypeStory implements BlazeShareContentType {
  const factory BlazeShareContentTypeStory({required final String pageId}) =
      _$BlazeShareContentTypeStoryImpl;

  factory BlazeShareContentTypeStory.fromJson(Map<String, dynamic> json) =
      _$BlazeShareContentTypeStoryImpl.fromJson;

  String get pageId;

  /// Create a copy of BlazeShareContentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeShareContentTypeStoryImplCopyWith<_$BlazeShareContentTypeStoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlazeShareContentTypeMomentImplCopyWith<$Res> {
  factory _$$BlazeShareContentTypeMomentImplCopyWith(
          _$BlazeShareContentTypeMomentImpl value,
          $Res Function(_$BlazeShareContentTypeMomentImpl) then) =
      __$$BlazeShareContentTypeMomentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeShareContentTypeMomentImplCopyWithImpl<$Res>
    extends _$BlazeShareContentTypeCopyWithImpl<$Res,
        _$BlazeShareContentTypeMomentImpl>
    implements _$$BlazeShareContentTypeMomentImplCopyWith<$Res> {
  __$$BlazeShareContentTypeMomentImplCopyWithImpl(
      _$BlazeShareContentTypeMomentImpl _value,
      $Res Function(_$BlazeShareContentTypeMomentImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeShareContentType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeShareContentTypeMomentImpl
    with DiagnosticableTreeMixin
    implements BlazeShareContentTypeMoment {
  const _$BlazeShareContentTypeMomentImpl({final String? $type})
      : $type = $type ?? 'moment';

  factory _$BlazeShareContentTypeMomentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeShareContentTypeMomentImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeShareContentType.moment()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeShareContentType.moment'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeShareContentTypeMomentImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pageId) story,
    required TResult Function() moment,
    required TResult Function() video,
  }) {
    return moment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pageId)? story,
    TResult? Function()? moment,
    TResult? Function()? video,
  }) {
    return moment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pageId)? story,
    TResult Function()? moment,
    TResult Function()? video,
    required TResult orElse(),
  }) {
    if (moment != null) {
      return moment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeShareContentTypeStory value) story,
    required TResult Function(BlazeShareContentTypeMoment value) moment,
    required TResult Function(BlazeShareContentTypeVideo value) video,
  }) {
    return moment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeShareContentTypeStory value)? story,
    TResult? Function(BlazeShareContentTypeMoment value)? moment,
    TResult? Function(BlazeShareContentTypeVideo value)? video,
  }) {
    return moment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeShareContentTypeStory value)? story,
    TResult Function(BlazeShareContentTypeMoment value)? moment,
    TResult Function(BlazeShareContentTypeVideo value)? video,
    required TResult orElse(),
  }) {
    if (moment != null) {
      return moment(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeShareContentTypeMomentImplToJson(
      this,
    );
  }
}

abstract class BlazeShareContentTypeMoment implements BlazeShareContentType {
  const factory BlazeShareContentTypeMoment() =
      _$BlazeShareContentTypeMomentImpl;

  factory BlazeShareContentTypeMoment.fromJson(Map<String, dynamic> json) =
      _$BlazeShareContentTypeMomentImpl.fromJson;
}

/// @nodoc
abstract class _$$BlazeShareContentTypeVideoImplCopyWith<$Res> {
  factory _$$BlazeShareContentTypeVideoImplCopyWith(
          _$BlazeShareContentTypeVideoImpl value,
          $Res Function(_$BlazeShareContentTypeVideoImpl) then) =
      __$$BlazeShareContentTypeVideoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeShareContentTypeVideoImplCopyWithImpl<$Res>
    extends _$BlazeShareContentTypeCopyWithImpl<$Res,
        _$BlazeShareContentTypeVideoImpl>
    implements _$$BlazeShareContentTypeVideoImplCopyWith<$Res> {
  __$$BlazeShareContentTypeVideoImplCopyWithImpl(
      _$BlazeShareContentTypeVideoImpl _value,
      $Res Function(_$BlazeShareContentTypeVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeShareContentType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeShareContentTypeVideoImpl
    with DiagnosticableTreeMixin
    implements BlazeShareContentTypeVideo {
  const _$BlazeShareContentTypeVideoImpl({final String? $type})
      : $type = $type ?? 'video';

  factory _$BlazeShareContentTypeVideoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeShareContentTypeVideoImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeShareContentType.video()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BlazeShareContentType.video'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeShareContentTypeVideoImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pageId) story,
    required TResult Function() moment,
    required TResult Function() video,
  }) {
    return video();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pageId)? story,
    TResult? Function()? moment,
    TResult? Function()? video,
  }) {
    return video?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pageId)? story,
    TResult Function()? moment,
    TResult Function()? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeShareContentTypeStory value) story,
    required TResult Function(BlazeShareContentTypeMoment value) moment,
    required TResult Function(BlazeShareContentTypeVideo value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeShareContentTypeStory value)? story,
    TResult? Function(BlazeShareContentTypeMoment value)? moment,
    TResult? Function(BlazeShareContentTypeVideo value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeShareContentTypeStory value)? story,
    TResult Function(BlazeShareContentTypeMoment value)? moment,
    TResult Function(BlazeShareContentTypeVideo value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeShareContentTypeVideoImplToJson(
      this,
    );
  }
}

abstract class BlazeShareContentTypeVideo implements BlazeShareContentType {
  const factory BlazeShareContentTypeVideo() = _$BlazeShareContentTypeVideoImpl;

  factory BlazeShareContentTypeVideo.fromJson(Map<String, dynamic> json) =
      _$BlazeShareContentTypeVideoImpl.fromJson;
}

BlazeOnShareClickedParams _$BlazeOnShareClickedParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnShareClickedParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnShareClickedParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;

  /// The unique identifier of the content being shared.
  String get id => throw _privateConstructorUsedError;
  BlazeShareContentType get contentType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// The link the SDK shares by default, generated by its own universal
  /// links mechanism. This callback cannot override it — see
  /// [BlazeBasePlayerDelegate.onShareClicked].
  String get sdkGeneratedLink => throw _privateConstructorUsedError;

  /// Content-level extra info metadata for the shared item. For Stories this
  /// is the story's extra info; for Moments/Videos, the item's own. Empty
  /// when the content has no extra info.
  Map<String, String> get extraInfo => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnShareClickedParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnShareClickedParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnShareClickedParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnShareClickedParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnShareClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnShareClickedParamsCopyWith<BlazeOnShareClickedParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnShareClickedParamsCopyWith<$Res> {
  factory $BlazeOnShareClickedParamsCopyWith(BlazeOnShareClickedParams value,
          $Res Function(BlazeOnShareClickedParams) then) =
      _$BlazeOnShareClickedParamsCopyWithImpl<$Res, BlazeOnShareClickedParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      String id,
      BlazeShareContentType contentType,
      String? title,
      String? description,
      String sdkGeneratedLink,
      Map<String, String> extraInfo});

  $BlazeShareContentTypeCopyWith<$Res> get contentType;
}

/// @nodoc
class _$BlazeOnShareClickedParamsCopyWithImpl<$Res,
        $Val extends BlazeOnShareClickedParams>
    implements $BlazeOnShareClickedParamsCopyWith<$Res> {
  _$BlazeOnShareClickedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnShareClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? id = null,
    Object? contentType = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? sdkGeneratedLink = null,
    Object? extraInfo = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as BlazeShareContentType,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkGeneratedLink: null == sdkGeneratedLink
          ? _value.sdkGeneratedLink
          : sdkGeneratedLink // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of BlazeOnShareClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeShareContentTypeCopyWith<$Res> get contentType {
    return $BlazeShareContentTypeCopyWith<$Res>(_value.contentType, (value) {
      return _then(_value.copyWith(contentType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeOnShareClickedParamsImplCopyWith<$Res>
    implements $BlazeOnShareClickedParamsCopyWith<$Res> {
  factory _$$BlazeOnShareClickedParamsImplCopyWith(
          _$BlazeOnShareClickedParamsImpl value,
          $Res Function(_$BlazeOnShareClickedParamsImpl) then) =
      __$$BlazeOnShareClickedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      String id,
      BlazeShareContentType contentType,
      String? title,
      String? description,
      String sdkGeneratedLink,
      Map<String, String> extraInfo});

  @override
  $BlazeShareContentTypeCopyWith<$Res> get contentType;
}

/// @nodoc
class __$$BlazeOnShareClickedParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnShareClickedParamsCopyWithImpl<$Res,
        _$BlazeOnShareClickedParamsImpl>
    implements _$$BlazeOnShareClickedParamsImplCopyWith<$Res> {
  __$$BlazeOnShareClickedParamsImplCopyWithImpl(
      _$BlazeOnShareClickedParamsImpl _value,
      $Res Function(_$BlazeOnShareClickedParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnShareClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? id = null,
    Object? contentType = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? sdkGeneratedLink = null,
    Object? extraInfo = null,
  }) {
    return _then(_$BlazeOnShareClickedParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as BlazeShareContentType,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkGeneratedLink: null == sdkGeneratedLink
          ? _value.sdkGeneratedLink
          : sdkGeneratedLink // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: null == extraInfo
          ? _value._extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnShareClickedParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnShareClickedParams {
  const _$BlazeOnShareClickedParamsImpl(
      {required this.playerType,
      this.sourceId,
      required this.id,
      required this.contentType,
      this.title,
      this.description,
      required this.sdkGeneratedLink,
      required final Map<String, String> extraInfo})
      : _extraInfo = extraInfo;

  factory _$BlazeOnShareClickedParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeOnShareClickedParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;

  /// The unique identifier of the content being shared.
  @override
  final String id;
  @override
  final BlazeShareContentType contentType;
  @override
  final String? title;
  @override
  final String? description;

  /// The link the SDK shares by default, generated by its own universal
  /// links mechanism. This callback cannot override it — see
  /// [BlazeBasePlayerDelegate.onShareClicked].
  @override
  final String sdkGeneratedLink;

  /// Content-level extra info metadata for the shared item. For Stories this
  /// is the story's extra info; for Moments/Videos, the item's own. Empty
  /// when the content has no extra info.
  final Map<String, String> _extraInfo;

  /// Content-level extra info metadata for the shared item. For Stories this
  /// is the story's extra info; for Moments/Videos, the item's own. Empty
  /// when the content has no extra info.
  @override
  Map<String, String> get extraInfo {
    if (_extraInfo is EqualUnmodifiableMapView) return _extraInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extraInfo);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnShareClickedParams(playerType: $playerType, sourceId: $sourceId, id: $id, contentType: $contentType, title: $title, description: $description, sdkGeneratedLink: $sdkGeneratedLink, extraInfo: $extraInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnShareClickedParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('contentType', contentType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('sdkGeneratedLink', sdkGeneratedLink))
      ..add(DiagnosticsProperty('extraInfo', extraInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnShareClickedParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sdkGeneratedLink, sdkGeneratedLink) ||
                other.sdkGeneratedLink == sdkGeneratedLink) &&
            const DeepCollectionEquality()
                .equals(other._extraInfo, _extraInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playerType,
      sourceId,
      id,
      contentType,
      title,
      description,
      sdkGeneratedLink,
      const DeepCollectionEquality().hash(_extraInfo));

  /// Create a copy of BlazeOnShareClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnShareClickedParamsImplCopyWith<_$BlazeOnShareClickedParamsImpl>
      get copyWith => __$$BlazeOnShareClickedParamsImplCopyWithImpl<
          _$BlazeOnShareClickedParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnShareClickedParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnShareClickedParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnShareClickedParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnShareClickedParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnShareClickedParams implements BlazeOnShareClickedParams {
  const factory _BlazeOnShareClickedParams(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final String id,
          required final BlazeShareContentType contentType,
          final String? title,
          final String? description,
          required final String sdkGeneratedLink,
          required final Map<String, String> extraInfo}) =
      _$BlazeOnShareClickedParamsImpl;

  factory _BlazeOnShareClickedParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnShareClickedParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;

  /// The unique identifier of the content being shared.
  @override
  String get id;
  @override
  BlazeShareContentType get contentType;
  @override
  String? get title;
  @override
  String? get description;

  /// The link the SDK shares by default, generated by its own universal
  /// links mechanism. This callback cannot override it — see
  /// [BlazeBasePlayerDelegate.onShareClicked].
  @override
  String get sdkGeneratedLink;

  /// Content-level extra info metadata for the shared item. For Stories this
  /// is the story's extra info; for Moments/Videos, the item's own. Empty
  /// when the content has no extra info.
  @override
  Map<String, String> get extraInfo;

  /// Create a copy of BlazeOnShareClickedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnShareClickedParamsImplCopyWith<_$BlazeOnShareClickedParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnReadStatusChangedParams _$BlazeOnReadStatusChangedParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnReadStatusChangedParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnReadStatusChangedParams {
  BlazePlayerType get playerType => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  String get dataSourceStringRepresentation =>
      throw _privateConstructorUsedError;
  bool get isEntireContentRead => throw _privateConstructorUsedError;
  Map<String, bool> get itemReadStatus => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnReadStatusChangedParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnReadStatusChangedParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnReadStatusChangedParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnReadStatusChangedParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnReadStatusChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnReadStatusChangedParamsCopyWith<BlazeOnReadStatusChangedParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnReadStatusChangedParamsCopyWith<$Res> {
  factory $BlazeOnReadStatusChangedParamsCopyWith(
          BlazeOnReadStatusChangedParams value,
          $Res Function(BlazeOnReadStatusChangedParams) then) =
      _$BlazeOnReadStatusChangedParamsCopyWithImpl<$Res,
          BlazeOnReadStatusChangedParams>;
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      String dataSourceStringRepresentation,
      bool isEntireContentRead,
      Map<String, bool> itemReadStatus});
}

/// @nodoc
class _$BlazeOnReadStatusChangedParamsCopyWithImpl<$Res,
        $Val extends BlazeOnReadStatusChangedParams>
    implements $BlazeOnReadStatusChangedParamsCopyWith<$Res> {
  _$BlazeOnReadStatusChangedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnReadStatusChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? dataSourceStringRepresentation = null,
    Object? isEntireContentRead = null,
    Object? itemReadStatus = null,
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
      dataSourceStringRepresentation: null == dataSourceStringRepresentation
          ? _value.dataSourceStringRepresentation
          : dataSourceStringRepresentation // ignore: cast_nullable_to_non_nullable
              as String,
      isEntireContentRead: null == isEntireContentRead
          ? _value.isEntireContentRead
          : isEntireContentRead // ignore: cast_nullable_to_non_nullable
              as bool,
      itemReadStatus: null == itemReadStatus
          ? _value.itemReadStatus
          : itemReadStatus // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnReadStatusChangedParamsImplCopyWith<$Res>
    implements $BlazeOnReadStatusChangedParamsCopyWith<$Res> {
  factory _$$BlazeOnReadStatusChangedParamsImplCopyWith(
          _$BlazeOnReadStatusChangedParamsImpl value,
          $Res Function(_$BlazeOnReadStatusChangedParamsImpl) then) =
      __$$BlazeOnReadStatusChangedParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerType playerType,
      String? sourceId,
      String dataSourceStringRepresentation,
      bool isEntireContentRead,
      Map<String, bool> itemReadStatus});
}

/// @nodoc
class __$$BlazeOnReadStatusChangedParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnReadStatusChangedParamsCopyWithImpl<$Res,
        _$BlazeOnReadStatusChangedParamsImpl>
    implements _$$BlazeOnReadStatusChangedParamsImplCopyWith<$Res> {
  __$$BlazeOnReadStatusChangedParamsImplCopyWithImpl(
      _$BlazeOnReadStatusChangedParamsImpl _value,
      $Res Function(_$BlazeOnReadStatusChangedParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnReadStatusChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerType = null,
    Object? sourceId = freezed,
    Object? dataSourceStringRepresentation = null,
    Object? isEntireContentRead = null,
    Object? itemReadStatus = null,
  }) {
    return _then(_$BlazeOnReadStatusChangedParamsImpl(
      playerType: null == playerType
          ? _value.playerType
          : playerType // ignore: cast_nullable_to_non_nullable
              as BlazePlayerType,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      dataSourceStringRepresentation: null == dataSourceStringRepresentation
          ? _value.dataSourceStringRepresentation
          : dataSourceStringRepresentation // ignore: cast_nullable_to_non_nullable
              as String,
      isEntireContentRead: null == isEntireContentRead
          ? _value.isEntireContentRead
          : isEntireContentRead // ignore: cast_nullable_to_non_nullable
              as bool,
      itemReadStatus: null == itemReadStatus
          ? _value._itemReadStatus
          : itemReadStatus // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnReadStatusChangedParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnReadStatusChangedParams {
  const _$BlazeOnReadStatusChangedParamsImpl(
      {required this.playerType,
      this.sourceId,
      required this.dataSourceStringRepresentation,
      required this.isEntireContentRead,
      required final Map<String, bool> itemReadStatus})
      : _itemReadStatus = itemReadStatus;

  factory _$BlazeOnReadStatusChangedParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnReadStatusChangedParamsImplFromJson(json);

  @override
  final BlazePlayerType playerType;
  @override
  final String? sourceId;
  @override
  final String dataSourceStringRepresentation;
  @override
  final bool isEntireContentRead;
  final Map<String, bool> _itemReadStatus;
  @override
  Map<String, bool> get itemReadStatus {
    if (_itemReadStatus is EqualUnmodifiableMapView) return _itemReadStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_itemReadStatus);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnReadStatusChangedParams(playerType: $playerType, sourceId: $sourceId, dataSourceStringRepresentation: $dataSourceStringRepresentation, isEntireContentRead: $isEntireContentRead, itemReadStatus: $itemReadStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnReadStatusChangedParams'))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty(
          'dataSourceStringRepresentation', dataSourceStringRepresentation))
      ..add(DiagnosticsProperty('isEntireContentRead', isEntireContentRead))
      ..add(DiagnosticsProperty('itemReadStatus', itemReadStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnReadStatusChangedParamsImpl &&
            (identical(other.playerType, playerType) ||
                other.playerType == playerType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.dataSourceStringRepresentation,
                    dataSourceStringRepresentation) ||
                other.dataSourceStringRepresentation ==
                    dataSourceStringRepresentation) &&
            (identical(other.isEntireContentRead, isEntireContentRead) ||
                other.isEntireContentRead == isEntireContentRead) &&
            const DeepCollectionEquality()
                .equals(other._itemReadStatus, _itemReadStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playerType,
      sourceId,
      dataSourceStringRepresentation,
      isEntireContentRead,
      const DeepCollectionEquality().hash(_itemReadStatus));

  /// Create a copy of BlazeOnReadStatusChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnReadStatusChangedParamsImplCopyWith<
          _$BlazeOnReadStatusChangedParamsImpl>
      get copyWith => __$$BlazeOnReadStatusChangedParamsImplCopyWithImpl<
          _$BlazeOnReadStatusChangedParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnReadStatusChangedParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnReadStatusChangedParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnReadStatusChangedParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnReadStatusChangedParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnReadStatusChangedParams
    implements BlazeOnReadStatusChangedParams {
  const factory _BlazeOnReadStatusChangedParams(
          {required final BlazePlayerType playerType,
          final String? sourceId,
          required final String dataSourceStringRepresentation,
          required final bool isEntireContentRead,
          required final Map<String, bool> itemReadStatus}) =
      _$BlazeOnReadStatusChangedParamsImpl;

  factory _BlazeOnReadStatusChangedParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnReadStatusChangedParamsImpl.fromJson;

  @override
  BlazePlayerType get playerType;
  @override
  String? get sourceId;
  @override
  String get dataSourceStringRepresentation;
  @override
  bool get isEntireContentRead;
  @override
  Map<String, bool> get itemReadStatus;

  /// Create a copy of BlazeOnReadStatusChangedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnReadStatusChangedParamsImplCopyWith<
          _$BlazeOnReadStatusChangedParamsImpl>
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
