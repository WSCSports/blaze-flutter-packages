// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_ima_delegate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeIMASettings _$BlazeIMASettingsFromJson(Map<String, dynamic> json) {
  return _BlazeIMASettings.fromJson(json);
}

/// @nodoc
mixin _$BlazeIMASettings {
  String? get language => throw _privateConstructorUsedError;
  String? get ppid => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMASettings value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMASettings value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMASettings value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeIMASettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeIMASettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeIMASettingsCopyWith<BlazeIMASettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeIMASettingsCopyWith<$Res> {
  factory $BlazeIMASettingsCopyWith(
          BlazeIMASettings value, $Res Function(BlazeIMASettings) then) =
      _$BlazeIMASettingsCopyWithImpl<$Res, BlazeIMASettings>;
  @useResult
  $Res call({String? language, String? ppid, String? sessionId});
}

/// @nodoc
class _$BlazeIMASettingsCopyWithImpl<$Res, $Val extends BlazeIMASettings>
    implements $BlazeIMASettingsCopyWith<$Res> {
  _$BlazeIMASettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeIMASettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? ppid = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      ppid: freezed == ppid
          ? _value.ppid
          : ppid // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeIMASettingsImplCopyWith<$Res>
    implements $BlazeIMASettingsCopyWith<$Res> {
  factory _$$BlazeIMASettingsImplCopyWith(_$BlazeIMASettingsImpl value,
          $Res Function(_$BlazeIMASettingsImpl) then) =
      __$$BlazeIMASettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? language, String? ppid, String? sessionId});
}

