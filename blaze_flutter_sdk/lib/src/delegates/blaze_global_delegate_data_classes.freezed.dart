// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_global_delegate_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeError _$BlazeErrorFromJson(Map<String, dynamic> json) {
  return _BlazeError.fromJson(json);
}

/// @nodoc
mixin _$BlazeError {
  String get domain => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeError value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeError value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeError value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeErrorCopyWith<BlazeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeErrorCopyWith<$Res> {
  factory $BlazeErrorCopyWith(
          BlazeError value, $Res Function(BlazeError) then) =
      _$BlazeErrorCopyWithImpl<$Res, BlazeError>;
  @useResult
  $Res call({String domain, String reason, String message});
}

/// @nodoc
class _$BlazeErrorCopyWithImpl<$Res, $Val extends BlazeError>
    implements $BlazeErrorCopyWith<$Res> {
  _$BlazeErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? reason = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeErrorImplCopyWith<$Res>
    implements $BlazeErrorCopyWith<$Res> {
  factory _$$BlazeErrorImplCopyWith(
          _$BlazeErrorImpl value, $Res Function(_$BlazeErrorImpl) then) =
      __$$BlazeErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String domain, String reason, String message});
}

/// @nodoc
class __$$BlazeErrorImplCopyWithImpl<$Res>
    extends _$BlazeErrorCopyWithImpl<$Res, _$BlazeErrorImpl>
    implements _$$BlazeErrorImplCopyWith<$Res> {
  __$$BlazeErrorImplCopyWithImpl(
      _$BlazeErrorImpl _value, $Res Function(_$BlazeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? reason = null,
    Object? message = null,
  }) {
    return _then(_$BlazeErrorImpl(
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeErrorImpl with DiagnosticableTreeMixin implements _BlazeError {
  const _$BlazeErrorImpl(
      {required this.domain, required this.reason, required this.message});

  factory _$BlazeErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeErrorImplFromJson(json);

  @override
  final String domain;
  @override
  final String reason;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeError(domain: $domain, reason: $reason, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeError'))
      ..add(DiagnosticsProperty('domain', domain))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeErrorImpl &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, domain, reason, message);

  /// Create a copy of BlazeError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeErrorImplCopyWith<_$BlazeErrorImpl> get copyWith =>
      __$$BlazeErrorImplCopyWithImpl<_$BlazeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeError value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeError value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeError value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeErrorImplToJson(
      this,
    );
  }
}

abstract class _BlazeError implements BlazeError {
  const factory _BlazeError(
      {required final String domain,
      required final String reason,
      required final String message}) = _$BlazeErrorImpl;

  factory _BlazeError.fromJson(Map<String, dynamic> json) =
      _$BlazeErrorImpl.fromJson;

  @override
  String get domain;
  @override
  String get reason;
  @override
  String get message;

  /// Create a copy of BlazeError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeErrorImplCopyWith<_$BlazeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeOnEventTriggeredParams _$BlazeOnEventTriggeredParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnEventTriggeredParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnEventTriggeredParams {
  BlazeAnalyticsEvent get event => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnEventTriggeredParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnEventTriggeredParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnEventTriggeredParamsCopyWith<BlazeOnEventTriggeredParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnEventTriggeredParamsCopyWith<$Res> {
  factory $BlazeOnEventTriggeredParamsCopyWith(
          BlazeOnEventTriggeredParams value,
          $Res Function(BlazeOnEventTriggeredParams) then) =
      _$BlazeOnEventTriggeredParamsCopyWithImpl<$Res,
          BlazeOnEventTriggeredParams>;
  @useResult
  $Res call({BlazeAnalyticsEvent event});

  $BlazeAnalyticsEventCopyWith<$Res> get event;
}

/// @nodoc
class _$BlazeOnEventTriggeredParamsCopyWithImpl<$Res,
        $Val extends BlazeOnEventTriggeredParams>
    implements $BlazeOnEventTriggeredParamsCopyWith<$Res> {
  _$BlazeOnEventTriggeredParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsEvent,
    ) as $Val);
  }

  /// Create a copy of BlazeOnEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeAnalyticsEventCopyWith<$Res> get event {
    return $BlazeAnalyticsEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeOnEventTriggeredParamsImplCopyWith<$Res>
    implements $BlazeOnEventTriggeredParamsCopyWith<$Res> {
  factory _$$BlazeOnEventTriggeredParamsImplCopyWith(
          _$BlazeOnEventTriggeredParamsImpl value,
          $Res Function(_$BlazeOnEventTriggeredParamsImpl) then) =
      __$$BlazeOnEventTriggeredParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeAnalyticsEvent event});

  @override
  $BlazeAnalyticsEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$BlazeOnEventTriggeredParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnEventTriggeredParamsCopyWithImpl<$Res,
        _$BlazeOnEventTriggeredParamsImpl>
    implements _$$BlazeOnEventTriggeredParamsImplCopyWith<$Res> {
  __$$BlazeOnEventTriggeredParamsImplCopyWithImpl(
      _$BlazeOnEventTriggeredParamsImpl _value,
      $Res Function(_$BlazeOnEventTriggeredParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$BlazeOnEventTriggeredParamsImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsEvent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnEventTriggeredParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnEventTriggeredParams {
  const _$BlazeOnEventTriggeredParamsImpl({required this.event});

  factory _$BlazeOnEventTriggeredParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnEventTriggeredParamsImplFromJson(json);

  @override
  final BlazeAnalyticsEvent event;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnEventTriggeredParams(event: $event)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnEventTriggeredParams'))
      ..add(DiagnosticsProperty('event', event));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnEventTriggeredParamsImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of BlazeOnEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnEventTriggeredParamsImplCopyWith<_$BlazeOnEventTriggeredParamsImpl>
      get copyWith => __$$BlazeOnEventTriggeredParamsImplCopyWithImpl<
          _$BlazeOnEventTriggeredParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnEventTriggeredParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnEventTriggeredParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnEventTriggeredParams
    implements BlazeOnEventTriggeredParams {
  const factory _BlazeOnEventTriggeredParams(
          {required final BlazeAnalyticsEvent event}) =
      _$BlazeOnEventTriggeredParamsImpl;

  factory _BlazeOnEventTriggeredParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnEventTriggeredParamsImpl.fromJson;

  @override
  BlazeAnalyticsEvent get event;

  /// Create a copy of BlazeOnEventTriggeredParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnEventTriggeredParamsImplCopyWith<_$BlazeOnEventTriggeredParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnErrorThrownParams _$BlazeOnErrorThrownParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnErrorThrownParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnErrorThrownParams {
  BlazeError get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnErrorThrownParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnErrorThrownParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnErrorThrownParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnErrorThrownParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnErrorThrownParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnErrorThrownParamsCopyWith<BlazeOnErrorThrownParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnErrorThrownParamsCopyWith<$Res> {
  factory $BlazeOnErrorThrownParamsCopyWith(BlazeOnErrorThrownParams value,
          $Res Function(BlazeOnErrorThrownParams) then) =
      _$BlazeOnErrorThrownParamsCopyWithImpl<$Res, BlazeOnErrorThrownParams>;
  @useResult
  $Res call({BlazeError error});

  $BlazeErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$BlazeOnErrorThrownParamsCopyWithImpl<$Res,
        $Val extends BlazeOnErrorThrownParams>
    implements $BlazeOnErrorThrownParamsCopyWith<$Res> {
  _$BlazeOnErrorThrownParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnErrorThrownParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BlazeError,
    ) as $Val);
  }

  /// Create a copy of BlazeOnErrorThrownParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeErrorCopyWith<$Res> get error {
    return $BlazeErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeOnErrorThrownParamsImplCopyWith<$Res>
    implements $BlazeOnErrorThrownParamsCopyWith<$Res> {
  factory _$$BlazeOnErrorThrownParamsImplCopyWith(
          _$BlazeOnErrorThrownParamsImpl value,
          $Res Function(_$BlazeOnErrorThrownParamsImpl) then) =
      __$$BlazeOnErrorThrownParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeError error});

  @override
  $BlazeErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$BlazeOnErrorThrownParamsImplCopyWithImpl<$Res>
    extends _$BlazeOnErrorThrownParamsCopyWithImpl<$Res,
        _$BlazeOnErrorThrownParamsImpl>
    implements _$$BlazeOnErrorThrownParamsImplCopyWith<$Res> {
  __$$BlazeOnErrorThrownParamsImplCopyWithImpl(
      _$BlazeOnErrorThrownParamsImpl _value,
      $Res Function(_$BlazeOnErrorThrownParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnErrorThrownParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlazeOnErrorThrownParamsImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BlazeError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnErrorThrownParamsImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnErrorThrownParams {
  const _$BlazeOnErrorThrownParamsImpl({required this.error});

  factory _$BlazeOnErrorThrownParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeOnErrorThrownParamsImplFromJson(json);

  @override
  final BlazeError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnErrorThrownParams(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnErrorThrownParams'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnErrorThrownParamsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of BlazeOnErrorThrownParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnErrorThrownParamsImplCopyWith<_$BlazeOnErrorThrownParamsImpl>
      get copyWith => __$$BlazeOnErrorThrownParamsImplCopyWithImpl<
          _$BlazeOnErrorThrownParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnErrorThrownParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnErrorThrownParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnErrorThrownParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnErrorThrownParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnErrorThrownParams implements BlazeOnErrorThrownParams {
  const factory _BlazeOnErrorThrownParams({required final BlazeError error}) =
      _$BlazeOnErrorThrownParamsImpl;

  factory _BlazeOnErrorThrownParams.fromJson(Map<String, dynamic> json) =
      _$BlazeOnErrorThrownParamsImpl.fromJson;

  @override
  BlazeError get error;

  /// Create a copy of BlazeOnErrorThrownParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnErrorThrownParamsImplCopyWith<_$BlazeOnErrorThrownParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeOnEventTriggeredInternalData _$BlazeOnEventTriggeredInternalDataFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnEventTriggeredInternalData.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnEventTriggeredInternalData {
  String get eventData => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredInternalData value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnEventTriggeredInternalData value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredInternalData value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnEventTriggeredInternalData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnEventTriggeredInternalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnEventTriggeredInternalDataCopyWith<BlazeOnEventTriggeredInternalData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnEventTriggeredInternalDataCopyWith<$Res> {
  factory $BlazeOnEventTriggeredInternalDataCopyWith(
          BlazeOnEventTriggeredInternalData value,
          $Res Function(BlazeOnEventTriggeredInternalData) then) =
      _$BlazeOnEventTriggeredInternalDataCopyWithImpl<$Res,
          BlazeOnEventTriggeredInternalData>;
  @useResult
  $Res call({String eventData});
}

/// @nodoc
class _$BlazeOnEventTriggeredInternalDataCopyWithImpl<$Res,
        $Val extends BlazeOnEventTriggeredInternalData>
    implements $BlazeOnEventTriggeredInternalDataCopyWith<$Res> {
  _$BlazeOnEventTriggeredInternalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnEventTriggeredInternalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventData = null,
  }) {
    return _then(_value.copyWith(
      eventData: null == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnEventTriggeredInternalDataImplCopyWith<$Res>
    implements $BlazeOnEventTriggeredInternalDataCopyWith<$Res> {
  factory _$$BlazeOnEventTriggeredInternalDataImplCopyWith(
          _$BlazeOnEventTriggeredInternalDataImpl value,
          $Res Function(_$BlazeOnEventTriggeredInternalDataImpl) then) =
      __$$BlazeOnEventTriggeredInternalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventData});
}

/// @nodoc
class __$$BlazeOnEventTriggeredInternalDataImplCopyWithImpl<$Res>
    extends _$BlazeOnEventTriggeredInternalDataCopyWithImpl<$Res,
        _$BlazeOnEventTriggeredInternalDataImpl>
    implements _$$BlazeOnEventTriggeredInternalDataImplCopyWith<$Res> {
  __$$BlazeOnEventTriggeredInternalDataImplCopyWithImpl(
      _$BlazeOnEventTriggeredInternalDataImpl _value,
      $Res Function(_$BlazeOnEventTriggeredInternalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnEventTriggeredInternalData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventData = null,
  }) {
    return _then(_$BlazeOnEventTriggeredInternalDataImpl(
      eventData: null == eventData
          ? _value.eventData
          : eventData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnEventTriggeredInternalDataImpl
    with DiagnosticableTreeMixin
    implements _BlazeOnEventTriggeredInternalData {
  const _$BlazeOnEventTriggeredInternalDataImpl({required this.eventData});

  factory _$BlazeOnEventTriggeredInternalDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnEventTriggeredInternalDataImplFromJson(json);

  @override
  final String eventData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeOnEventTriggeredInternalData(eventData: $eventData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeOnEventTriggeredInternalData'))
      ..add(DiagnosticsProperty('eventData', eventData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnEventTriggeredInternalDataImpl &&
            (identical(other.eventData, eventData) ||
                other.eventData == eventData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventData);

  /// Create a copy of BlazeOnEventTriggeredInternalData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnEventTriggeredInternalDataImplCopyWith<
          _$BlazeOnEventTriggeredInternalDataImpl>
      get copyWith => __$$BlazeOnEventTriggeredInternalDataImplCopyWithImpl<
          _$BlazeOnEventTriggeredInternalDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredInternalData value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnEventTriggeredInternalData value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnEventTriggeredInternalData value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnEventTriggeredInternalDataImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnEventTriggeredInternalData
    implements BlazeOnEventTriggeredInternalData {
  const factory _BlazeOnEventTriggeredInternalData(
          {required final String eventData}) =
      _$BlazeOnEventTriggeredInternalDataImpl;

  factory _BlazeOnEventTriggeredInternalData.fromJson(
          Map<String, dynamic> json) =
      _$BlazeOnEventTriggeredInternalDataImpl.fromJson;

  @override
  String get eventData;

  /// Create a copy of BlazeOnEventTriggeredInternalData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnEventTriggeredInternalDataImplCopyWith<
          _$BlazeOnEventTriggeredInternalDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
