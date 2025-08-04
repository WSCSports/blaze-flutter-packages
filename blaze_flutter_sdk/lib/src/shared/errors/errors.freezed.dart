// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'errors.dart';

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
  String? get domain => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, String>? get metadata => throw _privateConstructorUsedError;
  String? get underlyingError => throw _privateConstructorUsedError;

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
  $Res call(
      {String? domain,
      String? reason,
      String? message,
      Map<String, String>? metadata,
      String? underlyingError});
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
    Object? domain = freezed,
    Object? reason = freezed,
    Object? message = freezed,
    Object? metadata = freezed,
    Object? underlyingError = freezed,
  }) {
    return _then(_value.copyWith(
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      underlyingError: freezed == underlyingError
          ? _value.underlyingError
          : underlyingError // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {String? domain,
      String? reason,
      String? message,
      Map<String, String>? metadata,
      String? underlyingError});
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
    Object? domain = freezed,
    Object? reason = freezed,
    Object? message = freezed,
    Object? metadata = freezed,
    Object? underlyingError = freezed,
  }) {
    return _then(_$BlazeErrorImpl(
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      underlyingError: freezed == underlyingError
          ? _value.underlyingError
          : underlyingError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeErrorImpl with DiagnosticableTreeMixin implements _BlazeError {
  const _$BlazeErrorImpl(
      {this.domain,
      this.reason,
      this.message,
      final Map<String, String>? metadata,
      this.underlyingError})
      : _metadata = metadata;

  factory _$BlazeErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeErrorImplFromJson(json);

  @override
  final String? domain;
  @override
  final String? reason;
  @override
  final String? message;
  final Map<String, String>? _metadata;
  @override
  Map<String, String>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? underlyingError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeError(domain: $domain, reason: $reason, message: $message, metadata: $metadata, underlyingError: $underlyingError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeError'))
      ..add(DiagnosticsProperty('domain', domain))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('underlyingError', underlyingError));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeErrorImpl &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.underlyingError, underlyingError) ||
                other.underlyingError == underlyingError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, domain, reason, message,
      const DeepCollectionEquality().hash(_metadata), underlyingError);

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
      {final String? domain,
      final String? reason,
      final String? message,
      final Map<String, String>? metadata,
      final String? underlyingError}) = _$BlazeErrorImpl;

  factory _BlazeError.fromJson(Map<String, dynamic> json) =
      _$BlazeErrorImpl.fromJson;

  @override
  String? get domain;
  @override
  String? get reason;
  @override
  String? get message;
  @override
  Map<String, String>? get metadata;
  @override
  String? get underlyingError;

  /// Create a copy of BlazeError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeErrorImplCopyWith<_$BlazeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
