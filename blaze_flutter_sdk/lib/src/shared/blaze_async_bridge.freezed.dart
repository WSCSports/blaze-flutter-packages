// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_async_bridge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

_AsyncBridgeRequest _$AsyncBridgeRequestFromJson(Map<String, dynamic> json) {
  return __AsyncBridgeRequest.fromJson(json);
}

/// @nodoc
mixin _$AsyncBridgeRequest {
  String get methodName => throw _privateConstructorUsedError;
  String get params => throw _privateConstructorUsedError;
  String get callbackId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__AsyncBridgeRequest value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__AsyncBridgeRequest value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__AsyncBridgeRequest value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this _AsyncBridgeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of _AsyncBridgeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$AsyncBridgeRequestCopyWith<_AsyncBridgeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AsyncBridgeRequestCopyWith<$Res> {
  factory _$AsyncBridgeRequestCopyWith(
          _AsyncBridgeRequest value, $Res Function(_AsyncBridgeRequest) then) =
      __$AsyncBridgeRequestCopyWithImpl<$Res, _AsyncBridgeRequest>;
  @useResult
  $Res call({String methodName, String params, String callbackId});
}

/// @nodoc
class __$AsyncBridgeRequestCopyWithImpl<$Res, $Val extends _AsyncBridgeRequest>
    implements _$AsyncBridgeRequestCopyWith<$Res> {
  __$AsyncBridgeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _AsyncBridgeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methodName = null,
    Object? params = null,
    Object? callbackId = null,
  }) {
    return _then(_value.copyWith(
      methodName: null == methodName
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
      callbackId: null == callbackId
          ? _value.callbackId
          : callbackId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AsyncBridgeRequestImplCopyWith<$Res>
    implements _$AsyncBridgeRequestCopyWith<$Res> {
  factory _$$_AsyncBridgeRequestImplCopyWith(_$_AsyncBridgeRequestImpl value,
          $Res Function(_$_AsyncBridgeRequestImpl) then) =
      __$$_AsyncBridgeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String methodName, String params, String callbackId});
}

/// @nodoc
class __$$_AsyncBridgeRequestImplCopyWithImpl<$Res>
    extends __$AsyncBridgeRequestCopyWithImpl<$Res, _$_AsyncBridgeRequestImpl>
    implements _$$_AsyncBridgeRequestImplCopyWith<$Res> {
  __$$_AsyncBridgeRequestImplCopyWithImpl(_$_AsyncBridgeRequestImpl _value,
      $Res Function(_$_AsyncBridgeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of _AsyncBridgeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methodName = null,
    Object? params = null,
    Object? callbackId = null,
  }) {
    return _then(_$_AsyncBridgeRequestImpl(
      methodName: null == methodName
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
      callbackId: null == callbackId
          ? _value.callbackId
          : callbackId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AsyncBridgeRequestImpl
    with DiagnosticableTreeMixin
    implements __AsyncBridgeRequest {
  const _$_AsyncBridgeRequestImpl(
      {required this.methodName,
      required this.params,
      required this.callbackId});

  factory _$_AsyncBridgeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$_AsyncBridgeRequestImplFromJson(json);

  @override
  final String methodName;
  @override
  final String params;
  @override
  final String callbackId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_AsyncBridgeRequest(methodName: $methodName, params: $params, callbackId: $callbackId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_AsyncBridgeRequest'))
      ..add(DiagnosticsProperty('methodName', methodName))
      ..add(DiagnosticsProperty('params', params))
      ..add(DiagnosticsProperty('callbackId', callbackId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AsyncBridgeRequestImpl &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.callbackId, callbackId) ||
                other.callbackId == callbackId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, methodName, params, callbackId);

  /// Create a copy of _AsyncBridgeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_AsyncBridgeRequestImplCopyWith<_$_AsyncBridgeRequestImpl> get copyWith =>
      __$$_AsyncBridgeRequestImplCopyWithImpl<_$_AsyncBridgeRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__AsyncBridgeRequest value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__AsyncBridgeRequest value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__AsyncBridgeRequest value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AsyncBridgeRequestImplToJson(
      this,
    );
  }
}

abstract class __AsyncBridgeRequest implements _AsyncBridgeRequest {
  const factory __AsyncBridgeRequest(
      {required final String methodName,
      required final String params,
      required final String callbackId}) = _$_AsyncBridgeRequestImpl;

  factory __AsyncBridgeRequest.fromJson(Map<String, dynamic> json) =
      _$_AsyncBridgeRequestImpl.fromJson;

  @override
  String get methodName;
  @override
  String get params;
  @override
  String get callbackId;

  /// Create a copy of _AsyncBridgeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_AsyncBridgeRequestImplCopyWith<_$_AsyncBridgeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_AsyncBridgeResponse _$AsyncBridgeResponseFromJson(Map<String, dynamic> json) {
  return __AsyncBridgeResponse.fromJson(json);
}

/// @nodoc
mixin _$AsyncBridgeResponse {
  String get callbackId => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__AsyncBridgeResponse value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__AsyncBridgeResponse value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__AsyncBridgeResponse value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this _AsyncBridgeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of _AsyncBridgeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$AsyncBridgeResponseCopyWith<_AsyncBridgeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AsyncBridgeResponseCopyWith<$Res> {
  factory _$AsyncBridgeResponseCopyWith(_AsyncBridgeResponse value,
          $Res Function(_AsyncBridgeResponse) then) =
      __$AsyncBridgeResponseCopyWithImpl<$Res, _AsyncBridgeResponse>;
  @useResult
  $Res call(
      {String callbackId, bool success, String? data, String? errorMessage});
}

/// @nodoc
class __$AsyncBridgeResponseCopyWithImpl<$Res,
        $Val extends _AsyncBridgeResponse>
    implements _$AsyncBridgeResponseCopyWith<$Res> {
  __$AsyncBridgeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _AsyncBridgeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callbackId = null,
    Object? success = null,
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      callbackId: null == callbackId
          ? _value.callbackId
          : callbackId // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AsyncBridgeResponseImplCopyWith<$Res>
    implements _$AsyncBridgeResponseCopyWith<$Res> {
  factory _$$_AsyncBridgeResponseImplCopyWith(_$_AsyncBridgeResponseImpl value,
          $Res Function(_$_AsyncBridgeResponseImpl) then) =
      __$$_AsyncBridgeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String callbackId, bool success, String? data, String? errorMessage});
}

/// @nodoc
class __$$_AsyncBridgeResponseImplCopyWithImpl<$Res>
    extends __$AsyncBridgeResponseCopyWithImpl<$Res, _$_AsyncBridgeResponseImpl>
    implements _$$_AsyncBridgeResponseImplCopyWith<$Res> {
  __$$_AsyncBridgeResponseImplCopyWithImpl(_$_AsyncBridgeResponseImpl _value,
      $Res Function(_$_AsyncBridgeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of _AsyncBridgeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callbackId = null,
    Object? success = null,
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AsyncBridgeResponseImpl(
      callbackId: null == callbackId
          ? _value.callbackId
          : callbackId // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AsyncBridgeResponseImpl
    with DiagnosticableTreeMixin
    implements __AsyncBridgeResponse {
  const _$_AsyncBridgeResponseImpl(
      {required this.callbackId,
      required this.success,
      this.data,
      this.errorMessage});

  factory _$_AsyncBridgeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$_AsyncBridgeResponseImplFromJson(json);

  @override
  final String callbackId;
  @override
  final bool success;
  @override
  final String? data;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_AsyncBridgeResponse(callbackId: $callbackId, success: $success, data: $data, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_AsyncBridgeResponse'))
      ..add(DiagnosticsProperty('callbackId', callbackId))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AsyncBridgeResponseImpl &&
            (identical(other.callbackId, callbackId) ||
                other.callbackId == callbackId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, callbackId, success, data, errorMessage);

  /// Create a copy of _AsyncBridgeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_AsyncBridgeResponseImplCopyWith<_$_AsyncBridgeResponseImpl>
      get copyWith =>
          __$$_AsyncBridgeResponseImplCopyWithImpl<_$_AsyncBridgeResponseImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__AsyncBridgeResponse value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__AsyncBridgeResponse value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__AsyncBridgeResponse value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AsyncBridgeResponseImplToJson(
      this,
    );
  }
}

abstract class __AsyncBridgeResponse implements _AsyncBridgeResponse {
  const factory __AsyncBridgeResponse(
      {required final String callbackId,
      required final bool success,
      final String? data,
      final String? errorMessage}) = _$_AsyncBridgeResponseImpl;

  factory __AsyncBridgeResponse.fromJson(Map<String, dynamic> json) =
      _$_AsyncBridgeResponseImpl.fromJson;

  @override
  String get callbackId;
  @override
  bool get success;
  @override
  String? get data;
  @override
  String? get errorMessage;

  /// Create a copy of _AsyncBridgeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_AsyncBridgeResponseImplCopyWith<_$_AsyncBridgeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
