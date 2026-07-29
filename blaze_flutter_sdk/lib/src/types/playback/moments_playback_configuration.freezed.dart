// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moments_playback_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeMomentsLoopBehavior _$BlazeMomentsLoopBehaviorFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'infiniteLoop':
      return BlazeMomentsLoopBehaviorInfiniteLoop.fromJson(json);
    case 'loopAndAdvance':
      return BlazeMomentsLoopBehaviorLoopAndAdvance.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'BlazeMomentsLoopBehavior',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BlazeMomentsLoopBehavior {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() infiniteLoop,
    required TResult Function(int numberOfPlays) loopAndAdvance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? infiniteLoop,
    TResult? Function(int numberOfPlays)? loopAndAdvance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? infiniteLoop,
    TResult Function(int numberOfPlays)? loopAndAdvance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeMomentsLoopBehaviorInfiniteLoop value)
        infiniteLoop,
    required TResult Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)
        loopAndAdvance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeMomentsLoopBehaviorInfiniteLoop value)? infiniteLoop,
    TResult? Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)?
        loopAndAdvance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeMomentsLoopBehaviorInfiniteLoop value)? infiniteLoop,
    TResult Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)?
        loopAndAdvance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeMomentsLoopBehavior to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeMomentsLoopBehaviorCopyWith<$Res> {
  factory $BlazeMomentsLoopBehaviorCopyWith(BlazeMomentsLoopBehavior value,
          $Res Function(BlazeMomentsLoopBehavior) then) =
      _$BlazeMomentsLoopBehaviorCopyWithImpl<$Res, BlazeMomentsLoopBehavior>;
}

/// @nodoc
class _$BlazeMomentsLoopBehaviorCopyWithImpl<$Res,
        $Val extends BlazeMomentsLoopBehavior>
    implements $BlazeMomentsLoopBehaviorCopyWith<$Res> {
  _$BlazeMomentsLoopBehaviorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeMomentsLoopBehavior
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlazeMomentsLoopBehaviorInfiniteLoopImplCopyWith<$Res> {
  factory _$$BlazeMomentsLoopBehaviorInfiniteLoopImplCopyWith(
          _$BlazeMomentsLoopBehaviorInfiniteLoopImpl value,
          $Res Function(_$BlazeMomentsLoopBehaviorInfiniteLoopImpl) then) =
      __$$BlazeMomentsLoopBehaviorInfiniteLoopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeMomentsLoopBehaviorInfiniteLoopImplCopyWithImpl<$Res>
    extends _$BlazeMomentsLoopBehaviorCopyWithImpl<$Res,
        _$BlazeMomentsLoopBehaviorInfiniteLoopImpl>
    implements _$$BlazeMomentsLoopBehaviorInfiniteLoopImplCopyWith<$Res> {
  __$$BlazeMomentsLoopBehaviorInfiniteLoopImplCopyWithImpl(
      _$BlazeMomentsLoopBehaviorInfiniteLoopImpl _value,
      $Res Function(_$BlazeMomentsLoopBehaviorInfiniteLoopImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeMomentsLoopBehavior
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeMomentsLoopBehaviorInfiniteLoopImpl
    implements BlazeMomentsLoopBehaviorInfiniteLoop {
  const _$BlazeMomentsLoopBehaviorInfiniteLoopImpl({final String? $type})
      : $type = $type ?? 'infiniteLoop';

  factory _$BlazeMomentsLoopBehaviorInfiniteLoopImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeMomentsLoopBehaviorInfiniteLoopImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeMomentsLoopBehavior.infiniteLoop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeMomentsLoopBehaviorInfiniteLoopImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() infiniteLoop,
    required TResult Function(int numberOfPlays) loopAndAdvance,
  }) {
    return infiniteLoop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? infiniteLoop,
    TResult? Function(int numberOfPlays)? loopAndAdvance,
  }) {
    return infiniteLoop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? infiniteLoop,
    TResult Function(int numberOfPlays)? loopAndAdvance,
    required TResult orElse(),
  }) {
    if (infiniteLoop != null) {
      return infiniteLoop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeMomentsLoopBehaviorInfiniteLoop value)
        infiniteLoop,
    required TResult Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)
        loopAndAdvance,
  }) {
    return infiniteLoop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeMomentsLoopBehaviorInfiniteLoop value)? infiniteLoop,
    TResult? Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)?
        loopAndAdvance,
  }) {
    return infiniteLoop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeMomentsLoopBehaviorInfiniteLoop value)? infiniteLoop,
    TResult Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)?
        loopAndAdvance,
    required TResult orElse(),
  }) {
    if (infiniteLoop != null) {
      return infiniteLoop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeMomentsLoopBehaviorInfiniteLoopImplToJson(
      this,
    );
  }
}

abstract class BlazeMomentsLoopBehaviorInfiniteLoop
    implements BlazeMomentsLoopBehavior {
  const factory BlazeMomentsLoopBehaviorInfiniteLoop() =
      _$BlazeMomentsLoopBehaviorInfiniteLoopImpl;

  factory BlazeMomentsLoopBehaviorInfiniteLoop.fromJson(
          Map<String, dynamic> json) =
      _$BlazeMomentsLoopBehaviorInfiniteLoopImpl.fromJson;
}