/// @nodoc
class __$$BlazeIMASettingsImplCopyWithImpl<$Res>
    extends _$BlazeIMASettingsCopyWithImpl<$Res, _$BlazeIMASettingsImpl>
    implements _$$BlazeIMASettingsImplCopyWith<$Res> {
  __$$BlazeIMASettingsImplCopyWithImpl(_$BlazeIMASettingsImpl _value,
      $Res Function(_$BlazeIMASettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeIMASettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? ppid = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$BlazeIMASettingsImpl(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      ppid: freezed == ppid
          ? _value.ppid
          : ppid // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeIMASettingsImpl
    with DiagnosticableTreeMixin
    implements _BlazeIMASettings {
  const _$BlazeIMASettingsImpl({this.language, this.ppid, this.sessionId});

  factory _$BlazeIMASettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeIMASettingsImplFromJson(json);

  @override
  final String? language;
  @override
  final String? ppid;
  @override
  final String? sessionId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeIMASettings(language: $language, ppid: $ppid, sessionId: $sessionId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeIMASettings'))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('ppid', ppid))
      ..add(DiagnosticsProperty('sessionId', sessionId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeIMASettingsImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.ppid, ppid) || other.ppid == ppid) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, ppid, sessionId);

  /// Create a copy of BlazeIMASettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeIMASettingsImplCopyWith<_$BlazeIMASettingsImpl> get copyWith =>
      __$$BlazeIMASettingsImplCopyWithImpl<_$BlazeIMASettingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMASettings value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMASettings value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMASettings value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeIMASettingsImplToJson(
      this,
    );
  }
}

abstract class _BlazeIMASettings implements BlazeIMASettings {
  const factory _BlazeIMASettings(
      {final String? language,
      final String? ppid,
      final String? sessionId}) = _$BlazeIMASettingsImpl;

  factory _BlazeIMASettings.fromJson(Map<String, dynamic> json) =
      _$BlazeIMASettingsImpl.fromJson;

  @override
  String? get language;
  @override
  String? get ppid;
  @override
  String? get sessionId;

  /// Create a copy of BlazeIMASettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeIMASettingsImplCopyWith<_$BlazeIMASettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeIMAAdRequestInfo _$BlazeIMAAdRequestInfoFromJson(
    Map<String, dynamic> json) {
  return _BlazeIMAAdRequestInfo.fromJson(json);
}

/// @nodoc
mixin _$BlazeIMAAdRequestInfo {
  BlazeContentExtraInfo get extraInfo => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestInfo value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMAAdRequestInfo value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestInfo value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeIMAAdRequestInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeIMAAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeIMAAdRequestInfoCopyWith<BlazeIMAAdRequestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeIMAAdRequestInfoCopyWith<$Res> {
  factory $BlazeIMAAdRequestInfoCopyWith(BlazeIMAAdRequestInfo value,
          $Res Function(BlazeIMAAdRequestInfo) then) =
      _$BlazeIMAAdRequestInfoCopyWithImpl<$Res, BlazeIMAAdRequestInfo>;
  @useResult
  $Res call({BlazeContentExtraInfo extraInfo});
}

/// @nodoc
class _$BlazeIMAAdRequestInfoCopyWithImpl<$Res,
        $Val extends BlazeIMAAdRequestInfo>
    implements $BlazeIMAAdRequestInfoCopyWith<$Res> {
  _$BlazeIMAAdRequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeIMAAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extraInfo = null,
  }) {
    return _then(_value.copyWith(
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as BlazeContentExtraInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeIMAAdRequestInfoImplCopyWith<$Res>
    implements $BlazeIMAAdRequestInfoCopyWith<$Res> {
  factory _$$BlazeIMAAdRequestInfoImplCopyWith(
          _$BlazeIMAAdRequestInfoImpl value,
          $Res Function(_$BlazeIMAAdRequestInfoImpl) then) =
      __$$BlazeIMAAdRequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeContentExtraInfo extraInfo});
}

/// @nodoc
class __$$BlazeIMAAdRequestInfoImplCopyWithImpl<$Res>
    extends _$BlazeIMAAdRequestInfoCopyWithImpl<$Res,
        _$BlazeIMAAdRequestInfoImpl>
    implements _$$BlazeIMAAdRequestInfoImplCopyWith<$Res> {
  __$$BlazeIMAAdRequestInfoImplCopyWithImpl(_$BlazeIMAAdRequestInfoImpl _value,
      $Res Function(_$BlazeIMAAdRequestInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeIMAAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extraInfo = null,
  }) {
    return _then(_$BlazeIMAAdRequestInfoImpl(
      extraInfo: null == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as BlazeContentExtraInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeIMAAdRequestInfoImpl
    with DiagnosticableTreeMixin
    implements _BlazeIMAAdRequestInfo {
  const _$BlazeIMAAdRequestInfoImpl({required this.extraInfo});

  factory _$BlazeIMAAdRequestInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeIMAAdRequestInfoImplFromJson(json);

  @override
  final BlazeContentExtraInfo extraInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeIMAAdRequestInfo(extraInfo: $extraInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeIMAAdRequestInfo'))
      ..add(DiagnosticsProperty('extraInfo', extraInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeIMAAdRequestInfoImpl &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, extraInfo);

  /// Create a copy of BlazeIMAAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeIMAAdRequestInfoImplCopyWith<_$BlazeIMAAdRequestInfoImpl>
      get copyWith => __$$BlazeIMAAdRequestInfoImplCopyWithImpl<
          _$BlazeIMAAdRequestInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestInfo value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMAAdRequestInfo value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestInfo value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeIMAAdRequestInfoImplToJson(
      this,
    );
  }
}

abstract class _BlazeIMAAdRequestInfo implements BlazeIMAAdRequestInfo {
  const factory _BlazeIMAAdRequestInfo(
          {required final BlazeContentExtraInfo extraInfo}) =
      _$BlazeIMAAdRequestInfoImpl;

  factory _BlazeIMAAdRequestInfo.fromJson(Map<String, dynamic> json) =
      _$BlazeIMAAdRequestInfoImpl.fromJson;

  @override
  BlazeContentExtraInfo get extraInfo;

  /// Create a copy of BlazeIMAAdRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeIMAAdRequestInfoImplCopyWith<_$BlazeIMAAdRequestInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeIMAAdRequestParams _$BlazeIMAAdRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeIMAAdRequestParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeIMAAdRequestParams {
  BlazeIMAAdRequestInfo get requestDataInfo =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMAAdRequestParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeIMAAdRequestParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeIMAAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeIMAAdRequestParamsCopyWith<BlazeIMAAdRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeIMAAdRequestParamsCopyWith<$Res> {
  factory $BlazeIMAAdRequestParamsCopyWith(BlazeIMAAdRequestParams value,
          $Res Function(BlazeIMAAdRequestParams) then) =
      _$BlazeIMAAdRequestParamsCopyWithImpl<$Res, BlazeIMAAdRequestParams>;
  @useResult
  $Res call({BlazeIMAAdRequestInfo requestDataInfo});

  $BlazeIMAAdRequestInfoCopyWith<$Res> get requestDataInfo;
}

/// @nodoc
class _$BlazeIMAAdRequestParamsCopyWithImpl<$Res,
        $Val extends BlazeIMAAdRequestParams>
    implements $BlazeIMAAdRequestParamsCopyWith<$Res> {
  _$BlazeIMAAdRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeIMAAdRequestParams
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
              as BlazeIMAAdRequestInfo,
    ) as $Val);
  }

  /// Create a copy of BlazeIMAAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeIMAAdRequestInfoCopyWith<$Res> get requestDataInfo {
    return $BlazeIMAAdRequestInfoCopyWith<$Res>(_value.requestDataInfo,
        (value) {
      return _then(_value.copyWith(requestDataInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeIMAAdRequestParamsImplCopyWith<$Res>
    implements $BlazeIMAAdRequestParamsCopyWith<$Res> {
  factory _$$BlazeIMAAdRequestParamsImplCopyWith(
          _$BlazeIMAAdRequestParamsImpl value,
          $Res Function(_$BlazeIMAAdRequestParamsImpl) then) =
      __$$BlazeIMAAdRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeIMAAdRequestInfo requestDataInfo});

  @override
  $BlazeIMAAdRequestInfoCopyWith<$Res> get requestDataInfo;
}

/// @nodoc
class __$$BlazeIMAAdRequestParamsImplCopyWithImpl<$Res>
    extends _$BlazeIMAAdRequestParamsCopyWithImpl<$Res,
        _$BlazeIMAAdRequestParamsImpl>
    implements _$$BlazeIMAAdRequestParamsImplCopyWith<$Res> {
  __$$BlazeIMAAdRequestParamsImplCopyWithImpl(
      _$BlazeIMAAdRequestParamsImpl _value,
      $Res Function(_$BlazeIMAAdRequestParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeIMAAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestDataInfo = null,
  }) {
    return _then(_$BlazeIMAAdRequestParamsImpl(
      requestDataInfo: null == requestDataInfo
          ? _value.requestDataInfo
          : requestDataInfo // ignore: cast_nullable_to_non_nullable
              as BlazeIMAAdRequestInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeIMAAdRequestParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeIMAAdRequestParams {
  const _$BlazeIMAAdRequestParamsImpl({required this.requestDataInfo});

  factory _$BlazeIMAAdRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeIMAAdRequestParamsImplFromJson(json);

  @override
  final BlazeIMAAdRequestInfo requestDataInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeIMAAdRequestParams(requestDataInfo: $requestDataInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeIMAAdRequestParams'))
      ..add(DiagnosticsProperty('requestDataInfo', requestDataInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeIMAAdRequestParamsImpl &&
            (identical(other.requestDataInfo, requestDataInfo) ||
                other.requestDataInfo == requestDataInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestDataInfo);

  /// Create a copy of BlazeIMAAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeIMAAdRequestParamsImplCopyWith<_$BlazeIMAAdRequestParamsImpl>
      get copyWith => __$$BlazeIMAAdRequestParamsImplCopyWithImpl<
          _$BlazeIMAAdRequestParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMAAdRequestParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMAAdRequestParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeIMAAdRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeIMAAdRequestParams implements BlazeIMAAdRequestParams {
  const factory _BlazeIMAAdRequestParams(
          {required final BlazeIMAAdRequestInfo requestDataInfo}) =
      _$BlazeIMAAdRequestParamsImpl;

  factory _BlazeIMAAdRequestParams.fromJson(Map<String, dynamic> json) =
      _$BlazeIMAAdRequestParamsImpl.fromJson;

  @override
  BlazeIMAAdRequestInfo get requestDataInfo;

  /// Create a copy of BlazeIMAAdRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeIMAAdRequestParamsImplCopyWith<_$BlazeIMAAdRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeIMADelegateOnAdEventParams _$BlazeIMADelegateOnAdEventParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeIMADelegateOnAdEventParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeIMADelegateOnAdEventParams {
  BlazeIMAOnAdEventEventType get eventType =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMADelegateOnAdEventParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMADelegateOnAdEventParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMADelegateOnAdEventParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeIMADelegateOnAdEventParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeIMADelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeIMADelegateOnAdEventParamsCopyWith<BlazeIMADelegateOnAdEventParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeIMADelegateOnAdEventParamsCopyWith<$Res> {
  factory $BlazeIMADelegateOnAdEventParamsCopyWith(
          BlazeIMADelegateOnAdEventParams value,
          $Res Function(BlazeIMADelegateOnAdEventParams) then) =
      _$BlazeIMADelegateOnAdEventParamsCopyWithImpl<$Res,
          BlazeIMADelegateOnAdEventParams>;
  @useResult
  $Res call({BlazeIMAOnAdEventEventType eventType});
}

/// @nodoc
class _$BlazeIMADelegateOnAdEventParamsCopyWithImpl<$Res,
        $Val extends BlazeIMADelegateOnAdEventParams>
    implements $BlazeIMADelegateOnAdEventParamsCopyWith<$Res> {
  _$BlazeIMADelegateOnAdEventParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeIMADelegateOnAdEventParams
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
              as BlazeIMAOnAdEventEventType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeIMADelegateOnAdEventParamsImplCopyWith<$Res>
    implements $BlazeIMADelegateOnAdEventParamsCopyWith<$Res> {
  factory _$$BlazeIMADelegateOnAdEventParamsImplCopyWith(
          _$BlazeIMADelegateOnAdEventParamsImpl value,
          $Res Function(_$BlazeIMADelegateOnAdEventParamsImpl) then) =
      __$$BlazeIMADelegateOnAdEventParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeIMAOnAdEventEventType eventType});
}

/// @nodoc
class __$$BlazeIMADelegateOnAdEventParamsImplCopyWithImpl<$Res>
    extends _$BlazeIMADelegateOnAdEventParamsCopyWithImpl<$Res,
        _$BlazeIMADelegateOnAdEventParamsImpl>
    implements _$$BlazeIMADelegateOnAdEventParamsImplCopyWith<$Res> {
  __$$BlazeIMADelegateOnAdEventParamsImplCopyWithImpl(
      _$BlazeIMADelegateOnAdEventParamsImpl _value,
      $Res Function(_$BlazeIMADelegateOnAdEventParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeIMADelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$BlazeIMADelegateOnAdEventParamsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as BlazeIMAOnAdEventEventType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeIMADelegateOnAdEventParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeIMADelegateOnAdEventParams {
  const _$BlazeIMADelegateOnAdEventParamsImpl({required this.eventType});

  factory _$BlazeIMADelegateOnAdEventParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeIMADelegateOnAdEventParamsImplFromJson(json);

  @override
  final BlazeIMAOnAdEventEventType eventType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeIMADelegateOnAdEventParams(eventType: $eventType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeIMADelegateOnAdEventParams'))
      ..add(DiagnosticsProperty('eventType', eventType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeIMADelegateOnAdEventParamsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  /// Create a copy of BlazeIMADelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeIMADelegateOnAdEventParamsImplCopyWith<
          _$BlazeIMADelegateOnAdEventParamsImpl>
      get copyWith => __$$BlazeIMADelegateOnAdEventParamsImplCopyWithImpl<
          _$BlazeIMADelegateOnAdEventParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMADelegateOnAdEventParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMADelegateOnAdEventParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMADelegateOnAdEventParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeIMADelegateOnAdEventParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeIMADelegateOnAdEventParams
    implements BlazeIMADelegateOnAdEventParams {
  const factory _BlazeIMADelegateOnAdEventParams(
          {required final BlazeIMAOnAdEventEventType eventType}) =
      _$BlazeIMADelegateOnAdEventParamsImpl;

  factory _BlazeIMADelegateOnAdEventParams.fromJson(Map<String, dynamic> json) =
      _$BlazeIMADelegateOnAdEventParamsImpl.fromJson;

  @override
  BlazeIMAOnAdEventEventType get eventType;

  /// Create a copy of BlazeIMADelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeIMADelegateOnAdEventParamsImplCopyWith<
          _$BlazeIMADelegateOnAdEventParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

_OnAdEventParams _$OnAdEventParamsFromJson(Map<String, dynamic> json) {
  return __OnAdEventParams.fromJson(json);
}

/// @nodoc
mixin _$OnAdEventParams {
  String get eventType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__OnAdEventParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__OnAdEventParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__OnAdEventParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this _OnAdEventParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of _OnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$OnAdEventParamsCopyWith<_OnAdEventParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnAdEventParamsCopyWith<$Res> {
  factory _$OnAdEventParamsCopyWith(
          _OnAdEventParams value, $Res Function(_OnAdEventParams) then) =
      __$OnAdEventParamsCopyWithImpl<$Res, _OnAdEventParams>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$OnAdEventParamsCopyWithImpl<$Res, $Val extends _OnAdEventParams>
    implements _$OnAdEventParamsCopyWith<$Res> {
  __$OnAdEventParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _OnAdEventParams
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
abstract class _$$_OnAdEventParamsImplCopyWith<$Res>
    implements _$OnAdEventParamsCopyWith<$Res> {
  factory _$$_OnAdEventParamsImplCopyWith(_$_OnAdEventParamsImpl value,
          $Res Function(_$_OnAdEventParamsImpl) then) =
      __$$_OnAdEventParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$_OnAdEventParamsImplCopyWithImpl<$Res>
    extends __$OnAdEventParamsCopyWithImpl<$Res, _$_OnAdEventParamsImpl>
    implements _$$_OnAdEventParamsImplCopyWith<$Res> {
  __$$_OnAdEventParamsImplCopyWithImpl(_$_OnAdEventParamsImpl _value,
      $Res Function(_$_OnAdEventParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of _OnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$_OnAdEventParamsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnAdEventParamsImpl
    with DiagnosticableTreeMixin
    implements __OnAdEventParams {
  const _$_OnAdEventParamsImpl({required this.eventType});

  factory _$_OnAdEventParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$_OnAdEventParamsImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_OnAdEventParams(eventType: $eventType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_OnAdEventParams'))
      ..add(DiagnosticsProperty('eventType', eventType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnAdEventParamsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  /// Create a copy of _OnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnAdEventParamsImplCopyWith<_$_OnAdEventParamsImpl> get copyWith =>
      __$$_OnAdEventParamsImplCopyWithImpl<_$_OnAdEventParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__OnAdEventParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__OnAdEventParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__OnAdEventParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnAdEventParamsImplToJson(
      this,
    );
  }
}

abstract class __OnAdEventParams implements _OnAdEventParams {
  const factory __OnAdEventParams({required final String eventType}) =
      _$_OnAdEventParamsImpl;

  factory __OnAdEventParams.fromJson(Map<String, dynamic> json) =
      _$_OnAdEventParamsImpl.fromJson;

  @override
  String get eventType;

  /// Create a copy of _OnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_OnAdEventParamsImplCopyWith<_$_OnAdEventParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_OnAdErrorParams _$OnAdErrorParamsFromJson(Map<String, dynamic> json) {
  return __OnAdErrorParams.fromJson(json);
}

/// @nodoc
mixin _$OnAdErrorParams {
  String get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__OnAdErrorParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__OnAdErrorParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__OnAdErrorParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this _OnAdErrorParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of _OnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$OnAdErrorParamsCopyWith<_OnAdErrorParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnAdErrorParamsCopyWith<$Res> {
  factory _$OnAdErrorParamsCopyWith(
          _OnAdErrorParams value, $Res Function(_OnAdErrorParams) then) =
      __$OnAdErrorParamsCopyWithImpl<$Res, _OnAdErrorParams>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$OnAdErrorParamsCopyWithImpl<$Res, $Val extends _OnAdErrorParams>
    implements _$OnAdErrorParamsCopyWith<$Res> {
  __$OnAdErrorParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _OnAdErrorParams
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
abstract class _$$_OnAdErrorParamsImplCopyWith<$Res>
    implements _$OnAdErrorParamsCopyWith<$Res> {
  factory _$$_OnAdErrorParamsImplCopyWith(_$_OnAdErrorParamsImpl value,
          $Res Function(_$_OnAdErrorParamsImpl) then) =
      __$$_OnAdErrorParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_OnAdErrorParamsImplCopyWithImpl<$Res>
    extends __$OnAdErrorParamsCopyWithImpl<$Res, _$_OnAdErrorParamsImpl>
    implements _$$_OnAdErrorParamsImplCopyWith<$Res> {
  __$$_OnAdErrorParamsImplCopyWithImpl(_$_OnAdErrorParamsImpl _value,
      $Res Function(_$_OnAdErrorParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of _OnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_OnAdErrorParamsImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnAdErrorParamsImpl
    with DiagnosticableTreeMixin
    implements __OnAdErrorParams {
  const _$_OnAdErrorParamsImpl({required this.errorMessage});

  factory _$_OnAdErrorParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$_OnAdErrorParamsImplFromJson(json);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_OnAdErrorParams(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_OnAdErrorParams'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnAdErrorParamsImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of _OnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnAdErrorParamsImplCopyWith<_$_OnAdErrorParamsImpl> get copyWith =>
      __$$_OnAdErrorParamsImplCopyWithImpl<_$_OnAdErrorParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__OnAdErrorParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__OnAdErrorParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__OnAdErrorParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnAdErrorParamsImplToJson(
      this,
    );
  }
}

abstract class __OnAdErrorParams implements _OnAdErrorParams {
  const factory __OnAdErrorParams({required final String errorMessage}) =
      _$_OnAdErrorParamsImpl;

  factory __OnAdErrorParams.fromJson(Map<String, dynamic> json) =
      _$_OnAdErrorParamsImpl.fromJson;

  @override
  String get errorMessage;

  /// Create a copy of _OnAdErrorParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_OnAdErrorParamsImplCopyWith<_$_OnAdErrorParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
