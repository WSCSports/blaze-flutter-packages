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

  /// Ads playback options for the stories player.
  ///
  /// When omitted, the native defaults apply (pre-roll disabled).
  BlazeStoriesAdsPlaybackConfiguration? get ads =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {int? bufferingSpinnerDelayMs,
      BlazeStoriesAdsPlaybackConfiguration? ads});

  $BlazeStoriesAdsPlaybackConfigurationCopyWith<$Res>? get ads;
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
    Object? ads = freezed,
  }) {
    return _then(_value.copyWith(
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
      ads: freezed == ads
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as BlazeStoriesAdsPlaybackConfiguration?,
    ) as $Val);
  }

  /// Create a copy of BlazeStoriesPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeStoriesAdsPlaybackConfigurationCopyWith<$Res>? get ads {
    if (_value.ads == null) {
      return null;
    }

    return $BlazeStoriesAdsPlaybackConfigurationCopyWith<$Res>(_value.ads!,
        (value) {
      return _then(_value.copyWith(ads: value) as $Val);
    });
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
  $Res call(
      {int? bufferingSpinnerDelayMs,
      BlazeStoriesAdsPlaybackConfiguration? ads});

  @override
  $BlazeStoriesAdsPlaybackConfigurationCopyWith<$Res>? get ads;
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
    Object? ads = freezed,
  }) {
    return _then(_$BlazeStoriesPlaybackConfigurationImpl(
      bufferingSpinnerDelayMs: freezed == bufferingSpinnerDelayMs
          ? _value.bufferingSpinnerDelayMs
          : bufferingSpinnerDelayMs // ignore: cast_nullable_to_non_nullable
              as int?,
      ads: freezed == ads
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as BlazeStoriesAdsPlaybackConfiguration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeStoriesPlaybackConfigurationImpl
    implements _BlazeStoriesPlaybackConfiguration {
  const _$BlazeStoriesPlaybackConfigurationImpl(
      {this.bufferingSpinnerDelayMs, this.ads});

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

  /// Ads playback options for the stories player.
  ///
  /// When omitted, the native defaults apply (pre-roll disabled).
  @override
  final BlazeStoriesAdsPlaybackConfiguration? ads;

  @override
  String toString() {
    return 'BlazeStoriesPlaybackConfiguration(bufferingSpinnerDelayMs: $bufferingSpinnerDelayMs, ads: $ads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeStoriesPlaybackConfigurationImpl &&
            (identical(
                    other.bufferingSpinnerDelayMs, bufferingSpinnerDelayMs) ||
                other.bufferingSpinnerDelayMs == bufferingSpinnerDelayMs) &&
            (identical(other.ads, ads) || other.ads == ads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bufferingSpinnerDelayMs, ads);

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
          {final int? bufferingSpinnerDelayMs,
          final BlazeStoriesAdsPlaybackConfiguration? ads}) =
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

  /// Ads playback options for the stories player.
  ///
  /// When omitted, the native defaults apply (pre-roll disabled).
  @override
  BlazeStoriesAdsPlaybackConfiguration? get ads;

  /// Create a copy of BlazeStoriesPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeStoriesPlaybackConfigurationImplCopyWith<
          _$BlazeStoriesPlaybackConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeStoriesAdsPlaybackConfiguration
    _$BlazeStoriesAdsPlaybackConfigurationFromJson(Map<String, dynamic> json) {
  return _BlazeStoriesAdsPlaybackConfiguration.fromJson(json);
}

/// @nodoc
mixin _$BlazeStoriesAdsPlaybackConfiguration {
  /// Enables showing a pre-roll ad on the first page the user interacts with
  /// (the first unread page).
  ///
  /// When `false` — the native default, kept for backward compatibility — an
  /// ad configured on that first unread page is skipped. Omit to keep the
  /// native default.
  bool? get enablePreroll => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeStoriesAdsPlaybackConfiguration value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeStoriesAdsPlaybackConfiguration value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeStoriesAdsPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeStoriesAdsPlaybackConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeStoriesAdsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeStoriesAdsPlaybackConfigurationCopyWith<
          BlazeStoriesAdsPlaybackConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeStoriesAdsPlaybackConfigurationCopyWith<$Res> {
  factory $BlazeStoriesAdsPlaybackConfigurationCopyWith(
          BlazeStoriesAdsPlaybackConfiguration value,
          $Res Function(BlazeStoriesAdsPlaybackConfiguration) then) =
      _$BlazeStoriesAdsPlaybackConfigurationCopyWithImpl<$Res,
          BlazeStoriesAdsPlaybackConfiguration>;
  @useResult
  $Res call({bool? enablePreroll});
}

/// @nodoc
class _$BlazeStoriesAdsPlaybackConfigurationCopyWithImpl<$Res,
        $Val extends BlazeStoriesAdsPlaybackConfiguration>
    implements $BlazeStoriesAdsPlaybackConfigurationCopyWith<$Res> {
  _$BlazeStoriesAdsPlaybackConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeStoriesAdsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enablePreroll = freezed,
  }) {
    return _then(_value.copyWith(
      enablePreroll: freezed == enablePreroll
          ? _value.enablePreroll
          : enablePreroll // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeStoriesAdsPlaybackConfigurationImplCopyWith<$Res>
    implements $BlazeStoriesAdsPlaybackConfigurationCopyWith<$Res> {
  factory _$$BlazeStoriesAdsPlaybackConfigurationImplCopyWith(
          _$BlazeStoriesAdsPlaybackConfigurationImpl value,
          $Res Function(_$BlazeStoriesAdsPlaybackConfigurationImpl) then) =
      __$$BlazeStoriesAdsPlaybackConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? enablePreroll});
}

/// @nodoc
class __$$BlazeStoriesAdsPlaybackConfigurationImplCopyWithImpl<$Res>
    extends _$BlazeStoriesAdsPlaybackConfigurationCopyWithImpl<$Res,
        _$BlazeStoriesAdsPlaybackConfigurationImpl>
    implements _$$BlazeStoriesAdsPlaybackConfigurationImplCopyWith<$Res> {
  __$$BlazeStoriesAdsPlaybackConfigurationImplCopyWithImpl(
      _$BlazeStoriesAdsPlaybackConfigurationImpl _value,
      $Res Function(_$BlazeStoriesAdsPlaybackConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeStoriesAdsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enablePreroll = freezed,
  }) {
    return _then(_$BlazeStoriesAdsPlaybackConfigurationImpl(
      enablePreroll: freezed == enablePreroll
          ? _value.enablePreroll
          : enablePreroll // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeStoriesAdsPlaybackConfigurationImpl
    implements _BlazeStoriesAdsPlaybackConfiguration {
  const _$BlazeStoriesAdsPlaybackConfigurationImpl({this.enablePreroll});

  factory _$BlazeStoriesAdsPlaybackConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeStoriesAdsPlaybackConfigurationImplFromJson(json);

  /// Enables showing a pre-roll ad on the first page the user interacts with
  /// (the first unread page).
  ///
  /// When `false` — the native default, kept for backward compatibility — an
  /// ad configured on that first unread page is skipped. Omit to keep the
  /// native default.
  @override
  final bool? enablePreroll;

  @override
  String toString() {
    return 'BlazeStoriesAdsPlaybackConfiguration(enablePreroll: $enablePreroll)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeStoriesAdsPlaybackConfigurationImpl &&
            (identical(other.enablePreroll, enablePreroll) ||
                other.enablePreroll == enablePreroll));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enablePreroll);

  /// Create a copy of BlazeStoriesAdsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeStoriesAdsPlaybackConfigurationImplCopyWith<
          _$BlazeStoriesAdsPlaybackConfigurationImpl>
      get copyWith => __$$BlazeStoriesAdsPlaybackConfigurationImplCopyWithImpl<
          _$BlazeStoriesAdsPlaybackConfigurationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeStoriesAdsPlaybackConfiguration value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeStoriesAdsPlaybackConfiguration value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeStoriesAdsPlaybackConfiguration value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeStoriesAdsPlaybackConfigurationImplToJson(
      this,
    );
  }
}

abstract class _BlazeStoriesAdsPlaybackConfiguration
    implements BlazeStoriesAdsPlaybackConfiguration {
  const factory _BlazeStoriesAdsPlaybackConfiguration(
      {final bool? enablePreroll}) = _$BlazeStoriesAdsPlaybackConfigurationImpl;

  factory _BlazeStoriesAdsPlaybackConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$BlazeStoriesAdsPlaybackConfigurationImpl.fromJson;

  /// Enables showing a pre-roll ad on the first page the user interacts with
  /// (the first unread page).
  ///
  /// When `false` — the native default, kept for backward compatibility — an
  /// ad configured on that first unread page is skipped. Omit to keep the
  /// native default.
  @override
  bool? get enablePreroll;

  /// Create a copy of BlazeStoriesAdsPlaybackConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeStoriesAdsPlaybackConfigurationImplCopyWith<
          _$BlazeStoriesAdsPlaybackConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
