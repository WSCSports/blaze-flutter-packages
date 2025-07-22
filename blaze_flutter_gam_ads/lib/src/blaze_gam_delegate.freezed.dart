// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_gam_delegate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeGAMDelegateOnAdEventParams _$BlazeGAMDelegateOnAdEventParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeGAMDelegateOnAdEventParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeGAMDelegateOnAdEventParams {
  BlazeOnAdEventEventType get eventType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMDelegateOnAdEventParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMDelegateOnAdEventParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMDelegateOnAdEventParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeGAMDelegateOnAdEventParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeGAMDelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeGAMDelegateOnAdEventParamsCopyWith<BlazeGAMDelegateOnAdEventParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeGAMDelegateOnAdEventParamsCopyWith<$Res> {
  factory $BlazeGAMDelegateOnAdEventParamsCopyWith(
          BlazeGAMDelegateOnAdEventParams value,
          $Res Function(BlazeGAMDelegateOnAdEventParams) then) =
      _$BlazeGAMDelegateOnAdEventParamsCopyWithImpl<$Res,
          BlazeGAMDelegateOnAdEventParams>;
  @useResult
  $Res call({BlazeOnAdEventEventType eventType});
}

/// @nodoc
class _$BlazeGAMDelegateOnAdEventParamsCopyWithImpl<$Res,
        $Val extends BlazeGAMDelegateOnAdEventParams>
    implements $BlazeGAMDelegateOnAdEventParamsCopyWith<$Res> {
  _$BlazeGAMDelegateOnAdEventParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeGAMDelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as BlazeOnAdEventEventType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeGAMDelegateOnAdEventParamsImplCopyWith<$Res>
    implements $BlazeGAMDelegateOnAdEventParamsCopyWith<$Res> {
  factory _$$BlazeGAMDelegateOnAdEventParamsImplCopyWith(
          _$BlazeGAMDelegateOnAdEventParamsImpl value,
          $Res Function(_$BlazeGAMDelegateOnAdEventParamsImpl) then) =
      __$$BlazeGAMDelegateOnAdEventParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeOnAdEventEventType eventType});
}

