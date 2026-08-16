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

BlazeIMAAdInfo _$BlazeIMAAdInfoFromJson(Map<String, dynamic> json) {
  return _BlazeIMAAdInfo.fromJson(json);
}

/// @nodoc
mixin _$BlazeIMAAdInfo {
  /// The unique identifier of the ad as specified in the VAST response.
  String? get adId => throw _privateConstructorUsedError;

  /// The title of the ad provided in the VAST response.
  String? get adTitle => throw _privateConstructorUsedError;

  /// A description of the ad.
  String? get adDescription => throw _privateConstructorUsedError;

  /// Information about the source ad server included in the ad response.
  String? get adSystem => throw _privateConstructorUsedError;

  /// Whether the ad is skippable.
  bool? get isSkippable => throw _privateConstructorUsedError;

  /// The number of seconds of playback before the ad becomes skippable.
  /// Native reports `-1` for non-skippable ads or when unavailable.
  double? get skipTimeOffset => throw _privateConstructorUsedError;

  /// The total duration of the ad in seconds, as provided in the VAST
  /// response.
  double? get adDuration => throw _privateConstructorUsedError;

  /// The name of the advertiser as defined by the serving party.
  String? get advertiserName => throw _privateConstructorUsedError;

  /// The ad tag used to fetch the ad.
  String? get adTag => throw _privateConstructorUsedError;

  /// Contextual metadata about the content surrounding the ad.
  BlazeContentExtraInfo? get extraInfo => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMAAdInfo value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMAAdInfo value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMAAdInfo value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeIMAAdInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeIMAAdInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeIMAAdInfoCopyWith<BlazeIMAAdInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeIMAAdInfoCopyWith<$Res> {
  factory $BlazeIMAAdInfoCopyWith(
          BlazeIMAAdInfo value, $Res Function(BlazeIMAAdInfo) then) =
      _$BlazeIMAAdInfoCopyWithImpl<$Res, BlazeIMAAdInfo>;
  @useResult
  $Res call(
      {String? adId,
      String? adTitle,
      String? adDescription,
      String? adSystem,
      bool? isSkippable,
      double? skipTimeOffset,
      double? adDuration,
      String? advertiserName,
      String? adTag,
      BlazeContentExtraInfo? extraInfo});
}

/// @nodoc
class _$BlazeIMAAdInfoCopyWithImpl<$Res, $Val extends BlazeIMAAdInfo>
    implements $BlazeIMAAdInfoCopyWith<$Res> {
  _$BlazeIMAAdInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeIMAAdInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adId = freezed,
    Object? adTitle = freezed,
    Object? adDescription = freezed,
    Object? adSystem = freezed,
    Object? isSkippable = freezed,
    Object? skipTimeOffset = freezed,
    Object? adDuration = freezed,
    Object? advertiserName = freezed,
    Object? adTag = freezed,
    Object? extraInfo = freezed,
  }) {
    return _then(_value.copyWith(
      adId: freezed == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String?,
      adTitle: freezed == adTitle
          ? _value.adTitle
          : adTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      adDescription: freezed == adDescription
          ? _value.adDescription
          : adDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      adSystem: freezed == adSystem
          ? _value.adSystem
          : adSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      isSkippable: freezed == isSkippable
          ? _value.isSkippable
          : isSkippable // ignore: cast_nullable_to_non_nullable
              as bool?,
      skipTimeOffset: freezed == skipTimeOffset
          ? _value.skipTimeOffset
          : skipTimeOffset // ignore: cast_nullable_to_non_nullable
              as double?,
      adDuration: freezed == adDuration
          ? _value.adDuration
          : adDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      advertiserName: freezed == advertiserName
          ? _value.advertiserName
          : advertiserName // ignore: cast_nullable_to_non_nullable
              as String?,
      adTag: freezed == adTag
          ? _value.adTag
          : adTag // ignore: cast_nullable_to_non_nullable
              as String?,
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as BlazeContentExtraInfo?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeIMAAdInfoImplCopyWith<$Res>
    implements $BlazeIMAAdInfoCopyWith<$Res> {
  factory _$$BlazeIMAAdInfoImplCopyWith(_$BlazeIMAAdInfoImpl value,
          $Res Function(_$BlazeIMAAdInfoImpl) then) =
      __$$BlazeIMAAdInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? adId,
      String? adTitle,
      String? adDescription,
      String? adSystem,
      bool? isSkippable,
      double? skipTimeOffset,
      double? adDuration,
      String? advertiserName,
      String? adTag,
      BlazeContentExtraInfo? extraInfo});
}

/// @nodoc
class __$$BlazeIMAAdInfoImplCopyWithImpl<$Res>
    extends _$BlazeIMAAdInfoCopyWithImpl<$Res, _$BlazeIMAAdInfoImpl>
    implements _$$BlazeIMAAdInfoImplCopyWith<$Res> {
  __$$BlazeIMAAdInfoImplCopyWithImpl(
      _$BlazeIMAAdInfoImpl _value, $Res Function(_$BlazeIMAAdInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeIMAAdInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adId = freezed,
    Object? adTitle = freezed,
    Object? adDescription = freezed,
    Object? adSystem = freezed,
    Object? isSkippable = freezed,
    Object? skipTimeOffset = freezed,
    Object? adDuration = freezed,
    Object? advertiserName = freezed,
    Object? adTag = freezed,
    Object? extraInfo = freezed,
  }) {
    return _then(_$BlazeIMAAdInfoImpl(
      adId: freezed == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String?,
      adTitle: freezed == adTitle
          ? _value.adTitle
          : adTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      adDescription: freezed == adDescription
          ? _value.adDescription
          : adDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      adSystem: freezed == adSystem
          ? _value.adSystem
          : adSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      isSkippable: freezed == isSkippable
          ? _value.isSkippable
          : isSkippable // ignore: cast_nullable_to_non_nullable
              as bool?,
      skipTimeOffset: freezed == skipTimeOffset
          ? _value.skipTimeOffset
          : skipTimeOffset // ignore: cast_nullable_to_non_nullable
              as double?,
      adDuration: freezed == adDuration
          ? _value.adDuration
          : adDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      advertiserName: freezed == advertiserName
          ? _value.advertiserName
          : advertiserName // ignore: cast_nullable_to_non_nullable
              as String?,
      adTag: freezed == adTag
          ? _value.adTag
          : adTag // ignore: cast_nullable_to_non_nullable
              as String?,
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as BlazeContentExtraInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeIMAAdInfoImpl
    with DiagnosticableTreeMixin
    implements _BlazeIMAAdInfo {
  const _$BlazeIMAAdInfoImpl(
      {this.adId,
      this.adTitle,
      this.adDescription,
      this.adSystem,
      this.isSkippable,
      this.skipTimeOffset,
      this.adDuration,
      this.advertiserName,
      this.adTag,
      this.extraInfo});

  factory _$BlazeIMAAdInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeIMAAdInfoImplFromJson(json);

  /// The unique identifier of the ad as specified in the VAST response.
  @override
  final String? adId;

  /// The title of the ad provided in the VAST response.
  @override
  final String? adTitle;

  /// A description of the ad.
  @override
  final String? adDescription;

  /// Information about the source ad server included in the ad response.
  @override
  final String? adSystem;

  /// Whether the ad is skippable.
  @override
  final bool? isSkippable;

  /// The number of seconds of playback before the ad becomes skippable.
  /// Native reports `-1` for non-skippable ads or when unavailable.
  @override
  final double? skipTimeOffset;

  /// The total duration of the ad in seconds, as provided in the VAST
  /// response.
  @override
  final double? adDuration;

  /// The name of the advertiser as defined by the serving party.
  @override
  final String? advertiserName;

  /// The ad tag used to fetch the ad.
  @override
  final String? adTag;

  /// Contextual metadata about the content surrounding the ad.
  @override
  final BlazeContentExtraInfo? extraInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeIMAAdInfo(adId: $adId, adTitle: $adTitle, adDescription: $adDescription, adSystem: $adSystem, isSkippable: $isSkippable, skipTimeOffset: $skipTimeOffset, adDuration: $adDuration, advertiserName: $advertiserName, adTag: $adTag, extraInfo: $extraInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeIMAAdInfo'))
      ..add(DiagnosticsProperty('adId', adId))
      ..add(DiagnosticsProperty('adTitle', adTitle))
      ..add(DiagnosticsProperty('adDescription', adDescription))
      ..add(DiagnosticsProperty('adSystem', adSystem))
      ..add(DiagnosticsProperty('isSkippable', isSkippable))
      ..add(DiagnosticsProperty('skipTimeOffset', skipTimeOffset))
      ..add(DiagnosticsProperty('adDuration', adDuration))
      ..add(DiagnosticsProperty('advertiserName', advertiserName))
      ..add(DiagnosticsProperty('adTag', adTag))
      ..add(DiagnosticsProperty('extraInfo', extraInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeIMAAdInfoImpl &&
            (identical(other.adId, adId) || other.adId == adId) &&
            (identical(other.adTitle, adTitle) || other.adTitle == adTitle) &&
            (identical(other.adDescription, adDescription) ||
                other.adDescription == adDescription) &&
            (identical(other.adSystem, adSystem) ||
                other.adSystem == adSystem) &&
            (identical(other.isSkippable, isSkippable) ||
                other.isSkippable == isSkippable) &&
            (identical(other.skipTimeOffset, skipTimeOffset) ||
                other.skipTimeOffset == skipTimeOffset) &&
            (identical(other.adDuration, adDuration) ||
                other.adDuration == adDuration) &&
            (identical(other.advertiserName, advertiserName) ||
                other.advertiserName == advertiserName) &&
            (identical(other.adTag, adTag) || other.adTag == adTag) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adId,
      adTitle,
      adDescription,
      adSystem,
      isSkippable,
      skipTimeOffset,
      adDuration,
      advertiserName,
      adTag,
      extraInfo);

  /// Create a copy of BlazeIMAAdInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeIMAAdInfoImplCopyWith<_$BlazeIMAAdInfoImpl> get copyWith =>
      __$$BlazeIMAAdInfoImplCopyWithImpl<_$BlazeIMAAdInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeIMAAdInfo value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeIMAAdInfo value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeIMAAdInfo value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeIMAAdInfoImplToJson(
      this,
    );
  }
}

abstract class _BlazeIMAAdInfo implements BlazeIMAAdInfo {
  const factory _BlazeIMAAdInfo(
      {final String? adId,
      final String? adTitle,
      final String? adDescription,
      final String? adSystem,
      final bool? isSkippable,
      final double? skipTimeOffset,
      final double? adDuration,
      final String? advertiserName,
      final String? adTag,
      final BlazeContentExtraInfo? extraInfo}) = _$BlazeIMAAdInfoImpl;

  factory _BlazeIMAAdInfo.fromJson(Map<String, dynamic> json) =
      _$BlazeIMAAdInfoImpl.fromJson;

  /// The unique identifier of the ad as specified in the VAST response.
  @override
  String? get adId;

  /// The title of the ad provided in the VAST response.
  @override
  String? get adTitle;

  /// A description of the ad.
  @override
  String? get adDescription;

  /// Information about the source ad server included in the ad response.
  @override
  String? get adSystem;

  /// Whether the ad is skippable.
  @override
  bool? get isSkippable;

  /// The number of seconds of playback before the ad becomes skippable.
  /// Native reports `-1` for non-skippable ads or when unavailable.
  @override
  double? get skipTimeOffset;

  /// The total duration of the ad in seconds, as provided in the VAST
  /// response.
  @override
  double? get adDuration;

  /// The name of the advertiser as defined by the serving party.
  @override
  String? get advertiserName;

  /// The ad tag used to fetch the ad.
  @override
  String? get adTag;

  /// Contextual metadata about the content surrounding the ad.
  @override
  BlazeContentExtraInfo? get extraInfo;

  /// Create a copy of BlazeIMAAdInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeIMAAdInfoImplCopyWith<_$BlazeIMAAdInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeIMADelegateOnAdEventParams _$BlazeIMADelegateOnAdEventParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeIMADelegateOnAdEventParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeIMADelegateOnAdEventParams {
  BlazeIMAOnAdEventEventType get eventType =>
      throw _privateConstructorUsedError;

  /// Details of the ad this event refers to. `null` when the IMA SDK reported
  /// no ad information for the event.
  BlazeIMAAdInfo? get adInfo => throw _privateConstructorUsedError;

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
  $Res call({BlazeIMAOnAdEventEventType eventType, BlazeIMAAdInfo? adInfo});

  $BlazeIMAAdInfoCopyWith<$Res>? get adInfo;
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
    Object? adInfo = freezed,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as BlazeIMAOnAdEventEventType,
      adInfo: freezed == adInfo
          ? _value.adInfo
          : adInfo // ignore: cast_nullable_to_non_nullable
              as BlazeIMAAdInfo?,
    ) as $Val);
  }

  /// Create a copy of BlazeIMADelegateOnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeIMAAdInfoCopyWith<$Res>? get adInfo {
    if (_value.adInfo == null) {
      return null;
    }

    return $BlazeIMAAdInfoCopyWith<$Res>(_value.adInfo!, (value) {
      return _then(_value.copyWith(adInfo: value) as $Val);
    });
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
  $Res call({BlazeIMAOnAdEventEventType eventType, BlazeIMAAdInfo? adInfo});

  @override
  $BlazeIMAAdInfoCopyWith<$Res>? get adInfo;
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
    Object? adInfo = freezed,
  }) {
    return _then(_$BlazeIMADelegateOnAdEventParamsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as BlazeIMAOnAdEventEventType,
      adInfo: freezed == adInfo
          ? _value.adInfo
          : adInfo // ignore: cast_nullable_to_non_nullable
              as BlazeIMAAdInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeIMADelegateOnAdEventParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeIMADelegateOnAdEventParams {
  const _$BlazeIMADelegateOnAdEventParamsImpl(
      {required this.eventType, this.adInfo});

  factory _$BlazeIMADelegateOnAdEventParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeIMADelegateOnAdEventParamsImplFromJson(json);

  @override
  final BlazeIMAOnAdEventEventType eventType;

  /// Details of the ad this event refers to. `null` when the IMA SDK reported
  /// no ad information for the event.
  @override
  final BlazeIMAAdInfo? adInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeIMADelegateOnAdEventParams(eventType: $eventType, adInfo: $adInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeIMADelegateOnAdEventParams'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('adInfo', adInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeIMADelegateOnAdEventParamsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.adInfo, adInfo) || other.adInfo == adInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, adInfo);

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
      {required final BlazeIMAOnAdEventEventType eventType,
      final BlazeIMAAdInfo? adInfo}) = _$BlazeIMADelegateOnAdEventParamsImpl;

  factory _BlazeIMADelegateOnAdEventParams.fromJson(Map<String, dynamic> json) =
      _$BlazeIMADelegateOnAdEventParamsImpl.fromJson;

  @override
  BlazeIMAOnAdEventEventType get eventType;

  /// Details of the ad this event refers to. `null` when the IMA SDK reported
  /// no ad information for the event.
  @override
  BlazeIMAAdInfo? get adInfo;

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
  BlazeIMAAdInfo? get adInfo => throw _privateConstructorUsedError;

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
  $Res call({String eventType, BlazeIMAAdInfo? adInfo});

  $BlazeIMAAdInfoCopyWith<$Res>? get adInfo;
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
    Object? adInfo = freezed,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      adInfo: freezed == adInfo
          ? _value.adInfo
          : adInfo // ignore: cast_nullable_to_non_nullable
              as BlazeIMAAdInfo?,
    ) as $Val);
  }

  /// Create a copy of _OnAdEventParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeIMAAdInfoCopyWith<$Res>? get adInfo {
    if (_value.adInfo == null) {
      return null;
    }

    return $BlazeIMAAdInfoCopyWith<$Res>(_value.adInfo!, (value) {
      return _then(_value.copyWith(adInfo: value) as $Val);
    });
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
  $Res call({String eventType, BlazeIMAAdInfo? adInfo});

  @override
  $BlazeIMAAdInfoCopyWith<$Res>? get adInfo;
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
    Object? adInfo = freezed,
  }) {
    return _then(_$_OnAdEventParamsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      adInfo: freezed == adInfo
          ? _value.adInfo
          : adInfo // ignore: cast_nullable_to_non_nullable
              as BlazeIMAAdInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnAdEventParamsImpl
    with DiagnosticableTreeMixin
    implements __OnAdEventParams {
  const _$_OnAdEventParamsImpl({required this.eventType, required this.adInfo});

  factory _$_OnAdEventParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$_OnAdEventParamsImplFromJson(json);

  @override
  final String eventType;
  @override
  final BlazeIMAAdInfo? adInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_OnAdEventParams(eventType: $eventType, adInfo: $adInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_OnAdEventParams'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('adInfo', adInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnAdEventParamsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.adInfo, adInfo) || other.adInfo == adInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, adInfo);

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
  const factory __OnAdEventParams(
      {required final String eventType,
      required final BlazeIMAAdInfo? adInfo}) = _$_OnAdEventParamsImpl;

  factory __OnAdEventParams.fromJson(Map<String, dynamic> json) =
      _$_OnAdEventParamsImpl.fromJson;

  @override
  String get eventType;
  @override
  BlazeIMAAdInfo? get adInfo;

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