/// @nodoc
abstract class _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWith<$Res> {
  factory _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWith(
          _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl value,
          $Res Function(_$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl) then) =
      __$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int numberOfPlays});
}

/// @nodoc
class __$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWithImpl<$Res>
    extends _$BlazeMomentsLoopBehaviorCopyWithImpl<$Res,
        _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl>
    implements _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWith<$Res> {
  __$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWithImpl(
      _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl _value,
      $Res Function(_$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeMomentsLoopBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfPlays = null,
  }) {
    return _then(_$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl(
      numberOfPlays: null == numberOfPlays
          ? _value.numberOfPlays
          : numberOfPlays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl
    implements BlazeMomentsLoopBehaviorLoopAndAdvance {
  const _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl(
      {required this.numberOfPlays, final String? $type})
      : $type = $type ?? 'loopAndAdvance';

  factory _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplFromJson(json);

  @override
  final int numberOfPlays;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeMomentsLoopBehavior.loopAndAdvance(numberOfPlays: $numberOfPlays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl &&
            (identical(other.numberOfPlays, numberOfPlays) ||
                other.numberOfPlays == numberOfPlays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, numberOfPlays);

  /// Create a copy of BlazeMomentsLoopBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWith<
          _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl>
      get copyWith =>
          __$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWithImpl<
              _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() infiniteLoop,
    required TResult Function(int numberOfPlays) loopAndAdvance,
  }) {
    return loopAndAdvance(numberOfPlays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? infiniteLoop,
    TResult? Function(int numberOfPlays)? loopAndAdvance,
  }) {
    return loopAndAdvance?.call(numberOfPlays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? infiniteLoop,
    TResult Function(int numberOfPlays)? loopAndAdvance,
    required TResult orElse(),
  }) {
    if (loopAndAdvance != null) {
      return loopAndAdvance(numberOfPlays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeMomentsLoopBehaviorInfiniteLoop value)
        infiniteLoop,
    required TResult Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)
        loopAndAdvance,
  }) {
    return loopAndAdvance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeMomentsLoopBehaviorInfiniteLoop value)? infiniteLoop,
    TResult? Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)?
        loopAndAdvance,
  }) {
    return loopAndAdvance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeMomentsLoopBehaviorInfiniteLoop value)? infiniteLoop,
    TResult Function(BlazeMomentsLoopBehaviorLoopAndAdvance value)?
        loopAndAdvance,
    required TResult orElse(),
  }) {
    if (loopAndAdvance != null) {
      return loopAndAdvance(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplToJson(
      this,
    );
  }
}

abstract class BlazeMomentsLoopBehaviorLoopAndAdvance
    implements BlazeMomentsLoopBehavior {
  const factory BlazeMomentsLoopBehaviorLoopAndAdvance(
          {required final int numberOfPlays}) =
      _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl;

  factory BlazeMomentsLoopBehaviorLoopAndAdvance.fromJson(
          Map<String, dynamic> json) =
      _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl.fromJson;

  int get numberOfPlays;

  /// Create a copy of BlazeMomentsLoopBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeMomentsLoopBehaviorLoopAndAdvanceImplCopyWith<
          _$BlazeMomentsLoopBehaviorLoopAndAdvanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeMomentsPlaybackConfiguration _$BlazeMomentsPlaybackConfigurationFromJson(
    Map<String, dynamic> json) {
  return _BlazeMomentsPlaybackConfiguration.fromJson(json);
}

/// @nodoc
mixin _$BlazeMomentsPlaybackConfiguration {
  /// The loop behavior applied to the moments player.
  BlazeMomentsLoopBehavior? get loopBehavior =>
      throw _privateConstructorUsedError;

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  int? get bufferingSpinnerDelayMs => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeMomentsPlaybackConfiguration value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeMomentsPlaybackConfiguration value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeMomentsPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeMomentsPlaybackConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeMomentsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeMomentsPlaybackConfigurationCopyWith<BlazeMomentsPlaybackConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeMomentsPlaybackConfigurationCopyWith<$Res> {
  factory $BlazeMomentsPlaybackConfigurationCopyWith(
          BlazeMomentsPlaybackConfiguration value,
          $Res Function(BlazeMomentsPlaybackConfiguration) then) =
      _$BlazeMomentsPlaybackConfigurationCopyWithImpl<$Res,
          BlazeMomentsPlaybackConfiguration>;
  @useResult
  $Res call(
      {BlazeMomentsLoopBehavior? loopBehavior, int? bufferingSpinnerDelayMs});

  $BlazeMomentsLoopBehaviorCopyWith<$Res>? get loopBehavior;
}

/// @nodoc
class _$BlazeMomentsPlaybackConfigurationCopyWithImpl<$Res,
        $Val extends BlazeMomentsPlaybackConfiguration>
    implements $BlazeMomentsPlaybackConfigurationCopyWith<$Res> {
  _$BlazeMomentsPlaybackConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeMomentsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loopBehavior = freezed,
    Object? bufferingSpinnerDelayMs = freezed,
  }) {
    return _then(_value.copyWith(
      loopBehavior: freezed == loopBehavior
          ? _value.loopBehavior
          : loopBehavior // ignore: cast_nullable_to_non_nullable
              as BlazeMomentsLoopBehavior?,
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of BlazeMomentsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeMomentsLoopBehaviorCopyWith<$Res>? get loopBehavior {
    if (_value.loopBehavior == null) {
      return null;
    }

    return $BlazeMomentsLoopBehaviorCopyWith<$Res>(_value.loopBehavior!,
        (value) {
      return _then(_value.copyWith(loopBehavior: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeMomentsPlaybackConfigurationImplCopyWith<$Res>
    implements $BlazeMomentsPlaybackConfigurationCopyWith<$Res> {
  factory _$$BlazeMomentsPlaybackConfigurationImplCopyWith(
          _$BlazeMomentsPlaybackConfigurationImpl value,
          $Res Function(_$BlazeMomentsPlaybackConfigurationImpl) then) =
      __$$BlazeMomentsPlaybackConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeMomentsLoopBehavior? loopBehavior, int? bufferingSpinnerDelayMs});

  @override
  $BlazeMomentsLoopBehaviorCopyWith<$Res>? get loopBehavior;
}

/// @nodoc
class __$$BlazeMomentsPlaybackConfigurationImplCopyWithImpl<$Res>
    extends _$BlazeMomentsPlaybackConfigurationCopyWithImpl<$Res,
        _$BlazeMomentsPlaybackConfigurationImpl>
    implements _$$BlazeMomentsPlaybackConfigurationImplCopyWith<$Res> {
  __$$BlazeMomentsPlaybackConfigurationImplCopyWithImpl(
      _$BlazeMomentsPlaybackConfigurationImpl _value,
      $Res Function(_$BlazeMomentsPlaybackConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeMomentsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loopBehavior = freezed,
    Object? bufferingSpinnerDelayMs = freezed,
  }) {
    return _then(_$BlazeMomentsPlaybackConfigurationImpl(
      loopBehavior: freezed == loopBehavior
          ? _value.loopBehavior
          : loopBehavior // ignore: cast_nullable_to_non_nullable
              as BlazeMomentsLoopBehavior?,
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeMomentsPlaybackConfigurationImpl
    implements _BlazeMomentsPlaybackConfiguration {
  const _$BlazeMomentsPlaybackConfigurationImpl(
      {this.loopBehavior, this.bufferingSpinnerDelayMs});

  factory _$BlazeMomentsPlaybackConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeMomentsPlaybackConfigurationImplFromJson(json);

  /// The loop behavior applied to the moments player.
  @override
  final BlazeMomentsLoopBehavior? loopBehavior;

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  @override
  final int? bufferingSpinnerDelayMs;

  @override
  String toString() {
    return 'BlazeMomentsPlaybackConfiguration(loopBehavior: $loopBehavior, bufferingSpinnerDelayMs: $bufferingSpinnerDelayMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeMomentsPlaybackConfigurationImpl &&
            (identical(other.loopBehavior, loopBehavior) ||
                other.loopBehavior == loopBehavior) &&
            (identical(
                    other.bufferingSpinnerDelayMs, bufferingSpinnerDelayMs) ||
                other.bufferingSpinnerDelayMs == bufferingSpinnerDelayMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, loopBehavior, bufferingSpinnerDelayMs);

  /// Create a copy of BlazeMomentsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeMomentsPlaybackConfigurationImplCopyWith<
          _$BlazeMomentsPlaybackConfigurationImpl>
      get copyWith => __$$BlazeMomentsPlaybackConfigurationImplCopyWithImpl<
          _$BlazeMomentsPlaybackConfigurationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeMomentsPlaybackConfiguration value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeMomentsPlaybackConfiguration value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeMomentsPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeMomentsPlaybackConfigurationImplToJson(
      this,
    );
  }
}

abstract class _BlazeMomentsPlaybackConfiguration
    implements BlazeMomentsPlaybackConfiguration {
  const factory _BlazeMomentsPlaybackConfiguration(
          {final BlazeMomentsLoopBehavior? loopBehavior,
          final int? bufferingSpinnerDelayMs}) =
      _$BlazeMomentsPlaybackConfigurationImpl;

  factory _BlazeMomentsPlaybackConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$BlazeMomentsPlaybackConfigurationImpl.fromJson;

  /// The loop behavior applied to the moments player.
  @override
  BlazeMomentsLoopBehavior? get loopBehavior;

  /// Delay in milliseconds before the buffering spinner is shown while
  /// content is loading.
  ///
  /// Negative values are clamped to `0` natively. When omitted, the native
  /// default of `1000`ms applies.
  @override
  int? get bufferingSpinnerDelayMs;

  /// Create a copy of BlazeMomentsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeMomentsPlaybackConfigurationImplCopyWith<
          _$BlazeMomentsPlaybackConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
