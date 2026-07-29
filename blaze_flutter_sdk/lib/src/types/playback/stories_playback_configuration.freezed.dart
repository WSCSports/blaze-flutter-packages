// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_playback_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeStoriesPlaybackConfiguration _$BlazeStoriesPlaybackConfigurationFromJson(
    Map<String, dynamic> json) {
  return _BlazeStoriesPlaybackConfiguration.fromJson(json);
}

/// @nodoc
mixin _$BlazeStoriesPlaybackConfiguration {
  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  int? get bufferingSpinnerDelayMs => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeStoriesPlaybackConfiguration value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeStoriesPlaybackConfiguration value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeStoriesPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeStoriesPlaybackConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeStoriesPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeStoriesPlaybackConfigurationCopyWith<BlazeStoriesPlaybackConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeStoriesPlaybackConfigurationCopyWith<$Res> {
  factory $BlazeStoriesPlaybackConfigurationCopyWith(
          BlazeStoriesPlaybackConfiguration value,
          $Res Function(BlazeStoriesPlaybackConfiguration) then) =
      _$BlazeStoriesPlaybackConfigurationCopyWithImpl<$Res,
          BlazeStoriesPlaybackConfiguration>;
  @useResult
  $Res call({int? bufferingSpinnerDelayMs});
}

/// @nodoc
class _$BlazeStoriesPlaybackConfigurationCopyWithImpl<$Res,
        $Val extends BlazeStoriesPlaybackConfiguration>
    implements $BlazeStoriesPlaybackConfigurationCopyWith<$Res> {
  _$BlazeStoriesPlaybackConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeStoriesPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bufferingSpinnerDelayMs = freezed,
  }) {
    return _then(_value.copyWith(
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeStoriesPlaybackConfigurationImplCopyWith<$Res>
    implements $BlazeStoriesPlaybackConfigurationCopyWith<$Res> {
  factory _$$BlazeStoriesPlaybackConfigurationImplCopyWith(
          _$BlazeStoriesPlaybackConfigurationImpl value,
          $Res Function(_$BlazeStoriesPlaybackConfigurationImpl) then) =
      __$$BlazeStoriesPlaybackConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? bufferingSpinnerDelayMs});
}

/// @nodoc
class __$$BlazeStoriesPlaybackConfigurationImplCopyWithImpl<$Res>
    extends _$BlazeStoriesPlaybackConfigurationCopyWithImpl<$Res,
        _$BlazeStoriesPlaybackConfigurationImpl>
    implements _$$BlazeStoriesPlaybackConfigurationImplCopyWith<$Res> {
  __$$BlazeStoriesPlaybackConfigurationImplCopyWithImpl(
      _$BlazeStoriesPlaybackConfigurationImpl _value,
      $Res Function(_$BlazeStoriesPlaybackConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeStoriesPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bufferingSpinnerDelayMs = freezed,
  }) {
    return _then(_$BlazeStoriesPlaybackConfigurationImpl(
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeStoriesPlaybackConfigurationImpl
    implements _BlazeStoriesPlaybackConfiguration {
  const _$BlazeStoriesPlaybackConfigurationImpl({this.bufferingSpinnerDelayMs});

  factory _$BlazeStoriesPlaybackConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeStoriesPlaybackConfigurationImplFromJson(json);

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  @override
  final int? bufferingSpinnerDelayMs;

  @override
  String toString() {
    return 'BlazeStoriesPlaybackConfiguration(bufferingSpinnerDelayMs: $bufferingSpinnerDelayMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeStoriesPlaybackConfigurationImpl &&
            (identical(
                    other.bufferingSpinnerDelayMs, bufferingSpinnerDelayMs) ||
                other.bufferingSpinnerDelayMs == bufferingSpinnerDelayMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bufferingSpinnerDelayMs);

  /// Create a copy of BlazeStoriesPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeStoriesPlaybackConfigurationImplCopyWith<
          _$BlazeStoriesPlaybackConfigurationImpl>
      get copyWith => __$$BlazeStoriesPlaybackConfigurationImplCopyWithImpl<
          _$BlazeStoriesPlaybackConfigurationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeStoriesPlaybackConfiguration value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeStoriesPlaybackConfiguration value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeStoriesPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeStoriesPlaybackConfigurationImplToJson(
      this,
    );
  }
}

abstract class _BlazeStoriesPlaybackConfiguration
    implements BlazeStoriesPlaybackConfiguration {
  const factory _BlazeStoriesPlaybackConfiguration(
          {final int? bufferingSpinnerDelayMs}) =
      _$BlazeStoriesPlaybackConfigurationImpl;

  factory _BlazeStoriesPlaybackConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$BlazeStoriesPlaybackConfigurationImpl.fromJson;

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  @override
  int? get bufferingSpinnerDelayMs;

  /// Create a copy of BlazeStoriesPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeStoriesPlaybackConfigurationImplCopyWith<
          _$BlazeStoriesPlaybackConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
