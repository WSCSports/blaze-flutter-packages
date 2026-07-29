// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos_playback_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazePipConfiguration _$BlazePipConfigurationFromJson(
    Map<String, dynamic> json) {
  return _BlazePipConfiguration.fromJson(json);
}

/// @nodoc
mixin _$BlazePipConfiguration {
  /// Whether the player should automatically enter Picture in Picture when the
  /// app moves to the background.
  bool? get enterPipOnAppBackground => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePipConfiguration value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePipConfiguration value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePipConfiguration value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazePipConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazePipConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazePipConfigurationCopyWith<BlazePipConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazePipConfigurationCopyWith<$Res> {
  factory $BlazePipConfigurationCopyWith(BlazePipConfiguration value,
          $Res Function(BlazePipConfiguration) then) =
      _$BlazePipConfigurationCopyWithImpl<$Res, BlazePipConfiguration>;
  @useResult
  $Res call({bool? enterPipOnAppBackground});
}

/// @nodoc
class _$BlazePipConfigurationCopyWithImpl<$Res,
        $Val extends BlazePipConfiguration>
    implements $BlazePipConfigurationCopyWith<$Res> {
  _$BlazePipConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazePipConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enterPipOnAppBackground = freezed,
  }) {
    return _then(_value.copyWith(
      enterPipOnAppBackground: freezed == enterPipOnAppBackground
          ? _value.enterPipOnAppBackground
          : enterPipOnAppBackground // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazePipConfigurationImplCopyWith<$Res>
    implements $BlazePipConfigurationCopyWith<$Res> {
  factory _$$BlazePipConfigurationImplCopyWith(
          _$BlazePipConfigurationImpl value,
          $Res Function(_$BlazePipConfigurationImpl) then) =
      __$$BlazePipConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? enterPipOnAppBackground});
}

/// @nodoc
class __$$BlazePipConfigurationImplCopyWithImpl<$Res>
    extends _$BlazePipConfigurationCopyWithImpl<$Res,
        _$BlazePipConfigurationImpl>
    implements _$$BlazePipConfigurationImplCopyWith<$Res> {
  __$$BlazePipConfigurationImplCopyWithImpl(_$BlazePipConfigurationImpl _value,
      $Res Function(_$BlazePipConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePipConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enterPipOnAppBackground = freezed,
  }) {
    return _then(_$BlazePipConfigurationImpl(
      enterPipOnAppBackground: freezed == enterPipOnAppBackground
          ? _value.enterPipOnAppBackground
          : enterPipOnAppBackground // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePipConfigurationImpl implements _BlazePipConfiguration {
  const _$BlazePipConfigurationImpl({this.enterPipOnAppBackground});

  factory _$BlazePipConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazePipConfigurationImplFromJson(json);

  /// Whether the player should automatically enter Picture in Picture when the
  /// app moves to the background.
  @override
  final bool? enterPipOnAppBackground;

  @override
  String toString() {
    return 'BlazePipConfiguration(enterPipOnAppBackground: $enterPipOnAppBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePipConfigurationImpl &&
            (identical(
                    other.enterPipOnAppBackground, enterPipOnAppBackground) ||
                other.enterPipOnAppBackground == enterPipOnAppBackground));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enterPipOnAppBackground);

  /// Create a copy of BlazePipConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePipConfigurationImplCopyWith<_$BlazePipConfigurationImpl>
      get copyWith => __$$BlazePipConfigurationImplCopyWithImpl<
          _$BlazePipConfigurationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePipConfiguration value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePipConfiguration value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePipConfiguration value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePipConfigurationImplToJson(
      this,
    );
  }
}

abstract class _BlazePipConfiguration implements BlazePipConfiguration {
  const factory _BlazePipConfiguration({final bool? enterPipOnAppBackground}) =
      _$BlazePipConfigurationImpl;

  factory _BlazePipConfiguration.fromJson(Map<String, dynamic> json) =
      _$BlazePipConfigurationImpl.fromJson;

  /// Whether the player should automatically enter Picture in Picture when the
  /// app moves to the background.
  @override
  bool? get enterPipOnAppBackground;

  /// Create a copy of BlazePipConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePipConfigurationImplCopyWith<_$BlazePipConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeVideosPlaybackConfiguration _$BlazeVideosPlaybackConfigurationFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosPlaybackConfiguration.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosPlaybackConfiguration {
  /// Whether to enable multi-aspect ratio support.
  ///
  /// - `true` — always use the biggest available aspect ratio for each
  ///   orientation to maximize screen utilization.
  /// - `false` — use the first available rendition regardless of orientation
  ///   changes.
  bool get multiAspectRatio => throw _privateConstructorUsedError;

  /// Whether to force rotation to landscape when entering fullscreen from
  /// portrait.
  bool get shouldOpenInLandscape => throw _privateConstructorUsedError;

  /// Optional Picture in Picture configuration.
  BlazePipConfiguration? get pipConfiguration =>
      throw _privateConstructorUsedError;

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  int? get bufferingSpinnerDelayMs => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlaybackConfiguration value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlaybackConfiguration value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosPlaybackConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosPlaybackConfigurationCopyWith<BlazeVideosPlaybackConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosPlaybackConfigurationCopyWith<$Res> {
  factory $BlazeVideosPlaybackConfigurationCopyWith(
          BlazeVideosPlaybackConfiguration value,
          $Res Function(BlazeVideosPlaybackConfiguration) then) =
      _$BlazeVideosPlaybackConfigurationCopyWithImpl<$Res,
          BlazeVideosPlaybackConfiguration>;
  @useResult
  $Res call(
      {bool multiAspectRatio,
      bool shouldOpenInLandscape,
      BlazePipConfiguration? pipConfiguration,
      int? bufferingSpinnerDelayMs});

  $BlazePipConfigurationCopyWith<$Res>? get pipConfiguration;
}

/// @nodoc
class _$BlazeVideosPlaybackConfigurationCopyWithImpl<$Res,
        $Val extends BlazeVideosPlaybackConfiguration>
    implements $BlazeVideosPlaybackConfigurationCopyWith<$Res> {
  _$BlazeVideosPlaybackConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiAspectRatio = null,
    Object? shouldOpenInLandscape = null,
    Object? pipConfiguration = freezed,
    Object? bufferingSpinnerDelayMs = freezed,
  }) {
    return _then(_value.copyWith(
      multiAspectRatio: null == multiAspectRatio
          ? _value.multiAspectRatio
          : multiAspectRatio // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldOpenInLandscape: null == shouldOpenInLandscape
          ? _value.shouldOpenInLandscape
          : shouldOpenInLandscape // ignore: cast_nullable_to_non_nullable
              as bool,
      pipConfiguration: freezed == pipConfiguration
          ? _value.pipConfiguration
          : pipConfiguration // ignore: cast_nullable_to_non_nullable
              as BlazePipConfiguration?,
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of BlazeVideosPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePipConfigurationCopyWith<$Res>? get pipConfiguration {
    if (_value.pipConfiguration == null) {
      return null;
    }

    return $BlazePipConfigurationCopyWith<$Res>(_value.pipConfiguration!,
        (value) {
      return _then(_value.copyWith(pipConfiguration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeVideosPlaybackConfigurationImplCopyWith<$Res>
    implements $BlazeVideosPlaybackConfigurationCopyWith<$Res> {
  factory _$$BlazeVideosPlaybackConfigurationImplCopyWith(
          _$BlazeVideosPlaybackConfigurationImpl value,
          $Res Function(_$BlazeVideosPlaybackConfigurationImpl) then) =
      __$$BlazeVideosPlaybackConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool multiAspectRatio,
      bool shouldOpenInLandscape,
      BlazePipConfiguration? pipConfiguration,
      int? bufferingSpinnerDelayMs});

  @override
  $BlazePipConfigurationCopyWith<$Res>? get pipConfiguration;
}

/// @nodoc
class __$$BlazeVideosPlaybackConfigurationImplCopyWithImpl<$Res>
    extends _$BlazeVideosPlaybackConfigurationCopyWithImpl<$Res,
        _$BlazeVideosPlaybackConfigurationImpl>
    implements _$$BlazeVideosPlaybackConfigurationImplCopyWith<$Res> {
  __$$BlazeVideosPlaybackConfigurationImplCopyWithImpl(
      _$BlazeVideosPlaybackConfigurationImpl _value,
      $Res Function(_$BlazeVideosPlaybackConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiAspectRatio = null,
    Object? shouldOpenInLandscape = null,
    Object? pipConfiguration = freezed,
    Object? bufferingSpinnerDelayMs = freezed,
  }) {
    return _then(_$BlazeVideosPlaybackConfigurationImpl(
      multiAspectRatio: null == multiAspectRatio
          ? _value.multiAspectRatio
          : multiAspectRatio // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldOpenInLandscape: null == shouldOpenInLandscape
          ? _value.shouldOpenInLandscape
          : shouldOpenInLandscape // ignore: cast_nullable_to_non_nullable
              as bool,
      pipConfiguration: freezed == pipConfiguration
          ? _value.pipConfiguration
          : pipConfiguration // ignore: cast_nullable_to_non_nullable
              as BlazePipConfiguration?,
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosPlaybackConfigurationImpl
    implements _BlazeVideosPlaybackConfiguration {
  const _$BlazeVideosPlaybackConfigurationImpl(
      {required this.multiAspectRatio,
      required this.shouldOpenInLandscape,
      this.pipConfiguration,
      this.bufferingSpinnerDelayMs});

  factory _$BlazeVideosPlaybackConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeVideosPlaybackConfigurationImplFromJson(json);

  /// Whether to enable multi-aspect ratio support.
  ///
  /// - `true` — always use the biggest available aspect ratio for each
  ///   orientation to maximize screen utilization.
  /// - `false` — use the first available rendition regardless of orientation
  ///   changes.
  @override
  final bool multiAspectRatio;

  /// Whether to force rotation to landscape when entering fullscreen from
  /// portrait.
  @override
  final bool shouldOpenInLandscape;

  /// Optional Picture in Picture configuration.
  @override
  final BlazePipConfiguration? pipConfiguration;

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  @override
  final int? bufferingSpinnerDelayMs;

  @override
  String toString() {
    return 'BlazeVideosPlaybackConfiguration(multiAspectRatio: $multiAspectRatio, shouldOpenInLandscape: $shouldOpenInLandscape, pipConfiguration: $pipConfiguration, bufferingSpinnerDelayMs: $bufferingSpinnerDelayMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosPlaybackConfigurationImpl &&
            (identical(other.multiAspectRatio, multiAspectRatio) ||
                other.multiAspectRatio == multiAspectRatio) &&
            (identical(other.shouldOpenInLandscape, shouldOpenInLandscape) ||
                other.shouldOpenInLandscape == shouldOpenInLandscape) &&
            (identical(other.pipConfiguration, pipConfiguration) ||
                other.pipConfiguration == pipConfiguration) &&
            (identical(
                    other.bufferingSpinnerDelayMs, bufferingSpinnerDelayMs) ||
                other.bufferingSpinnerDelayMs == bufferingSpinnerDelayMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, multiAspectRatio,
      shouldOpenInLandscape, pipConfiguration, bufferingSpinnerDelayMs);

  /// Create a copy of BlazeVideosPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosPlaybackConfigurationImplCopyWith<
          _$BlazeVideosPlaybackConfigurationImpl>
      get copyWith => __$$BlazeVideosPlaybackConfigurationImplCopyWithImpl<
          _$BlazeVideosPlaybackConfigurationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlaybackConfiguration value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlaybackConfiguration value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosPlaybackConfigurationImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosPlaybackConfiguration
    implements BlazeVideosPlaybackConfiguration {
  const factory _BlazeVideosPlaybackConfiguration(
          {required final bool multiAspectRatio,
          required final bool shouldOpenInLandscape,
          final BlazePipConfiguration? pipConfiguration,
          final int? bufferingSpinnerDelayMs}) =
      _$BlazeVideosPlaybackConfigurationImpl;

  factory _BlazeVideosPlaybackConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$BlazeVideosPlaybackConfigurationImpl.fromJson;

  /// Whether to enable multi-aspect ratio support.
  ///
  /// - `true` — always use the biggest available aspect ratio for each
  ///   orientation to maximize screen utilization.
  /// - `false` — use the first available rendition regardless of orientation
  ///   changes.
  @override
  bool get multiAspectRatio;

  /// Whether to force rotation to landscape when entering fullscreen from
  /// portrait.
  @override
  bool get shouldOpenInLandscape;

  /// Optional Picture in Picture configuration.
  @override
  BlazePipConfiguration? get pipConfiguration;

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  @override
  int? get bufferingSpinnerDelayMs;

  /// Create a copy of BlazeVideosPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosPlaybackConfigurationImplCopyWith<
          _$BlazeVideosPlaybackConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