/// @nodoc
class __$$BlazeGAMDelegateOnAdEventParamsImplCopyWithImpl<$Res>
    extends _$BlazeGAMDelegateOnAdEventParamsCopyWithImpl<$Res,
        _$BlazeGAMDelegateOnAdEventParamsImpl>
    implements _$$BlazeGAMDelegateOnAdEventParamsImplCopyWith<$Res> {
  __$$BlazeGAMDelegateOnAdEventParamsImplCopyWithImpl(
      _$BlazeGAMDelegateOnAdEventParamsImpl _value,
      $Res Function(_$BlazeGAMDelegateOnAdEventParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeGAMDelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$BlazeGAMDelegateOnAdEventParamsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as BlazeOnAdEventEventType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeGAMDelegateOnAdEventParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeGAMDelegateOnAdEventParams {
  const _$BlazeGAMDelegateOnAdEventParamsImpl({required this.eventType});

  factory _$BlazeGAMDelegateOnAdEventParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeGAMDelegateOnAdEventParamsImplFromJson(json);

  @override
  final BlazeOnAdEventEventType eventType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeGAMDelegateOnAdEventParams(eventType: $eventType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeGAMDelegateOnAdEventParams'))
      ..add(DiagnosticsProperty('eventType', eventType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeGAMDelegateOnAdEventParamsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  /// Create a copy of BlazeGAMDelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeGAMDelegateOnAdEventParamsImplCopyWith<
          _$BlazeGAMDelegateOnAdEventParamsImpl>
      get copyWith => __$$BlazeGAMDelegateOnAdEventParamsImplCopyWithImpl<
          _$BlazeGAMDelegateOnAdEventParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMDelegateOnAdEventParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMDelegateOnAdEventParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMDelegateOnAdEventParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeGAMDelegateOnAdEventParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeGAMDelegateOnAdEventParams
    implements BlazeGAMDelegateOnAdEventParams {
  const factory _BlazeGAMDelegateOnAdEventParams(
          {required final BlazeOnAdEventEventType eventType}) =
      _$BlazeGAMDelegateOnAdEventParamsImpl;

  factory _BlazeGAMDelegateOnAdEventParams.fromJson(Map<String, dynamic> json) =
      _$BlazeGAMDelegateOnAdEventParamsImpl.fromJson;

  @override
  BlazeOnAdEventEventType get eventType;

  /// Create a copy of BlazeGAMDelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeGAMDelegateOnAdEventParamsImplCopyWith<
          _$BlazeGAMDelegateOnAdEventParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeGAMCustomNativeAdRequestInfo _$BlazeGAMCustomNativeAdRequestInfoFromJson(
    Map<String, dynamic> json) {
  return _BlazeGAMCustomNativeAdRequestInfo.fromJson(json);
}

/// @nodoc
mixin _$BlazeGAMCustomNativeAdRequestInfo {
  String get adUnitId => throw _privateConstructorUsedError;
  String get templateId => throw _privateConstructorUsedError;
  Map<String, String> get adContext => throw _privateConstructorUsedError;
  BlazeContentExtraInfo get extraInfo => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestInfo value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMCustomNativeAdRequestInfo value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestInfo value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeGAMCustomNativeAdRequestInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeGAMCustomNativeAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeGAMCustomNativeAdRequestInfoCopyWith<BlazeGAMCustomNativeAdRequestInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeGAMCustomNativeAdRequestInfoCopyWith<$Res> {
  factory $BlazeGAMCustomNativeAdRequestInfoCopyWith(
          BlazeGAMCustomNativeAdRequestInfo value,
          $Res Function(BlazeGAMCustomNativeAdRequestInfo) then) =
      _$BlazeGAMCustomNativeAdRequestInfoCopyWithImpl<$Res,
          BlazeGAMCustomNativeAdRequestInfo>;
  @useResult
  $Res call(
      {String adUnitId,
      String templateId,
      Map<String, String> adContext,
      BlazeContentExtraInfo extraInfo});
}

/// @nodoc
class _$BlazeGAMCustomNativeAdRequestInfoCopyWithImpl<$Res,
        $Val extends BlazeGAMCustomNativeAdRequestInfo>
    implements $BlazeGAMCustomNativeAdRequestInfoCopyWith<$Res> {
  _$BlazeGAMCustomNativeAdRequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeGAMCustomNativeAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? templateId = null,
    Object? adContext = null,
    Object? extraInfo = null,
  }) {
    return _then(_value.copyWith(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      adContext: null == adContext
          ? _value.adContext
          : adContext // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as BlazeContentExtraInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeGAMCustomNativeAdRequestInfoImplCopyWith<$Res>
    implements $BlazeGAMCustomNativeAdRequestInfoCopyWith<$Res> {
  factory _$$BlazeGAMCustomNativeAdRequestInfoImplCopyWith(
          _$BlazeGAMCustomNativeAdRequestInfoImpl value,
          $Res Function(_$BlazeGAMCustomNativeAdRequestInfoImpl) then) =
      __$$BlazeGAMCustomNativeAdRequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String adUnitId,
      String templateId,
      Map<String, String> adContext,
      BlazeContentExtraInfo extraInfo});
}

/// @nodoc
class __$$BlazeGAMCustomNativeAdRequestInfoImplCopyWithImpl<$Res>
    extends _$BlazeGAMCustomNativeAdRequestInfoCopyWithImpl<$Res,
        _$BlazeGAMCustomNativeAdRequestInfoImpl>
    implements _$$BlazeGAMCustomNativeAdRequestInfoImplCopyWith<$Res> {
  __$$BlazeGAMCustomNativeAdRequestInfoImplCopyWithImpl(
      _$BlazeGAMCustomNativeAdRequestInfoImpl _value,
      $Res Function(_$BlazeGAMCustomNativeAdRequestInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeGAMCustomNativeAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? templateId = null,
    Object? adContext = null,
    Object? extraInfo = null,
  }) {
    return _then(_$BlazeGAMCustomNativeAdRequestInfoImpl(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      adContext: null == adContext
          ? _value._adContext
          : adContext // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as BlazeContentExtraInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeGAMCustomNativeAdRequestInfoImpl
    with DiagnosticableTreeMixin
    implements _BlazeGAMCustomNativeAdRequestInfo {
  const _$BlazeGAMCustomNativeAdRequestInfoImpl(
      {required this.adUnitId,
      required this.templateId,
      required final Map<String, String> adContext,
      required this.extraInfo})
      : _adContext = adContext;

  factory _$BlazeGAMCustomNativeAdRequestInfoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeGAMCustomNativeAdRequestInfoImplFromJson(json);

  @override
  final String adUnitId;
  @override
  final String templateId;
  final Map<String, String> _adContext;
  @override
  Map<String, String> get adContext {
    if (_adContext is EqualUnmodifiableMapView) return _adContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_adContext);
  }

  @override
  final BlazeContentExtraInfo extraInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeGAMCustomNativeAdRequestInfo(adUnitId: $adUnitId, templateId: $templateId, adContext: $adContext, extraInfo: $extraInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeGAMCustomNativeAdRequestInfo'))
      ..add(DiagnosticsProperty('adUnitId', adUnitId))
      ..add(DiagnosticsProperty('templateId', templateId))
      ..add(DiagnosticsProperty('adContext', adContext))
      ..add(DiagnosticsProperty('extraInfo', extraInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeGAMCustomNativeAdRequestInfoImpl &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            const DeepCollectionEquality()
                .equals(other._adContext, _adContext) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adUnitId, templateId,
      const DeepCollectionEquality().hash(_adContext), extraInfo);

  /// Create a copy of BlazeGAMCustomNativeAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeGAMCustomNativeAdRequestInfoImplCopyWith<
          _$BlazeGAMCustomNativeAdRequestInfoImpl>
      get copyWith => __$$BlazeGAMCustomNativeAdRequestInfoImplCopyWithImpl<
          _$BlazeGAMCustomNativeAdRequestInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestInfo value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMCustomNativeAdRequestInfo value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestInfo value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeGAMCustomNativeAdRequestInfoImplToJson(
      this,
    );
  }
}

abstract class _BlazeGAMCustomNativeAdRequestInfo
    implements BlazeGAMCustomNativeAdRequestInfo {
  const factory _BlazeGAMCustomNativeAdRequestInfo(
          {required final String adUnitId,
          required final String templateId,
          required final Map<String, String> adContext,
          required final BlazeContentExtraInfo extraInfo}) =
      _$BlazeGAMCustomNativeAdRequestInfoImpl;

  factory _BlazeGAMCustomNativeAdRequestInfo.fromJson(
          Map<String, dynamic> json) =
      _$BlazeGAMCustomNativeAdRequestInfoImpl.fromJson;

  @override
  String get adUnitId;
  @override
  String get templateId;
  @override
  Map<String, String> get adContext;
  @override
  BlazeContentExtraInfo get extraInfo;

  /// Create a copy of BlazeGAMCustomNativeAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeGAMCustomNativeAdRequestInfoImplCopyWith<
          _$BlazeGAMCustomNativeAdRequestInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeGAMCustomNativeAdRequestParams
    _$BlazeGAMCustomNativeAdRequestParamsFromJson(Map<String, dynamic> json) {
  return _BlazeGAMCustomNativeAdRequestParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeGAMCustomNativeAdRequestParams {
  BlazeGAMCustomNativeAdRequestInfo get requestDataInfo =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMCustomNativeAdRequestParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeGAMCustomNativeAdRequestParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeGAMCustomNativeAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeGAMCustomNativeAdRequestParamsCopyWith<
          BlazeGAMCustomNativeAdRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeGAMCustomNativeAdRequestParamsCopyWith<$Res> {
  factory $BlazeGAMCustomNativeAdRequestParamsCopyWith(
          BlazeGAMCustomNativeAdRequestParams value,
          $Res Function(BlazeGAMCustomNativeAdRequestParams) then) =
      _$BlazeGAMCustomNativeAdRequestParamsCopyWithImpl<$Res,
          BlazeGAMCustomNativeAdRequestParams>;
  @useResult
  $Res call({BlazeGAMCustomNativeAdRequestInfo requestDataInfo});

  $BlazeGAMCustomNativeAdRequestInfoCopyWith<$Res> get requestDataInfo;
}

/// @nodoc
class _$BlazeGAMCustomNativeAdRequestParamsCopyWithImpl<$Res,
        $Val extends BlazeGAMCustomNativeAdRequestParams>
    implements $BlazeGAMCustomNativeAdRequestParamsCopyWith<$Res> {
  _$BlazeGAMCustomNativeAdRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeGAMCustomNativeAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestDataInfo = null,
  }) {
    return _then(_value.copyWith(
      requestDataInfo: null == requestDataInfo
          ? _value.requestDataInfo
          : requestDataInfo // ignore: cast_nullable_to_non_nullable
              as BlazeGAMCustomNativeAdRequestInfo,
    ) as $Val);
  }

  /// Create a copy of BlazeGAMCustomNativeAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeGAMCustomNativeAdRequestInfoCopyWith<$Res> get requestDataInfo {
    return $BlazeGAMCustomNativeAdRequestInfoCopyWith<$Res>(
        _value.requestDataInfo, (value) {
      return _then(_value.copyWith(requestDataInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeGAMCustomNativeAdRequestParamsImplCopyWith<$Res>
    implements $BlazeGAMCustomNativeAdRequestParamsCopyWith<$Res> {
  factory _$$BlazeGAMCustomNativeAdRequestParamsImplCopyWith(
          _$BlazeGAMCustomNativeAdRequestParamsImpl value,
          $Res Function(_$BlazeGAMCustomNativeAdRequestParamsImpl) then) =
      __$$BlazeGAMCustomNativeAdRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeGAMCustomNativeAdRequestInfo requestDataInfo});

  @override
  $BlazeGAMCustomNativeAdRequestInfoCopyWith<$Res> get requestDataInfo;
}

/// @nodoc
class __$$BlazeGAMCustomNativeAdRequestParamsImplCopyWithImpl<$Res>
    extends _$BlazeGAMCustomNativeAdRequestParamsCopyWithImpl<$Res,
        _$BlazeGAMCustomNativeAdRequestParamsImpl>
    implements _$$BlazeGAMCustomNativeAdRequestParamsImplCopyWith<$Res> {
  __$$BlazeGAMCustomNativeAdRequestParamsImplCopyWithImpl(
      _$BlazeGAMCustomNativeAdRequestParamsImpl _value,
      $Res Function(_$BlazeGAMCustomNativeAdRequestParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeGAMCustomNativeAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestDataInfo = null,
  }) {
    return _then(_$BlazeGAMCustomNativeAdRequestParamsImpl(
      requestDataInfo: null == requestDataInfo
          ? _value.requestDataInfo
          : requestDataInfo // ignore: cast_nullable_to_non_nullable
              as BlazeGAMCustomNativeAdRequestInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeGAMCustomNativeAdRequestParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeGAMCustomNativeAdRequestParams {
  const _$BlazeGAMCustomNativeAdRequestParamsImpl(
      {required this.requestDataInfo});

  factory _$BlazeGAMCustomNativeAdRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeGAMCustomNativeAdRequestParamsImplFromJson(json);

  @override
  final BlazeGAMCustomNativeAdRequestInfo requestDataInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeGAMCustomNativeAdRequestParams(requestDataInfo: $requestDataInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeGAMCustomNativeAdRequestParams'))
      ..add(DiagnosticsProperty('requestDataInfo', requestDataInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeGAMCustomNativeAdRequestParamsImpl &&
            (identical(other.requestDataInfo, requestDataInfo) ||
                other.requestDataInfo == requestDataInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestDataInfo);

  /// Create a copy of BlazeGAMCustomNativeAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeGAMCustomNativeAdRequestParamsImplCopyWith<
          _$BlazeGAMCustomNativeAdRequestParamsImpl>
      get copyWith => __$$BlazeGAMCustomNativeAdRequestParamsImplCopyWithImpl<
          _$BlazeGAMCustomNativeAdRequestParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMCustomNativeAdRequestParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdRequestParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeGAMCustomNativeAdRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeGAMCustomNativeAdRequestParams
    implements BlazeGAMCustomNativeAdRequestParams {
  const factory _BlazeGAMCustomNativeAdRequestParams(
          {required final BlazeGAMCustomNativeAdRequestInfo requestDataInfo}) =
      _$BlazeGAMCustomNativeAdRequestParamsImpl;

  factory _BlazeGAMCustomNativeAdRequestParams.fromJson(
          Map<String, dynamic> json) =
      _$BlazeGAMCustomNativeAdRequestParamsImpl.fromJson;

  @override
  BlazeGAMCustomNativeAdRequestInfo get requestDataInfo;

  /// Create a copy of BlazeGAMCustomNativeAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeGAMCustomNativeAdRequestParamsImplCopyWith<
          _$BlazeGAMCustomNativeAdRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeGAMCustomNativeAdsDefaultConfig
    _$BlazeGAMCustomNativeAdsDefaultConfigFromJson(Map<String, dynamic> json) {
  return _BlazeGAMCustomNativeAdsDefaultConfig.fromJson(json);
}

/// @nodoc
mixin _$BlazeGAMCustomNativeAdsDefaultConfig {
  /// Ad Unit in the GAM system.
  String get adUnit => throw _privateConstructorUsedError;

  /// Template ID in the GAM system.
  String get templateId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdsDefaultConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMCustomNativeAdsDefaultConfig value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdsDefaultConfig value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeGAMCustomNativeAdsDefaultConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeGAMCustomNativeAdsDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeGAMCustomNativeAdsDefaultConfigCopyWith<
          BlazeGAMCustomNativeAdsDefaultConfig>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeGAMCustomNativeAdsDefaultConfigCopyWith<$Res> {
  factory $BlazeGAMCustomNativeAdsDefaultConfigCopyWith(
          BlazeGAMCustomNativeAdsDefaultConfig value,
          $Res Function(BlazeGAMCustomNativeAdsDefaultConfig) then) =
      _$BlazeGAMCustomNativeAdsDefaultConfigCopyWithImpl<$Res,
          BlazeGAMCustomNativeAdsDefaultConfig>;
  @useResult
  $Res call({String adUnit, String templateId});
}

/// @nodoc
class _$BlazeGAMCustomNativeAdsDefaultConfigCopyWithImpl<$Res,
        $Val extends BlazeGAMCustomNativeAdsDefaultConfig>
    implements $BlazeGAMCustomNativeAdsDefaultConfigCopyWith<$Res> {
  _$BlazeGAMCustomNativeAdsDefaultConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeGAMCustomNativeAdsDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnit = null,
    Object? templateId = null,
  }) {
    return _then(_value.copyWith(
      adUnit: null == adUnit
          ? _value.adUnit
          : adUnit // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWith<$Res>
    implements $BlazeGAMCustomNativeAdsDefaultConfigCopyWith<$Res> {
  factory _$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWith(
          _$BlazeGAMCustomNativeAdsDefaultConfigImpl value,
          $Res Function(_$BlazeGAMCustomNativeAdsDefaultConfigImpl) then) =
      __$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String adUnit, String templateId});
}

/// @nodoc
class __$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWithImpl<$Res>
    extends _$BlazeGAMCustomNativeAdsDefaultConfigCopyWithImpl<$Res,
        _$BlazeGAMCustomNativeAdsDefaultConfigImpl>
    implements _$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWith<$Res> {
  __$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWithImpl(
      _$BlazeGAMCustomNativeAdsDefaultConfigImpl _value,
      $Res Function(_$BlazeGAMCustomNativeAdsDefaultConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeGAMCustomNativeAdsDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnit = null,
    Object? templateId = null,
  }) {
    return _then(_$BlazeGAMCustomNativeAdsDefaultConfigImpl(
      adUnit: null == adUnit
          ? _value.adUnit
          : adUnit // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeGAMCustomNativeAdsDefaultConfigImpl
    with DiagnosticableTreeMixin
    implements _BlazeGAMCustomNativeAdsDefaultConfig {
  const _$BlazeGAMCustomNativeAdsDefaultConfigImpl(
      {required this.adUnit, required this.templateId});

  factory _$BlazeGAMCustomNativeAdsDefaultConfigImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeGAMCustomNativeAdsDefaultConfigImplFromJson(json);

  /// Ad Unit in the GAM system.
  @override
  final String adUnit;

  /// Template ID in the GAM system.
  @override
  final String templateId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeGAMCustomNativeAdsDefaultConfig(adUnit: $adUnit, templateId: $templateId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeGAMCustomNativeAdsDefaultConfig'))
      ..add(DiagnosticsProperty('adUnit', adUnit))
      ..add(DiagnosticsProperty('templateId', templateId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeGAMCustomNativeAdsDefaultConfigImpl &&
            (identical(other.adUnit, adUnit) || other.adUnit == adUnit) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adUnit, templateId);

  /// Create a copy of BlazeGAMCustomNativeAdsDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWith<
          _$BlazeGAMCustomNativeAdsDefaultConfigImpl>
      get copyWith => __$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWithImpl<
          _$BlazeGAMCustomNativeAdsDefaultConfigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdsDefaultConfig value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMCustomNativeAdsDefaultConfig value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMCustomNativeAdsDefaultConfig value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeGAMCustomNativeAdsDefaultConfigImplToJson(
      this,
    );
  }
}

abstract class _BlazeGAMCustomNativeAdsDefaultConfig
    implements BlazeGAMCustomNativeAdsDefaultConfig {
  const factory _BlazeGAMCustomNativeAdsDefaultConfig(
          {required final String adUnit, required final String templateId}) =
      _$BlazeGAMCustomNativeAdsDefaultConfigImpl;

  factory _BlazeGAMCustomNativeAdsDefaultConfig.fromJson(
          Map<String, dynamic> json) =
      _$BlazeGAMCustomNativeAdsDefaultConfigImpl.fromJson;

  /// Ad Unit in the GAM system.
  @override
  String get adUnit;

  /// Template ID in the GAM system.
  @override
  String get templateId;

  /// Create a copy of BlazeGAMCustomNativeAdsDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeGAMCustomNativeAdsDefaultConfigImplCopyWith<
          _$BlazeGAMCustomNativeAdsDefaultConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeGAMOnAdErrorParams _$BlazeGAMOnAdErrorParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeGAMOnAdErrorParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeGAMOnAdErrorParams {
  String get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdErrorParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMOnAdErrorParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdErrorParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeGAMOnAdErrorParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeGAMOnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeGAMOnAdErrorParamsCopyWith<BlazeGAMOnAdErrorParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeGAMOnAdErrorParamsCopyWith<$Res> {
  factory $BlazeGAMOnAdErrorParamsCopyWith(BlazeGAMOnAdErrorParams value,
          $Res Function(BlazeGAMOnAdErrorParams) then) =
      _$BlazeGAMOnAdErrorParamsCopyWithImpl<$Res, BlazeGAMOnAdErrorParams>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$BlazeGAMOnAdErrorParamsCopyWithImpl<$Res,
        $Val extends BlazeGAMOnAdErrorParams>
    implements $BlazeGAMOnAdErrorParamsCopyWith<$Res> {
  _$BlazeGAMOnAdErrorParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeGAMOnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeGAMOnAdErrorParamsImplCopyWith<$Res>
    implements $BlazeGAMOnAdErrorParamsCopyWith<$Res> {
  factory _$$BlazeGAMOnAdErrorParamsImplCopyWith(
          _$BlazeGAMOnAdErrorParamsImpl value,
          $Res Function(_$BlazeGAMOnAdErrorParamsImpl) then) =
      __$$BlazeGAMOnAdErrorParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$BlazeGAMOnAdErrorParamsImplCopyWithImpl<$Res>
    extends _$BlazeGAMOnAdErrorParamsCopyWithImpl<$Res,
        _$BlazeGAMOnAdErrorParamsImpl>
    implements _$$BlazeGAMOnAdErrorParamsImplCopyWith<$Res> {
  __$$BlazeGAMOnAdErrorParamsImplCopyWithImpl(
      _$BlazeGAMOnAdErrorParamsImpl _value,
      $Res Function(_$BlazeGAMOnAdErrorParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeGAMOnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$BlazeGAMOnAdErrorParamsImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeGAMOnAdErrorParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeGAMOnAdErrorParams {
  const _$BlazeGAMOnAdErrorParamsImpl({required this.errorMessage});

  factory _$BlazeGAMOnAdErrorParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeGAMOnAdErrorParamsImplFromJson(json);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeGAMOnAdErrorParams(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeGAMOnAdErrorParams'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeGAMOnAdErrorParamsImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of BlazeGAMOnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeGAMOnAdErrorParamsImplCopyWith<_$BlazeGAMOnAdErrorParamsImpl>
      get copyWith => __$$BlazeGAMOnAdErrorParamsImplCopyWithImpl<
          _$BlazeGAMOnAdErrorParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdErrorParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMOnAdErrorParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdErrorParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeGAMOnAdErrorParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeGAMOnAdErrorParams implements BlazeGAMOnAdErrorParams {
  const factory _BlazeGAMOnAdErrorParams({required final String errorMessage}) =
      _$BlazeGAMOnAdErrorParamsImpl;

  factory _BlazeGAMOnAdErrorParams.fromJson(Map<String, dynamic> json) =
      _$BlazeGAMOnAdErrorParamsImpl.fromJson;

  @override
  String get errorMessage;

  /// Create a copy of BlazeGAMOnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeGAMOnAdErrorParamsImplCopyWith<_$BlazeGAMOnAdErrorParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeGAMOnAdEventParamsData _$BlazeGAMOnAdEventParamsDataFromJson(
    Map<String, dynamic> json) {
  return _BlazeGAMOnAdEventParamsData.fromJson(json);
}

/// @nodoc
mixin _$BlazeGAMOnAdEventParamsData {
  String get eventType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdEventParamsData value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMOnAdEventParamsData value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdEventParamsData value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeGAMOnAdEventParamsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeGAMOnAdEventParamsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeGAMOnAdEventParamsDataCopyWith<BlazeGAMOnAdEventParamsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeGAMOnAdEventParamsDataCopyWith<$Res> {
  factory $BlazeGAMOnAdEventParamsDataCopyWith(
          BlazeGAMOnAdEventParamsData value,
          $Res Function(BlazeGAMOnAdEventParamsData) then) =
      _$BlazeGAMOnAdEventParamsDataCopyWithImpl<$Res,
          BlazeGAMOnAdEventParamsData>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$BlazeGAMOnAdEventParamsDataCopyWithImpl<$Res,
        $Val extends BlazeGAMOnAdEventParamsData>
    implements $BlazeGAMOnAdEventParamsDataCopyWith<$Res> {
  _$BlazeGAMOnAdEventParamsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeGAMOnAdEventParamsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeGAMOnAdEventParamsDataImplCopyWith<$Res>
    implements $BlazeGAMOnAdEventParamsDataCopyWith<$Res> {
  factory _$$BlazeGAMOnAdEventParamsDataImplCopyWith(
          _$BlazeGAMOnAdEventParamsDataImpl value,
          $Res Function(_$BlazeGAMOnAdEventParamsDataImpl) then) =
      __$$BlazeGAMOnAdEventParamsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$BlazeGAMOnAdEventParamsDataImplCopyWithImpl<$Res>
    extends _$BlazeGAMOnAdEventParamsDataCopyWithImpl<$Res,
        _$BlazeGAMOnAdEventParamsDataImpl>
    implements _$$BlazeGAMOnAdEventParamsDataImplCopyWith<$Res> {
  __$$BlazeGAMOnAdEventParamsDataImplCopyWithImpl(
      _$BlazeGAMOnAdEventParamsDataImpl _value,
      $Res Function(_$BlazeGAMOnAdEventParamsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeGAMOnAdEventParamsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$BlazeGAMOnAdEventParamsDataImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeGAMOnAdEventParamsDataImpl
    with DiagnosticableTreeMixin
    implements _BlazeGAMOnAdEventParamsData {
  const _$BlazeGAMOnAdEventParamsDataImpl({required this.eventType});

  factory _$BlazeGAMOnAdEventParamsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeGAMOnAdEventParamsDataImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeGAMOnAdEventParamsData(eventType: $eventType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeGAMOnAdEventParamsData'))
      ..add(DiagnosticsProperty('eventType', eventType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeGAMOnAdEventParamsDataImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  /// Create a copy of BlazeGAMOnAdEventParamsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeGAMOnAdEventParamsDataImplCopyWith<_$BlazeGAMOnAdEventParamsDataImpl>
      get copyWith => __$$BlazeGAMOnAdEventParamsDataImplCopyWithImpl<
          _$BlazeGAMOnAdEventParamsDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdEventParamsData value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeGAMOnAdEventParamsData value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeGAMOnAdEventParamsData value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeGAMOnAdEventParamsDataImplToJson(
      this,
    );
  }
}

abstract class _BlazeGAMOnAdEventParamsData
    implements BlazeGAMOnAdEventParamsData {
  const factory _BlazeGAMOnAdEventParamsData(
      {required final String eventType}) = _$BlazeGAMOnAdEventParamsDataImpl;

  factory _BlazeGAMOnAdEventParamsData.fromJson(Map<String, dynamic> json) =
      _$BlazeGAMOnAdEventParamsDataImpl.fromJson;

  @override
  String get eventType;

  /// Create a copy of BlazeGAMOnAdEventParamsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeGAMOnAdEventParamsDataImplCopyWith<_$BlazeGAMOnAdEventParamsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
