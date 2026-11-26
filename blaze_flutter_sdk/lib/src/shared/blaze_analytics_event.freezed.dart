// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_analytics_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticsCtaConfig _$AnalyticsCtaConfigFromJson(Map<String, dynamic> json) {
  return _AnalyticsCtaConfig.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsCtaConfig {
  String? get text => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsCtaConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsCtaConfig value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsCtaConfig value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AnalyticsCtaConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsCtaConfigCopyWith<AnalyticsCtaConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsCtaConfigCopyWith<$Res> {
  factory $AnalyticsCtaConfigCopyWith(
          AnalyticsCtaConfig value, $Res Function(AnalyticsCtaConfig) then) =
      _$AnalyticsCtaConfigCopyWithImpl<$Res, AnalyticsCtaConfig>;
  @useResult
  $Res call({String? text, String? color, String? url});
}

/// @nodoc
class _$AnalyticsCtaConfigCopyWithImpl<$Res, $Val extends AnalyticsCtaConfig>
    implements $AnalyticsCtaConfigCopyWith<$Res> {
  _$AnalyticsCtaConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? color = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsCtaConfigImplCopyWith<$Res>
    implements $AnalyticsCtaConfigCopyWith<$Res> {
  factory _$$AnalyticsCtaConfigImplCopyWith(_$AnalyticsCtaConfigImpl value,
          $Res Function(_$AnalyticsCtaConfigImpl) then) =
      __$$AnalyticsCtaConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? color, String? url});
}

/// @nodoc
class __$$AnalyticsCtaConfigImplCopyWithImpl<$Res>
    extends _$AnalyticsCtaConfigCopyWithImpl<$Res, _$AnalyticsCtaConfigImpl>
    implements _$$AnalyticsCtaConfigImplCopyWith<$Res> {
  __$$AnalyticsCtaConfigImplCopyWithImpl(_$AnalyticsCtaConfigImpl _value,
      $Res Function(_$AnalyticsCtaConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? color = freezed,
    Object? url = freezed,
  }) {
    return _then(_$AnalyticsCtaConfigImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsCtaConfigImpl
    with DiagnosticableTreeMixin
    implements _AnalyticsCtaConfig {
  const _$AnalyticsCtaConfigImpl({this.text, this.color, this.url});

  factory _$AnalyticsCtaConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsCtaConfigImplFromJson(json);

  @override
  final String? text;
  @override
  final String? color;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsCtaConfig(text: $text, color: $color, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsCtaConfig'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsCtaConfigImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, color, url);

  /// Create a copy of AnalyticsCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsCtaConfigImplCopyWith<_$AnalyticsCtaConfigImpl> get copyWith =>
      __$$AnalyticsCtaConfigImplCopyWithImpl<_$AnalyticsCtaConfigImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsCtaConfig value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsCtaConfig value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsCtaConfig value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsCtaConfigImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsCtaConfig implements AnalyticsCtaConfig {
  const factory _AnalyticsCtaConfig(
      {final String? text,
      final String? color,
      final String? url}) = _$AnalyticsCtaConfigImpl;

  factory _AnalyticsCtaConfig.fromJson(Map<String, dynamic> json) =
      _$AnalyticsCtaConfigImpl.fromJson;

  @override
  String? get text;
  @override
  String? get color;
  @override
  String? get url;

  /// Create a copy of AnalyticsCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsCtaConfigImplCopyWith<_$AnalyticsCtaConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsCustomActionButtonConfig _$AnalyticsCustomActionButtonConfigFromJson(
    Map<String, dynamic> json) {
  return _AnalyticsCustomActionButtonConfig.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsCustomActionButtonConfig {
  String? get button_id => throw _privateConstructorUsedError;
  String? get button_text => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsCustomActionButtonConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsCustomActionButtonConfig value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsCustomActionButtonConfig value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AnalyticsCustomActionButtonConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsCustomActionButtonConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsCustomActionButtonConfigCopyWith<AnalyticsCustomActionButtonConfig>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsCustomActionButtonConfigCopyWith<$Res> {
  factory $AnalyticsCustomActionButtonConfigCopyWith(
          AnalyticsCustomActionButtonConfig value,
          $Res Function(AnalyticsCustomActionButtonConfig) then) =
      _$AnalyticsCustomActionButtonConfigCopyWithImpl<$Res,
          AnalyticsCustomActionButtonConfig>;
  @useResult
  $Res call({String? button_id, String? button_text});
}

/// @nodoc
class _$AnalyticsCustomActionButtonConfigCopyWithImpl<$Res,
        $Val extends AnalyticsCustomActionButtonConfig>
    implements $AnalyticsCustomActionButtonConfigCopyWith<$Res> {
  _$AnalyticsCustomActionButtonConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsCustomActionButtonConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? button_id = freezed,
    Object? button_text = freezed,
  }) {
    return _then(_value.copyWith(
      button_id: freezed == button_id
          ? _value.button_id
          : button_id // ignore: cast_nullable_to_non_nullable
              as String?,
      button_text: freezed == button_text
          ? _value.button_text
          : button_text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsCustomActionButtonConfigImplCopyWith<$Res>
    implements $AnalyticsCustomActionButtonConfigCopyWith<$Res> {
  factory _$$AnalyticsCustomActionButtonConfigImplCopyWith(
          _$AnalyticsCustomActionButtonConfigImpl value,
          $Res Function(_$AnalyticsCustomActionButtonConfigImpl) then) =
      __$$AnalyticsCustomActionButtonConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? button_id, String? button_text});
}

/// @nodoc
class __$$AnalyticsCustomActionButtonConfigImplCopyWithImpl<$Res>
    extends _$AnalyticsCustomActionButtonConfigCopyWithImpl<$Res,
        _$AnalyticsCustomActionButtonConfigImpl>
    implements _$$AnalyticsCustomActionButtonConfigImplCopyWith<$Res> {
  __$$AnalyticsCustomActionButtonConfigImplCopyWithImpl(
      _$AnalyticsCustomActionButtonConfigImpl _value,
      $Res Function(_$AnalyticsCustomActionButtonConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsCustomActionButtonConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? button_id = freezed,
    Object? button_text = freezed,
  }) {
    return _then(_$AnalyticsCustomActionButtonConfigImpl(
      button_id: freezed == button_id
          ? _value.button_id
          : button_id // ignore: cast_nullable_to_non_nullable
              as String?,
      button_text: freezed == button_text
          ? _value.button_text
          : button_text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsCustomActionButtonConfigImpl
    with DiagnosticableTreeMixin
    implements _AnalyticsCustomActionButtonConfig {
  const _$AnalyticsCustomActionButtonConfigImpl(
      {this.button_id, this.button_text});

  factory _$AnalyticsCustomActionButtonConfigImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnalyticsCustomActionButtonConfigImplFromJson(json);

  @override
  final String? button_id;
  @override
  final String? button_text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsCustomActionButtonConfig(button_id: $button_id, button_text: $button_text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsCustomActionButtonConfig'))
      ..add(DiagnosticsProperty('button_id', button_id))
      ..add(DiagnosticsProperty('button_text', button_text));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsCustomActionButtonConfigImpl &&
            (identical(other.button_id, button_id) ||
                other.button_id == button_id) &&
            (identical(other.button_text, button_text) ||
                other.button_text == button_text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, button_id, button_text);

  /// Create a copy of AnalyticsCustomActionButtonConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsCustomActionButtonConfigImplCopyWith<
          _$AnalyticsCustomActionButtonConfigImpl>
      get copyWith => __$$AnalyticsCustomActionButtonConfigImplCopyWithImpl<
          _$AnalyticsCustomActionButtonConfigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsCustomActionButtonConfig value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsCustomActionButtonConfig value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsCustomActionButtonConfig value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsCustomActionButtonConfigImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsCustomActionButtonConfig
    implements AnalyticsCustomActionButtonConfig {
  const factory _AnalyticsCustomActionButtonConfig(
      {final String? button_id,
      final String? button_text}) = _$AnalyticsCustomActionButtonConfigImpl;

  factory _AnalyticsCustomActionButtonConfig.fromJson(
          Map<String, dynamic> json) =
      _$AnalyticsCustomActionButtonConfigImpl.fromJson;

  @override
  String? get button_id;
  @override
  String? get button_text;

  /// Create a copy of AnalyticsCustomActionButtonConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsCustomActionButtonConfigImplCopyWith<
          _$AnalyticsCustomActionButtonConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnalyticsLoopSettings _$AnalyticsLoopSettingsFromJson(
    Map<String, dynamic> json) {
  return _AnalyticsLoopSettings.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsLoopSettings {
  bool? get infinite_loop => throw _privateConstructorUsedError;

  /// The number of plays before the player advances. Absent when
  /// [infinite_loop] is true.
  int? get loop_and_advance => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsLoopSettings value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsLoopSettings value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsLoopSettings value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AnalyticsLoopSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsLoopSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsLoopSettingsCopyWith<AnalyticsLoopSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsLoopSettingsCopyWith<$Res> {
  factory $AnalyticsLoopSettingsCopyWith(AnalyticsLoopSettings value,
          $Res Function(AnalyticsLoopSettings) then) =
      _$AnalyticsLoopSettingsCopyWithImpl<$Res, AnalyticsLoopSettings>;
  @useResult
  $Res call({bool? infinite_loop, int? loop_and_advance});
}

/// @nodoc
class _$AnalyticsLoopSettingsCopyWithImpl<$Res,
        $Val extends AnalyticsLoopSettings>
    implements $AnalyticsLoopSettingsCopyWith<$Res> {
  _$AnalyticsLoopSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsLoopSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infinite_loop = freezed,
    Object? loop_and_advance = freezed,
  }) {
    return _then(_value.copyWith(
      infinite_loop: freezed == infinite_loop
          ? _value.infinite_loop
          : infinite_loop // ignore: cast_nullable_to_non_nullable
              as bool?,
      loop_and_advance: freezed == loop_and_advance
          ? _value.loop_and_advance
          : loop_and_advance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsLoopSettingsImplCopyWith<$Res>
    implements $AnalyticsLoopSettingsCopyWith<$Res> {
  factory _$$AnalyticsLoopSettingsImplCopyWith(
          _$AnalyticsLoopSettingsImpl value,
          $Res Function(_$AnalyticsLoopSettingsImpl) then) =
      __$$AnalyticsLoopSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? infinite_loop, int? loop_and_advance});
}

/// @nodoc
class __$$AnalyticsLoopSettingsImplCopyWithImpl<$Res>
    extends _$AnalyticsLoopSettingsCopyWithImpl<$Res,
        _$AnalyticsLoopSettingsImpl>
    implements _$$AnalyticsLoopSettingsImplCopyWith<$Res> {
  __$$AnalyticsLoopSettingsImplCopyWithImpl(_$AnalyticsLoopSettingsImpl _value,
      $Res Function(_$AnalyticsLoopSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsLoopSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infinite_loop = freezed,
    Object? loop_and_advance = freezed,
  }) {
    return _then(_$AnalyticsLoopSettingsImpl(
      infinite_loop: freezed == infinite_loop
          ? _value.infinite_loop
          : infinite_loop // ignore: cast_nullable_to_non_nullable
              as bool?,
      loop_and_advance: freezed == loop_and_advance
          ? _value.loop_and_advance
          : loop_and_advance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsLoopSettingsImpl
    with DiagnosticableTreeMixin
    implements _AnalyticsLoopSettings {
  const _$AnalyticsLoopSettingsImpl(
      {this.infinite_loop, this.loop_and_advance});

  factory _$AnalyticsLoopSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsLoopSettingsImplFromJson(json);

  @override
  final bool? infinite_loop;

  /// The number of plays before the player advances. Absent when
  /// [infinite_loop] is true.
  @override
  final int? loop_and_advance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsLoopSettings(infinite_loop: $infinite_loop, loop_and_advance: $loop_and_advance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsLoopSettings'))
      ..add(DiagnosticsProperty('infinite_loop', infinite_loop))
      ..add(DiagnosticsProperty('loop_and_advance', loop_and_advance));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsLoopSettingsImpl &&
            (identical(other.infinite_loop, infinite_loop) ||
                other.infinite_loop == infinite_loop) &&
            (identical(other.loop_and_advance, loop_and_advance) ||
                other.loop_and_advance == loop_and_advance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, infinite_loop, loop_and_advance);

  /// Create a copy of AnalyticsLoopSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsLoopSettingsImplCopyWith<_$AnalyticsLoopSettingsImpl>
      get copyWith => __$$AnalyticsLoopSettingsImplCopyWithImpl<
          _$AnalyticsLoopSettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsLoopSettings value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsLoopSettings value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsLoopSettings value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsLoopSettingsImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsLoopSettings implements AnalyticsLoopSettings {
  const factory _AnalyticsLoopSettings(
      {final bool? infinite_loop,
      final int? loop_and_advance}) = _$AnalyticsLoopSettingsImpl;

  factory _AnalyticsLoopSettings.fromJson(Map<String, dynamic> json) =
      _$AnalyticsLoopSettingsImpl.fromJson;

  @override
  bool? get infinite_loop;

  /// The number of plays before the player advances. Absent when
  /// [infinite_loop] is true.
  @override
  int? get loop_and_advance;

  /// Create a copy of AnalyticsLoopSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsLoopSettingsImplCopyWith<_$AnalyticsLoopSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnalyticsFollowedEntity _$AnalyticsFollowedEntityFromJson(
    Map<String, dynamic> json) {
  return _AnalyticsFollowedEntity.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsFollowedEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get provider_name => throw _privateConstructorUsedError;

  /// The entity category, for example `team` or `player`. Absent when the
  /// category is not known.
  String? get entity_type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsFollowedEntity value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsFollowedEntity value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsFollowedEntity value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AnalyticsFollowedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsFollowedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsFollowedEntityCopyWith<AnalyticsFollowedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsFollowedEntityCopyWith<$Res> {
  factory $AnalyticsFollowedEntityCopyWith(AnalyticsFollowedEntity value,
          $Res Function(AnalyticsFollowedEntity) then) =
      _$AnalyticsFollowedEntityCopyWithImpl<$Res, AnalyticsFollowedEntity>;
  @useResult
  $Res call({String? id, String? provider_name, String? entity_type});
}

/// @nodoc
class _$AnalyticsFollowedEntityCopyWithImpl<$Res,
        $Val extends AnalyticsFollowedEntity>
    implements $AnalyticsFollowedEntityCopyWith<$Res> {
  _$AnalyticsFollowedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsFollowedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider_name = freezed,
    Object? entity_type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      provider_name: freezed == provider_name
          ? _value.provider_name
          : provider_name // ignore: cast_nullable_to_non_nullable
              as String?,
      entity_type: freezed == entity_type
          ? _value.entity_type
          : entity_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsFollowedEntityImplCopyWith<$Res>
    implements $AnalyticsFollowedEntityCopyWith<$Res> {
  factory _$$AnalyticsFollowedEntityImplCopyWith(
          _$AnalyticsFollowedEntityImpl value,
          $Res Function(_$AnalyticsFollowedEntityImpl) then) =
      __$$AnalyticsFollowedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? provider_name, String? entity_type});
}

/// @nodoc
class __$$AnalyticsFollowedEntityImplCopyWithImpl<$Res>
    extends _$AnalyticsFollowedEntityCopyWithImpl<$Res,
        _$AnalyticsFollowedEntityImpl>
    implements _$$AnalyticsFollowedEntityImplCopyWith<$Res> {
  __$$AnalyticsFollowedEntityImplCopyWithImpl(
      _$AnalyticsFollowedEntityImpl _value,
      $Res Function(_$AnalyticsFollowedEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsFollowedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider_name = freezed,
    Object? entity_type = freezed,
  }) {
    return _then(_$AnalyticsFollowedEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      provider_name: freezed == provider_name
          ? _value.provider_name
          : provider_name // ignore: cast_nullable_to_non_nullable
              as String?,
      entity_type: freezed == entity_type
          ? _value.entity_type
          : entity_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsFollowedEntityImpl
    with DiagnosticableTreeMixin
    implements _AnalyticsFollowedEntity {
  const _$AnalyticsFollowedEntityImpl(
      {this.id, this.provider_name, this.entity_type});

  factory _$AnalyticsFollowedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsFollowedEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? provider_name;

  /// The entity category, for example `team` or `player`. Absent when the
  /// category is not known.
  @override
  final String? entity_type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsFollowedEntity(id: $id, provider_name: $provider_name, entity_type: $entity_type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsFollowedEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('provider_name', provider_name))
      ..add(DiagnosticsProperty('entity_type', entity_type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsFollowedEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider_name, provider_name) ||
                other.provider_name == provider_name) &&
            (identical(other.entity_type, entity_type) ||
                other.entity_type == entity_type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, provider_name, entity_type);

  /// Create a copy of AnalyticsFollowedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsFollowedEntityImplCopyWith<_$AnalyticsFollowedEntityImpl>
      get copyWith => __$$AnalyticsFollowedEntityImplCopyWithImpl<
          _$AnalyticsFollowedEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsFollowedEntity value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsFollowedEntity value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsFollowedEntity value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsFollowedEntityImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsFollowedEntity implements AnalyticsFollowedEntity {
  const factory _AnalyticsFollowedEntity(
      {final String? id,
      final String? provider_name,
      final String? entity_type}) = _$AnalyticsFollowedEntityImpl;

  factory _AnalyticsFollowedEntity.fromJson(Map<String, dynamic> json) =
      _$AnalyticsFollowedEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get provider_name;

  /// The entity category, for example `team` or `player`. Absent when the
  /// category is not known.
  @override
  String? get entity_type;

  /// Create a copy of AnalyticsFollowedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsFollowedEntityImplCopyWith<_$AnalyticsFollowedEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserProps _$UserPropsFromJson(Map<String, dynamic> json) {
  return _UserProps.fromJson(json);
}

/// @nodoc
mixin _$UserProps {
  String get generated_user_id => throw _privateConstructorUsedError;
  String? get external_user_id => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  Map<String, String>? get experiments => throw _privateConstructorUsedError;
  List<AnalyticsFollowedEntity>? get followed_entities =>
      throw _privateConstructorUsedError;

  /// Set on `user_logout` events only. The event's [external_user_id] is the
  /// user that was logged out.
  @JsonKey(unknownEnumValue: LogoutTrigger.unknown)
  LogoutTrigger? get logout_trigger => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UserProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPropsCopyWith<UserProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPropsCopyWith<$Res> {
  factory $UserPropsCopyWith(UserProps value, $Res Function(UserProps) then) =
      _$UserPropsCopyWithImpl<$Res, UserProps>;
  @useResult
  $Res call(
      {String generated_user_id,
      String? external_user_id,
      String locale,
      Map<String, String>? experiments,
      List<AnalyticsFollowedEntity>? followed_entities,
      @JsonKey(unknownEnumValue: LogoutTrigger.unknown)
      LogoutTrigger? logout_trigger});
}

/// @nodoc
class _$UserPropsCopyWithImpl<$Res, $Val extends UserProps>
    implements $UserPropsCopyWith<$Res> {
  _$UserPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generated_user_id = null,
    Object? external_user_id = freezed,
    Object? locale = null,
    Object? experiments = freezed,
    Object? followed_entities = freezed,
    Object? logout_trigger = freezed,
  }) {
    return _then(_value.copyWith(
      generated_user_id: null == generated_user_id
          ? _value.generated_user_id
          : generated_user_id // ignore: cast_nullable_to_non_nullable
              as String,
      external_user_id: freezed == external_user_id
          ? _value.external_user_id
          : external_user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      experiments: freezed == experiments
          ? _value.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      followed_entities: freezed == followed_entities
          ? _value.followed_entities
          : followed_entities // ignore: cast_nullable_to_non_nullable
              as List<AnalyticsFollowedEntity>?,
      logout_trigger: freezed == logout_trigger
          ? _value.logout_trigger
          : logout_trigger // ignore: cast_nullable_to_non_nullable
              as LogoutTrigger?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPropsImplCopyWith<$Res>
    implements $UserPropsCopyWith<$Res> {
  factory _$$UserPropsImplCopyWith(
          _$UserPropsImpl value, $Res Function(_$UserPropsImpl) then) =
      __$$UserPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String generated_user_id,
      String? external_user_id,
      String locale,
      Map<String, String>? experiments,
      List<AnalyticsFollowedEntity>? followed_entities,
      @JsonKey(unknownEnumValue: LogoutTrigger.unknown)
      LogoutTrigger? logout_trigger});
}

/// @nodoc
class __$$UserPropsImplCopyWithImpl<$Res>
    extends _$UserPropsCopyWithImpl<$Res, _$UserPropsImpl>
    implements _$$UserPropsImplCopyWith<$Res> {
  __$$UserPropsImplCopyWithImpl(
      _$UserPropsImpl _value, $Res Function(_$UserPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generated_user_id = null,
    Object? external_user_id = freezed,
    Object? locale = null,
    Object? experiments = freezed,
    Object? followed_entities = freezed,
    Object? logout_trigger = freezed,
  }) {
    return _then(_$UserPropsImpl(
      generated_user_id: null == generated_user_id
          ? _value.generated_user_id
          : generated_user_id // ignore: cast_nullable_to_non_nullable
              as String,
      external_user_id: freezed == external_user_id
          ? _value.external_user_id
          : external_user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      experiments: freezed == experiments
          ? _value._experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      followed_entities: freezed == followed_entities
          ? _value._followed_entities
          : followed_entities // ignore: cast_nullable_to_non_nullable
              as List<AnalyticsFollowedEntity>?,
      logout_trigger: freezed == logout_trigger
          ? _value.logout_trigger
          : logout_trigger // ignore: cast_nullable_to_non_nullable
              as LogoutTrigger?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPropsImpl with DiagnosticableTreeMixin implements _UserProps {
  const _$UserPropsImpl(
      {required this.generated_user_id,
      this.external_user_id,
      required this.locale,
      final Map<String, String>? experiments,
      final List<AnalyticsFollowedEntity>? followed_entities,
      @JsonKey(unknownEnumValue: LogoutTrigger.unknown) this.logout_trigger})
      : _experiments = experiments,
        _followed_entities = followed_entities;

  factory _$UserPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPropsImplFromJson(json);

  @override
  final String generated_user_id;
  @override
  final String? external_user_id;
  @override
  final String locale;
  final Map<String, String>? _experiments;
  @override
  Map<String, String>? get experiments {
    final value = _experiments;
    if (value == null) return null;
    if (_experiments is EqualUnmodifiableMapView) return _experiments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<AnalyticsFollowedEntity>? _followed_entities;
  @override
  List<AnalyticsFollowedEntity>? get followed_entities {
    final value = _followed_entities;
    if (value == null) return null;
    if (_followed_entities is EqualUnmodifiableListView)
      return _followed_entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Set on `user_logout` events only. The event's [external_user_id] is the
  /// user that was logged out.
  @override
  @JsonKey(unknownEnumValue: LogoutTrigger.unknown)
  final LogoutTrigger? logout_trigger;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProps(generated_user_id: $generated_user_id, external_user_id: $external_user_id, locale: $locale, experiments: $experiments, followed_entities: $followed_entities, logout_trigger: $logout_trigger)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProps'))
      ..add(DiagnosticsProperty('generated_user_id', generated_user_id))
      ..add(DiagnosticsProperty('external_user_id', external_user_id))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('experiments', experiments))
      ..add(DiagnosticsProperty('followed_entities', followed_entities))
      ..add(DiagnosticsProperty('logout_trigger', logout_trigger));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPropsImpl &&
            (identical(other.generated_user_id, generated_user_id) ||
                other.generated_user_id == generated_user_id) &&
            (identical(other.external_user_id, external_user_id) ||
                other.external_user_id == external_user_id) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            const DeepCollectionEquality()
                .equals(other._experiments, _experiments) &&
            const DeepCollectionEquality()
                .equals(other._followed_entities, _followed_entities) &&
            (identical(other.logout_trigger, logout_trigger) ||
                other.logout_trigger == logout_trigger));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      generated_user_id,
      external_user_id,
      locale,
      const DeepCollectionEquality().hash(_experiments),
      const DeepCollectionEquality().hash(_followed_entities),
      logout_trigger);

  /// Create a copy of UserProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPropsImplCopyWith<_$UserPropsImpl> get copyWith =>
      __$$UserPropsImplCopyWithImpl<_$UserPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPropsImplToJson(
      this,
    );
  }
}

abstract class _UserProps implements UserProps {
  const factory _UserProps(
      {required final String generated_user_id,
      final String? external_user_id,
      required final String locale,
      final Map<String, String>? experiments,
      final List<AnalyticsFollowedEntity>? followed_entities,
      @JsonKey(unknownEnumValue: LogoutTrigger.unknown)
      final LogoutTrigger? logout_trigger}) = _$UserPropsImpl;

  factory _UserProps.fromJson(Map<String, dynamic> json) =
      _$UserPropsImpl.fromJson;

  @override
  String get generated_user_id;
  @override
  String? get external_user_id;
  @override
  String get locale;
  @override
  Map<String, String>? get experiments;
  @override
  List<AnalyticsFollowedEntity>? get followed_entities;

  /// Set on `user_logout` events only. The event's [external_user_id] is the
  /// user that was logged out.
  @override
  @JsonKey(unknownEnumValue: LogoutTrigger.unknown)
  LogoutTrigger? get logout_trigger;

  /// Create a copy of UserProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPropsImplCopyWith<_$UserPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TechProps _$TechPropsFromJson(Map<String, dynamic> json) {
  return _TechProps.fromJson(json);
}

/// @nodoc
mixin _$TechProps {
  @JsonKey(unknownEnumValue: DeviceType.unknown)
  DeviceType? get device_type => throw _privateConstructorUsedError;
  String? get device_brand => throw _privateConstructorUsedError;
  String? get device_model => throw _privateConstructorUsedError;
  String? get operating_system => throw _privateConstructorUsedError;
  String? get operating_system_version => throw _privateConstructorUsedError;
  String? get screen_resolution => throw _privateConstructorUsedError;
  String? get app_id => throw _privateConstructorUsedError;
  String? get app_version => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ConnectionType.unknown)
  ConnectionType? get connection_type => throw _privateConstructorUsedError;
  String? get localization_setting => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TechProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TechProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TechProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TechProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TechProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechPropsCopyWith<TechProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechPropsCopyWith<$Res> {
  factory $TechPropsCopyWith(TechProps value, $Res Function(TechProps) then) =
      _$TechPropsCopyWithImpl<$Res, TechProps>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: DeviceType.unknown) DeviceType? device_type,
      String? device_brand,
      String? device_model,
      String? operating_system,
      String? operating_system_version,
      String? screen_resolution,
      String? app_id,
      String? app_version,
      @JsonKey(unknownEnumValue: ConnectionType.unknown)
      ConnectionType? connection_type,
      String? localization_setting});
}

/// @nodoc
class _$TechPropsCopyWithImpl<$Res, $Val extends TechProps>
    implements $TechPropsCopyWith<$Res> {
  _$TechPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_type = freezed,
    Object? device_brand = freezed,
    Object? device_model = freezed,
    Object? operating_system = freezed,
    Object? operating_system_version = freezed,
    Object? screen_resolution = freezed,
    Object? app_id = freezed,
    Object? app_version = freezed,
    Object? connection_type = freezed,
    Object? localization_setting = freezed,
  }) {
    return _then(_value.copyWith(
      device_type: freezed == device_type
          ? _value.device_type
          : device_type // ignore: cast_nullable_to_non_nullable
              as DeviceType?,
      device_brand: freezed == device_brand
          ? _value.device_brand
          : device_brand // ignore: cast_nullable_to_non_nullable
              as String?,
      device_model: freezed == device_model
          ? _value.device_model
          : device_model // ignore: cast_nullable_to_non_nullable
              as String?,
      operating_system: freezed == operating_system
          ? _value.operating_system
          : operating_system // ignore: cast_nullable_to_non_nullable
              as String?,
      operating_system_version: freezed == operating_system_version
          ? _value.operating_system_version
          : operating_system_version // ignore: cast_nullable_to_non_nullable
              as String?,
      screen_resolution: freezed == screen_resolution
          ? _value.screen_resolution
          : screen_resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      app_version: freezed == app_version
          ? _value.app_version
          : app_version // ignore: cast_nullable_to_non_nullable
              as String?,
      connection_type: freezed == connection_type
          ? _value.connection_type
          : connection_type // ignore: cast_nullable_to_non_nullable
              as ConnectionType?,
      localization_setting: freezed == localization_setting
          ? _value.localization_setting
          : localization_setting // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechPropsImplCopyWith<$Res>
    implements $TechPropsCopyWith<$Res> {
  factory _$$TechPropsImplCopyWith(
          _$TechPropsImpl value, $Res Function(_$TechPropsImpl) then) =
      __$$TechPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: DeviceType.unknown) DeviceType? device_type,
      String? device_brand,
      String? device_model,
      String? operating_system,
      String? operating_system_version,
      String? screen_resolution,
      String? app_id,
      String? app_version,
      @JsonKey(unknownEnumValue: ConnectionType.unknown)
      ConnectionType? connection_type,
      String? localization_setting});
}

/// @nodoc
class __$$TechPropsImplCopyWithImpl<$Res>
    extends _$TechPropsCopyWithImpl<$Res, _$TechPropsImpl>
    implements _$$TechPropsImplCopyWith<$Res> {
  __$$TechPropsImplCopyWithImpl(
      _$TechPropsImpl _value, $Res Function(_$TechPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_type = freezed,
    Object? device_brand = freezed,
    Object? device_model = freezed,
    Object? operating_system = freezed,
    Object? operating_system_version = freezed,
    Object? screen_resolution = freezed,
    Object? app_id = freezed,
    Object? app_version = freezed,
    Object? connection_type = freezed,
    Object? localization_setting = freezed,
  }) {
    return _then(_$TechPropsImpl(
      device_type: freezed == device_type
          ? _value.device_type
          : device_type // ignore: cast_nullable_to_non_nullable
              as DeviceType?,
      device_brand: freezed == device_brand
          ? _value.device_brand
          : device_brand // ignore: cast_nullable_to_non_nullable
              as String?,
      device_model: freezed == device_model
          ? _value.device_model
          : device_model // ignore: cast_nullable_to_non_nullable
              as String?,
      operating_system: freezed == operating_system
          ? _value.operating_system
          : operating_system // ignore: cast_nullable_to_non_nullable
              as String?,
      operating_system_version: freezed == operating_system_version
          ? _value.operating_system_version
          : operating_system_version // ignore: cast_nullable_to_non_nullable
              as String?,
      screen_resolution: freezed == screen_resolution
          ? _value.screen_resolution
          : screen_resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      app_version: freezed == app_version
          ? _value.app_version
          : app_version // ignore: cast_nullable_to_non_nullable
              as String?,
      connection_type: freezed == connection_type
          ? _value.connection_type
          : connection_type // ignore: cast_nullable_to_non_nullable
              as ConnectionType?,
      localization_setting: freezed == localization_setting
          ? _value.localization_setting
          : localization_setting // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TechPropsImpl with DiagnosticableTreeMixin implements _TechProps {
  const _$TechPropsImpl(
      {@JsonKey(unknownEnumValue: DeviceType.unknown) this.device_type,
      this.device_brand,
      this.device_model,
      this.operating_system,
      this.operating_system_version,
      this.screen_resolution,
      this.app_id,
      this.app_version,
      @JsonKey(unknownEnumValue: ConnectionType.unknown) this.connection_type,
      this.localization_setting});

  factory _$TechPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechPropsImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: DeviceType.unknown)
  final DeviceType? device_type;
  @override
  final String? device_brand;
  @override
  final String? device_model;
  @override
  final String? operating_system;
  @override
  final String? operating_system_version;
  @override
  final String? screen_resolution;
  @override
  final String? app_id;
  @override
  final String? app_version;
  @override
  @JsonKey(unknownEnumValue: ConnectionType.unknown)
  final ConnectionType? connection_type;
  @override
  final String? localization_setting;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TechProps(device_type: $device_type, device_brand: $device_brand, device_model: $device_model, operating_system: $operating_system, operating_system_version: $operating_system_version, screen_resolution: $screen_resolution, app_id: $app_id, app_version: $app_version, connection_type: $connection_type, localization_setting: $localization_setting)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TechProps'))
      ..add(DiagnosticsProperty('device_type', device_type))
      ..add(DiagnosticsProperty('device_brand', device_brand))
      ..add(DiagnosticsProperty('device_model', device_model))
      ..add(DiagnosticsProperty('operating_system', operating_system))
      ..add(DiagnosticsProperty(
          'operating_system_version', operating_system_version))
      ..add(DiagnosticsProperty('screen_resolution', screen_resolution))
      ..add(DiagnosticsProperty('app_id', app_id))
      ..add(DiagnosticsProperty('app_version', app_version))
      ..add(DiagnosticsProperty('connection_type', connection_type))
      ..add(DiagnosticsProperty('localization_setting', localization_setting));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechPropsImpl &&
            (identical(other.device_type, device_type) ||
                other.device_type == device_type) &&
            (identical(other.device_brand, device_brand) ||
                other.device_brand == device_brand) &&
            (identical(other.device_model, device_model) ||
                other.device_model == device_model) &&
            (identical(other.operating_system, operating_system) ||
                other.operating_system == operating_system) &&
            (identical(
                    other.operating_system_version, operating_system_version) ||
                other.operating_system_version == operating_system_version) &&
            (identical(other.screen_resolution, screen_resolution) ||
                other.screen_resolution == screen_resolution) &&
            (identical(other.app_id, app_id) || other.app_id == app_id) &&
            (identical(other.app_version, app_version) ||
                other.app_version == app_version) &&
            (identical(other.connection_type, connection_type) ||
                other.connection_type == connection_type) &&
            (identical(other.localization_setting, localization_setting) ||
                other.localization_setting == localization_setting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      device_type,
      device_brand,
      device_model,
      operating_system,
      operating_system_version,
      screen_resolution,
      app_id,
      app_version,
      connection_type,
      localization_setting);

  /// Create a copy of TechProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechPropsImplCopyWith<_$TechPropsImpl> get copyWith =>
      __$$TechPropsImplCopyWithImpl<_$TechPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TechProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TechProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TechProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TechPropsImplToJson(
      this,
    );
  }
}

abstract class _TechProps implements TechProps {
  const factory _TechProps(
      {@JsonKey(unknownEnumValue: DeviceType.unknown)
      final DeviceType? device_type,
      final String? device_brand,
      final String? device_model,
      final String? operating_system,
      final String? operating_system_version,
      final String? screen_resolution,
      final String? app_id,
      final String? app_version,
      @JsonKey(unknownEnumValue: ConnectionType.unknown)
      final ConnectionType? connection_type,
      final String? localization_setting}) = _$TechPropsImpl;

  factory _TechProps.fromJson(Map<String, dynamic> json) =
      _$TechPropsImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: DeviceType.unknown)
  DeviceType? get device_type;
  @override
  String? get device_brand;
  @override
  String? get device_model;
  @override
  String? get operating_system;
  @override
  String? get operating_system_version;
  @override
  String? get screen_resolution;
  @override
  String? get app_id;
  @override
  String? get app_version;
  @override
  @JsonKey(unknownEnumValue: ConnectionType.unknown)
  ConnectionType? get connection_type;
  @override
  String? get localization_setting;

  /// Create a copy of TechProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechPropsImplCopyWith<_$TechPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferringPropsAnalytics _$ReferringPropsAnalyticsFromJson(
    Map<String, dynamic> json) {
  return _ReferringPropsAnalytics.fromJson(json);
}

/// @nodoc
mixin _$ReferringPropsAnalytics {
  /// The IDs of the surfaces the player was opened through, outermost first,
  /// for example `[home-moments-tabs-row, tab-for-you]`. Same length and
  /// order as [origin_source_type].
  List<String>? get origin_source_id => throw _privateConstructorUsedError;

  /// The kind of each surface in [origin_source_id].
  @JsonKey(unknownEnumValue: OriginSourceType.unknown)
  List<OriginSourceType>? get origin_source_type =>
      throw _privateConstructorUsedError;
  String? get origin_widget_type => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
  ReferringDataSourceType? get data_source_type =>
      throw _privateConstructorUsedError;
  String? get data_source_value => throw _privateConstructorUsedError;
  String? get data_source_config => throw _privateConstructorUsedError;
  Map<String, String?>? get widget_builder_metadata =>
      throw _privateConstructorUsedError;
  String? get search_session_id => throw _privateConstructorUsedError;
  String? get search_query_id => throw _privateConstructorUsedError;
  String? get search_result_id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReferringPropsAnalytics value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReferringPropsAnalytics value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReferringPropsAnalytics value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ReferringPropsAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferringPropsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferringPropsAnalyticsCopyWith<ReferringPropsAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferringPropsAnalyticsCopyWith<$Res> {
  factory $ReferringPropsAnalyticsCopyWith(ReferringPropsAnalytics value,
          $Res Function(ReferringPropsAnalytics) then) =
      _$ReferringPropsAnalyticsCopyWithImpl<$Res, ReferringPropsAnalytics>;
  @useResult
  $Res call(
      {List<String>? origin_source_id,
      @JsonKey(unknownEnumValue: OriginSourceType.unknown)
      List<OriginSourceType>? origin_source_type,
      String? origin_widget_type,
      @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
      ReferringDataSourceType? data_source_type,
      String? data_source_value,
      String? data_source_config,
      Map<String, String?>? widget_builder_metadata,
      String? search_session_id,
      String? search_query_id,
      String? search_result_id});
}

/// @nodoc
class _$ReferringPropsAnalyticsCopyWithImpl<$Res,
        $Val extends ReferringPropsAnalytics>
    implements $ReferringPropsAnalyticsCopyWith<$Res> {
  _$ReferringPropsAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferringPropsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin_source_id = freezed,
    Object? origin_source_type = freezed,
    Object? origin_widget_type = freezed,
    Object? data_source_type = freezed,
    Object? data_source_value = freezed,
    Object? data_source_config = freezed,
    Object? widget_builder_metadata = freezed,
    Object? search_session_id = freezed,
    Object? search_query_id = freezed,
    Object? search_result_id = freezed,
  }) {
    return _then(_value.copyWith(
      origin_source_id: freezed == origin_source_id
          ? _value.origin_source_id
          : origin_source_id // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      origin_source_type: freezed == origin_source_type
          ? _value.origin_source_type
          : origin_source_type // ignore: cast_nullable_to_non_nullable
              as List<OriginSourceType>?,
      origin_widget_type: freezed == origin_widget_type
          ? _value.origin_widget_type
          : origin_widget_type // ignore: cast_nullable_to_non_nullable
              as String?,
      data_source_type: freezed == data_source_type
          ? _value.data_source_type
          : data_source_type // ignore: cast_nullable_to_non_nullable
              as ReferringDataSourceType?,
      data_source_value: freezed == data_source_value
          ? _value.data_source_value
          : data_source_value // ignore: cast_nullable_to_non_nullable
              as String?,
      data_source_config: freezed == data_source_config
          ? _value.data_source_config
          : data_source_config // ignore: cast_nullable_to_non_nullable
              as String?,
      widget_builder_metadata: freezed == widget_builder_metadata
          ? _value.widget_builder_metadata
          : widget_builder_metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>?,
      search_session_id: freezed == search_session_id
          ? _value.search_session_id
          : search_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      search_query_id: freezed == search_query_id
          ? _value.search_query_id
          : search_query_id // ignore: cast_nullable_to_non_nullable
              as String?,
      search_result_id: freezed == search_result_id
          ? _value.search_result_id
          : search_result_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferringPropsAnalyticsImplCopyWith<$Res>
    implements $ReferringPropsAnalyticsCopyWith<$Res> {
  factory _$$ReferringPropsAnalyticsImplCopyWith(
          _$ReferringPropsAnalyticsImpl value,
          $Res Function(_$ReferringPropsAnalyticsImpl) then) =
      __$$ReferringPropsAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? origin_source_id,
      @JsonKey(unknownEnumValue: OriginSourceType.unknown)
      List<OriginSourceType>? origin_source_type,
      String? origin_widget_type,
      @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
      ReferringDataSourceType? data_source_type,
      String? data_source_value,
      String? data_source_config,
      Map<String, String?>? widget_builder_metadata,
      String? search_session_id,
      String? search_query_id,
      String? search_result_id});
}

/// @nodoc
class __$$ReferringPropsAnalyticsImplCopyWithImpl<$Res>
    extends _$ReferringPropsAnalyticsCopyWithImpl<$Res,
        _$ReferringPropsAnalyticsImpl>
    implements _$$ReferringPropsAnalyticsImplCopyWith<$Res> {
  __$$ReferringPropsAnalyticsImplCopyWithImpl(
      _$ReferringPropsAnalyticsImpl _value,
      $Res Function(_$ReferringPropsAnalyticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferringPropsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin_source_id = freezed,
    Object? origin_source_type = freezed,
    Object? origin_widget_type = freezed,
    Object? data_source_type = freezed,
    Object? data_source_value = freezed,
    Object? data_source_config = freezed,
    Object? widget_builder_metadata = freezed,
    Object? search_session_id = freezed,
    Object? search_query_id = freezed,
    Object? search_result_id = freezed,
  }) {
    return _then(_$ReferringPropsAnalyticsImpl(
      origin_source_id: freezed == origin_source_id
          ? _value._origin_source_id
          : origin_source_id // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      origin_source_type: freezed == origin_source_type
          ? _value._origin_source_type
          : origin_source_type // ignore: cast_nullable_to_non_nullable
              as List<OriginSourceType>?,
      origin_widget_type: freezed == origin_widget_type
          ? _value.origin_widget_type
          : origin_widget_type // ignore: cast_nullable_to_non_nullable
              as String?,
      data_source_type: freezed == data_source_type
          ? _value.data_source_type
          : data_source_type // ignore: cast_nullable_to_non_nullable
              as ReferringDataSourceType?,
      data_source_value: freezed == data_source_value
          ? _value.data_source_value
          : data_source_value // ignore: cast_nullable_to_non_nullable
              as String?,
      data_source_config: freezed == data_source_config
          ? _value.data_source_config
          : data_source_config // ignore: cast_nullable_to_non_nullable
              as String?,
      widget_builder_metadata: freezed == widget_builder_metadata
          ? _value._widget_builder_metadata
          : widget_builder_metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>?,
      search_session_id: freezed == search_session_id
          ? _value.search_session_id
          : search_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      search_query_id: freezed == search_query_id
          ? _value.search_query_id
          : search_query_id // ignore: cast_nullable_to_non_nullable
              as String?,
      search_result_id: freezed == search_result_id
          ? _value.search_result_id
          : search_result_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferringPropsAnalyticsImpl
    with DiagnosticableTreeMixin
    implements _ReferringPropsAnalytics {
  const _$ReferringPropsAnalyticsImpl(
      {final List<String>? origin_source_id,
      @JsonKey(unknownEnumValue: OriginSourceType.unknown)
      final List<OriginSourceType>? origin_source_type,
      this.origin_widget_type,
      @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
      this.data_source_type,
      this.data_source_value,
      this.data_source_config,
      final Map<String, String?>? widget_builder_metadata,
      this.search_session_id,
      this.search_query_id,
      this.search_result_id})
      : _origin_source_id = origin_source_id,
        _origin_source_type = origin_source_type,
        _widget_builder_metadata = widget_builder_metadata;

  factory _$ReferringPropsAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferringPropsAnalyticsImplFromJson(json);

  /// The IDs of the surfaces the player was opened through, outermost first,
  /// for example `[home-moments-tabs-row, tab-for-you]`. Same length and
  /// order as [origin_source_type].
  final List<String>? _origin_source_id;

  /// The IDs of the surfaces the player was opened through, outermost first,
  /// for example `[home-moments-tabs-row, tab-for-you]`. Same length and
  /// order as [origin_source_type].
  @override
  List<String>? get origin_source_id {
    final value = _origin_source_id;
    if (value == null) return null;
    if (_origin_source_id is EqualUnmodifiableListView)
      return _origin_source_id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The kind of each surface in [origin_source_id].
  final List<OriginSourceType>? _origin_source_type;

  /// The kind of each surface in [origin_source_id].
  @override
  @JsonKey(unknownEnumValue: OriginSourceType.unknown)
  List<OriginSourceType>? get origin_source_type {
    final value = _origin_source_type;
    if (value == null) return null;
    if (_origin_source_type is EqualUnmodifiableListView)
      return _origin_source_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? origin_widget_type;
  @override
  @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
  final ReferringDataSourceType? data_source_type;
  @override
  final String? data_source_value;
  @override
  final String? data_source_config;
  final Map<String, String?>? _widget_builder_metadata;
  @override
  Map<String, String?>? get widget_builder_metadata {
    final value = _widget_builder_metadata;
    if (value == null) return null;
    if (_widget_builder_metadata is EqualUnmodifiableMapView)
      return _widget_builder_metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? search_session_id;
  @override
  final String? search_query_id;
  @override
  final String? search_result_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReferringPropsAnalytics(origin_source_id: $origin_source_id, origin_source_type: $origin_source_type, origin_widget_type: $origin_widget_type, data_source_type: $data_source_type, data_source_value: $data_source_value, data_source_config: $data_source_config, widget_builder_metadata: $widget_builder_metadata, search_session_id: $search_session_id, search_query_id: $search_query_id, search_result_id: $search_result_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReferringPropsAnalytics'))
      ..add(DiagnosticsProperty('origin_source_id', origin_source_id))
      ..add(DiagnosticsProperty('origin_source_type', origin_source_type))
      ..add(DiagnosticsProperty('origin_widget_type', origin_widget_type))
      ..add(DiagnosticsProperty('data_source_type', data_source_type))
      ..add(DiagnosticsProperty('data_source_value', data_source_value))
      ..add(DiagnosticsProperty('data_source_config', data_source_config))
      ..add(DiagnosticsProperty(
          'widget_builder_metadata', widget_builder_metadata))
      ..add(DiagnosticsProperty('search_session_id', search_session_id))
      ..add(DiagnosticsProperty('search_query_id', search_query_id))
      ..add(DiagnosticsProperty('search_result_id', search_result_id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferringPropsAnalyticsImpl &&
            const DeepCollectionEquality()
                .equals(other._origin_source_id, _origin_source_id) &&
            const DeepCollectionEquality()
                .equals(other._origin_source_type, _origin_source_type) &&
            (identical(other.origin_widget_type, origin_widget_type) ||
                other.origin_widget_type == origin_widget_type) &&
            (identical(other.data_source_type, data_source_type) ||
                other.data_source_type == data_source_type) &&
            (identical(other.data_source_value, data_source_value) ||
                other.data_source_value == data_source_value) &&
            (identical(other.data_source_config, data_source_config) ||
                other.data_source_config == data_source_config) &&
            const DeepCollectionEquality().equals(
                other._widget_builder_metadata, _widget_builder_metadata) &&
            (identical(other.search_session_id, search_session_id) ||
                other.search_session_id == search_session_id) &&
            (identical(other.search_query_id, search_query_id) ||
                other.search_query_id == search_query_id) &&
            (identical(other.search_result_id, search_result_id) ||
                other.search_result_id == search_result_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_origin_source_id),
      const DeepCollectionEquality().hash(_origin_source_type),
      origin_widget_type,
      data_source_type,
      data_source_value,
      data_source_config,
      const DeepCollectionEquality().hash(_widget_builder_metadata),
      search_session_id,
      search_query_id,
      search_result_id);

  /// Create a copy of ReferringPropsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferringPropsAnalyticsImplCopyWith<_$ReferringPropsAnalyticsImpl>
      get copyWith => __$$ReferringPropsAnalyticsImplCopyWithImpl<
          _$ReferringPropsAnalyticsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReferringPropsAnalytics value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReferringPropsAnalytics value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReferringPropsAnalytics value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferringPropsAnalyticsImplToJson(
      this,
    );
  }
}

abstract class _ReferringPropsAnalytics implements ReferringPropsAnalytics {
  const factory _ReferringPropsAnalytics(
      {final List<String>? origin_source_id,
      @JsonKey(unknownEnumValue: OriginSourceType.unknown)
      final List<OriginSourceType>? origin_source_type,
      final String? origin_widget_type,
      @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
      final ReferringDataSourceType? data_source_type,
      final String? data_source_value,
      final String? data_source_config,
      final Map<String, String?>? widget_builder_metadata,
      final String? search_session_id,
      final String? search_query_id,
      final String? search_result_id}) = _$ReferringPropsAnalyticsImpl;

  factory _ReferringPropsAnalytics.fromJson(Map<String, dynamic> json) =
      _$ReferringPropsAnalyticsImpl.fromJson;

  /// The IDs of the surfaces the player was opened through, outermost first,
  /// for example `[home-moments-tabs-row, tab-for-you]`. Same length and
  /// order as [origin_source_type].
  @override
  List<String>? get origin_source_id;

  /// The kind of each surface in [origin_source_id].
  @override
  @JsonKey(unknownEnumValue: OriginSourceType.unknown)
  List<OriginSourceType>? get origin_source_type;
  @override
  String? get origin_widget_type;
  @override
  @JsonKey(unknownEnumValue: ReferringDataSourceType.unknown)
  ReferringDataSourceType? get data_source_type;
  @override
  String? get data_source_value;
  @override
  String? get data_source_config;
  @override
  Map<String, String?>? get widget_builder_metadata;
  @override
  String? get search_session_id;
  @override
  String? get search_query_id;
  @override
  String? get search_result_id;

  /// Create a copy of ReferringPropsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferringPropsAnalyticsImplCopyWith<_$ReferringPropsAnalyticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TabProps _$TabPropsFromJson(Map<String, dynamic> json) {
  return _TabProps.fromJson(json);
}

/// @nodoc
mixin _$TabProps {
  String? get tabs_source_id => throw _privateConstructorUsedError;
  int? get total_tabs_count => throw _privateConstructorUsedError;
  String? get tab_id => throw _privateConstructorUsedError;
  String? get tab_title => throw _privateConstructorUsedError;
  int? get tab_index => throw _privateConstructorUsedError;
  int? get content_count => throw _privateConstructorUsedError;
  String? get current_tab_id => throw _privateConstructorUsedError;
  int? get current_tab_index => throw _privateConstructorUsedError;
  String? get current_tab_title => throw _privateConstructorUsedError;
  String? get next_tab_id => throw _privateConstructorUsedError;
  int? get next_tab_index => throw _privateConstructorUsedError;
  String? get next_tab_title => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
  TabTransitionMethod? get transition_method =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TabProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TabProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TabProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TabProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TabProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TabPropsCopyWith<TabProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabPropsCopyWith<$Res> {
  factory $TabPropsCopyWith(TabProps value, $Res Function(TabProps) then) =
      _$TabPropsCopyWithImpl<$Res, TabProps>;
  @useResult
  $Res call(
      {String? tabs_source_id,
      int? total_tabs_count,
      String? tab_id,
      String? tab_title,
      int? tab_index,
      int? content_count,
      String? current_tab_id,
      int? current_tab_index,
      String? current_tab_title,
      String? next_tab_id,
      int? next_tab_index,
      String? next_tab_title,
      @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
      TabTransitionMethod? transition_method});
}

/// @nodoc
class _$TabPropsCopyWithImpl<$Res, $Val extends TabProps>
    implements $TabPropsCopyWith<$Res> {
  _$TabPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TabProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabs_source_id = freezed,
    Object? total_tabs_count = freezed,
    Object? tab_id = freezed,
    Object? tab_title = freezed,
    Object? tab_index = freezed,
    Object? content_count = freezed,
    Object? current_tab_id = freezed,
    Object? current_tab_index = freezed,
    Object? current_tab_title = freezed,
    Object? next_tab_id = freezed,
    Object? next_tab_index = freezed,
    Object? next_tab_title = freezed,
    Object? transition_method = freezed,
  }) {
    return _then(_value.copyWith(
      tabs_source_id: freezed == tabs_source_id
          ? _value.tabs_source_id
          : tabs_source_id // ignore: cast_nullable_to_non_nullable
              as String?,
      total_tabs_count: freezed == total_tabs_count
          ? _value.total_tabs_count
          : total_tabs_count // ignore: cast_nullable_to_non_nullable
              as int?,
      tab_id: freezed == tab_id
          ? _value.tab_id
          : tab_id // ignore: cast_nullable_to_non_nullable
              as String?,
      tab_title: freezed == tab_title
          ? _value.tab_title
          : tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      tab_index: freezed == tab_index
          ? _value.tab_index
          : tab_index // ignore: cast_nullable_to_non_nullable
              as int?,
      content_count: freezed == content_count
          ? _value.content_count
          : content_count // ignore: cast_nullable_to_non_nullable
              as int?,
      current_tab_id: freezed == current_tab_id
          ? _value.current_tab_id
          : current_tab_id // ignore: cast_nullable_to_non_nullable
              as String?,
      current_tab_index: freezed == current_tab_index
          ? _value.current_tab_index
          : current_tab_index // ignore: cast_nullable_to_non_nullable
              as int?,
      current_tab_title: freezed == current_tab_title
          ? _value.current_tab_title
          : current_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      next_tab_id: freezed == next_tab_id
          ? _value.next_tab_id
          : next_tab_id // ignore: cast_nullable_to_non_nullable
              as String?,
      next_tab_index: freezed == next_tab_index
          ? _value.next_tab_index
          : next_tab_index // ignore: cast_nullable_to_non_nullable
              as int?,
      next_tab_title: freezed == next_tab_title
          ? _value.next_tab_title
          : next_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      transition_method: freezed == transition_method
          ? _value.transition_method
          : transition_method // ignore: cast_nullable_to_non_nullable
              as TabTransitionMethod?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabPropsImplCopyWith<$Res>
    implements $TabPropsCopyWith<$Res> {
  factory _$$TabPropsImplCopyWith(
          _$TabPropsImpl value, $Res Function(_$TabPropsImpl) then) =
      __$$TabPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tabs_source_id,
      int? total_tabs_count,
      String? tab_id,
      String? tab_title,
      int? tab_index,
      int? content_count,
      String? current_tab_id,
      int? current_tab_index,
      String? current_tab_title,
      String? next_tab_id,
      int? next_tab_index,
      String? next_tab_title,
      @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
      TabTransitionMethod? transition_method});
}

/// @nodoc
class __$$TabPropsImplCopyWithImpl<$Res>
    extends _$TabPropsCopyWithImpl<$Res, _$TabPropsImpl>
    implements _$$TabPropsImplCopyWith<$Res> {
  __$$TabPropsImplCopyWithImpl(
      _$TabPropsImpl _value, $Res Function(_$TabPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TabProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabs_source_id = freezed,
    Object? total_tabs_count = freezed,
    Object? tab_id = freezed,
    Object? tab_title = freezed,
    Object? tab_index = freezed,
    Object? content_count = freezed,
    Object? current_tab_id = freezed,
    Object? current_tab_index = freezed,
    Object? current_tab_title = freezed,
    Object? next_tab_id = freezed,
    Object? next_tab_index = freezed,
    Object? next_tab_title = freezed,
    Object? transition_method = freezed,
  }) {
    return _then(_$TabPropsImpl(
      tabs_source_id: freezed == tabs_source_id
          ? _value.tabs_source_id
          : tabs_source_id // ignore: cast_nullable_to_non_nullable
              as String?,
      total_tabs_count: freezed == total_tabs_count
          ? _value.total_tabs_count
          : total_tabs_count // ignore: cast_nullable_to_non_nullable
              as int?,
      tab_id: freezed == tab_id
          ? _value.tab_id
          : tab_id // ignore: cast_nullable_to_non_nullable
              as String?,
      tab_title: freezed == tab_title
          ? _value.tab_title
          : tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      tab_index: freezed == tab_index
          ? _value.tab_index
          : tab_index // ignore: cast_nullable_to_non_nullable
              as int?,
      content_count: freezed == content_count
          ? _value.content_count
          : content_count // ignore: cast_nullable_to_non_nullable
              as int?,
      current_tab_id: freezed == current_tab_id
          ? _value.current_tab_id
          : current_tab_id // ignore: cast_nullable_to_non_nullable
              as String?,
      current_tab_index: freezed == current_tab_index
          ? _value.current_tab_index
          : current_tab_index // ignore: cast_nullable_to_non_nullable
              as int?,
      current_tab_title: freezed == current_tab_title
          ? _value.current_tab_title
          : current_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      next_tab_id: freezed == next_tab_id
          ? _value.next_tab_id
          : next_tab_id // ignore: cast_nullable_to_non_nullable
              as String?,
      next_tab_index: freezed == next_tab_index
          ? _value.next_tab_index
          : next_tab_index // ignore: cast_nullable_to_non_nullable
              as int?,
      next_tab_title: freezed == next_tab_title
          ? _value.next_tab_title
          : next_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      transition_method: freezed == transition_method
          ? _value.transition_method
          : transition_method // ignore: cast_nullable_to_non_nullable
              as TabTransitionMethod?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TabPropsImpl with DiagnosticableTreeMixin implements _TabProps {
  const _$TabPropsImpl(
      {this.tabs_source_id,
      this.total_tabs_count,
      this.tab_id,
      this.tab_title,
      this.tab_index,
      this.content_count,
      this.current_tab_id,
      this.current_tab_index,
      this.current_tab_title,
      this.next_tab_id,
      this.next_tab_index,
      this.next_tab_title,
      @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
      this.transition_method});

  factory _$TabPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabPropsImplFromJson(json);

  @override
  final String? tabs_source_id;
  @override
  final int? total_tabs_count;
  @override
  final String? tab_id;
  @override
  final String? tab_title;
  @override
  final int? tab_index;
  @override
  final int? content_count;
  @override
  final String? current_tab_id;
  @override
  final int? current_tab_index;
  @override
  final String? current_tab_title;
  @override
  final String? next_tab_id;
  @override
  final int? next_tab_index;
  @override
  final String? next_tab_title;
  @override
  @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
  final TabTransitionMethod? transition_method;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabProps(tabs_source_id: $tabs_source_id, total_tabs_count: $total_tabs_count, tab_id: $tab_id, tab_title: $tab_title, tab_index: $tab_index, content_count: $content_count, current_tab_id: $current_tab_id, current_tab_index: $current_tab_index, current_tab_title: $current_tab_title, next_tab_id: $next_tab_id, next_tab_index: $next_tab_index, next_tab_title: $next_tab_title, transition_method: $transition_method)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabProps'))
      ..add(DiagnosticsProperty('tabs_source_id', tabs_source_id))
      ..add(DiagnosticsProperty('total_tabs_count', total_tabs_count))
      ..add(DiagnosticsProperty('tab_id', tab_id))
      ..add(DiagnosticsProperty('tab_title', tab_title))
      ..add(DiagnosticsProperty('tab_index', tab_index))
      ..add(DiagnosticsProperty('content_count', content_count))
      ..add(DiagnosticsProperty('current_tab_id', current_tab_id))
      ..add(DiagnosticsProperty('current_tab_index', current_tab_index))
      ..add(DiagnosticsProperty('current_tab_title', current_tab_title))
      ..add(DiagnosticsProperty('next_tab_id', next_tab_id))
      ..add(DiagnosticsProperty('next_tab_index', next_tab_index))
      ..add(DiagnosticsProperty('next_tab_title', next_tab_title))
      ..add(DiagnosticsProperty('transition_method', transition_method));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabPropsImpl &&
            (identical(other.tabs_source_id, tabs_source_id) ||
                other.tabs_source_id == tabs_source_id) &&
            (identical(other.total_tabs_count, total_tabs_count) ||
                other.total_tabs_count == total_tabs_count) &&
            (identical(other.tab_id, tab_id) || other.tab_id == tab_id) &&
            (identical(other.tab_title, tab_title) ||
                other.tab_title == tab_title) &&
            (identical(other.tab_index, tab_index) ||
                other.tab_index == tab_index) &&
            (identical(other.content_count, content_count) ||
                other.content_count == content_count) &&
            (identical(other.current_tab_id, current_tab_id) ||
                other.current_tab_id == current_tab_id) &&
            (identical(other.current_tab_index, current_tab_index) ||
                other.current_tab_index == current_tab_index) &&
            (identical(other.current_tab_title, current_tab_title) ||
                other.current_tab_title == current_tab_title) &&
            (identical(other.next_tab_id, next_tab_id) ||
                other.next_tab_id == next_tab_id) &&
            (identical(other.next_tab_index, next_tab_index) ||
                other.next_tab_index == next_tab_index) &&
            (identical(other.next_tab_title, next_tab_title) ||
                other.next_tab_title == next_tab_title) &&
            (identical(other.transition_method, transition_method) ||
                other.transition_method == transition_method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tabs_source_id,
      total_tabs_count,
      tab_id,
      tab_title,
      tab_index,
      content_count,
      current_tab_id,
      current_tab_index,
      current_tab_title,
      next_tab_id,
      next_tab_index,
      next_tab_title,
      transition_method);

  /// Create a copy of TabProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabPropsImplCopyWith<_$TabPropsImpl> get copyWith =>
      __$$TabPropsImplCopyWithImpl<_$TabPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TabProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TabProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TabProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TabPropsImplToJson(
      this,
    );
  }
}

abstract class _TabProps implements TabProps {
  const factory _TabProps(
      {final String? tabs_source_id,
      final int? total_tabs_count,
      final String? tab_id,
      final String? tab_title,
      final int? tab_index,
      final int? content_count,
      final String? current_tab_id,
      final int? current_tab_index,
      final String? current_tab_title,
      final String? next_tab_id,
      final int? next_tab_index,
      final String? next_tab_title,
      @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
      final TabTransitionMethod? transition_method}) = _$TabPropsImpl;

  factory _TabProps.fromJson(Map<String, dynamic> json) =
      _$TabPropsImpl.fromJson;

  @override
  String? get tabs_source_id;
  @override
  int? get total_tabs_count;
  @override
  String? get tab_id;
  @override
  String? get tab_title;
  @override
  int? get tab_index;
  @override
  int? get content_count;
  @override
  String? get current_tab_id;
  @override
  int? get current_tab_index;
  @override
  String? get current_tab_title;
  @override
  String? get next_tab_id;
  @override
  int? get next_tab_index;
  @override
  String? get next_tab_title;
  @override
  @JsonKey(unknownEnumValue: TabTransitionMethod.unknown)
  TabTransitionMethod? get transition_method;

  /// Create a copy of TabProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabPropsImplCopyWith<_$TabPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchProps _$SearchPropsFromJson(Map<String, dynamic> json) {
  return _SearchProps.fromJson(json);
}

/// @nodoc
mixin _$SearchProps {
  String? get search_session_id => throw _privateConstructorUsedError;
  String? get query_id => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  String? get result_id => throw _privateConstructorUsedError;
  List<String>? get story_ids => throw _privateConstructorUsedError;
  List<String>? get moment_ids => throw _privateConstructorUsedError;
  List<String>? get video_ids => throw _privateConstructorUsedError;
  int? get total_results => throw _privateConstructorUsedError;
  String? get content_id => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SearchProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPropsCopyWith<SearchProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPropsCopyWith<$Res> {
  factory $SearchPropsCopyWith(
          SearchProps value, $Res Function(SearchProps) then) =
      _$SearchPropsCopyWithImpl<$Res, SearchProps>;
  @useResult
  $Res call(
      {String? search_session_id,
      String? query_id,
      String? query,
      String? result_id,
      List<String>? story_ids,
      List<String>? moment_ids,
      List<String>? video_ids,
      int? total_results,
      String? content_id,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      int? position});
}

/// @nodoc
class _$SearchPropsCopyWithImpl<$Res, $Val extends SearchProps>
    implements $SearchPropsCopyWith<$Res> {
  _$SearchPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_session_id = freezed,
    Object? query_id = freezed,
    Object? query = freezed,
    Object? result_id = freezed,
    Object? story_ids = freezed,
    Object? moment_ids = freezed,
    Object? video_ids = freezed,
    Object? total_results = freezed,
    Object? content_id = freezed,
    Object? content_type = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      search_session_id: freezed == search_session_id
          ? _value.search_session_id
          : search_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      query_id: freezed == query_id
          ? _value.query_id
          : query_id // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      result_id: freezed == result_id
          ? _value.result_id
          : result_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_ids: freezed == story_ids
          ? _value.story_ids
          : story_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      moment_ids: freezed == moment_ids
          ? _value.moment_ids
          : moment_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      video_ids: freezed == video_ids
          ? _value.video_ids
          : video_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPropsImplCopyWith<$Res>
    implements $SearchPropsCopyWith<$Res> {
  factory _$$SearchPropsImplCopyWith(
          _$SearchPropsImpl value, $Res Function(_$SearchPropsImpl) then) =
      __$$SearchPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? search_session_id,
      String? query_id,
      String? query,
      String? result_id,
      List<String>? story_ids,
      List<String>? moment_ids,
      List<String>? video_ids,
      int? total_results,
      String? content_id,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      int? position});
}

/// @nodoc
class __$$SearchPropsImplCopyWithImpl<$Res>
    extends _$SearchPropsCopyWithImpl<$Res, _$SearchPropsImpl>
    implements _$$SearchPropsImplCopyWith<$Res> {
  __$$SearchPropsImplCopyWithImpl(
      _$SearchPropsImpl _value, $Res Function(_$SearchPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_session_id = freezed,
    Object? query_id = freezed,
    Object? query = freezed,
    Object? result_id = freezed,
    Object? story_ids = freezed,
    Object? moment_ids = freezed,
    Object? video_ids = freezed,
    Object? total_results = freezed,
    Object? content_id = freezed,
    Object? content_type = freezed,
    Object? position = freezed,
  }) {
    return _then(_$SearchPropsImpl(
      search_session_id: freezed == search_session_id
          ? _value.search_session_id
          : search_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      query_id: freezed == query_id
          ? _value.query_id
          : query_id // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      result_id: freezed == result_id
          ? _value.result_id
          : result_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_ids: freezed == story_ids
          ? _value._story_ids
          : story_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      moment_ids: freezed == moment_ids
          ? _value._moment_ids
          : moment_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      video_ids: freezed == video_ids
          ? _value._video_ids
          : video_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchPropsImpl with DiagnosticableTreeMixin implements _SearchProps {
  const _$SearchPropsImpl(
      {this.search_session_id,
      this.query_id,
      this.query,
      this.result_id,
      final List<String>? story_ids,
      final List<String>? moment_ids,
      final List<String>? video_ids,
      this.total_results,
      this.content_id,
      @JsonKey(unknownEnumValue: ContentType.unknown) this.content_type,
      this.position})
      : _story_ids = story_ids,
        _moment_ids = moment_ids,
        _video_ids = video_ids;

  factory _$SearchPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPropsImplFromJson(json);

  @override
  final String? search_session_id;
  @override
  final String? query_id;
  @override
  final String? query;
  @override
  final String? result_id;
  final List<String>? _story_ids;
  @override
  List<String>? get story_ids {
    final value = _story_ids;
    if (value == null) return null;
    if (_story_ids is EqualUnmodifiableListView) return _story_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _moment_ids;
  @override
  List<String>? get moment_ids {
    final value = _moment_ids;
    if (value == null) return null;
    if (_moment_ids is EqualUnmodifiableListView) return _moment_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _video_ids;
  @override
  List<String>? get video_ids {
    final value = _video_ids;
    if (value == null) return null;
    if (_video_ids is EqualUnmodifiableListView) return _video_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total_results;
  @override
  final String? content_id;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  final ContentType? content_type;
  @override
  final int? position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchProps(search_session_id: $search_session_id, query_id: $query_id, query: $query, result_id: $result_id, story_ids: $story_ids, moment_ids: $moment_ids, video_ids: $video_ids, total_results: $total_results, content_id: $content_id, content_type: $content_type, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchProps'))
      ..add(DiagnosticsProperty('search_session_id', search_session_id))
      ..add(DiagnosticsProperty('query_id', query_id))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('result_id', result_id))
      ..add(DiagnosticsProperty('story_ids', story_ids))
      ..add(DiagnosticsProperty('moment_ids', moment_ids))
      ..add(DiagnosticsProperty('video_ids', video_ids))
      ..add(DiagnosticsProperty('total_results', total_results))
      ..add(DiagnosticsProperty('content_id', content_id))
      ..add(DiagnosticsProperty('content_type', content_type))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPropsImpl &&
            (identical(other.search_session_id, search_session_id) ||
                other.search_session_id == search_session_id) &&
            (identical(other.query_id, query_id) ||
                other.query_id == query_id) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.result_id, result_id) ||
                other.result_id == result_id) &&
            const DeepCollectionEquality()
                .equals(other._story_ids, _story_ids) &&
            const DeepCollectionEquality()
                .equals(other._moment_ids, _moment_ids) &&
            const DeepCollectionEquality()
                .equals(other._video_ids, _video_ids) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results) &&
            (identical(other.content_id, content_id) ||
                other.content_id == content_id) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      search_session_id,
      query_id,
      query,
      result_id,
      const DeepCollectionEquality().hash(_story_ids),
      const DeepCollectionEquality().hash(_moment_ids),
      const DeepCollectionEquality().hash(_video_ids),
      total_results,
      content_id,
      content_type,
      position);

  /// Create a copy of SearchProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPropsImplCopyWith<_$SearchPropsImpl> get copyWith =>
      __$$SearchPropsImplCopyWithImpl<_$SearchPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPropsImplToJson(
      this,
    );
  }
}

abstract class _SearchProps implements SearchProps {
  const factory _SearchProps(
      {final String? search_session_id,
      final String? query_id,
      final String? query,
      final String? result_id,
      final List<String>? story_ids,
      final List<String>? moment_ids,
      final List<String>? video_ids,
      final int? total_results,
      final String? content_id,
      @JsonKey(unknownEnumValue: ContentType.unknown)
      final ContentType? content_type,
      final int? position}) = _$SearchPropsImpl;

  factory _SearchProps.fromJson(Map<String, dynamic> json) =
      _$SearchPropsImpl.fromJson;

  @override
  String? get search_session_id;
  @override
  String? get query_id;
  @override
  String? get query;
  @override
  String? get result_id;
  @override
  List<String>? get story_ids;
  @override
  List<String>? get moment_ids;
  @override
  List<String>? get video_ids;
  @override
  int? get total_results;
  @override
  String? get content_id;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type;
  @override
  int? get position;

  /// Create a copy of SearchProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPropsImplCopyWith<_$SearchPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WidgetProps _$WidgetPropsFromJson(Map<String, dynamic> json) {
  return _WidgetProps.fromJson(json);
}

/// @nodoc
mixin _$WidgetProps {
  String? get widget_id => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: WidgetType.unknown)
  WidgetType? get widget_type => throw _privateConstructorUsedError;
  String? get widget_size => throw _privateConstructorUsedError;
  int? get widget_content_count => throw _privateConstructorUsedError;

  /// The distance of the widget from the top of its scrollable parent.
  double? get placement_distance => throw _privateConstructorUsedError;
  String? get content_id => throw _privateConstructorUsedError;
  String? get content_name => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type => throw _privateConstructorUsedError;
  int? get content_index => throw _privateConstructorUsedError;
  String? get thumbnail_size => throw _privateConstructorUsedError;
  String? get thumbnail_aspect_ratio => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ThumbnailType.unknown)
  ThumbnailType? get thumbnail_type => throw _privateConstructorUsedError;
  List<String>? get widget_content_list => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  bool? get animated_thumbnail_enabled => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ThumbnailFormat.unknown)
  ThumbnailFormat? get thumbnail_format => throw _privateConstructorUsedError;
  Map<String, String>? get localization => throw _privateConstructorUsedError;

  /// Android only.
  String? get widget_fold_position => throw _privateConstructorUsedError;

  /// Android only.
  String? get page_view_id => throw _privateConstructorUsedError;

  /// Android only.
  String? get placement_id => throw _privateConstructorUsedError;

  /// Android only.
  String? get placement_name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WidgetProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WidgetProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WidgetProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WidgetProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WidgetProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WidgetPropsCopyWith<WidgetProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetPropsCopyWith<$Res> {
  factory $WidgetPropsCopyWith(
          WidgetProps value, $Res Function(WidgetProps) then) =
      _$WidgetPropsCopyWithImpl<$Res, WidgetProps>;
  @useResult
  $Res call(
      {String? widget_id,
      @JsonKey(unknownEnumValue: WidgetType.unknown) WidgetType? widget_type,
      String? widget_size,
      int? widget_content_count,
      double? placement_distance,
      String? content_id,
      String? content_name,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      int? content_index,
      String? thumbnail_size,
      String? thumbnail_aspect_ratio,
      @JsonKey(unknownEnumValue: ThumbnailType.unknown)
      ThumbnailType? thumbnail_type,
      List<String>? widget_content_list,
      Map<String, String>? content_extra_info,
      bool? animated_thumbnail_enabled,
      @JsonKey(unknownEnumValue: ThumbnailFormat.unknown)
      ThumbnailFormat? thumbnail_format,
      Map<String, String>? localization,
      String? widget_fold_position,
      String? page_view_id,
      String? placement_id,
      String? placement_name});
}

/// @nodoc
class _$WidgetPropsCopyWithImpl<$Res, $Val extends WidgetProps>
    implements $WidgetPropsCopyWith<$Res> {
  _$WidgetPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WidgetProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widget_id = freezed,
    Object? widget_type = freezed,
    Object? widget_size = freezed,
    Object? widget_content_count = freezed,
    Object? placement_distance = freezed,
    Object? content_id = freezed,
    Object? content_name = freezed,
    Object? content_type = freezed,
    Object? content_index = freezed,
    Object? thumbnail_size = freezed,
    Object? thumbnail_aspect_ratio = freezed,
    Object? thumbnail_type = freezed,
    Object? widget_content_list = freezed,
    Object? content_extra_info = freezed,
    Object? animated_thumbnail_enabled = freezed,
    Object? thumbnail_format = freezed,
    Object? localization = freezed,
    Object? widget_fold_position = freezed,
    Object? page_view_id = freezed,
    Object? placement_id = freezed,
    Object? placement_name = freezed,
  }) {
    return _then(_value.copyWith(
      widget_id: freezed == widget_id
          ? _value.widget_id
          : widget_id // ignore: cast_nullable_to_non_nullable
              as String?,
      widget_type: freezed == widget_type
          ? _value.widget_type
          : widget_type // ignore: cast_nullable_to_non_nullable
              as WidgetType?,
      widget_size: freezed == widget_size
          ? _value.widget_size
          : widget_size // ignore: cast_nullable_to_non_nullable
              as String?,
      widget_content_count: freezed == widget_content_count
          ? _value.widget_content_count
          : widget_content_count // ignore: cast_nullable_to_non_nullable
              as int?,
      placement_distance: freezed == placement_distance
          ? _value.placement_distance
          : placement_distance // ignore: cast_nullable_to_non_nullable
              as double?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_name: freezed == content_name
          ? _value.content_name
          : content_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      content_index: freezed == content_index
          ? _value.content_index
          : content_index // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail_size: freezed == thumbnail_size
          ? _value.thumbnail_size
          : thumbnail_size // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail_aspect_ratio: freezed == thumbnail_aspect_ratio
          ? _value.thumbnail_aspect_ratio
          : thumbnail_aspect_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail_type: freezed == thumbnail_type
          ? _value.thumbnail_type
          : thumbnail_type // ignore: cast_nullable_to_non_nullable
              as ThumbnailType?,
      widget_content_list: freezed == widget_content_list
          ? _value.widget_content_list
          : widget_content_list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      animated_thumbnail_enabled: freezed == animated_thumbnail_enabled
          ? _value.animated_thumbnail_enabled
          : animated_thumbnail_enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      thumbnail_format: freezed == thumbnail_format
          ? _value.thumbnail_format
          : thumbnail_format // ignore: cast_nullable_to_non_nullable
              as ThumbnailFormat?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      widget_fold_position: freezed == widget_fold_position
          ? _value.widget_fold_position
          : widget_fold_position // ignore: cast_nullable_to_non_nullable
              as String?,
      page_view_id: freezed == page_view_id
          ? _value.page_view_id
          : page_view_id // ignore: cast_nullable_to_non_nullable
              as String?,
      placement_id: freezed == placement_id
          ? _value.placement_id
          : placement_id // ignore: cast_nullable_to_non_nullable
              as String?,
      placement_name: freezed == placement_name
          ? _value.placement_name
          : placement_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WidgetPropsImplCopyWith<$Res>
    implements $WidgetPropsCopyWith<$Res> {
  factory _$$WidgetPropsImplCopyWith(
          _$WidgetPropsImpl value, $Res Function(_$WidgetPropsImpl) then) =
      __$$WidgetPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? widget_id,
      @JsonKey(unknownEnumValue: WidgetType.unknown) WidgetType? widget_type,
      String? widget_size,
      int? widget_content_count,
      double? placement_distance,
      String? content_id,
      String? content_name,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      int? content_index,
      String? thumbnail_size,
      String? thumbnail_aspect_ratio,
      @JsonKey(unknownEnumValue: ThumbnailType.unknown)
      ThumbnailType? thumbnail_type,
      List<String>? widget_content_list,
      Map<String, String>? content_extra_info,
      bool? animated_thumbnail_enabled,
      @JsonKey(unknownEnumValue: ThumbnailFormat.unknown)
      ThumbnailFormat? thumbnail_format,
      Map<String, String>? localization,
      String? widget_fold_position,
      String? page_view_id,
      String? placement_id,
      String? placement_name});
}

/// @nodoc
class __$$WidgetPropsImplCopyWithImpl<$Res>
    extends _$WidgetPropsCopyWithImpl<$Res, _$WidgetPropsImpl>
    implements _$$WidgetPropsImplCopyWith<$Res> {
  __$$WidgetPropsImplCopyWithImpl(
      _$WidgetPropsImpl _value, $Res Function(_$WidgetPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WidgetProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widget_id = freezed,
    Object? widget_type = freezed,
    Object? widget_size = freezed,
    Object? widget_content_count = freezed,
    Object? placement_distance = freezed,
    Object? content_id = freezed,
    Object? content_name = freezed,
    Object? content_type = freezed,
    Object? content_index = freezed,
    Object? thumbnail_size = freezed,
    Object? thumbnail_aspect_ratio = freezed,
    Object? thumbnail_type = freezed,
    Object? widget_content_list = freezed,
    Object? content_extra_info = freezed,
    Object? animated_thumbnail_enabled = freezed,
    Object? thumbnail_format = freezed,
    Object? localization = freezed,
    Object? widget_fold_position = freezed,
    Object? page_view_id = freezed,
    Object? placement_id = freezed,
    Object? placement_name = freezed,
  }) {
    return _then(_$WidgetPropsImpl(
      widget_id: freezed == widget_id
          ? _value.widget_id
          : widget_id // ignore: cast_nullable_to_non_nullable
              as String?,
      widget_type: freezed == widget_type
          ? _value.widget_type
          : widget_type // ignore: cast_nullable_to_non_nullable
              as WidgetType?,
      widget_size: freezed == widget_size
          ? _value.widget_size
          : widget_size // ignore: cast_nullable_to_non_nullable
              as String?,
      widget_content_count: freezed == widget_content_count
          ? _value.widget_content_count
          : widget_content_count // ignore: cast_nullable_to_non_nullable
              as int?,
      placement_distance: freezed == placement_distance
          ? _value.placement_distance
          : placement_distance // ignore: cast_nullable_to_non_nullable
              as double?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_name: freezed == content_name
          ? _value.content_name
          : content_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      content_index: freezed == content_index
          ? _value.content_index
          : content_index // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail_size: freezed == thumbnail_size
          ? _value.thumbnail_size
          : thumbnail_size // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail_aspect_ratio: freezed == thumbnail_aspect_ratio
          ? _value.thumbnail_aspect_ratio
          : thumbnail_aspect_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail_type: freezed == thumbnail_type
          ? _value.thumbnail_type
          : thumbnail_type // ignore: cast_nullable_to_non_nullable
              as ThumbnailType?,
      widget_content_list: freezed == widget_content_list
          ? _value._widget_content_list
          : widget_content_list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      animated_thumbnail_enabled: freezed == animated_thumbnail_enabled
          ? _value.animated_thumbnail_enabled
          : animated_thumbnail_enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      thumbnail_format: freezed == thumbnail_format
          ? _value.thumbnail_format
          : thumbnail_format // ignore: cast_nullable_to_non_nullable
              as ThumbnailFormat?,
      localization: freezed == localization
          ? _value._localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      widget_fold_position: freezed == widget_fold_position
          ? _value.widget_fold_position
          : widget_fold_position // ignore: cast_nullable_to_non_nullable
              as String?,
      page_view_id: freezed == page_view_id
          ? _value.page_view_id
          : page_view_id // ignore: cast_nullable_to_non_nullable
              as String?,
      placement_id: freezed == placement_id
          ? _value.placement_id
          : placement_id // ignore: cast_nullable_to_non_nullable
              as String?,
      placement_name: freezed == placement_name
          ? _value.placement_name
          : placement_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WidgetPropsImpl with DiagnosticableTreeMixin implements _WidgetProps {
  const _$WidgetPropsImpl(
      {this.widget_id,
      @JsonKey(unknownEnumValue: WidgetType.unknown) this.widget_type,
      this.widget_size,
      this.widget_content_count,
      this.placement_distance,
      this.content_id,
      this.content_name,
      @JsonKey(unknownEnumValue: ContentType.unknown) this.content_type,
      this.content_index,
      this.thumbnail_size,
      this.thumbnail_aspect_ratio,
      @JsonKey(unknownEnumValue: ThumbnailType.unknown) this.thumbnail_type,
      final List<String>? widget_content_list,
      final Map<String, String>? content_extra_info,
      this.animated_thumbnail_enabled,
      @JsonKey(unknownEnumValue: ThumbnailFormat.unknown) this.thumbnail_format,
      final Map<String, String>? localization,
      this.widget_fold_position,
      this.page_view_id,
      this.placement_id,
      this.placement_name})
      : _widget_content_list = widget_content_list,
        _content_extra_info = content_extra_info,
        _localization = localization;

  factory _$WidgetPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WidgetPropsImplFromJson(json);

  @override
  final String? widget_id;
  @override
  @JsonKey(unknownEnumValue: WidgetType.unknown)
  final WidgetType? widget_type;
  @override
  final String? widget_size;
  @override
  final int? widget_content_count;

  /// The distance of the widget from the top of its scrollable parent.
  @override
  final double? placement_distance;
  @override
  final String? content_id;
  @override
  final String? content_name;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  final ContentType? content_type;
  @override
  final int? content_index;
  @override
  final String? thumbnail_size;
  @override
  final String? thumbnail_aspect_ratio;
  @override
  @JsonKey(unknownEnumValue: ThumbnailType.unknown)
  final ThumbnailType? thumbnail_type;
  final List<String>? _widget_content_list;
  @override
  List<String>? get widget_content_list {
    final value = _widget_content_list;
    if (value == null) return null;
    if (_widget_content_list is EqualUnmodifiableListView)
      return _widget_content_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _content_extra_info;
  @override
  Map<String, String>? get content_extra_info {
    final value = _content_extra_info;
    if (value == null) return null;
    if (_content_extra_info is EqualUnmodifiableMapView)
      return _content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? animated_thumbnail_enabled;
  @override
  @JsonKey(unknownEnumValue: ThumbnailFormat.unknown)
  final ThumbnailFormat? thumbnail_format;
  final Map<String, String>? _localization;
  @override
  Map<String, String>? get localization {
    final value = _localization;
    if (value == null) return null;
    if (_localization is EqualUnmodifiableMapView) return _localization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Android only.
  @override
  final String? widget_fold_position;

  /// Android only.
  @override
  final String? page_view_id;

  /// Android only.
  @override
  final String? placement_id;

  /// Android only.
  @override
  final String? placement_name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WidgetProps(widget_id: $widget_id, widget_type: $widget_type, widget_size: $widget_size, widget_content_count: $widget_content_count, placement_distance: $placement_distance, content_id: $content_id, content_name: $content_name, content_type: $content_type, content_index: $content_index, thumbnail_size: $thumbnail_size, thumbnail_aspect_ratio: $thumbnail_aspect_ratio, thumbnail_type: $thumbnail_type, widget_content_list: $widget_content_list, content_extra_info: $content_extra_info, animated_thumbnail_enabled: $animated_thumbnail_enabled, thumbnail_format: $thumbnail_format, localization: $localization, widget_fold_position: $widget_fold_position, page_view_id: $page_view_id, placement_id: $placement_id, placement_name: $placement_name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WidgetProps'))
      ..add(DiagnosticsProperty('widget_id', widget_id))
      ..add(DiagnosticsProperty('widget_type', widget_type))
      ..add(DiagnosticsProperty('widget_size', widget_size))
      ..add(DiagnosticsProperty('widget_content_count', widget_content_count))
      ..add(DiagnosticsProperty('placement_distance', placement_distance))
      ..add(DiagnosticsProperty('content_id', content_id))
      ..add(DiagnosticsProperty('content_name', content_name))
      ..add(DiagnosticsProperty('content_type', content_type))
      ..add(DiagnosticsProperty('content_index', content_index))
      ..add(DiagnosticsProperty('thumbnail_size', thumbnail_size))
      ..add(
          DiagnosticsProperty('thumbnail_aspect_ratio', thumbnail_aspect_ratio))
      ..add(DiagnosticsProperty('thumbnail_type', thumbnail_type))
      ..add(DiagnosticsProperty('widget_content_list', widget_content_list))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty(
          'animated_thumbnail_enabled', animated_thumbnail_enabled))
      ..add(DiagnosticsProperty('thumbnail_format', thumbnail_format))
      ..add(DiagnosticsProperty('localization', localization))
      ..add(DiagnosticsProperty('widget_fold_position', widget_fold_position))
      ..add(DiagnosticsProperty('page_view_id', page_view_id))
      ..add(DiagnosticsProperty('placement_id', placement_id))
      ..add(DiagnosticsProperty('placement_name', placement_name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetPropsImpl &&
            (identical(other.widget_id, widget_id) ||
                other.widget_id == widget_id) &&
            (identical(other.widget_type, widget_type) ||
                other.widget_type == widget_type) &&
            (identical(other.widget_size, widget_size) ||
                other.widget_size == widget_size) &&
            (identical(other.widget_content_count, widget_content_count) ||
                other.widget_content_count == widget_content_count) &&
            (identical(other.placement_distance, placement_distance) ||
                other.placement_distance == placement_distance) &&
            (identical(other.content_id, content_id) ||
                other.content_id == content_id) &&
            (identical(other.content_name, content_name) ||
                other.content_name == content_name) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            (identical(other.content_index, content_index) ||
                other.content_index == content_index) &&
            (identical(other.thumbnail_size, thumbnail_size) ||
                other.thumbnail_size == thumbnail_size) &&
            (identical(other.thumbnail_aspect_ratio, thumbnail_aspect_ratio) ||
                other.thumbnail_aspect_ratio == thumbnail_aspect_ratio) &&
            (identical(other.thumbnail_type, thumbnail_type) ||
                other.thumbnail_type == thumbnail_type) &&
            const DeepCollectionEquality()
                .equals(other._widget_content_list, _widget_content_list) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            (identical(other.animated_thumbnail_enabled,
                    animated_thumbnail_enabled) ||
                other.animated_thumbnail_enabled ==
                    animated_thumbnail_enabled) &&
            (identical(other.thumbnail_format, thumbnail_format) ||
                other.thumbnail_format == thumbnail_format) &&
            const DeepCollectionEquality()
                .equals(other._localization, _localization) &&
            (identical(other.widget_fold_position, widget_fold_position) ||
                other.widget_fold_position == widget_fold_position) &&
            (identical(other.page_view_id, page_view_id) ||
                other.page_view_id == page_view_id) &&
            (identical(other.placement_id, placement_id) ||
                other.placement_id == placement_id) &&
            (identical(other.placement_name, placement_name) ||
                other.placement_name == placement_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        widget_id,
        widget_type,
        widget_size,
        widget_content_count,
        placement_distance,
        content_id,
        content_name,
        content_type,
        content_index,
        thumbnail_size,
        thumbnail_aspect_ratio,
        thumbnail_type,
        const DeepCollectionEquality().hash(_widget_content_list),
        const DeepCollectionEquality().hash(_content_extra_info),
        animated_thumbnail_enabled,
        thumbnail_format,
        const DeepCollectionEquality().hash(_localization),
        widget_fold_position,
        page_view_id,
        placement_id,
        placement_name
      ]);

  /// Create a copy of WidgetProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetPropsImplCopyWith<_$WidgetPropsImpl> get copyWith =>
      __$$WidgetPropsImplCopyWithImpl<_$WidgetPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WidgetProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WidgetProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WidgetProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WidgetPropsImplToJson(
      this,
    );
  }
}

abstract class _WidgetProps implements WidgetProps {
  const factory _WidgetProps(
      {final String? widget_id,
      @JsonKey(unknownEnumValue: WidgetType.unknown)
      final WidgetType? widget_type,
      final String? widget_size,
      final int? widget_content_count,
      final double? placement_distance,
      final String? content_id,
      final String? content_name,
      @JsonKey(unknownEnumValue: ContentType.unknown)
      final ContentType? content_type,
      final int? content_index,
      final String? thumbnail_size,
      final String? thumbnail_aspect_ratio,
      @JsonKey(unknownEnumValue: ThumbnailType.unknown)
      final ThumbnailType? thumbnail_type,
      final List<String>? widget_content_list,
      final Map<String, String>? content_extra_info,
      final bool? animated_thumbnail_enabled,
      @JsonKey(unknownEnumValue: ThumbnailFormat.unknown)
      final ThumbnailFormat? thumbnail_format,
      final Map<String, String>? localization,
      final String? widget_fold_position,
      final String? page_view_id,
      final String? placement_id,
      final String? placement_name}) = _$WidgetPropsImpl;

  factory _WidgetProps.fromJson(Map<String, dynamic> json) =
      _$WidgetPropsImpl.fromJson;

  @override
  String? get widget_id;
  @override
  @JsonKey(unknownEnumValue: WidgetType.unknown)
  WidgetType? get widget_type;
  @override
  String? get widget_size;
  @override
  int? get widget_content_count;

  /// The distance of the widget from the top of its scrollable parent.
  @override
  double? get placement_distance;
  @override
  String? get content_id;
  @override
  String? get content_name;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type;
  @override
  int? get content_index;
  @override
  String? get thumbnail_size;
  @override
  String? get thumbnail_aspect_ratio;
  @override
  @JsonKey(unknownEnumValue: ThumbnailType.unknown)
  ThumbnailType? get thumbnail_type;
  @override
  List<String>? get widget_content_list;
  @override
  Map<String, String>? get content_extra_info;
  @override
  bool? get animated_thumbnail_enabled;
  @override
  @JsonKey(unknownEnumValue: ThumbnailFormat.unknown)
  ThumbnailFormat? get thumbnail_format;
  @override
  Map<String, String>? get localization;

  /// Android only.
  @override
  String? get widget_fold_position;

  /// Android only.
  @override
  String? get page_view_id;

  /// Android only.
  @override
  String? get placement_id;

  /// Android only.
  @override
  String? get placement_name;

  /// Create a copy of WidgetProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetPropsImplCopyWith<_$WidgetPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoryProps _$StoryPropsFromJson(Map<String, dynamic> json) {
  return _StoryProps.fromJson(json);
}

/// @nodoc
mixin _$StoryProps {
  String? get story_session_id => throw _privateConstructorUsedError;
  String? get story_id => throw _privateConstructorUsedError;
  String? get story_title => throw _privateConstructorUsedError;
  int? get story_index => throw _privateConstructorUsedError;
  int? get total_stories_count => throw _privateConstructorUsedError;
  int? get remaining_unread_count => throw _privateConstructorUsedError;
  int? get remaining_unread_pages => throw _privateConstructorUsedError;
  String? get next_story_id => throw _privateConstructorUsedError;
  bool? get is_last_page => throw _privateConstructorUsedError;
  String? get content_ratio => throw _privateConstructorUsedError;
  String? get story_page_id => throw _privateConstructorUsedError;
  String? get story_page_parent_id => throw _privateConstructorUsedError;
  String? get story_page_type => throw _privateConstructorUsedError;
  int? get story_page_index => throw _privateConstructorUsedError;
  int? get story_page_count => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
  PlayableNavigationType? get story_page_navigation_type =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
  PlayableNavigationDirection? get story_page_navigation_direction =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  PlayerStartTriggers? get story_start_trigger =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get story_exit_trigger =>
      throw _privateConstructorUsedError;
  double? get story_page_duration => throw _privateConstructorUsedError;

  /// The share of the page that was watched, from 0 to 100, with two
  /// decimals.
  double? get story_page_duration_viewed_percent =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state => throw _privateConstructorUsedError;
  String? get cc_state => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  Map<String, String>? get story_page_content_extra_info =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
  BlazeAnalyticsAdGestureType? get gesture_type =>
      throw _privateConstructorUsedError;
  String? get custom_button_name => throw _privateConstructorUsedError;
  AnalyticsCtaConfig? get cta_config => throw _privateConstructorUsedError;
  bool? get cta_shown => throw _privateConstructorUsedError;
  AnalyticsCustomActionButtonConfig? get custom_action_button_config =>
      throw _privateConstructorUsedError;
  bool? get custom_action_button_shown => throw _privateConstructorUsedError;
  Map<String, String>? get localization => throw _privateConstructorUsedError;
  int? get user_lifetime_engagements => throw _privateConstructorUsedError;
  String? get attribution_token => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StoryProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StoryProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StoryProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this StoryProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoryProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryPropsCopyWith<StoryProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryPropsCopyWith<$Res> {
  factory $StoryPropsCopyWith(
          StoryProps value, $Res Function(StoryProps) then) =
      _$StoryPropsCopyWithImpl<$Res, StoryProps>;
  @useResult
  $Res call(
      {String? story_session_id,
      String? story_id,
      String? story_title,
      int? story_index,
      int? total_stories_count,
      int? remaining_unread_count,
      int? remaining_unread_pages,
      String? next_story_id,
      bool? is_last_page,
      String? content_ratio,
      String? story_page_id,
      String? story_page_parent_id,
      String? story_page_type,
      int? story_page_index,
      int? story_page_count,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      PlayableNavigationType? story_page_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      PlayableNavigationDirection? story_page_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      PlayerStartTriggers? story_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? story_exit_trigger,
      double? story_page_duration,
      double? story_page_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      String? cc_state,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      BlazeAnalyticsAdGestureType? gesture_type,
      String? custom_button_name,
      AnalyticsCtaConfig? cta_config,
      bool? cta_shown,
      AnalyticsCustomActionButtonConfig? custom_action_button_config,
      bool? custom_action_button_shown,
      Map<String, String>? localization,
      int? user_lifetime_engagements,
      String? attribution_token});

  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config;
  $AnalyticsCustomActionButtonConfigCopyWith<$Res>?
      get custom_action_button_config;
}

/// @nodoc
class _$StoryPropsCopyWithImpl<$Res, $Val extends StoryProps>
    implements $StoryPropsCopyWith<$Res> {
  _$StoryPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story_session_id = freezed,
    Object? story_id = freezed,
    Object? story_title = freezed,
    Object? story_index = freezed,
    Object? total_stories_count = freezed,
    Object? remaining_unread_count = freezed,
    Object? remaining_unread_pages = freezed,
    Object? next_story_id = freezed,
    Object? is_last_page = freezed,
    Object? content_ratio = freezed,
    Object? story_page_id = freezed,
    Object? story_page_parent_id = freezed,
    Object? story_page_type = freezed,
    Object? story_page_index = freezed,
    Object? story_page_count = freezed,
    Object? story_page_navigation_type = freezed,
    Object? story_page_navigation_direction = freezed,
    Object? story_start_trigger = freezed,
    Object? story_exit_trigger = freezed,
    Object? story_page_duration = freezed,
    Object? story_page_duration_viewed_percent = freezed,
    Object? audio_state = freezed,
    Object? cc_state = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? gesture_type = freezed,
    Object? custom_button_name = freezed,
    Object? cta_config = freezed,
    Object? cta_shown = freezed,
    Object? custom_action_button_config = freezed,
    Object? custom_action_button_shown = freezed,
    Object? localization = freezed,
    Object? user_lifetime_engagements = freezed,
    Object? attribution_token = freezed,
  }) {
    return _then(_value.copyWith(
      story_session_id: freezed == story_session_id
          ? _value.story_session_id
          : story_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_id: freezed == story_id
          ? _value.story_id
          : story_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_title: freezed == story_title
          ? _value.story_title
          : story_title // ignore: cast_nullable_to_non_nullable
              as String?,
      story_index: freezed == story_index
          ? _value.story_index
          : story_index // ignore: cast_nullable_to_non_nullable
              as int?,
      total_stories_count: freezed == total_stories_count
          ? _value.total_stories_count
          : total_stories_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_count: freezed == remaining_unread_count
          ? _value.remaining_unread_count
          : remaining_unread_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_pages: freezed == remaining_unread_pages
          ? _value.remaining_unread_pages
          : remaining_unread_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      next_story_id: freezed == next_story_id
          ? _value.next_story_id
          : next_story_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_last_page: freezed == is_last_page
          ? _value.is_last_page
          : is_last_page // ignore: cast_nullable_to_non_nullable
              as bool?,
      content_ratio: freezed == content_ratio
          ? _value.content_ratio
          : content_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_id: freezed == story_page_id
          ? _value.story_page_id
          : story_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_parent_id: freezed == story_page_parent_id
          ? _value.story_page_parent_id
          : story_page_parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_type: freezed == story_page_type
          ? _value.story_page_type
          : story_page_type // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_index: freezed == story_page_index
          ? _value.story_page_index
          : story_page_index // ignore: cast_nullable_to_non_nullable
              as int?,
      story_page_count: freezed == story_page_count
          ? _value.story_page_count
          : story_page_count // ignore: cast_nullable_to_non_nullable
              as int?,
      story_page_navigation_type: freezed == story_page_navigation_type
          ? _value.story_page_navigation_type
          : story_page_navigation_type // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationType?,
      story_page_navigation_direction: freezed ==
              story_page_navigation_direction
          ? _value.story_page_navigation_direction
          : story_page_navigation_direction // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationDirection?,
      story_start_trigger: freezed == story_start_trigger
          ? _value.story_start_trigger
          : story_start_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerStartTriggers?,
      story_exit_trigger: freezed == story_exit_trigger
          ? _value.story_exit_trigger
          : story_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      story_page_duration: freezed == story_page_duration
          ? _value.story_page_duration
          : story_page_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      story_page_duration_viewed_percent: freezed ==
              story_page_duration_viewed_percent
          ? _value.story_page_duration_viewed_percent
          : story_page_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value.story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      gesture_type: freezed == gesture_type
          ? _value.gesture_type
          : gesture_type // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsAdGestureType?,
      custom_button_name: freezed == custom_button_name
          ? _value.custom_button_name
          : custom_button_name // ignore: cast_nullable_to_non_nullable
              as String?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCtaConfig?,
      cta_shown: freezed == cta_shown
          ? _value.cta_shown
          : cta_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      custom_action_button_config: freezed == custom_action_button_config
          ? _value.custom_action_button_config
          : custom_action_button_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCustomActionButtonConfig?,
      custom_action_button_shown: freezed == custom_action_button_shown
          ? _value.custom_action_button_shown
          : custom_action_button_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      user_lifetime_engagements: freezed == user_lifetime_engagements
          ? _value.user_lifetime_engagements
          : user_lifetime_engagements // ignore: cast_nullable_to_non_nullable
              as int?,
      attribution_token: freezed == attribution_token
          ? _value.attribution_token
          : attribution_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StoryProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config {
    if (_value.cta_config == null) {
      return null;
    }

    return $AnalyticsCtaConfigCopyWith<$Res>(_value.cta_config!, (value) {
      return _then(_value.copyWith(cta_config: value) as $Val);
    });
  }

  /// Create a copy of StoryProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsCustomActionButtonConfigCopyWith<$Res>?
      get custom_action_button_config {
    if (_value.custom_action_button_config == null) {
      return null;
    }

    return $AnalyticsCustomActionButtonConfigCopyWith<$Res>(
        _value.custom_action_button_config!, (value) {
      return _then(_value.copyWith(custom_action_button_config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoryPropsImplCopyWith<$Res>
    implements $StoryPropsCopyWith<$Res> {
  factory _$$StoryPropsImplCopyWith(
          _$StoryPropsImpl value, $Res Function(_$StoryPropsImpl) then) =
      __$$StoryPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? story_session_id,
      String? story_id,
      String? story_title,
      int? story_index,
      int? total_stories_count,
      int? remaining_unread_count,
      int? remaining_unread_pages,
      String? next_story_id,
      bool? is_last_page,
      String? content_ratio,
      String? story_page_id,
      String? story_page_parent_id,
      String? story_page_type,
      int? story_page_index,
      int? story_page_count,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      PlayableNavigationType? story_page_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      PlayableNavigationDirection? story_page_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      PlayerStartTriggers? story_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? story_exit_trigger,
      double? story_page_duration,
      double? story_page_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      String? cc_state,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      BlazeAnalyticsAdGestureType? gesture_type,
      String? custom_button_name,
      AnalyticsCtaConfig? cta_config,
      bool? cta_shown,
      AnalyticsCustomActionButtonConfig? custom_action_button_config,
      bool? custom_action_button_shown,
      Map<String, String>? localization,
      int? user_lifetime_engagements,
      String? attribution_token});

  @override
  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config;
  @override
  $AnalyticsCustomActionButtonConfigCopyWith<$Res>?
      get custom_action_button_config;
}

/// @nodoc
class __$$StoryPropsImplCopyWithImpl<$Res>
    extends _$StoryPropsCopyWithImpl<$Res, _$StoryPropsImpl>
    implements _$$StoryPropsImplCopyWith<$Res> {
  __$$StoryPropsImplCopyWithImpl(
      _$StoryPropsImpl _value, $Res Function(_$StoryPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story_session_id = freezed,
    Object? story_id = freezed,
    Object? story_title = freezed,
    Object? story_index = freezed,
    Object? total_stories_count = freezed,
    Object? remaining_unread_count = freezed,
    Object? remaining_unread_pages = freezed,
    Object? next_story_id = freezed,
    Object? is_last_page = freezed,
    Object? content_ratio = freezed,
    Object? story_page_id = freezed,
    Object? story_page_parent_id = freezed,
    Object? story_page_type = freezed,
    Object? story_page_index = freezed,
    Object? story_page_count = freezed,
    Object? story_page_navigation_type = freezed,
    Object? story_page_navigation_direction = freezed,
    Object? story_start_trigger = freezed,
    Object? story_exit_trigger = freezed,
    Object? story_page_duration = freezed,
    Object? story_page_duration_viewed_percent = freezed,
    Object? audio_state = freezed,
    Object? cc_state = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? gesture_type = freezed,
    Object? custom_button_name = freezed,
    Object? cta_config = freezed,
    Object? cta_shown = freezed,
    Object? custom_action_button_config = freezed,
    Object? custom_action_button_shown = freezed,
    Object? localization = freezed,
    Object? user_lifetime_engagements = freezed,
    Object? attribution_token = freezed,
  }) {
    return _then(_$StoryPropsImpl(
      story_session_id: freezed == story_session_id
          ? _value.story_session_id
          : story_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_id: freezed == story_id
          ? _value.story_id
          : story_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_title: freezed == story_title
          ? _value.story_title
          : story_title // ignore: cast_nullable_to_non_nullable
              as String?,
      story_index: freezed == story_index
          ? _value.story_index
          : story_index // ignore: cast_nullable_to_non_nullable
              as int?,
      total_stories_count: freezed == total_stories_count
          ? _value.total_stories_count
          : total_stories_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_count: freezed == remaining_unread_count
          ? _value.remaining_unread_count
          : remaining_unread_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_pages: freezed == remaining_unread_pages
          ? _value.remaining_unread_pages
          : remaining_unread_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      next_story_id: freezed == next_story_id
          ? _value.next_story_id
          : next_story_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_last_page: freezed == is_last_page
          ? _value.is_last_page
          : is_last_page // ignore: cast_nullable_to_non_nullable
              as bool?,
      content_ratio: freezed == content_ratio
          ? _value.content_ratio
          : content_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_id: freezed == story_page_id
          ? _value.story_page_id
          : story_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_parent_id: freezed == story_page_parent_id
          ? _value.story_page_parent_id
          : story_page_parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_type: freezed == story_page_type
          ? _value.story_page_type
          : story_page_type // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_index: freezed == story_page_index
          ? _value.story_page_index
          : story_page_index // ignore: cast_nullable_to_non_nullable
              as int?,
      story_page_count: freezed == story_page_count
          ? _value.story_page_count
          : story_page_count // ignore: cast_nullable_to_non_nullable
              as int?,
      story_page_navigation_type: freezed == story_page_navigation_type
          ? _value.story_page_navigation_type
          : story_page_navigation_type // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationType?,
      story_page_navigation_direction: freezed ==
              story_page_navigation_direction
          ? _value.story_page_navigation_direction
          : story_page_navigation_direction // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationDirection?,
      story_start_trigger: freezed == story_start_trigger
          ? _value.story_start_trigger
          : story_start_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerStartTriggers?,
      story_exit_trigger: freezed == story_exit_trigger
          ? _value.story_exit_trigger
          : story_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      story_page_duration: freezed == story_page_duration
          ? _value.story_page_duration
          : story_page_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      story_page_duration_viewed_percent: freezed ==
              story_page_duration_viewed_percent
          ? _value.story_page_duration_viewed_percent
          : story_page_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value._story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      gesture_type: freezed == gesture_type
          ? _value.gesture_type
          : gesture_type // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsAdGestureType?,
      custom_button_name: freezed == custom_button_name
          ? _value.custom_button_name
          : custom_button_name // ignore: cast_nullable_to_non_nullable
              as String?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCtaConfig?,
      cta_shown: freezed == cta_shown
          ? _value.cta_shown
          : cta_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      custom_action_button_config: freezed == custom_action_button_config
          ? _value.custom_action_button_config
          : custom_action_button_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCustomActionButtonConfig?,
      custom_action_button_shown: freezed == custom_action_button_shown
          ? _value.custom_action_button_shown
          : custom_action_button_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      localization: freezed == localization
          ? _value._localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      user_lifetime_engagements: freezed == user_lifetime_engagements
          ? _value.user_lifetime_engagements
          : user_lifetime_engagements // ignore: cast_nullable_to_non_nullable
              as int?,
      attribution_token: freezed == attribution_token
          ? _value.attribution_token
          : attribution_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryPropsImpl with DiagnosticableTreeMixin implements _StoryProps {
  const _$StoryPropsImpl(
      {this.story_session_id,
      this.story_id,
      this.story_title,
      this.story_index,
      this.total_stories_count,
      this.remaining_unread_count,
      this.remaining_unread_pages,
      this.next_story_id,
      this.is_last_page,
      this.content_ratio,
      this.story_page_id,
      this.story_page_parent_id,
      this.story_page_type,
      this.story_page_index,
      this.story_page_count,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      this.story_page_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      this.story_page_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      this.story_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      this.story_exit_trigger,
      this.story_page_duration,
      this.story_page_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) this.audio_state,
      this.cc_state,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      this.gesture_type,
      this.custom_button_name,
      this.cta_config,
      this.cta_shown,
      this.custom_action_button_config,
      this.custom_action_button_shown,
      final Map<String, String>? localization,
      this.user_lifetime_engagements,
      this.attribution_token})
      : _content_extra_info = content_extra_info,
        _story_page_content_extra_info = story_page_content_extra_info,
        _localization = localization;

  factory _$StoryPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryPropsImplFromJson(json);

  @override
  final String? story_session_id;
  @override
  final String? story_id;
  @override
  final String? story_title;
  @override
  final int? story_index;
  @override
  final int? total_stories_count;
  @override
  final int? remaining_unread_count;
  @override
  final int? remaining_unread_pages;
  @override
  final String? next_story_id;
  @override
  final bool? is_last_page;
  @override
  final String? content_ratio;
  @override
  final String? story_page_id;
  @override
  final String? story_page_parent_id;
  @override
  final String? story_page_type;
  @override
  final int? story_page_index;
  @override
  final int? story_page_count;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
  final PlayableNavigationType? story_page_navigation_type;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
  final PlayableNavigationDirection? story_page_navigation_direction;
  @override
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  final PlayerStartTriggers? story_start_trigger;
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  final PlayerExitTriggers? story_exit_trigger;
  @override
  final double? story_page_duration;

  /// The share of the page that was watched, from 0 to 100, with two
  /// decimals.
  @override
  final double? story_page_duration_viewed_percent;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  final AudioState? audio_state;
  @override
  final String? cc_state;
  final Map<String, String>? _content_extra_info;
  @override
  Map<String, String>? get content_extra_info {
    final value = _content_extra_info;
    if (value == null) return null;
    if (_content_extra_info is EqualUnmodifiableMapView)
      return _content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _story_page_content_extra_info;
  @override
  Map<String, String>? get story_page_content_extra_info {
    final value = _story_page_content_extra_info;
    if (value == null) return null;
    if (_story_page_content_extra_info is EqualUnmodifiableMapView)
      return _story_page_content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
  final BlazeAnalyticsAdGestureType? gesture_type;
  @override
  final String? custom_button_name;
  @override
  final AnalyticsCtaConfig? cta_config;
  @override
  final bool? cta_shown;
  @override
  final AnalyticsCustomActionButtonConfig? custom_action_button_config;
  @override
  final bool? custom_action_button_shown;
  final Map<String, String>? _localization;
  @override
  Map<String, String>? get localization {
    final value = _localization;
    if (value == null) return null;
    if (_localization is EqualUnmodifiableMapView) return _localization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? user_lifetime_engagements;
  @override
  final String? attribution_token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryProps(story_session_id: $story_session_id, story_id: $story_id, story_title: $story_title, story_index: $story_index, total_stories_count: $total_stories_count, remaining_unread_count: $remaining_unread_count, remaining_unread_pages: $remaining_unread_pages, next_story_id: $next_story_id, is_last_page: $is_last_page, content_ratio: $content_ratio, story_page_id: $story_page_id, story_page_parent_id: $story_page_parent_id, story_page_type: $story_page_type, story_page_index: $story_page_index, story_page_count: $story_page_count, story_page_navigation_type: $story_page_navigation_type, story_page_navigation_direction: $story_page_navigation_direction, story_start_trigger: $story_start_trigger, story_exit_trigger: $story_exit_trigger, story_page_duration: $story_page_duration, story_page_duration_viewed_percent: $story_page_duration_viewed_percent, audio_state: $audio_state, cc_state: $cc_state, content_extra_info: $content_extra_info, story_page_content_extra_info: $story_page_content_extra_info, gesture_type: $gesture_type, custom_button_name: $custom_button_name, cta_config: $cta_config, cta_shown: $cta_shown, custom_action_button_config: $custom_action_button_config, custom_action_button_shown: $custom_action_button_shown, localization: $localization, user_lifetime_engagements: $user_lifetime_engagements, attribution_token: $attribution_token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoryProps'))
      ..add(DiagnosticsProperty('story_session_id', story_session_id))
      ..add(DiagnosticsProperty('story_id', story_id))
      ..add(DiagnosticsProperty('story_title', story_title))
      ..add(DiagnosticsProperty('story_index', story_index))
      ..add(DiagnosticsProperty('total_stories_count', total_stories_count))
      ..add(
          DiagnosticsProperty('remaining_unread_count', remaining_unread_count))
      ..add(
          DiagnosticsProperty('remaining_unread_pages', remaining_unread_pages))
      ..add(DiagnosticsProperty('next_story_id', next_story_id))
      ..add(DiagnosticsProperty('is_last_page', is_last_page))
      ..add(DiagnosticsProperty('content_ratio', content_ratio))
      ..add(DiagnosticsProperty('story_page_id', story_page_id))
      ..add(DiagnosticsProperty('story_page_parent_id', story_page_parent_id))
      ..add(DiagnosticsProperty('story_page_type', story_page_type))
      ..add(DiagnosticsProperty('story_page_index', story_page_index))
      ..add(DiagnosticsProperty('story_page_count', story_page_count))
      ..add(DiagnosticsProperty(
          'story_page_navigation_type', story_page_navigation_type))
      ..add(DiagnosticsProperty(
          'story_page_navigation_direction', story_page_navigation_direction))
      ..add(DiagnosticsProperty('story_start_trigger', story_start_trigger))
      ..add(DiagnosticsProperty('story_exit_trigger', story_exit_trigger))
      ..add(DiagnosticsProperty('story_page_duration', story_page_duration))
      ..add(DiagnosticsProperty('story_page_duration_viewed_percent',
          story_page_duration_viewed_percent))
      ..add(DiagnosticsProperty('audio_state', audio_state))
      ..add(DiagnosticsProperty('cc_state', cc_state))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty(
          'story_page_content_extra_info', story_page_content_extra_info))
      ..add(DiagnosticsProperty('gesture_type', gesture_type))
      ..add(DiagnosticsProperty('custom_button_name', custom_button_name))
      ..add(DiagnosticsProperty('cta_config', cta_config))
      ..add(DiagnosticsProperty('cta_shown', cta_shown))
      ..add(DiagnosticsProperty(
          'custom_action_button_config', custom_action_button_config))
      ..add(DiagnosticsProperty(
          'custom_action_button_shown', custom_action_button_shown))
      ..add(DiagnosticsProperty('localization', localization))
      ..add(DiagnosticsProperty(
          'user_lifetime_engagements', user_lifetime_engagements))
      ..add(DiagnosticsProperty('attribution_token', attribution_token));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryPropsImpl &&
            (identical(other.story_session_id, story_session_id) ||
                other.story_session_id == story_session_id) &&
            (identical(other.story_id, story_id) ||
                other.story_id == story_id) &&
            (identical(other.story_title, story_title) ||
                other.story_title == story_title) &&
            (identical(other.story_index, story_index) ||
                other.story_index == story_index) &&
            (identical(other.total_stories_count, total_stories_count) ||
                other.total_stories_count == total_stories_count) &&
            (identical(other.remaining_unread_count, remaining_unread_count) ||
                other.remaining_unread_count == remaining_unread_count) &&
            (identical(other.remaining_unread_pages, remaining_unread_pages) ||
                other.remaining_unread_pages == remaining_unread_pages) &&
            (identical(other.next_story_id, next_story_id) ||
                other.next_story_id == next_story_id) &&
            (identical(other.is_last_page, is_last_page) ||
                other.is_last_page == is_last_page) &&
            (identical(other.content_ratio, content_ratio) ||
                other.content_ratio == content_ratio) &&
            (identical(other.story_page_id, story_page_id) ||
                other.story_page_id == story_page_id) &&
            (identical(other.story_page_parent_id, story_page_parent_id) ||
                other.story_page_parent_id == story_page_parent_id) &&
            (identical(other.story_page_type, story_page_type) ||
                other.story_page_type == story_page_type) &&
            (identical(other.story_page_index, story_page_index) ||
                other.story_page_index == story_page_index) &&
            (identical(other.story_page_count, story_page_count) ||
                other.story_page_count == story_page_count) &&
            (identical(other.story_page_navigation_type, story_page_navigation_type) ||
                other.story_page_navigation_type ==
                    story_page_navigation_type) &&
            (identical(other.story_page_navigation_direction, story_page_navigation_direction) ||
                other.story_page_navigation_direction ==
                    story_page_navigation_direction) &&
            (identical(other.story_start_trigger, story_start_trigger) ||
                other.story_start_trigger == story_start_trigger) &&
            (identical(other.story_exit_trigger, story_exit_trigger) ||
                other.story_exit_trigger == story_exit_trigger) &&
            (identical(other.story_page_duration, story_page_duration) ||
                other.story_page_duration == story_page_duration) &&
            (identical(other.story_page_duration_viewed_percent, story_page_duration_viewed_percent) ||
                other.story_page_duration_viewed_percent ==
                    story_page_duration_viewed_percent) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
            (identical(other.cc_state, cc_state) ||
                other.cc_state == cc_state) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            const DeepCollectionEquality().equals(
                other._story_page_content_extra_info,
                _story_page_content_extra_info) &&
            (identical(other.gesture_type, gesture_type) ||
                other.gesture_type == gesture_type) &&
            (identical(other.custom_button_name, custom_button_name) ||
                other.custom_button_name == custom_button_name) &&
            (identical(other.cta_config, cta_config) ||
                other.cta_config == cta_config) &&
            (identical(other.cta_shown, cta_shown) ||
                other.cta_shown == cta_shown) &&
            (identical(other.custom_action_button_config, custom_action_button_config) ||
                other.custom_action_button_config ==
                    custom_action_button_config) &&
            (identical(other.custom_action_button_shown, custom_action_button_shown) || other.custom_action_button_shown == custom_action_button_shown) &&
            const DeepCollectionEquality().equals(other._localization, _localization) &&
            (identical(other.user_lifetime_engagements, user_lifetime_engagements) || other.user_lifetime_engagements == user_lifetime_engagements) &&
            (identical(other.attribution_token, attribution_token) || other.attribution_token == attribution_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        story_session_id,
        story_id,
        story_title,
        story_index,
        total_stories_count,
        remaining_unread_count,
        remaining_unread_pages,
        next_story_id,
        is_last_page,
        content_ratio,
        story_page_id,
        story_page_parent_id,
        story_page_type,
        story_page_index,
        story_page_count,
        story_page_navigation_type,
        story_page_navigation_direction,
        story_start_trigger,
        story_exit_trigger,
        story_page_duration,
        story_page_duration_viewed_percent,
        audio_state,
        cc_state,
        const DeepCollectionEquality().hash(_content_extra_info),
        const DeepCollectionEquality().hash(_story_page_content_extra_info),
        gesture_type,
        custom_button_name,
        cta_config,
        cta_shown,
        custom_action_button_config,
        custom_action_button_shown,
        const DeepCollectionEquality().hash(_localization),
        user_lifetime_engagements,
        attribution_token
      ]);

  /// Create a copy of StoryProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryPropsImplCopyWith<_$StoryPropsImpl> get copyWith =>
      __$$StoryPropsImplCopyWithImpl<_$StoryPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StoryProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StoryProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StoryProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryPropsImplToJson(
      this,
    );
  }
}

abstract class _StoryProps implements StoryProps {
  const factory _StoryProps(
      {final String? story_session_id,
      final String? story_id,
      final String? story_title,
      final int? story_index,
      final int? total_stories_count,
      final int? remaining_unread_count,
      final int? remaining_unread_pages,
      final String? next_story_id,
      final bool? is_last_page,
      final String? content_ratio,
      final String? story_page_id,
      final String? story_page_parent_id,
      final String? story_page_type,
      final int? story_page_index,
      final int? story_page_count,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      final PlayableNavigationType? story_page_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      final PlayableNavigationDirection? story_page_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      final PlayerStartTriggers? story_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      final PlayerExitTriggers? story_exit_trigger,
      final double? story_page_duration,
      final double? story_page_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown)
      final AudioState? audio_state,
      final String? cc_state,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      final BlazeAnalyticsAdGestureType? gesture_type,
      final String? custom_button_name,
      final AnalyticsCtaConfig? cta_config,
      final bool? cta_shown,
      final AnalyticsCustomActionButtonConfig? custom_action_button_config,
      final bool? custom_action_button_shown,
      final Map<String, String>? localization,
      final int? user_lifetime_engagements,
      final String? attribution_token}) = _$StoryPropsImpl;

  factory _StoryProps.fromJson(Map<String, dynamic> json) =
      _$StoryPropsImpl.fromJson;

  @override
  String? get story_session_id;
  @override
  String? get story_id;
  @override
  String? get story_title;
  @override
  int? get story_index;
  @override
  int? get total_stories_count;
  @override
  int? get remaining_unread_count;
  @override
  int? get remaining_unread_pages;
  @override
  String? get next_story_id;
  @override
  bool? get is_last_page;
  @override
  String? get content_ratio;
  @override
  String? get story_page_id;
  @override
  String? get story_page_parent_id;
  @override
  String? get story_page_type;
  @override
  int? get story_page_index;
  @override
  int? get story_page_count;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
  PlayableNavigationType? get story_page_navigation_type;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
  PlayableNavigationDirection? get story_page_navigation_direction;
  @override
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  PlayerStartTriggers? get story_start_trigger;
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get story_exit_trigger;
  @override
  double? get story_page_duration;

  /// The share of the page that was watched, from 0 to 100, with two
  /// decimals.
  @override
  double? get story_page_duration_viewed_percent;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state;
  @override
  String? get cc_state;
  @override
  Map<String, String>? get content_extra_info;
  @override
  Map<String, String>? get story_page_content_extra_info;
  @override
  @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
  BlazeAnalyticsAdGestureType? get gesture_type;
  @override
  String? get custom_button_name;
  @override
  AnalyticsCtaConfig? get cta_config;
  @override
  bool? get cta_shown;
  @override
  AnalyticsCustomActionButtonConfig? get custom_action_button_config;
  @override
  bool? get custom_action_button_shown;
  @override
  Map<String, String>? get localization;
  @override
  int? get user_lifetime_engagements;
  @override
  String? get attribution_token;

  /// Create a copy of StoryProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryPropsImplCopyWith<_$StoryPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MomentsProps _$MomentsPropsFromJson(Map<String, dynamic> json) {
  return _MomentsProps.fromJson(json);
}

/// @nodoc
mixin _$MomentsProps {
  String? get moments_session_id => throw _privateConstructorUsedError;
  String? get moment_id => throw _privateConstructorUsedError;
  String? get moment_title => throw _privateConstructorUsedError;
  int? get moment_index => throw _privateConstructorUsedError;
  int? get total_moments_count => throw _privateConstructorUsedError;
  int? get remaining_unread_count => throw _privateConstructorUsedError;
  String? get next_moment_id => throw _privateConstructorUsedError;
  bool? get is_liked => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
  PlayableNavigationType? get moment_navigation_type =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
  PlayableNavigationDirection? get moment_navigation_direction =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  PlayerStartTriggers? get moment_start_trigger =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get moment_exit_trigger =>
      throw _privateConstructorUsedError;
  double? get moment_duration => throw _privateConstructorUsedError;

  /// The share of the moment that was watched, from 0 to 100, with two
  /// decimals.
  double? get moment_duration_viewed_percent =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state => throw _privateConstructorUsedError;
  String? get content_ratio => throw _privateConstructorUsedError;
  int? get loop_number => throw _privateConstructorUsedError;
  AnalyticsLoopSettings? get loop_settings =>
      throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  String? get cc_state => throw _privateConstructorUsedError;
  String? get custom_button_name => throw _privateConstructorUsedError;
  AnalyticsCtaConfig? get cta_config => throw _privateConstructorUsedError;
  bool? get cta_shown => throw _privateConstructorUsedError;
  AnalyticsCustomActionButtonConfig? get custom_action_button_config =>
      throw _privateConstructorUsedError;
  bool? get custom_action_button_shown => throw _privateConstructorUsedError;
  String? get attribution_token => throw _privateConstructorUsedError;
  Map<String, String>? get follow_state => throw _privateConstructorUsedError;
  bool? get follow_button_visible => throw _privateConstructorUsedError;
  String? get follow_subject_type => throw _privateConstructorUsedError;
  String? get follow_subject_id => throw _privateConstructorUsedError;
  String? get follow_subject_provider_name =>
      throw _privateConstructorUsedError;
  String? get active_tab_title => throw _privateConstructorUsedError;
  String? get initial_tab_title => throw _privateConstructorUsedError;
  bool? get tabs_enabled => throw _privateConstructorUsedError;
  List<String>? get tabs_configuration => throw _privateConstructorUsedError;
  Map<String, String>? get localization => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: VideoSeekType.unknown)
  VideoSeekType? get seek_type => throw _privateConstructorUsedError;
  double? get seek_start_time => throw _privateConstructorUsedError;
  double? get seek_end_time => throw _privateConstructorUsedError;
  double? get seek_total_time => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
  VideoSeekDirection? get seek_direction => throw _privateConstructorUsedError;
  double? get seek_interval_setting => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
  PlaybackSpeedType? get playback_speed_type =>
      throw _privateConstructorUsedError;
  double? get playback_speed => throw _privateConstructorUsedError;
  double? get speed_start_time => throw _privateConstructorUsedError;
  double? get speed_end_time => throw _privateConstructorUsedError;
  double? get speed_total_time => throw _privateConstructorUsedError;
  int? get user_lifetime_engagements => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MomentsProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MomentsProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MomentsProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MomentsProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MomentsPropsCopyWith<MomentsProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MomentsPropsCopyWith<$Res> {
  factory $MomentsPropsCopyWith(
          MomentsProps value, $Res Function(MomentsProps) then) =
      _$MomentsPropsCopyWithImpl<$Res, MomentsProps>;
  @useResult
  $Res call(
      {String? moments_session_id,
      String? moment_id,
      String? moment_title,
      int? moment_index,
      int? total_moments_count,
      int? remaining_unread_count,
      String? next_moment_id,
      bool? is_liked,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      PlayableNavigationType? moment_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      PlayableNavigationDirection? moment_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      PlayerStartTriggers? moment_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? moment_exit_trigger,
      double? moment_duration,
      double? moment_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      String? content_ratio,
      int? loop_number,
      AnalyticsLoopSettings? loop_settings,
      Map<String, String>? content_extra_info,
      String? cc_state,
      String? custom_button_name,
      AnalyticsCtaConfig? cta_config,
      bool? cta_shown,
      AnalyticsCustomActionButtonConfig? custom_action_button_config,
      bool? custom_action_button_shown,
      String? attribution_token,
      Map<String, String>? follow_state,
      bool? follow_button_visible,
      String? follow_subject_type,
      String? follow_subject_id,
      String? follow_subject_provider_name,
      String? active_tab_title,
      String? initial_tab_title,
      bool? tabs_enabled,
      List<String>? tabs_configuration,
      Map<String, String>? localization,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown)
      VideoSeekType? seek_type,
      double? seek_start_time,
      double? seek_end_time,
      double? seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      VideoSeekDirection? seek_direction,
      double? seek_interval_setting,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      PlaybackSpeedType? playback_speed_type,
      double? playback_speed,
      double? speed_start_time,
      double? speed_end_time,
      double? speed_total_time,
      int? user_lifetime_engagements});

  $AnalyticsLoopSettingsCopyWith<$Res>? get loop_settings;
  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config;
  $AnalyticsCustomActionButtonConfigCopyWith<$Res>?
      get custom_action_button_config;
}

/// @nodoc
class _$MomentsPropsCopyWithImpl<$Res, $Val extends MomentsProps>
    implements $MomentsPropsCopyWith<$Res> {
  _$MomentsPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moments_session_id = freezed,
    Object? moment_id = freezed,
    Object? moment_title = freezed,
    Object? moment_index = freezed,
    Object? total_moments_count = freezed,
    Object? remaining_unread_count = freezed,
    Object? next_moment_id = freezed,
    Object? is_liked = freezed,
    Object? moment_navigation_type = freezed,
    Object? moment_navigation_direction = freezed,
    Object? moment_start_trigger = freezed,
    Object? moment_exit_trigger = freezed,
    Object? moment_duration = freezed,
    Object? moment_duration_viewed_percent = freezed,
    Object? audio_state = freezed,
    Object? content_ratio = freezed,
    Object? loop_number = freezed,
    Object? loop_settings = freezed,
    Object? content_extra_info = freezed,
    Object? cc_state = freezed,
    Object? custom_button_name = freezed,
    Object? cta_config = freezed,
    Object? cta_shown = freezed,
    Object? custom_action_button_config = freezed,
    Object? custom_action_button_shown = freezed,
    Object? attribution_token = freezed,
    Object? follow_state = freezed,
    Object? follow_button_visible = freezed,
    Object? follow_subject_type = freezed,
    Object? follow_subject_id = freezed,
    Object? follow_subject_provider_name = freezed,
    Object? active_tab_title = freezed,
    Object? initial_tab_title = freezed,
    Object? tabs_enabled = freezed,
    Object? tabs_configuration = freezed,
    Object? localization = freezed,
    Object? seek_type = freezed,
    Object? seek_start_time = freezed,
    Object? seek_end_time = freezed,
    Object? seek_total_time = freezed,
    Object? seek_direction = freezed,
    Object? seek_interval_setting = freezed,
    Object? playback_speed_type = freezed,
    Object? playback_speed = freezed,
    Object? speed_start_time = freezed,
    Object? speed_end_time = freezed,
    Object? speed_total_time = freezed,
    Object? user_lifetime_engagements = freezed,
  }) {
    return _then(_value.copyWith(
      moments_session_id: freezed == moments_session_id
          ? _value.moments_session_id
          : moments_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_id: freezed == moment_id
          ? _value.moment_id
          : moment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_title: freezed == moment_title
          ? _value.moment_title
          : moment_title // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_index: freezed == moment_index
          ? _value.moment_index
          : moment_index // ignore: cast_nullable_to_non_nullable
              as int?,
      total_moments_count: freezed == total_moments_count
          ? _value.total_moments_count
          : total_moments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_count: freezed == remaining_unread_count
          ? _value.remaining_unread_count
          : remaining_unread_count // ignore: cast_nullable_to_non_nullable
              as int?,
      next_moment_id: freezed == next_moment_id
          ? _value.next_moment_id
          : next_moment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_liked: freezed == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      moment_navigation_type: freezed == moment_navigation_type
          ? _value.moment_navigation_type
          : moment_navigation_type // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationType?,
      moment_navigation_direction: freezed == moment_navigation_direction
          ? _value.moment_navigation_direction
          : moment_navigation_direction // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationDirection?,
      moment_start_trigger: freezed == moment_start_trigger
          ? _value.moment_start_trigger
          : moment_start_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerStartTriggers?,
      moment_exit_trigger: freezed == moment_exit_trigger
          ? _value.moment_exit_trigger
          : moment_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      moment_duration: freezed == moment_duration
          ? _value.moment_duration
          : moment_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      moment_duration_viewed_percent: freezed == moment_duration_viewed_percent
          ? _value.moment_duration_viewed_percent
          : moment_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      content_ratio: freezed == content_ratio
          ? _value.content_ratio
          : content_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      loop_number: freezed == loop_number
          ? _value.loop_number
          : loop_number // ignore: cast_nullable_to_non_nullable
              as int?,
      loop_settings: freezed == loop_settings
          ? _value.loop_settings
          : loop_settings // ignore: cast_nullable_to_non_nullable
              as AnalyticsLoopSettings?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      custom_button_name: freezed == custom_button_name
          ? _value.custom_button_name
          : custom_button_name // ignore: cast_nullable_to_non_nullable
              as String?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCtaConfig?,
      cta_shown: freezed == cta_shown
          ? _value.cta_shown
          : cta_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      custom_action_button_config: freezed == custom_action_button_config
          ? _value.custom_action_button_config
          : custom_action_button_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCustomActionButtonConfig?,
      custom_action_button_shown: freezed == custom_action_button_shown
          ? _value.custom_action_button_shown
          : custom_action_button_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      attribution_token: freezed == attribution_token
          ? _value.attribution_token
          : attribution_token // ignore: cast_nullable_to_non_nullable
              as String?,
      follow_state: freezed == follow_state
          ? _value.follow_state
          : follow_state // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      follow_button_visible: freezed == follow_button_visible
          ? _value.follow_button_visible
          : follow_button_visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      follow_subject_type: freezed == follow_subject_type
          ? _value.follow_subject_type
          : follow_subject_type // ignore: cast_nullable_to_non_nullable
              as String?,
      follow_subject_id: freezed == follow_subject_id
          ? _value.follow_subject_id
          : follow_subject_id // ignore: cast_nullable_to_non_nullable
              as String?,
      follow_subject_provider_name: freezed == follow_subject_provider_name
          ? _value.follow_subject_provider_name
          : follow_subject_provider_name // ignore: cast_nullable_to_non_nullable
              as String?,
      active_tab_title: freezed == active_tab_title
          ? _value.active_tab_title
          : active_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      initial_tab_title: freezed == initial_tab_title
          ? _value.initial_tab_title
          : initial_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      tabs_enabled: freezed == tabs_enabled
          ? _value.tabs_enabled
          : tabs_enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      tabs_configuration: freezed == tabs_configuration
          ? _value.tabs_configuration
          : tabs_configuration // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      seek_type: freezed == seek_type
          ? _value.seek_type
          : seek_type // ignore: cast_nullable_to_non_nullable
              as VideoSeekType?,
      seek_start_time: freezed == seek_start_time
          ? _value.seek_start_time
          : seek_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_end_time: freezed == seek_end_time
          ? _value.seek_end_time
          : seek_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_total_time: freezed == seek_total_time
          ? _value.seek_total_time
          : seek_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_direction: freezed == seek_direction
          ? _value.seek_direction
          : seek_direction // ignore: cast_nullable_to_non_nullable
              as VideoSeekDirection?,
      seek_interval_setting: freezed == seek_interval_setting
          ? _value.seek_interval_setting
          : seek_interval_setting // ignore: cast_nullable_to_non_nullable
              as double?,
      playback_speed_type: freezed == playback_speed_type
          ? _value.playback_speed_type
          : playback_speed_type // ignore: cast_nullable_to_non_nullable
              as PlaybackSpeedType?,
      playback_speed: freezed == playback_speed
          ? _value.playback_speed
          : playback_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_start_time: freezed == speed_start_time
          ? _value.speed_start_time
          : speed_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_end_time: freezed == speed_end_time
          ? _value.speed_end_time
          : speed_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_total_time: freezed == speed_total_time
          ? _value.speed_total_time
          : speed_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      user_lifetime_engagements: freezed == user_lifetime_engagements
          ? _value.user_lifetime_engagements
          : user_lifetime_engagements // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsLoopSettingsCopyWith<$Res>? get loop_settings {
    if (_value.loop_settings == null) {
      return null;
    }

    return $AnalyticsLoopSettingsCopyWith<$Res>(_value.loop_settings!, (value) {
      return _then(_value.copyWith(loop_settings: value) as $Val);
    });
  }

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config {
    if (_value.cta_config == null) {
      return null;
    }

    return $AnalyticsCtaConfigCopyWith<$Res>(_value.cta_config!, (value) {
      return _then(_value.copyWith(cta_config: value) as $Val);
    });
  }

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsCustomActionButtonConfigCopyWith<$Res>?
      get custom_action_button_config {
    if (_value.custom_action_button_config == null) {
      return null;
    }

    return $AnalyticsCustomActionButtonConfigCopyWith<$Res>(
        _value.custom_action_button_config!, (value) {
      return _then(_value.copyWith(custom_action_button_config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MomentsPropsImplCopyWith<$Res>
    implements $MomentsPropsCopyWith<$Res> {
  factory _$$MomentsPropsImplCopyWith(
          _$MomentsPropsImpl value, $Res Function(_$MomentsPropsImpl) then) =
      __$$MomentsPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? moments_session_id,
      String? moment_id,
      String? moment_title,
      int? moment_index,
      int? total_moments_count,
      int? remaining_unread_count,
      String? next_moment_id,
      bool? is_liked,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      PlayableNavigationType? moment_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      PlayableNavigationDirection? moment_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      PlayerStartTriggers? moment_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? moment_exit_trigger,
      double? moment_duration,
      double? moment_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      String? content_ratio,
      int? loop_number,
      AnalyticsLoopSettings? loop_settings,
      Map<String, String>? content_extra_info,
      String? cc_state,
      String? custom_button_name,
      AnalyticsCtaConfig? cta_config,
      bool? cta_shown,
      AnalyticsCustomActionButtonConfig? custom_action_button_config,
      bool? custom_action_button_shown,
      String? attribution_token,
      Map<String, String>? follow_state,
      bool? follow_button_visible,
      String? follow_subject_type,
      String? follow_subject_id,
      String? follow_subject_provider_name,
      String? active_tab_title,
      String? initial_tab_title,
      bool? tabs_enabled,
      List<String>? tabs_configuration,
      Map<String, String>? localization,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown)
      VideoSeekType? seek_type,
      double? seek_start_time,
      double? seek_end_time,
      double? seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      VideoSeekDirection? seek_direction,
      double? seek_interval_setting,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      PlaybackSpeedType? playback_speed_type,
      double? playback_speed,
      double? speed_start_time,
      double? speed_end_time,
      double? speed_total_time,
      int? user_lifetime_engagements});

  @override
  $AnalyticsLoopSettingsCopyWith<$Res>? get loop_settings;
  @override
  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config;
  @override
  $AnalyticsCustomActionButtonConfigCopyWith<$Res>?
      get custom_action_button_config;
}

/// @nodoc
class __$$MomentsPropsImplCopyWithImpl<$Res>
    extends _$MomentsPropsCopyWithImpl<$Res, _$MomentsPropsImpl>
    implements _$$MomentsPropsImplCopyWith<$Res> {
  __$$MomentsPropsImplCopyWithImpl(
      _$MomentsPropsImpl _value, $Res Function(_$MomentsPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moments_session_id = freezed,
    Object? moment_id = freezed,
    Object? moment_title = freezed,
    Object? moment_index = freezed,
    Object? total_moments_count = freezed,
    Object? remaining_unread_count = freezed,
    Object? next_moment_id = freezed,
    Object? is_liked = freezed,
    Object? moment_navigation_type = freezed,
    Object? moment_navigation_direction = freezed,
    Object? moment_start_trigger = freezed,
    Object? moment_exit_trigger = freezed,
    Object? moment_duration = freezed,
    Object? moment_duration_viewed_percent = freezed,
    Object? audio_state = freezed,
    Object? content_ratio = freezed,
    Object? loop_number = freezed,
    Object? loop_settings = freezed,
    Object? content_extra_info = freezed,
    Object? cc_state = freezed,
    Object? custom_button_name = freezed,
    Object? cta_config = freezed,
    Object? cta_shown = freezed,
    Object? custom_action_button_config = freezed,
    Object? custom_action_button_shown = freezed,
    Object? attribution_token = freezed,
    Object? follow_state = freezed,
    Object? follow_button_visible = freezed,
    Object? follow_subject_type = freezed,
    Object? follow_subject_id = freezed,
    Object? follow_subject_provider_name = freezed,
    Object? active_tab_title = freezed,
    Object? initial_tab_title = freezed,
    Object? tabs_enabled = freezed,
    Object? tabs_configuration = freezed,
    Object? localization = freezed,
    Object? seek_type = freezed,
    Object? seek_start_time = freezed,
    Object? seek_end_time = freezed,
    Object? seek_total_time = freezed,
    Object? seek_direction = freezed,
    Object? seek_interval_setting = freezed,
    Object? playback_speed_type = freezed,
    Object? playback_speed = freezed,
    Object? speed_start_time = freezed,
    Object? speed_end_time = freezed,
    Object? speed_total_time = freezed,
    Object? user_lifetime_engagements = freezed,
  }) {
    return _then(_$MomentsPropsImpl(
      moments_session_id: freezed == moments_session_id
          ? _value.moments_session_id
          : moments_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_id: freezed == moment_id
          ? _value.moment_id
          : moment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_title: freezed == moment_title
          ? _value.moment_title
          : moment_title // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_index: freezed == moment_index
          ? _value.moment_index
          : moment_index // ignore: cast_nullable_to_non_nullable
              as int?,
      total_moments_count: freezed == total_moments_count
          ? _value.total_moments_count
          : total_moments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_count: freezed == remaining_unread_count
          ? _value.remaining_unread_count
          : remaining_unread_count // ignore: cast_nullable_to_non_nullable
              as int?,
      next_moment_id: freezed == next_moment_id
          ? _value.next_moment_id
          : next_moment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_liked: freezed == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      moment_navigation_type: freezed == moment_navigation_type
          ? _value.moment_navigation_type
          : moment_navigation_type // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationType?,
      moment_navigation_direction: freezed == moment_navigation_direction
          ? _value.moment_navigation_direction
          : moment_navigation_direction // ignore: cast_nullable_to_non_nullable
              as PlayableNavigationDirection?,
      moment_start_trigger: freezed == moment_start_trigger
          ? _value.moment_start_trigger
          : moment_start_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerStartTriggers?,
      moment_exit_trigger: freezed == moment_exit_trigger
          ? _value.moment_exit_trigger
          : moment_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      moment_duration: freezed == moment_duration
          ? _value.moment_duration
          : moment_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      moment_duration_viewed_percent: freezed == moment_duration_viewed_percent
          ? _value.moment_duration_viewed_percent
          : moment_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      content_ratio: freezed == content_ratio
          ? _value.content_ratio
          : content_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      loop_number: freezed == loop_number
          ? _value.loop_number
          : loop_number // ignore: cast_nullable_to_non_nullable
              as int?,
      loop_settings: freezed == loop_settings
          ? _value.loop_settings
          : loop_settings // ignore: cast_nullable_to_non_nullable
              as AnalyticsLoopSettings?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      custom_button_name: freezed == custom_button_name
          ? _value.custom_button_name
          : custom_button_name // ignore: cast_nullable_to_non_nullable
              as String?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCtaConfig?,
      cta_shown: freezed == cta_shown
          ? _value.cta_shown
          : cta_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      custom_action_button_config: freezed == custom_action_button_config
          ? _value.custom_action_button_config
          : custom_action_button_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCustomActionButtonConfig?,
      custom_action_button_shown: freezed == custom_action_button_shown
          ? _value.custom_action_button_shown
          : custom_action_button_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      attribution_token: freezed == attribution_token
          ? _value.attribution_token
          : attribution_token // ignore: cast_nullable_to_non_nullable
              as String?,
      follow_state: freezed == follow_state
          ? _value._follow_state
          : follow_state // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      follow_button_visible: freezed == follow_button_visible
          ? _value.follow_button_visible
          : follow_button_visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      follow_subject_type: freezed == follow_subject_type
          ? _value.follow_subject_type
          : follow_subject_type // ignore: cast_nullable_to_non_nullable
              as String?,
      follow_subject_id: freezed == follow_subject_id
          ? _value.follow_subject_id
          : follow_subject_id // ignore: cast_nullable_to_non_nullable
              as String?,
      follow_subject_provider_name: freezed == follow_subject_provider_name
          ? _value.follow_subject_provider_name
          : follow_subject_provider_name // ignore: cast_nullable_to_non_nullable
              as String?,
      active_tab_title: freezed == active_tab_title
          ? _value.active_tab_title
          : active_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      initial_tab_title: freezed == initial_tab_title
          ? _value.initial_tab_title
          : initial_tab_title // ignore: cast_nullable_to_non_nullable
              as String?,
      tabs_enabled: freezed == tabs_enabled
          ? _value.tabs_enabled
          : tabs_enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      tabs_configuration: freezed == tabs_configuration
          ? _value._tabs_configuration
          : tabs_configuration // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      localization: freezed == localization
          ? _value._localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      seek_type: freezed == seek_type
          ? _value.seek_type
          : seek_type // ignore: cast_nullable_to_non_nullable
              as VideoSeekType?,
      seek_start_time: freezed == seek_start_time
          ? _value.seek_start_time
          : seek_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_end_time: freezed == seek_end_time
          ? _value.seek_end_time
          : seek_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_total_time: freezed == seek_total_time
          ? _value.seek_total_time
          : seek_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_direction: freezed == seek_direction
          ? _value.seek_direction
          : seek_direction // ignore: cast_nullable_to_non_nullable
              as VideoSeekDirection?,
      seek_interval_setting: freezed == seek_interval_setting
          ? _value.seek_interval_setting
          : seek_interval_setting // ignore: cast_nullable_to_non_nullable
              as double?,
      playback_speed_type: freezed == playback_speed_type
          ? _value.playback_speed_type
          : playback_speed_type // ignore: cast_nullable_to_non_nullable
              as PlaybackSpeedType?,
      playback_speed: freezed == playback_speed
          ? _value.playback_speed
          : playback_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_start_time: freezed == speed_start_time
          ? _value.speed_start_time
          : speed_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_end_time: freezed == speed_end_time
          ? _value.speed_end_time
          : speed_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_total_time: freezed == speed_total_time
          ? _value.speed_total_time
          : speed_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      user_lifetime_engagements: freezed == user_lifetime_engagements
          ? _value.user_lifetime_engagements
          : user_lifetime_engagements // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MomentsPropsImpl with DiagnosticableTreeMixin implements _MomentsProps {
  const _$MomentsPropsImpl(
      {this.moments_session_id,
      this.moment_id,
      this.moment_title,
      this.moment_index,
      this.total_moments_count,
      this.remaining_unread_count,
      this.next_moment_id,
      this.is_liked,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      this.moment_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      this.moment_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      this.moment_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      this.moment_exit_trigger,
      this.moment_duration,
      this.moment_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) this.audio_state,
      this.content_ratio,
      this.loop_number,
      this.loop_settings,
      final Map<String, String>? content_extra_info,
      this.cc_state,
      this.custom_button_name,
      this.cta_config,
      this.cta_shown,
      this.custom_action_button_config,
      this.custom_action_button_shown,
      this.attribution_token,
      final Map<String, String>? follow_state,
      this.follow_button_visible,
      this.follow_subject_type,
      this.follow_subject_id,
      this.follow_subject_provider_name,
      this.active_tab_title,
      this.initial_tab_title,
      this.tabs_enabled,
      final List<String>? tabs_configuration,
      final Map<String, String>? localization,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown) this.seek_type,
      this.seek_start_time,
      this.seek_end_time,
      this.seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      this.seek_direction,
      this.seek_interval_setting,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      this.playback_speed_type,
      this.playback_speed,
      this.speed_start_time,
      this.speed_end_time,
      this.speed_total_time,
      this.user_lifetime_engagements})
      : _content_extra_info = content_extra_info,
        _follow_state = follow_state,
        _tabs_configuration = tabs_configuration,
        _localization = localization;

  factory _$MomentsPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MomentsPropsImplFromJson(json);

  @override
  final String? moments_session_id;
  @override
  final String? moment_id;
  @override
  final String? moment_title;
  @override
  final int? moment_index;
  @override
  final int? total_moments_count;
  @override
  final int? remaining_unread_count;
  @override
  final String? next_moment_id;
  @override
  final bool? is_liked;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
  final PlayableNavigationType? moment_navigation_type;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
  final PlayableNavigationDirection? moment_navigation_direction;
  @override
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  final PlayerStartTriggers? moment_start_trigger;
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  final PlayerExitTriggers? moment_exit_trigger;
  @override
  final double? moment_duration;

  /// The share of the moment that was watched, from 0 to 100, with two
  /// decimals.
  @override
  final double? moment_duration_viewed_percent;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  final AudioState? audio_state;
  @override
  final String? content_ratio;
  @override
  final int? loop_number;
  @override
  final AnalyticsLoopSettings? loop_settings;
  final Map<String, String>? _content_extra_info;
  @override
  Map<String, String>? get content_extra_info {
    final value = _content_extra_info;
    if (value == null) return null;
    if (_content_extra_info is EqualUnmodifiableMapView)
      return _content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? cc_state;
  @override
  final String? custom_button_name;
  @override
  final AnalyticsCtaConfig? cta_config;
  @override
  final bool? cta_shown;
  @override
  final AnalyticsCustomActionButtonConfig? custom_action_button_config;
  @override
  final bool? custom_action_button_shown;
  @override
  final String? attribution_token;
  final Map<String, String>? _follow_state;
  @override
  Map<String, String>? get follow_state {
    final value = _follow_state;
    if (value == null) return null;
    if (_follow_state is EqualUnmodifiableMapView) return _follow_state;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? follow_button_visible;
  @override
  final String? follow_subject_type;
  @override
  final String? follow_subject_id;
  @override
  final String? follow_subject_provider_name;
  @override
  final String? active_tab_title;
  @override
  final String? initial_tab_title;
  @override
  final bool? tabs_enabled;
  final List<String>? _tabs_configuration;
  @override
  List<String>? get tabs_configuration {
    final value = _tabs_configuration;
    if (value == null) return null;
    if (_tabs_configuration is EqualUnmodifiableListView)
      return _tabs_configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _localization;
  @override
  Map<String, String>? get localization {
    final value = _localization;
    if (value == null) return null;
    if (_localization is EqualUnmodifiableMapView) return _localization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(unknownEnumValue: VideoSeekType.unknown)
  final VideoSeekType? seek_type;
  @override
  final double? seek_start_time;
  @override
  final double? seek_end_time;
  @override
  final double? seek_total_time;
  @override
  @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
  final VideoSeekDirection? seek_direction;
  @override
  final double? seek_interval_setting;
  @override
  @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
  final PlaybackSpeedType? playback_speed_type;
  @override
  final double? playback_speed;
  @override
  final double? speed_start_time;
  @override
  final double? speed_end_time;
  @override
  final double? speed_total_time;
  @override
  final int? user_lifetime_engagements;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MomentsProps(moments_session_id: $moments_session_id, moment_id: $moment_id, moment_title: $moment_title, moment_index: $moment_index, total_moments_count: $total_moments_count, remaining_unread_count: $remaining_unread_count, next_moment_id: $next_moment_id, is_liked: $is_liked, moment_navigation_type: $moment_navigation_type, moment_navigation_direction: $moment_navigation_direction, moment_start_trigger: $moment_start_trigger, moment_exit_trigger: $moment_exit_trigger, moment_duration: $moment_duration, moment_duration_viewed_percent: $moment_duration_viewed_percent, audio_state: $audio_state, content_ratio: $content_ratio, loop_number: $loop_number, loop_settings: $loop_settings, content_extra_info: $content_extra_info, cc_state: $cc_state, custom_button_name: $custom_button_name, cta_config: $cta_config, cta_shown: $cta_shown, custom_action_button_config: $custom_action_button_config, custom_action_button_shown: $custom_action_button_shown, attribution_token: $attribution_token, follow_state: $follow_state, follow_button_visible: $follow_button_visible, follow_subject_type: $follow_subject_type, follow_subject_id: $follow_subject_id, follow_subject_provider_name: $follow_subject_provider_name, active_tab_title: $active_tab_title, initial_tab_title: $initial_tab_title, tabs_enabled: $tabs_enabled, tabs_configuration: $tabs_configuration, localization: $localization, seek_type: $seek_type, seek_start_time: $seek_start_time, seek_end_time: $seek_end_time, seek_total_time: $seek_total_time, seek_direction: $seek_direction, seek_interval_setting: $seek_interval_setting, playback_speed_type: $playback_speed_type, playback_speed: $playback_speed, speed_start_time: $speed_start_time, speed_end_time: $speed_end_time, speed_total_time: $speed_total_time, user_lifetime_engagements: $user_lifetime_engagements)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MomentsProps'))
      ..add(DiagnosticsProperty('moments_session_id', moments_session_id))
      ..add(DiagnosticsProperty('moment_id', moment_id))
      ..add(DiagnosticsProperty('moment_title', moment_title))
      ..add(DiagnosticsProperty('moment_index', moment_index))
      ..add(DiagnosticsProperty('total_moments_count', total_moments_count))
      ..add(
          DiagnosticsProperty('remaining_unread_count', remaining_unread_count))
      ..add(DiagnosticsProperty('next_moment_id', next_moment_id))
      ..add(DiagnosticsProperty('is_liked', is_liked))
      ..add(
          DiagnosticsProperty('moment_navigation_type', moment_navigation_type))
      ..add(DiagnosticsProperty(
          'moment_navigation_direction', moment_navigation_direction))
      ..add(DiagnosticsProperty('moment_start_trigger', moment_start_trigger))
      ..add(DiagnosticsProperty('moment_exit_trigger', moment_exit_trigger))
      ..add(DiagnosticsProperty('moment_duration', moment_duration))
      ..add(DiagnosticsProperty(
          'moment_duration_viewed_percent', moment_duration_viewed_percent))
      ..add(DiagnosticsProperty('audio_state', audio_state))
      ..add(DiagnosticsProperty('content_ratio', content_ratio))
      ..add(DiagnosticsProperty('loop_number', loop_number))
      ..add(DiagnosticsProperty('loop_settings', loop_settings))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty('cc_state', cc_state))
      ..add(DiagnosticsProperty('custom_button_name', custom_button_name))
      ..add(DiagnosticsProperty('cta_config', cta_config))
      ..add(DiagnosticsProperty('cta_shown', cta_shown))
      ..add(DiagnosticsProperty(
          'custom_action_button_config', custom_action_button_config))
      ..add(DiagnosticsProperty(
          'custom_action_button_shown', custom_action_button_shown))
      ..add(DiagnosticsProperty('attribution_token', attribution_token))
      ..add(DiagnosticsProperty('follow_state', follow_state))
      ..add(DiagnosticsProperty('follow_button_visible', follow_button_visible))
      ..add(DiagnosticsProperty('follow_subject_type', follow_subject_type))
      ..add(DiagnosticsProperty('follow_subject_id', follow_subject_id))
      ..add(DiagnosticsProperty(
          'follow_subject_provider_name', follow_subject_provider_name))
      ..add(DiagnosticsProperty('active_tab_title', active_tab_title))
      ..add(DiagnosticsProperty('initial_tab_title', initial_tab_title))
      ..add(DiagnosticsProperty('tabs_enabled', tabs_enabled))
      ..add(DiagnosticsProperty('tabs_configuration', tabs_configuration))
      ..add(DiagnosticsProperty('localization', localization))
      ..add(DiagnosticsProperty('seek_type', seek_type))
      ..add(DiagnosticsProperty('seek_start_time', seek_start_time))
      ..add(DiagnosticsProperty('seek_end_time', seek_end_time))
      ..add(DiagnosticsProperty('seek_total_time', seek_total_time))
      ..add(DiagnosticsProperty('seek_direction', seek_direction))
      ..add(DiagnosticsProperty('seek_interval_setting', seek_interval_setting))
      ..add(DiagnosticsProperty('playback_speed_type', playback_speed_type))
      ..add(DiagnosticsProperty('playback_speed', playback_speed))
      ..add(DiagnosticsProperty('speed_start_time', speed_start_time))
      ..add(DiagnosticsProperty('speed_end_time', speed_end_time))
      ..add(DiagnosticsProperty('speed_total_time', speed_total_time))
      ..add(DiagnosticsProperty(
          'user_lifetime_engagements', user_lifetime_engagements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MomentsPropsImpl &&
            (identical(other.moments_session_id, moments_session_id) ||
                other.moments_session_id == moments_session_id) &&
            (identical(other.moment_id, moment_id) ||
                other.moment_id == moment_id) &&
            (identical(other.moment_title, moment_title) ||
                other.moment_title == moment_title) &&
            (identical(other.moment_index, moment_index) ||
                other.moment_index == moment_index) &&
            (identical(other.total_moments_count, total_moments_count) ||
                other.total_moments_count == total_moments_count) &&
            (identical(other.remaining_unread_count, remaining_unread_count) ||
                other.remaining_unread_count == remaining_unread_count) &&
            (identical(other.next_moment_id, next_moment_id) ||
                other.next_moment_id == next_moment_id) &&
            (identical(other.is_liked, is_liked) ||
                other.is_liked == is_liked) &&
            (identical(other.moment_navigation_type, moment_navigation_type) ||
                other.moment_navigation_type == moment_navigation_type) &&
            (identical(other.moment_navigation_direction, moment_navigation_direction) ||
                other.moment_navigation_direction ==
                    moment_navigation_direction) &&
            (identical(other.moment_start_trigger, moment_start_trigger) ||
                other.moment_start_trigger == moment_start_trigger) &&
            (identical(other.moment_exit_trigger, moment_exit_trigger) ||
                other.moment_exit_trigger == moment_exit_trigger) &&
            (identical(other.moment_duration, moment_duration) ||
                other.moment_duration == moment_duration) &&
            (identical(other.moment_duration_viewed_percent, moment_duration_viewed_percent) ||
                other.moment_duration_viewed_percent ==
                    moment_duration_viewed_percent) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
            (identical(other.content_ratio, content_ratio) ||
                other.content_ratio == content_ratio) &&
            (identical(other.loop_number, loop_number) ||
                other.loop_number == loop_number) &&
            (identical(other.loop_settings, loop_settings) ||
                other.loop_settings == loop_settings) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            (identical(other.cc_state, cc_state) ||
                other.cc_state == cc_state) &&
            (identical(other.custom_button_name, custom_button_name) ||
                other.custom_button_name == custom_button_name) &&
            (identical(other.cta_config, cta_config) ||
                other.cta_config == cta_config) &&
            (identical(other.cta_shown, cta_shown) ||
                other.cta_shown == cta_shown) &&
            (identical(other.custom_action_button_config, custom_action_button_config) ||
                other.custom_action_button_config ==
                    custom_action_button_config) &&
            (identical(other.custom_action_button_shown, custom_action_button_shown) ||
                other.custom_action_button_shown ==
                    custom_action_button_shown) &&
            (identical(other.attribution_token, attribution_token) ||
                other.attribution_token == attribution_token) &&
            const DeepCollectionEquality()
                .equals(other._follow_state, _follow_state) &&
            (identical(other.follow_button_visible, follow_button_visible) ||
                other.follow_button_visible == follow_button_visible) &&
            (identical(other.follow_subject_type, follow_subject_type) ||
                other.follow_subject_type == follow_subject_type) &&
            (identical(other.follow_subject_id, follow_subject_id) || other.follow_subject_id == follow_subject_id) &&
            (identical(other.follow_subject_provider_name, follow_subject_provider_name) || other.follow_subject_provider_name == follow_subject_provider_name) &&
            (identical(other.active_tab_title, active_tab_title) || other.active_tab_title == active_tab_title) &&
            (identical(other.initial_tab_title, initial_tab_title) || other.initial_tab_title == initial_tab_title) &&
            (identical(other.tabs_enabled, tabs_enabled) || other.tabs_enabled == tabs_enabled) &&
            const DeepCollectionEquality().equals(other._tabs_configuration, _tabs_configuration) &&
            const DeepCollectionEquality().equals(other._localization, _localization) &&
            (identical(other.seek_type, seek_type) || other.seek_type == seek_type) &&
            (identical(other.seek_start_time, seek_start_time) || other.seek_start_time == seek_start_time) &&
            (identical(other.seek_end_time, seek_end_time) || other.seek_end_time == seek_end_time) &&
            (identical(other.seek_total_time, seek_total_time) || other.seek_total_time == seek_total_time) &&
            (identical(other.seek_direction, seek_direction) || other.seek_direction == seek_direction) &&
            (identical(other.seek_interval_setting, seek_interval_setting) || other.seek_interval_setting == seek_interval_setting) &&
            (identical(other.playback_speed_type, playback_speed_type) || other.playback_speed_type == playback_speed_type) &&
            (identical(other.playback_speed, playback_speed) || other.playback_speed == playback_speed) &&
            (identical(other.speed_start_time, speed_start_time) || other.speed_start_time == speed_start_time) &&
            (identical(other.speed_end_time, speed_end_time) || other.speed_end_time == speed_end_time) &&
            (identical(other.speed_total_time, speed_total_time) || other.speed_total_time == speed_total_time) &&
            (identical(other.user_lifetime_engagements, user_lifetime_engagements) || other.user_lifetime_engagements == user_lifetime_engagements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        moments_session_id,
        moment_id,
        moment_title,
        moment_index,
        total_moments_count,
        remaining_unread_count,
        next_moment_id,
        is_liked,
        moment_navigation_type,
        moment_navigation_direction,
        moment_start_trigger,
        moment_exit_trigger,
        moment_duration,
        moment_duration_viewed_percent,
        audio_state,
        content_ratio,
        loop_number,
        loop_settings,
        const DeepCollectionEquality().hash(_content_extra_info),
        cc_state,
        custom_button_name,
        cta_config,
        cta_shown,
        custom_action_button_config,
        custom_action_button_shown,
        attribution_token,
        const DeepCollectionEquality().hash(_follow_state),
        follow_button_visible,
        follow_subject_type,
        follow_subject_id,
        follow_subject_provider_name,
        active_tab_title,
        initial_tab_title,
        tabs_enabled,
        const DeepCollectionEquality().hash(_tabs_configuration),
        const DeepCollectionEquality().hash(_localization),
        seek_type,
        seek_start_time,
        seek_end_time,
        seek_total_time,
        seek_direction,
        seek_interval_setting,
        playback_speed_type,
        playback_speed,
        speed_start_time,
        speed_end_time,
        speed_total_time,
        user_lifetime_engagements
      ]);

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MomentsPropsImplCopyWith<_$MomentsPropsImpl> get copyWith =>
      __$$MomentsPropsImplCopyWithImpl<_$MomentsPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MomentsProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MomentsProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MomentsProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MomentsPropsImplToJson(
      this,
    );
  }
}

abstract class _MomentsProps implements MomentsProps {
  const factory _MomentsProps(
      {final String? moments_session_id,
      final String? moment_id,
      final String? moment_title,
      final int? moment_index,
      final int? total_moments_count,
      final int? remaining_unread_count,
      final String? next_moment_id,
      final bool? is_liked,
      @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
      final PlayableNavigationType? moment_navigation_type,
      @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
      final PlayableNavigationDirection? moment_navigation_direction,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      final PlayerStartTriggers? moment_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      final PlayerExitTriggers? moment_exit_trigger,
      final double? moment_duration,
      final double? moment_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown)
      final AudioState? audio_state,
      final String? content_ratio,
      final int? loop_number,
      final AnalyticsLoopSettings? loop_settings,
      final Map<String, String>? content_extra_info,
      final String? cc_state,
      final String? custom_button_name,
      final AnalyticsCtaConfig? cta_config,
      final bool? cta_shown,
      final AnalyticsCustomActionButtonConfig? custom_action_button_config,
      final bool? custom_action_button_shown,
      final String? attribution_token,
      final Map<String, String>? follow_state,
      final bool? follow_button_visible,
      final String? follow_subject_type,
      final String? follow_subject_id,
      final String? follow_subject_provider_name,
      final String? active_tab_title,
      final String? initial_tab_title,
      final bool? tabs_enabled,
      final List<String>? tabs_configuration,
      final Map<String, String>? localization,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown)
      final VideoSeekType? seek_type,
      final double? seek_start_time,
      final double? seek_end_time,
      final double? seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      final VideoSeekDirection? seek_direction,
      final double? seek_interval_setting,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      final PlaybackSpeedType? playback_speed_type,
      final double? playback_speed,
      final double? speed_start_time,
      final double? speed_end_time,
      final double? speed_total_time,
      final int? user_lifetime_engagements}) = _$MomentsPropsImpl;

  factory _MomentsProps.fromJson(Map<String, dynamic> json) =
      _$MomentsPropsImpl.fromJson;

  @override
  String? get moments_session_id;
  @override
  String? get moment_id;
  @override
  String? get moment_title;
  @override
  int? get moment_index;
  @override
  int? get total_moments_count;
  @override
  int? get remaining_unread_count;
  @override
  String? get next_moment_id;
  @override
  bool? get is_liked;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationType.unknown)
  PlayableNavigationType? get moment_navigation_type;
  @override
  @JsonKey(unknownEnumValue: PlayableNavigationDirection.unknown)
  PlayableNavigationDirection? get moment_navigation_direction;
  @override
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  PlayerStartTriggers? get moment_start_trigger;
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get moment_exit_trigger;
  @override
  double? get moment_duration;

  /// The share of the moment that was watched, from 0 to 100, with two
  /// decimals.
  @override
  double? get moment_duration_viewed_percent;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state;
  @override
  String? get content_ratio;
  @override
  int? get loop_number;
  @override
  AnalyticsLoopSettings? get loop_settings;
  @override
  Map<String, String>? get content_extra_info;
  @override
  String? get cc_state;
  @override
  String? get custom_button_name;
  @override
  AnalyticsCtaConfig? get cta_config;
  @override
  bool? get cta_shown;
  @override
  AnalyticsCustomActionButtonConfig? get custom_action_button_config;
  @override
  bool? get custom_action_button_shown;
  @override
  String? get attribution_token;
  @override
  Map<String, String>? get follow_state;
  @override
  bool? get follow_button_visible;
  @override
  String? get follow_subject_type;
  @override
  String? get follow_subject_id;
  @override
  String? get follow_subject_provider_name;
  @override
  String? get active_tab_title;
  @override
  String? get initial_tab_title;
  @override
  bool? get tabs_enabled;
  @override
  List<String>? get tabs_configuration;
  @override
  Map<String, String>? get localization;
  @override
  @JsonKey(unknownEnumValue: VideoSeekType.unknown)
  VideoSeekType? get seek_type;
  @override
  double? get seek_start_time;
  @override
  double? get seek_end_time;
  @override
  double? get seek_total_time;
  @override
  @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
  VideoSeekDirection? get seek_direction;
  @override
  double? get seek_interval_setting;
  @override
  @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
  PlaybackSpeedType? get playback_speed_type;
  @override
  double? get playback_speed;
  @override
  double? get speed_start_time;
  @override
  double? get speed_end_time;
  @override
  double? get speed_total_time;
  @override
  int? get user_lifetime_engagements;

  /// Create a copy of MomentsProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MomentsPropsImplCopyWith<_$MomentsPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoProps _$VideoPropsFromJson(Map<String, dynamic> json) {
  return _VideoProps.fromJson(json);
}

/// @nodoc
mixin _$VideoProps {
  String? get video_session_id => throw _privateConstructorUsedError;
  String? get video_id => throw _privateConstructorUsedError;
  String? get next_video_id => throw _privateConstructorUsedError;
  String? get video_title => throw _privateConstructorUsedError;
  int? get video_index => throw _privateConstructorUsedError;
  int? get total_videos_count => throw _privateConstructorUsedError;
  int? get remaining_unread_count => throw _privateConstructorUsedError;
  bool? get is_liked => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  PlayerStartTriggers? get video_start_trigger =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get video_end_trigger =>
      throw _privateConstructorUsedError;
  double? get video_current_time => throw _privateConstructorUsedError;
  double? get video_duration => throw _privateConstructorUsedError;
  double? get video_time_start => throw _privateConstructorUsedError;
  double? get video_time_end => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: VideoSeekType.unknown)
  VideoSeekType? get seek_type => throw _privateConstructorUsedError;
  double? get seek_start_time => throw _privateConstructorUsedError;
  double? get seek_end_time => throw _privateConstructorUsedError;
  double? get seek_total_time => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
  VideoSeekDirection? get seek_direction => throw _privateConstructorUsedError;
  double? get seek_interval_setting => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
  BlazeAnalyticsOrientation? get device_orientation =>
      throw _privateConstructorUsedError;
  String? get content_ratio => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
  OrientationChangeTrigger? get video_orientation_changed_trigger =>
      throw _privateConstructorUsedError;

  /// Where the video is being watched. On a `viewing_mode_transition` event
  /// this is the mode the player moved to.
  @JsonKey(unknownEnumValue: PlayerViewingMode.unknown)
  PlayerViewingMode? get viewing_mode => throw _privateConstructorUsedError;
  double? get cast_duration => throw _privateConstructorUsedError;

  /// Android only.
  String? get quality => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  String? get cc_state => throw _privateConstructorUsedError;
  AnalyticsCtaConfig? get cta_config => throw _privateConstructorUsedError;
  bool? get cta_shown => throw _privateConstructorUsedError;
  Map<String, String>? get localization => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
  PlaybackSpeedType? get playback_speed_type =>
      throw _privateConstructorUsedError;
  double? get playback_speed => throw _privateConstructorUsedError;
  double? get speed_start_time => throw _privateConstructorUsedError;
  double? get speed_end_time => throw _privateConstructorUsedError;
  double? get speed_total_time => throw _privateConstructorUsedError;
  int? get user_lifetime_engagements => throw _privateConstructorUsedError;
  String? get attribution_token =>
      throw _privateConstructorUsedError; // Live streams
  @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
  AnalyticsStreamStatus? get stream_status =>
      throw _privateConstructorUsedError;
  bool? get is_at_live_edge => throw _privateConstructorUsedError;
  double? get stream_elapsed_time => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
  BackToLiveTrigger? get back_to_live_trigger =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: CatchupSurface.unknown)
  CatchupSurface? get catchup_surface => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: CatchupTarget.unknown)
  CatchupTarget? get catchup_target =>
      throw _privateConstructorUsedError; // Audio tracks
  String? get audio_track => throw _privateConstructorUsedError;
  String? get audio_track_previous => throw _privateConstructorUsedError;
  bool? get audio_track_is_preferred => throw _privateConstructorUsedError;

  /// iOS only.
  String? get search_session_id => throw _privateConstructorUsedError;

  /// iOS only.
  String? get query_id => throw _privateConstructorUsedError;

  /// iOS only.
  String? get result_id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this VideoProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoPropsCopyWith<VideoProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPropsCopyWith<$Res> {
  factory $VideoPropsCopyWith(
          VideoProps value, $Res Function(VideoProps) then) =
      _$VideoPropsCopyWithImpl<$Res, VideoProps>;
  @useResult
  $Res call(
      {String? video_session_id,
      String? video_id,
      String? next_video_id,
      String? video_title,
      int? video_index,
      int? total_videos_count,
      int? remaining_unread_count,
      bool? is_liked,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      PlayerStartTriggers? video_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? video_end_trigger,
      double? video_current_time,
      double? video_duration,
      double? video_time_start,
      double? video_time_end,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown)
      VideoSeekType? seek_type,
      double? seek_start_time,
      double? seek_end_time,
      double? seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      VideoSeekDirection? seek_direction,
      double? seek_interval_setting,
      @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
      BlazeAnalyticsOrientation? device_orientation,
      String? content_ratio,
      @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
      OrientationChangeTrigger? video_orientation_changed_trigger,
      @JsonKey(unknownEnumValue: PlayerViewingMode.unknown)
      PlayerViewingMode? viewing_mode,
      double? cast_duration,
      String? quality,
      Map<String, String>? content_extra_info,
      String? cc_state,
      AnalyticsCtaConfig? cta_config,
      bool? cta_shown,
      Map<String, String>? localization,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      PlaybackSpeedType? playback_speed_type,
      double? playback_speed,
      double? speed_start_time,
      double? speed_end_time,
      double? speed_total_time,
      int? user_lifetime_engagements,
      String? attribution_token,
      @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
      AnalyticsStreamStatus? stream_status,
      bool? is_at_live_edge,
      double? stream_elapsed_time,
      @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
      BackToLiveTrigger? back_to_live_trigger,
      @JsonKey(unknownEnumValue: CatchupSurface.unknown)
      CatchupSurface? catchup_surface,
      @JsonKey(unknownEnumValue: CatchupTarget.unknown)
      CatchupTarget? catchup_target,
      String? audio_track,
      String? audio_track_previous,
      bool? audio_track_is_preferred,
      String? search_session_id,
      String? query_id,
      String? result_id});

  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config;
}

/// @nodoc
class _$VideoPropsCopyWithImpl<$Res, $Val extends VideoProps>
    implements $VideoPropsCopyWith<$Res> {
  _$VideoPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video_session_id = freezed,
    Object? video_id = freezed,
    Object? next_video_id = freezed,
    Object? video_title = freezed,
    Object? video_index = freezed,
    Object? total_videos_count = freezed,
    Object? remaining_unread_count = freezed,
    Object? is_liked = freezed,
    Object? audio_state = freezed,
    Object? video_start_trigger = freezed,
    Object? video_end_trigger = freezed,
    Object? video_current_time = freezed,
    Object? video_duration = freezed,
    Object? video_time_start = freezed,
    Object? video_time_end = freezed,
    Object? seek_type = freezed,
    Object? seek_start_time = freezed,
    Object? seek_end_time = freezed,
    Object? seek_total_time = freezed,
    Object? seek_direction = freezed,
    Object? seek_interval_setting = freezed,
    Object? device_orientation = freezed,
    Object? content_ratio = freezed,
    Object? video_orientation_changed_trigger = freezed,
    Object? viewing_mode = freezed,
    Object? cast_duration = freezed,
    Object? quality = freezed,
    Object? content_extra_info = freezed,
    Object? cc_state = freezed,
    Object? cta_config = freezed,
    Object? cta_shown = freezed,
    Object? localization = freezed,
    Object? playback_speed_type = freezed,
    Object? playback_speed = freezed,
    Object? speed_start_time = freezed,
    Object? speed_end_time = freezed,
    Object? speed_total_time = freezed,
    Object? user_lifetime_engagements = freezed,
    Object? attribution_token = freezed,
    Object? stream_status = freezed,
    Object? is_at_live_edge = freezed,
    Object? stream_elapsed_time = freezed,
    Object? back_to_live_trigger = freezed,
    Object? catchup_surface = freezed,
    Object? catchup_target = freezed,
    Object? audio_track = freezed,
    Object? audio_track_previous = freezed,
    Object? audio_track_is_preferred = freezed,
    Object? search_session_id = freezed,
    Object? query_id = freezed,
    Object? result_id = freezed,
  }) {
    return _then(_value.copyWith(
      video_session_id: freezed == video_session_id
          ? _value.video_session_id
          : video_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      video_id: freezed == video_id
          ? _value.video_id
          : video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      next_video_id: freezed == next_video_id
          ? _value.next_video_id
          : next_video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      video_title: freezed == video_title
          ? _value.video_title
          : video_title // ignore: cast_nullable_to_non_nullable
              as String?,
      video_index: freezed == video_index
          ? _value.video_index
          : video_index // ignore: cast_nullable_to_non_nullable
              as int?,
      total_videos_count: freezed == total_videos_count
          ? _value.total_videos_count
          : total_videos_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_count: freezed == remaining_unread_count
          ? _value.remaining_unread_count
          : remaining_unread_count // ignore: cast_nullable_to_non_nullable
              as int?,
      is_liked: freezed == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      video_start_trigger: freezed == video_start_trigger
          ? _value.video_start_trigger
          : video_start_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerStartTriggers?,
      video_end_trigger: freezed == video_end_trigger
          ? _value.video_end_trigger
          : video_end_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      video_current_time: freezed == video_current_time
          ? _value.video_current_time
          : video_current_time // ignore: cast_nullable_to_non_nullable
              as double?,
      video_duration: freezed == video_duration
          ? _value.video_duration
          : video_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      video_time_start: freezed == video_time_start
          ? _value.video_time_start
          : video_time_start // ignore: cast_nullable_to_non_nullable
              as double?,
      video_time_end: freezed == video_time_end
          ? _value.video_time_end
          : video_time_end // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_type: freezed == seek_type
          ? _value.seek_type
          : seek_type // ignore: cast_nullable_to_non_nullable
              as VideoSeekType?,
      seek_start_time: freezed == seek_start_time
          ? _value.seek_start_time
          : seek_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_end_time: freezed == seek_end_time
          ? _value.seek_end_time
          : seek_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_total_time: freezed == seek_total_time
          ? _value.seek_total_time
          : seek_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_direction: freezed == seek_direction
          ? _value.seek_direction
          : seek_direction // ignore: cast_nullable_to_non_nullable
              as VideoSeekDirection?,
      seek_interval_setting: freezed == seek_interval_setting
          ? _value.seek_interval_setting
          : seek_interval_setting // ignore: cast_nullable_to_non_nullable
              as double?,
      device_orientation: freezed == device_orientation
          ? _value.device_orientation
          : device_orientation // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsOrientation?,
      content_ratio: freezed == content_ratio
          ? _value.content_ratio
          : content_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      video_orientation_changed_trigger: freezed ==
              video_orientation_changed_trigger
          ? _value.video_orientation_changed_trigger
          : video_orientation_changed_trigger // ignore: cast_nullable_to_non_nullable
              as OrientationChangeTrigger?,
      viewing_mode: freezed == viewing_mode
          ? _value.viewing_mode
          : viewing_mode // ignore: cast_nullable_to_non_nullable
              as PlayerViewingMode?,
      cast_duration: freezed == cast_duration
          ? _value.cast_duration
          : cast_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCtaConfig?,
      cta_shown: freezed == cta_shown
          ? _value.cta_shown
          : cta_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      playback_speed_type: freezed == playback_speed_type
          ? _value.playback_speed_type
          : playback_speed_type // ignore: cast_nullable_to_non_nullable
              as PlaybackSpeedType?,
      playback_speed: freezed == playback_speed
          ? _value.playback_speed
          : playback_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_start_time: freezed == speed_start_time
          ? _value.speed_start_time
          : speed_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_end_time: freezed == speed_end_time
          ? _value.speed_end_time
          : speed_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_total_time: freezed == speed_total_time
          ? _value.speed_total_time
          : speed_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      user_lifetime_engagements: freezed == user_lifetime_engagements
          ? _value.user_lifetime_engagements
          : user_lifetime_engagements // ignore: cast_nullable_to_non_nullable
              as int?,
      attribution_token: freezed == attribution_token
          ? _value.attribution_token
          : attribution_token // ignore: cast_nullable_to_non_nullable
              as String?,
      stream_status: freezed == stream_status
          ? _value.stream_status
          : stream_status // ignore: cast_nullable_to_non_nullable
              as AnalyticsStreamStatus?,
      is_at_live_edge: freezed == is_at_live_edge
          ? _value.is_at_live_edge
          : is_at_live_edge // ignore: cast_nullable_to_non_nullable
              as bool?,
      stream_elapsed_time: freezed == stream_elapsed_time
          ? _value.stream_elapsed_time
          : stream_elapsed_time // ignore: cast_nullable_to_non_nullable
              as double?,
      back_to_live_trigger: freezed == back_to_live_trigger
          ? _value.back_to_live_trigger
          : back_to_live_trigger // ignore: cast_nullable_to_non_nullable
              as BackToLiveTrigger?,
      catchup_surface: freezed == catchup_surface
          ? _value.catchup_surface
          : catchup_surface // ignore: cast_nullable_to_non_nullable
              as CatchupSurface?,
      catchup_target: freezed == catchup_target
          ? _value.catchup_target
          : catchup_target // ignore: cast_nullable_to_non_nullable
              as CatchupTarget?,
      audio_track: freezed == audio_track
          ? _value.audio_track
          : audio_track // ignore: cast_nullable_to_non_nullable
              as String?,
      audio_track_previous: freezed == audio_track_previous
          ? _value.audio_track_previous
          : audio_track_previous // ignore: cast_nullable_to_non_nullable
              as String?,
      audio_track_is_preferred: freezed == audio_track_is_preferred
          ? _value.audio_track_is_preferred
          : audio_track_is_preferred // ignore: cast_nullable_to_non_nullable
              as bool?,
      search_session_id: freezed == search_session_id
          ? _value.search_session_id
          : search_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      query_id: freezed == query_id
          ? _value.query_id
          : query_id // ignore: cast_nullable_to_non_nullable
              as String?,
      result_id: freezed == result_id
          ? _value.result_id
          : result_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of VideoProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config {
    if (_value.cta_config == null) {
      return null;
    }

    return $AnalyticsCtaConfigCopyWith<$Res>(_value.cta_config!, (value) {
      return _then(_value.copyWith(cta_config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoPropsImplCopyWith<$Res>
    implements $VideoPropsCopyWith<$Res> {
  factory _$$VideoPropsImplCopyWith(
          _$VideoPropsImpl value, $Res Function(_$VideoPropsImpl) then) =
      __$$VideoPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? video_session_id,
      String? video_id,
      String? next_video_id,
      String? video_title,
      int? video_index,
      int? total_videos_count,
      int? remaining_unread_count,
      bool? is_liked,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      PlayerStartTriggers? video_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? video_end_trigger,
      double? video_current_time,
      double? video_duration,
      double? video_time_start,
      double? video_time_end,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown)
      VideoSeekType? seek_type,
      double? seek_start_time,
      double? seek_end_time,
      double? seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      VideoSeekDirection? seek_direction,
      double? seek_interval_setting,
      @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
      BlazeAnalyticsOrientation? device_orientation,
      String? content_ratio,
      @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
      OrientationChangeTrigger? video_orientation_changed_trigger,
      @JsonKey(unknownEnumValue: PlayerViewingMode.unknown)
      PlayerViewingMode? viewing_mode,
      double? cast_duration,
      String? quality,
      Map<String, String>? content_extra_info,
      String? cc_state,
      AnalyticsCtaConfig? cta_config,
      bool? cta_shown,
      Map<String, String>? localization,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      PlaybackSpeedType? playback_speed_type,
      double? playback_speed,
      double? speed_start_time,
      double? speed_end_time,
      double? speed_total_time,
      int? user_lifetime_engagements,
      String? attribution_token,
      @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
      AnalyticsStreamStatus? stream_status,
      bool? is_at_live_edge,
      double? stream_elapsed_time,
      @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
      BackToLiveTrigger? back_to_live_trigger,
      @JsonKey(unknownEnumValue: CatchupSurface.unknown)
      CatchupSurface? catchup_surface,
      @JsonKey(unknownEnumValue: CatchupTarget.unknown)
      CatchupTarget? catchup_target,
      String? audio_track,
      String? audio_track_previous,
      bool? audio_track_is_preferred,
      String? search_session_id,
      String? query_id,
      String? result_id});

  @override
  $AnalyticsCtaConfigCopyWith<$Res>? get cta_config;
}

/// @nodoc
class __$$VideoPropsImplCopyWithImpl<$Res>
    extends _$VideoPropsCopyWithImpl<$Res, _$VideoPropsImpl>
    implements _$$VideoPropsImplCopyWith<$Res> {
  __$$VideoPropsImplCopyWithImpl(
      _$VideoPropsImpl _value, $Res Function(_$VideoPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video_session_id = freezed,
    Object? video_id = freezed,
    Object? next_video_id = freezed,
    Object? video_title = freezed,
    Object? video_index = freezed,
    Object? total_videos_count = freezed,
    Object? remaining_unread_count = freezed,
    Object? is_liked = freezed,
    Object? audio_state = freezed,
    Object? video_start_trigger = freezed,
    Object? video_end_trigger = freezed,
    Object? video_current_time = freezed,
    Object? video_duration = freezed,
    Object? video_time_start = freezed,
    Object? video_time_end = freezed,
    Object? seek_type = freezed,
    Object? seek_start_time = freezed,
    Object? seek_end_time = freezed,
    Object? seek_total_time = freezed,
    Object? seek_direction = freezed,
    Object? seek_interval_setting = freezed,
    Object? device_orientation = freezed,
    Object? content_ratio = freezed,
    Object? video_orientation_changed_trigger = freezed,
    Object? viewing_mode = freezed,
    Object? cast_duration = freezed,
    Object? quality = freezed,
    Object? content_extra_info = freezed,
    Object? cc_state = freezed,
    Object? cta_config = freezed,
    Object? cta_shown = freezed,
    Object? localization = freezed,
    Object? playback_speed_type = freezed,
    Object? playback_speed = freezed,
    Object? speed_start_time = freezed,
    Object? speed_end_time = freezed,
    Object? speed_total_time = freezed,
    Object? user_lifetime_engagements = freezed,
    Object? attribution_token = freezed,
    Object? stream_status = freezed,
    Object? is_at_live_edge = freezed,
    Object? stream_elapsed_time = freezed,
    Object? back_to_live_trigger = freezed,
    Object? catchup_surface = freezed,
    Object? catchup_target = freezed,
    Object? audio_track = freezed,
    Object? audio_track_previous = freezed,
    Object? audio_track_is_preferred = freezed,
    Object? search_session_id = freezed,
    Object? query_id = freezed,
    Object? result_id = freezed,
  }) {
    return _then(_$VideoPropsImpl(
      video_session_id: freezed == video_session_id
          ? _value.video_session_id
          : video_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      video_id: freezed == video_id
          ? _value.video_id
          : video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      next_video_id: freezed == next_video_id
          ? _value.next_video_id
          : next_video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      video_title: freezed == video_title
          ? _value.video_title
          : video_title // ignore: cast_nullable_to_non_nullable
              as String?,
      video_index: freezed == video_index
          ? _value.video_index
          : video_index // ignore: cast_nullable_to_non_nullable
              as int?,
      total_videos_count: freezed == total_videos_count
          ? _value.total_videos_count
          : total_videos_count // ignore: cast_nullable_to_non_nullable
              as int?,
      remaining_unread_count: freezed == remaining_unread_count
          ? _value.remaining_unread_count
          : remaining_unread_count // ignore: cast_nullable_to_non_nullable
              as int?,
      is_liked: freezed == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      video_start_trigger: freezed == video_start_trigger
          ? _value.video_start_trigger
          : video_start_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerStartTriggers?,
      video_end_trigger: freezed == video_end_trigger
          ? _value.video_end_trigger
          : video_end_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      video_current_time: freezed == video_current_time
          ? _value.video_current_time
          : video_current_time // ignore: cast_nullable_to_non_nullable
              as double?,
      video_duration: freezed == video_duration
          ? _value.video_duration
          : video_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      video_time_start: freezed == video_time_start
          ? _value.video_time_start
          : video_time_start // ignore: cast_nullable_to_non_nullable
              as double?,
      video_time_end: freezed == video_time_end
          ? _value.video_time_end
          : video_time_end // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_type: freezed == seek_type
          ? _value.seek_type
          : seek_type // ignore: cast_nullable_to_non_nullable
              as VideoSeekType?,
      seek_start_time: freezed == seek_start_time
          ? _value.seek_start_time
          : seek_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_end_time: freezed == seek_end_time
          ? _value.seek_end_time
          : seek_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_total_time: freezed == seek_total_time
          ? _value.seek_total_time
          : seek_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_direction: freezed == seek_direction
          ? _value.seek_direction
          : seek_direction // ignore: cast_nullable_to_non_nullable
              as VideoSeekDirection?,
      seek_interval_setting: freezed == seek_interval_setting
          ? _value.seek_interval_setting
          : seek_interval_setting // ignore: cast_nullable_to_non_nullable
              as double?,
      device_orientation: freezed == device_orientation
          ? _value.device_orientation
          : device_orientation // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsOrientation?,
      content_ratio: freezed == content_ratio
          ? _value.content_ratio
          : content_ratio // ignore: cast_nullable_to_non_nullable
              as String?,
      video_orientation_changed_trigger: freezed ==
              video_orientation_changed_trigger
          ? _value.video_orientation_changed_trigger
          : video_orientation_changed_trigger // ignore: cast_nullable_to_non_nullable
              as OrientationChangeTrigger?,
      viewing_mode: freezed == viewing_mode
          ? _value.viewing_mode
          : viewing_mode // ignore: cast_nullable_to_non_nullable
              as PlayerViewingMode?,
      cast_duration: freezed == cast_duration
          ? _value.cast_duration
          : cast_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsCtaConfig?,
      cta_shown: freezed == cta_shown
          ? _value.cta_shown
          : cta_shown // ignore: cast_nullable_to_non_nullable
              as bool?,
      localization: freezed == localization
          ? _value._localization
          : localization // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      playback_speed_type: freezed == playback_speed_type
          ? _value.playback_speed_type
          : playback_speed_type // ignore: cast_nullable_to_non_nullable
              as PlaybackSpeedType?,
      playback_speed: freezed == playback_speed
          ? _value.playback_speed
          : playback_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_start_time: freezed == speed_start_time
          ? _value.speed_start_time
          : speed_start_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_end_time: freezed == speed_end_time
          ? _value.speed_end_time
          : speed_end_time // ignore: cast_nullable_to_non_nullable
              as double?,
      speed_total_time: freezed == speed_total_time
          ? _value.speed_total_time
          : speed_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      user_lifetime_engagements: freezed == user_lifetime_engagements
          ? _value.user_lifetime_engagements
          : user_lifetime_engagements // ignore: cast_nullable_to_non_nullable
              as int?,
      attribution_token: freezed == attribution_token
          ? _value.attribution_token
          : attribution_token // ignore: cast_nullable_to_non_nullable
              as String?,
      stream_status: freezed == stream_status
          ? _value.stream_status
          : stream_status // ignore: cast_nullable_to_non_nullable
              as AnalyticsStreamStatus?,
      is_at_live_edge: freezed == is_at_live_edge
          ? _value.is_at_live_edge
          : is_at_live_edge // ignore: cast_nullable_to_non_nullable
              as bool?,
      stream_elapsed_time: freezed == stream_elapsed_time
          ? _value.stream_elapsed_time
          : stream_elapsed_time // ignore: cast_nullable_to_non_nullable
              as double?,
      back_to_live_trigger: freezed == back_to_live_trigger
          ? _value.back_to_live_trigger
          : back_to_live_trigger // ignore: cast_nullable_to_non_nullable
              as BackToLiveTrigger?,
      catchup_surface: freezed == catchup_surface
          ? _value.catchup_surface
          : catchup_surface // ignore: cast_nullable_to_non_nullable
              as CatchupSurface?,
      catchup_target: freezed == catchup_target
          ? _value.catchup_target
          : catchup_target // ignore: cast_nullable_to_non_nullable
              as CatchupTarget?,
      audio_track: freezed == audio_track
          ? _value.audio_track
          : audio_track // ignore: cast_nullable_to_non_nullable
              as String?,
      audio_track_previous: freezed == audio_track_previous
          ? _value.audio_track_previous
          : audio_track_previous // ignore: cast_nullable_to_non_nullable
              as String?,
      audio_track_is_preferred: freezed == audio_track_is_preferred
          ? _value.audio_track_is_preferred
          : audio_track_is_preferred // ignore: cast_nullable_to_non_nullable
              as bool?,
      search_session_id: freezed == search_session_id
          ? _value.search_session_id
          : search_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      query_id: freezed == query_id
          ? _value.query_id
          : query_id // ignore: cast_nullable_to_non_nullable
              as String?,
      result_id: freezed == result_id
          ? _value.result_id
          : result_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoPropsImpl with DiagnosticableTreeMixin implements _VideoProps {
  const _$VideoPropsImpl(
      {this.video_session_id,
      this.video_id,
      this.next_video_id,
      this.video_title,
      this.video_index,
      this.total_videos_count,
      this.remaining_unread_count,
      this.is_liked,
      @JsonKey(unknownEnumValue: AudioState.unknown) this.audio_state,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      this.video_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      this.video_end_trigger,
      this.video_current_time,
      this.video_duration,
      this.video_time_start,
      this.video_time_end,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown) this.seek_type,
      this.seek_start_time,
      this.seek_end_time,
      this.seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      this.seek_direction,
      this.seek_interval_setting,
      @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
      this.device_orientation,
      this.content_ratio,
      @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
      this.video_orientation_changed_trigger,
      @JsonKey(unknownEnumValue: PlayerViewingMode.unknown) this.viewing_mode,
      this.cast_duration,
      this.quality,
      final Map<String, String>? content_extra_info,
      this.cc_state,
      this.cta_config,
      this.cta_shown,
      final Map<String, String>? localization,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      this.playback_speed_type,
      this.playback_speed,
      this.speed_start_time,
      this.speed_end_time,
      this.speed_total_time,
      this.user_lifetime_engagements,
      this.attribution_token,
      @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
      this.stream_status,
      this.is_at_live_edge,
      this.stream_elapsed_time,
      @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
      this.back_to_live_trigger,
      @JsonKey(unknownEnumValue: CatchupSurface.unknown) this.catchup_surface,
      @JsonKey(unknownEnumValue: CatchupTarget.unknown) this.catchup_target,
      this.audio_track,
      this.audio_track_previous,
      this.audio_track_is_preferred,
      this.search_session_id,
      this.query_id,
      this.result_id})
      : _content_extra_info = content_extra_info,
        _localization = localization;

  factory _$VideoPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoPropsImplFromJson(json);

  @override
  final String? video_session_id;
  @override
  final String? video_id;
  @override
  final String? next_video_id;
  @override
  final String? video_title;
  @override
  final int? video_index;
  @override
  final int? total_videos_count;
  @override
  final int? remaining_unread_count;
  @override
  final bool? is_liked;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  final AudioState? audio_state;
  @override
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  final PlayerStartTriggers? video_start_trigger;
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  final PlayerExitTriggers? video_end_trigger;
  @override
  final double? video_current_time;
  @override
  final double? video_duration;
  @override
  final double? video_time_start;
  @override
  final double? video_time_end;
  @override
  @JsonKey(unknownEnumValue: VideoSeekType.unknown)
  final VideoSeekType? seek_type;
  @override
  final double? seek_start_time;
  @override
  final double? seek_end_time;
  @override
  final double? seek_total_time;
  @override
  @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
  final VideoSeekDirection? seek_direction;
  @override
  final double? seek_interval_setting;
  @override
  @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
  final BlazeAnalyticsOrientation? device_orientation;
  @override
  final String? content_ratio;
  @override
  @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
  final OrientationChangeTrigger? video_orientation_changed_trigger;

  /// Where the video is being watched. On a `viewing_mode_transition` event
  /// this is the mode the player moved to.
  @override
  @JsonKey(unknownEnumValue: PlayerViewingMode.unknown)
  final PlayerViewingMode? viewing_mode;
  @override
  final double? cast_duration;

  /// Android only.
  @override
  final String? quality;
  final Map<String, String>? _content_extra_info;
  @override
  Map<String, String>? get content_extra_info {
    final value = _content_extra_info;
    if (value == null) return null;
    if (_content_extra_info is EqualUnmodifiableMapView)
      return _content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? cc_state;
  @override
  final AnalyticsCtaConfig? cta_config;
  @override
  final bool? cta_shown;
  final Map<String, String>? _localization;
  @override
  Map<String, String>? get localization {
    final value = _localization;
    if (value == null) return null;
    if (_localization is EqualUnmodifiableMapView) return _localization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
  final PlaybackSpeedType? playback_speed_type;
  @override
  final double? playback_speed;
  @override
  final double? speed_start_time;
  @override
  final double? speed_end_time;
  @override
  final double? speed_total_time;
  @override
  final int? user_lifetime_engagements;
  @override
  final String? attribution_token;
// Live streams
  @override
  @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
  final AnalyticsStreamStatus? stream_status;
  @override
  final bool? is_at_live_edge;
  @override
  final double? stream_elapsed_time;
  @override
  @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
  final BackToLiveTrigger? back_to_live_trigger;
  @override
  @JsonKey(unknownEnumValue: CatchupSurface.unknown)
  final CatchupSurface? catchup_surface;
  @override
  @JsonKey(unknownEnumValue: CatchupTarget.unknown)
  final CatchupTarget? catchup_target;
// Audio tracks
  @override
  final String? audio_track;
  @override
  final String? audio_track_previous;
  @override
  final bool? audio_track_is_preferred;

  /// iOS only.
  @override
  final String? search_session_id;

  /// iOS only.
  @override
  final String? query_id;

  /// iOS only.
  @override
  final String? result_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoProps(video_session_id: $video_session_id, video_id: $video_id, next_video_id: $next_video_id, video_title: $video_title, video_index: $video_index, total_videos_count: $total_videos_count, remaining_unread_count: $remaining_unread_count, is_liked: $is_liked, audio_state: $audio_state, video_start_trigger: $video_start_trigger, video_end_trigger: $video_end_trigger, video_current_time: $video_current_time, video_duration: $video_duration, video_time_start: $video_time_start, video_time_end: $video_time_end, seek_type: $seek_type, seek_start_time: $seek_start_time, seek_end_time: $seek_end_time, seek_total_time: $seek_total_time, seek_direction: $seek_direction, seek_interval_setting: $seek_interval_setting, device_orientation: $device_orientation, content_ratio: $content_ratio, video_orientation_changed_trigger: $video_orientation_changed_trigger, viewing_mode: $viewing_mode, cast_duration: $cast_duration, quality: $quality, content_extra_info: $content_extra_info, cc_state: $cc_state, cta_config: $cta_config, cta_shown: $cta_shown, localization: $localization, playback_speed_type: $playback_speed_type, playback_speed: $playback_speed, speed_start_time: $speed_start_time, speed_end_time: $speed_end_time, speed_total_time: $speed_total_time, user_lifetime_engagements: $user_lifetime_engagements, attribution_token: $attribution_token, stream_status: $stream_status, is_at_live_edge: $is_at_live_edge, stream_elapsed_time: $stream_elapsed_time, back_to_live_trigger: $back_to_live_trigger, catchup_surface: $catchup_surface, catchup_target: $catchup_target, audio_track: $audio_track, audio_track_previous: $audio_track_previous, audio_track_is_preferred: $audio_track_is_preferred, search_session_id: $search_session_id, query_id: $query_id, result_id: $result_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoProps'))
      ..add(DiagnosticsProperty('video_session_id', video_session_id))
      ..add(DiagnosticsProperty('video_id', video_id))
      ..add(DiagnosticsProperty('next_video_id', next_video_id))
      ..add(DiagnosticsProperty('video_title', video_title))
      ..add(DiagnosticsProperty('video_index', video_index))
      ..add(DiagnosticsProperty('total_videos_count', total_videos_count))
      ..add(
          DiagnosticsProperty('remaining_unread_count', remaining_unread_count))
      ..add(DiagnosticsProperty('is_liked', is_liked))
      ..add(DiagnosticsProperty('audio_state', audio_state))
      ..add(DiagnosticsProperty('video_start_trigger', video_start_trigger))
      ..add(DiagnosticsProperty('video_end_trigger', video_end_trigger))
      ..add(DiagnosticsProperty('video_current_time', video_current_time))
      ..add(DiagnosticsProperty('video_duration', video_duration))
      ..add(DiagnosticsProperty('video_time_start', video_time_start))
      ..add(DiagnosticsProperty('video_time_end', video_time_end))
      ..add(DiagnosticsProperty('seek_type', seek_type))
      ..add(DiagnosticsProperty('seek_start_time', seek_start_time))
      ..add(DiagnosticsProperty('seek_end_time', seek_end_time))
      ..add(DiagnosticsProperty('seek_total_time', seek_total_time))
      ..add(DiagnosticsProperty('seek_direction', seek_direction))
      ..add(DiagnosticsProperty('seek_interval_setting', seek_interval_setting))
      ..add(DiagnosticsProperty('device_orientation', device_orientation))
      ..add(DiagnosticsProperty('content_ratio', content_ratio))
      ..add(DiagnosticsProperty('video_orientation_changed_trigger',
          video_orientation_changed_trigger))
      ..add(DiagnosticsProperty('viewing_mode', viewing_mode))
      ..add(DiagnosticsProperty('cast_duration', cast_duration))
      ..add(DiagnosticsProperty('quality', quality))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty('cc_state', cc_state))
      ..add(DiagnosticsProperty('cta_config', cta_config))
      ..add(DiagnosticsProperty('cta_shown', cta_shown))
      ..add(DiagnosticsProperty('localization', localization))
      ..add(DiagnosticsProperty('playback_speed_type', playback_speed_type))
      ..add(DiagnosticsProperty('playback_speed', playback_speed))
      ..add(DiagnosticsProperty('speed_start_time', speed_start_time))
      ..add(DiagnosticsProperty('speed_end_time', speed_end_time))
      ..add(DiagnosticsProperty('speed_total_time', speed_total_time))
      ..add(DiagnosticsProperty(
          'user_lifetime_engagements', user_lifetime_engagements))
      ..add(DiagnosticsProperty('attribution_token', attribution_token))
      ..add(DiagnosticsProperty('stream_status', stream_status))
      ..add(DiagnosticsProperty('is_at_live_edge', is_at_live_edge))
      ..add(DiagnosticsProperty('stream_elapsed_time', stream_elapsed_time))
      ..add(DiagnosticsProperty('back_to_live_trigger', back_to_live_trigger))
      ..add(DiagnosticsProperty('catchup_surface', catchup_surface))
      ..add(DiagnosticsProperty('catchup_target', catchup_target))
      ..add(DiagnosticsProperty('audio_track', audio_track))
      ..add(DiagnosticsProperty('audio_track_previous', audio_track_previous))
      ..add(DiagnosticsProperty(
          'audio_track_is_preferred', audio_track_is_preferred))
      ..add(DiagnosticsProperty('search_session_id', search_session_id))
      ..add(DiagnosticsProperty('query_id', query_id))
      ..add(DiagnosticsProperty('result_id', result_id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPropsImpl &&
            (identical(other.video_session_id, video_session_id) ||
                other.video_session_id == video_session_id) &&
            (identical(other.video_id, video_id) ||
                other.video_id == video_id) &&
            (identical(other.next_video_id, next_video_id) ||
                other.next_video_id == next_video_id) &&
            (identical(other.video_title, video_title) ||
                other.video_title == video_title) &&
            (identical(other.video_index, video_index) ||
                other.video_index == video_index) &&
            (identical(other.total_videos_count, total_videos_count) ||
                other.total_videos_count == total_videos_count) &&
            (identical(other.remaining_unread_count, remaining_unread_count) ||
                other.remaining_unread_count == remaining_unread_count) &&
            (identical(other.is_liked, is_liked) ||
                other.is_liked == is_liked) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
            (identical(other.video_start_trigger, video_start_trigger) ||
                other.video_start_trigger == video_start_trigger) &&
            (identical(other.video_end_trigger, video_end_trigger) ||
                other.video_end_trigger == video_end_trigger) &&
            (identical(other.video_current_time, video_current_time) ||
                other.video_current_time == video_current_time) &&
            (identical(other.video_duration, video_duration) ||
                other.video_duration == video_duration) &&
            (identical(other.video_time_start, video_time_start) ||
                other.video_time_start == video_time_start) &&
            (identical(other.video_time_end, video_time_end) ||
                other.video_time_end == video_time_end) &&
            (identical(other.seek_type, seek_type) ||
                other.seek_type == seek_type) &&
            (identical(other.seek_start_time, seek_start_time) ||
                other.seek_start_time == seek_start_time) &&
            (identical(other.seek_end_time, seek_end_time) ||
                other.seek_end_time == seek_end_time) &&
            (identical(other.seek_total_time, seek_total_time) ||
                other.seek_total_time == seek_total_time) &&
            (identical(other.seek_direction, seek_direction) ||
                other.seek_direction == seek_direction) &&
            (identical(other.seek_interval_setting, seek_interval_setting) ||
                other.seek_interval_setting == seek_interval_setting) &&
            (identical(other.device_orientation, device_orientation) ||
                other.device_orientation == device_orientation) &&
            (identical(other.content_ratio, content_ratio) ||
                other.content_ratio == content_ratio) &&
            (identical(other.video_orientation_changed_trigger, video_orientation_changed_trigger) ||
                other.video_orientation_changed_trigger ==
                    video_orientation_changed_trigger) &&
            (identical(other.viewing_mode, viewing_mode) ||
                other.viewing_mode == viewing_mode) &&
            (identical(other.cast_duration, cast_duration) ||
                other.cast_duration == cast_duration) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            (identical(other.cc_state, cc_state) ||
                other.cc_state == cc_state) &&
            (identical(other.cta_config, cta_config) ||
                other.cta_config == cta_config) &&
            (identical(other.cta_shown, cta_shown) ||
                other.cta_shown == cta_shown) &&
            const DeepCollectionEquality()
                .equals(other._localization, _localization) &&
            (identical(other.playback_speed_type, playback_speed_type) ||
                other.playback_speed_type == playback_speed_type) &&
            (identical(other.playback_speed, playback_speed) ||
                other.playback_speed == playback_speed) &&
            (identical(other.speed_start_time, speed_start_time) ||
                other.speed_start_time == speed_start_time) &&
            (identical(other.speed_end_time, speed_end_time) ||
                other.speed_end_time == speed_end_time) &&
            (identical(other.speed_total_time, speed_total_time) ||
                other.speed_total_time == speed_total_time) &&
            (identical(other.user_lifetime_engagements, user_lifetime_engagements) ||
                other.user_lifetime_engagements == user_lifetime_engagements) &&
            (identical(other.attribution_token, attribution_token) ||
                other.attribution_token == attribution_token) &&
            (identical(other.stream_status, stream_status) ||
                other.stream_status == stream_status) &&
            (identical(other.is_at_live_edge, is_at_live_edge) ||
                other.is_at_live_edge == is_at_live_edge) &&
            (identical(other.stream_elapsed_time, stream_elapsed_time) || other.stream_elapsed_time == stream_elapsed_time) &&
            (identical(other.back_to_live_trigger, back_to_live_trigger) || other.back_to_live_trigger == back_to_live_trigger) &&
            (identical(other.catchup_surface, catchup_surface) || other.catchup_surface == catchup_surface) &&
            (identical(other.catchup_target, catchup_target) || other.catchup_target == catchup_target) &&
            (identical(other.audio_track, audio_track) || other.audio_track == audio_track) &&
            (identical(other.audio_track_previous, audio_track_previous) || other.audio_track_previous == audio_track_previous) &&
            (identical(other.audio_track_is_preferred, audio_track_is_preferred) || other.audio_track_is_preferred == audio_track_is_preferred) &&
            (identical(other.search_session_id, search_session_id) || other.search_session_id == search_session_id) &&
            (identical(other.query_id, query_id) || other.query_id == query_id) &&
            (identical(other.result_id, result_id) || other.result_id == result_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        video_session_id,
        video_id,
        next_video_id,
        video_title,
        video_index,
        total_videos_count,
        remaining_unread_count,
        is_liked,
        audio_state,
        video_start_trigger,
        video_end_trigger,
        video_current_time,
        video_duration,
        video_time_start,
        video_time_end,
        seek_type,
        seek_start_time,
        seek_end_time,
        seek_total_time,
        seek_direction,
        seek_interval_setting,
        device_orientation,
        content_ratio,
        video_orientation_changed_trigger,
        viewing_mode,
        cast_duration,
        quality,
        const DeepCollectionEquality().hash(_content_extra_info),
        cc_state,
        cta_config,
        cta_shown,
        const DeepCollectionEquality().hash(_localization),
        playback_speed_type,
        playback_speed,
        speed_start_time,
        speed_end_time,
        speed_total_time,
        user_lifetime_engagements,
        attribution_token,
        stream_status,
        is_at_live_edge,
        stream_elapsed_time,
        back_to_live_trigger,
        catchup_surface,
        catchup_target,
        audio_track,
        audio_track_previous,
        audio_track_is_preferred,
        search_session_id,
        query_id,
        result_id
      ]);

  /// Create a copy of VideoProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPropsImplCopyWith<_$VideoPropsImpl> get copyWith =>
      __$$VideoPropsImplCopyWithImpl<_$VideoPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoPropsImplToJson(
      this,
    );
  }
}

abstract class _VideoProps implements VideoProps {
  const factory _VideoProps(
      {final String? video_session_id,
      final String? video_id,
      final String? next_video_id,
      final String? video_title,
      final int? video_index,
      final int? total_videos_count,
      final int? remaining_unread_count,
      final bool? is_liked,
      @JsonKey(unknownEnumValue: AudioState.unknown)
      final AudioState? audio_state,
      @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
      final PlayerStartTriggers? video_start_trigger,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      final PlayerExitTriggers? video_end_trigger,
      final double? video_current_time,
      final double? video_duration,
      final double? video_time_start,
      final double? video_time_end,
      @JsonKey(unknownEnumValue: VideoSeekType.unknown)
      final VideoSeekType? seek_type,
      final double? seek_start_time,
      final double? seek_end_time,
      final double? seek_total_time,
      @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
      final VideoSeekDirection? seek_direction,
      final double? seek_interval_setting,
      @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
      final BlazeAnalyticsOrientation? device_orientation,
      final String? content_ratio,
      @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
      final OrientationChangeTrigger? video_orientation_changed_trigger,
      @JsonKey(unknownEnumValue: PlayerViewingMode.unknown)
      final PlayerViewingMode? viewing_mode,
      final double? cast_duration,
      final String? quality,
      final Map<String, String>? content_extra_info,
      final String? cc_state,
      final AnalyticsCtaConfig? cta_config,
      final bool? cta_shown,
      final Map<String, String>? localization,
      @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
      final PlaybackSpeedType? playback_speed_type,
      final double? playback_speed,
      final double? speed_start_time,
      final double? speed_end_time,
      final double? speed_total_time,
      final int? user_lifetime_engagements,
      final String? attribution_token,
      @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
      final AnalyticsStreamStatus? stream_status,
      final bool? is_at_live_edge,
      final double? stream_elapsed_time,
      @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
      final BackToLiveTrigger? back_to_live_trigger,
      @JsonKey(unknownEnumValue: CatchupSurface.unknown)
      final CatchupSurface? catchup_surface,
      @JsonKey(unknownEnumValue: CatchupTarget.unknown)
      final CatchupTarget? catchup_target,
      final String? audio_track,
      final String? audio_track_previous,
      final bool? audio_track_is_preferred,
      final String? search_session_id,
      final String? query_id,
      final String? result_id}) = _$VideoPropsImpl;

  factory _VideoProps.fromJson(Map<String, dynamic> json) =
      _$VideoPropsImpl.fromJson;

  @override
  String? get video_session_id;
  @override
  String? get video_id;
  @override
  String? get next_video_id;
  @override
  String? get video_title;
  @override
  int? get video_index;
  @override
  int? get total_videos_count;
  @override
  int? get remaining_unread_count;
  @override
  bool? get is_liked;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state;
  @override
  @JsonKey(unknownEnumValue: PlayerStartTriggers.unknown)
  PlayerStartTriggers? get video_start_trigger;
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get video_end_trigger;
  @override
  double? get video_current_time;
  @override
  double? get video_duration;
  @override
  double? get video_time_start;
  @override
  double? get video_time_end;
  @override
  @JsonKey(unknownEnumValue: VideoSeekType.unknown)
  VideoSeekType? get seek_type;
  @override
  double? get seek_start_time;
  @override
  double? get seek_end_time;
  @override
  double? get seek_total_time;
  @override
  @JsonKey(unknownEnumValue: VideoSeekDirection.unknown)
  VideoSeekDirection? get seek_direction;
  @override
  double? get seek_interval_setting;
  @override
  @JsonKey(unknownEnumValue: BlazeAnalyticsOrientation.unknown)
  BlazeAnalyticsOrientation? get device_orientation;
  @override
  String? get content_ratio;
  @override
  @JsonKey(unknownEnumValue: OrientationChangeTrigger.unknown)
  OrientationChangeTrigger? get video_orientation_changed_trigger;

  /// Where the video is being watched. On a `viewing_mode_transition` event
  /// this is the mode the player moved to.
  @override
  @JsonKey(unknownEnumValue: PlayerViewingMode.unknown)
  PlayerViewingMode? get viewing_mode;
  @override
  double? get cast_duration;

  /// Android only.
  @override
  String? get quality;
  @override
  Map<String, String>? get content_extra_info;
  @override
  String? get cc_state;
  @override
  AnalyticsCtaConfig? get cta_config;
  @override
  bool? get cta_shown;
  @override
  Map<String, String>? get localization;
  @override
  @JsonKey(unknownEnumValue: PlaybackSpeedType.unknown)
  PlaybackSpeedType? get playback_speed_type;
  @override
  double? get playback_speed;
  @override
  double? get speed_start_time;
  @override
  double? get speed_end_time;
  @override
  double? get speed_total_time;
  @override
  int? get user_lifetime_engagements;
  @override
  String? get attribution_token; // Live streams
  @override
  @JsonKey(unknownEnumValue: AnalyticsStreamStatus.unknown)
  AnalyticsStreamStatus? get stream_status;
  @override
  bool? get is_at_live_edge;
  @override
  double? get stream_elapsed_time;
  @override
  @JsonKey(unknownEnumValue: BackToLiveTrigger.unknown)
  BackToLiveTrigger? get back_to_live_trigger;
  @override
  @JsonKey(unknownEnumValue: CatchupSurface.unknown)
  CatchupSurface? get catchup_surface;
  @override
  @JsonKey(unknownEnumValue: CatchupTarget.unknown)
  CatchupTarget? get catchup_target; // Audio tracks
  @override
  String? get audio_track;
  @override
  String? get audio_track_previous;
  @override
  bool? get audio_track_is_preferred;

  /// iOS only.
  @override
  String? get search_session_id;

  /// iOS only.
  @override
  String? get query_id;

  /// iOS only.
  @override
  String? get result_id;

  /// Create a copy of VideoProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoPropsImplCopyWith<_$VideoPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdEventProps _$AdEventPropsFromJson(Map<String, dynamic> json) {
  return _AdEventProps.fromJson(json);
}

/// @nodoc
mixin _$AdEventProps {
// Properties relevant for IMA, banner and CustomNative ads
  String? get session_id => throw _privateConstructorUsedError;

  /// The ID of the story, moment or video the ad interrupted. [content_type]
  /// tells which.
  String? get content_id => throw _privateConstructorUsedError;
  String? get content_title => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type => throw _privateConstructorUsedError;
  double? get ad_duration => throw _privateConstructorUsedError;
  String? get advertiser_name => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;

  /// iOS only.
  Map<String, String>? get story_page_content_extra_info =>
      throw _privateConstructorUsedError;
  String? get backoffice_campaign_data =>
      throw _privateConstructorUsedError; // Properties relevant only for CustomNative
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get ad_exit_trigger => throw _privateConstructorUsedError;

  /// The share of the ad that was watched, from 0 to 100, with two decimals.
  double? get ad_duration_viewed_percent => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state => throw _privateConstructorUsedError;
  String? get advertiser_id => throw _privateConstructorUsedError;
  String? get campaign_id => throw _privateConstructorUsedError;
  String? get campaign_name => throw _privateConstructorUsedError;
  String? get ad_server => throw _privateConstructorUsedError;
  String? get ad_insertion_logic => throw _privateConstructorUsedError;
  int? get ad_index => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
  BlazeAnalyticsAdGestureType? get gesture_type =>
      throw _privateConstructorUsedError; // Properties relevant only for IMA
  String? get ad_id => throw _privateConstructorUsedError;
  String? get ad_title => throw _privateConstructorUsedError;
  String? get ad_description => throw _privateConstructorUsedError;
  String? get ad_system => throw _privateConstructorUsedError;
  bool? get skippable => throw _privateConstructorUsedError;
  double? get skip_time_offset => throw _privateConstructorUsedError;
  String? get ima_url =>
      throw _privateConstructorUsedError; // Properties relevant only for Banner Ads
  String? get ad_unit_id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AdEventProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AdEventProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AdEventProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AdEventProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdEventProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdEventPropsCopyWith<AdEventProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventPropsCopyWith<$Res> {
  factory $AdEventPropsCopyWith(
          AdEventProps value, $Res Function(AdEventProps) then) =
      _$AdEventPropsCopyWithImpl<$Res, AdEventProps>;
  @useResult
  $Res call(
      {String? session_id,
      String? content_id,
      String? content_title,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      double? ad_duration,
      String? advertiser_name,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      String? backoffice_campaign_data,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? ad_exit_trigger,
      double? ad_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      String? advertiser_id,
      String? campaign_id,
      String? campaign_name,
      String? ad_server,
      String? ad_insertion_logic,
      int? ad_index,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      BlazeAnalyticsAdGestureType? gesture_type,
      String? ad_id,
      String? ad_title,
      String? ad_description,
      String? ad_system,
      bool? skippable,
      double? skip_time_offset,
      String? ima_url,
      String? ad_unit_id});
}

/// @nodoc
class _$AdEventPropsCopyWithImpl<$Res, $Val extends AdEventProps>
    implements $AdEventPropsCopyWith<$Res> {
  _$AdEventPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdEventProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session_id = freezed,
    Object? content_id = freezed,
    Object? content_title = freezed,
    Object? content_type = freezed,
    Object? ad_duration = freezed,
    Object? advertiser_name = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? backoffice_campaign_data = freezed,
    Object? ad_exit_trigger = freezed,
    Object? ad_duration_viewed_percent = freezed,
    Object? audio_state = freezed,
    Object? advertiser_id = freezed,
    Object? campaign_id = freezed,
    Object? campaign_name = freezed,
    Object? ad_server = freezed,
    Object? ad_insertion_logic = freezed,
    Object? ad_index = freezed,
    Object? gesture_type = freezed,
    Object? ad_id = freezed,
    Object? ad_title = freezed,
    Object? ad_description = freezed,
    Object? ad_system = freezed,
    Object? skippable = freezed,
    Object? skip_time_offset = freezed,
    Object? ima_url = freezed,
    Object? ad_unit_id = freezed,
  }) {
    return _then(_value.copyWith(
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_title: freezed == content_title
          ? _value.content_title
          : content_title // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      ad_duration: freezed == ad_duration
          ? _value.ad_duration
          : ad_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      advertiser_name: freezed == advertiser_name
          ? _value.advertiser_name
          : advertiser_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value.story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      backoffice_campaign_data: freezed == backoffice_campaign_data
          ? _value.backoffice_campaign_data
          : backoffice_campaign_data // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_exit_trigger: freezed == ad_exit_trigger
          ? _value.ad_exit_trigger
          : ad_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      ad_duration_viewed_percent: freezed == ad_duration_viewed_percent
          ? _value.ad_duration_viewed_percent
          : ad_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      advertiser_id: freezed == advertiser_id
          ? _value.advertiser_id
          : advertiser_id // ignore: cast_nullable_to_non_nullable
              as String?,
      campaign_id: freezed == campaign_id
          ? _value.campaign_id
          : campaign_id // ignore: cast_nullable_to_non_nullable
              as String?,
      campaign_name: freezed == campaign_name
          ? _value.campaign_name
          : campaign_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_server: freezed == ad_server
          ? _value.ad_server
          : ad_server // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_insertion_logic: freezed == ad_insertion_logic
          ? _value.ad_insertion_logic
          : ad_insertion_logic // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_index: freezed == ad_index
          ? _value.ad_index
          : ad_index // ignore: cast_nullable_to_non_nullable
              as int?,
      gesture_type: freezed == gesture_type
          ? _value.gesture_type
          : gesture_type // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsAdGestureType?,
      ad_id: freezed == ad_id
          ? _value.ad_id
          : ad_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_title: freezed == ad_title
          ? _value.ad_title
          : ad_title // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_description: freezed == ad_description
          ? _value.ad_description
          : ad_description // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_system: freezed == ad_system
          ? _value.ad_system
          : ad_system // ignore: cast_nullable_to_non_nullable
              as String?,
      skippable: freezed == skippable
          ? _value.skippable
          : skippable // ignore: cast_nullable_to_non_nullable
              as bool?,
      skip_time_offset: freezed == skip_time_offset
          ? _value.skip_time_offset
          : skip_time_offset // ignore: cast_nullable_to_non_nullable
              as double?,
      ima_url: freezed == ima_url
          ? _value.ima_url
          : ima_url // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_unit_id: freezed == ad_unit_id
          ? _value.ad_unit_id
          : ad_unit_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdEventPropsImplCopyWith<$Res>
    implements $AdEventPropsCopyWith<$Res> {
  factory _$$AdEventPropsImplCopyWith(
          _$AdEventPropsImpl value, $Res Function(_$AdEventPropsImpl) then) =
      __$$AdEventPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? session_id,
      String? content_id,
      String? content_title,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      double? ad_duration,
      String? advertiser_name,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      String? backoffice_campaign_data,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      PlayerExitTriggers? ad_exit_trigger,
      double? ad_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) AudioState? audio_state,
      String? advertiser_id,
      String? campaign_id,
      String? campaign_name,
      String? ad_server,
      String? ad_insertion_logic,
      int? ad_index,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      BlazeAnalyticsAdGestureType? gesture_type,
      String? ad_id,
      String? ad_title,
      String? ad_description,
      String? ad_system,
      bool? skippable,
      double? skip_time_offset,
      String? ima_url,
      String? ad_unit_id});
}

/// @nodoc
class __$$AdEventPropsImplCopyWithImpl<$Res>
    extends _$AdEventPropsCopyWithImpl<$Res, _$AdEventPropsImpl>
    implements _$$AdEventPropsImplCopyWith<$Res> {
  __$$AdEventPropsImplCopyWithImpl(
      _$AdEventPropsImpl _value, $Res Function(_$AdEventPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdEventProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session_id = freezed,
    Object? content_id = freezed,
    Object? content_title = freezed,
    Object? content_type = freezed,
    Object? ad_duration = freezed,
    Object? advertiser_name = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? backoffice_campaign_data = freezed,
    Object? ad_exit_trigger = freezed,
    Object? ad_duration_viewed_percent = freezed,
    Object? audio_state = freezed,
    Object? advertiser_id = freezed,
    Object? campaign_id = freezed,
    Object? campaign_name = freezed,
    Object? ad_server = freezed,
    Object? ad_insertion_logic = freezed,
    Object? ad_index = freezed,
    Object? gesture_type = freezed,
    Object? ad_id = freezed,
    Object? ad_title = freezed,
    Object? ad_description = freezed,
    Object? ad_system = freezed,
    Object? skippable = freezed,
    Object? skip_time_offset = freezed,
    Object? ima_url = freezed,
    Object? ad_unit_id = freezed,
  }) {
    return _then(_$AdEventPropsImpl(
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_title: freezed == content_title
          ? _value.content_title
          : content_title // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      ad_duration: freezed == ad_duration
          ? _value.ad_duration
          : ad_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      advertiser_name: freezed == advertiser_name
          ? _value.advertiser_name
          : advertiser_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value._story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      backoffice_campaign_data: freezed == backoffice_campaign_data
          ? _value.backoffice_campaign_data
          : backoffice_campaign_data // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_exit_trigger: freezed == ad_exit_trigger
          ? _value.ad_exit_trigger
          : ad_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      ad_duration_viewed_percent: freezed == ad_duration_viewed_percent
          ? _value.ad_duration_viewed_percent
          : ad_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      advertiser_id: freezed == advertiser_id
          ? _value.advertiser_id
          : advertiser_id // ignore: cast_nullable_to_non_nullable
              as String?,
      campaign_id: freezed == campaign_id
          ? _value.campaign_id
          : campaign_id // ignore: cast_nullable_to_non_nullable
              as String?,
      campaign_name: freezed == campaign_name
          ? _value.campaign_name
          : campaign_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_server: freezed == ad_server
          ? _value.ad_server
          : ad_server // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_insertion_logic: freezed == ad_insertion_logic
          ? _value.ad_insertion_logic
          : ad_insertion_logic // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_index: freezed == ad_index
          ? _value.ad_index
          : ad_index // ignore: cast_nullable_to_non_nullable
              as int?,
      gesture_type: freezed == gesture_type
          ? _value.gesture_type
          : gesture_type // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsAdGestureType?,
      ad_id: freezed == ad_id
          ? _value.ad_id
          : ad_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_title: freezed == ad_title
          ? _value.ad_title
          : ad_title // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_description: freezed == ad_description
          ? _value.ad_description
          : ad_description // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_system: freezed == ad_system
          ? _value.ad_system
          : ad_system // ignore: cast_nullable_to_non_nullable
              as String?,
      skippable: freezed == skippable
          ? _value.skippable
          : skippable // ignore: cast_nullable_to_non_nullable
              as bool?,
      skip_time_offset: freezed == skip_time_offset
          ? _value.skip_time_offset
          : skip_time_offset // ignore: cast_nullable_to_non_nullable
              as double?,
      ima_url: freezed == ima_url
          ? _value.ima_url
          : ima_url // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_unit_id: freezed == ad_unit_id
          ? _value.ad_unit_id
          : ad_unit_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdEventPropsImpl with DiagnosticableTreeMixin implements _AdEventProps {
  const _$AdEventPropsImpl(
      {this.session_id,
      this.content_id,
      this.content_title,
      @JsonKey(unknownEnumValue: ContentType.unknown) this.content_type,
      this.ad_duration,
      this.advertiser_name,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      this.backoffice_campaign_data,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      this.ad_exit_trigger,
      this.ad_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown) this.audio_state,
      this.advertiser_id,
      this.campaign_id,
      this.campaign_name,
      this.ad_server,
      this.ad_insertion_logic,
      this.ad_index,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      this.gesture_type,
      this.ad_id,
      this.ad_title,
      this.ad_description,
      this.ad_system,
      this.skippable,
      this.skip_time_offset,
      this.ima_url,
      this.ad_unit_id})
      : _content_extra_info = content_extra_info,
        _story_page_content_extra_info = story_page_content_extra_info;

  factory _$AdEventPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdEventPropsImplFromJson(json);

// Properties relevant for IMA, banner and CustomNative ads
  @override
  final String? session_id;

  /// The ID of the story, moment or video the ad interrupted. [content_type]
  /// tells which.
  @override
  final String? content_id;
  @override
  final String? content_title;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  final ContentType? content_type;
  @override
  final double? ad_duration;
  @override
  final String? advertiser_name;
  final Map<String, String>? _content_extra_info;
  @override
  Map<String, String>? get content_extra_info {
    final value = _content_extra_info;
    if (value == null) return null;
    if (_content_extra_info is EqualUnmodifiableMapView)
      return _content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// iOS only.
  final Map<String, String>? _story_page_content_extra_info;

  /// iOS only.
  @override
  Map<String, String>? get story_page_content_extra_info {
    final value = _story_page_content_extra_info;
    if (value == null) return null;
    if (_story_page_content_extra_info is EqualUnmodifiableMapView)
      return _story_page_content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? backoffice_campaign_data;
// Properties relevant only for CustomNative
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  final PlayerExitTriggers? ad_exit_trigger;

  /// The share of the ad that was watched, from 0 to 100, with two decimals.
  @override
  final double? ad_duration_viewed_percent;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  final AudioState? audio_state;
  @override
  final String? advertiser_id;
  @override
  final String? campaign_id;
  @override
  final String? campaign_name;
  @override
  final String? ad_server;
  @override
  final String? ad_insertion_logic;
  @override
  final int? ad_index;
  @override
  @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
  final BlazeAnalyticsAdGestureType? gesture_type;
// Properties relevant only for IMA
  @override
  final String? ad_id;
  @override
  final String? ad_title;
  @override
  final String? ad_description;
  @override
  final String? ad_system;
  @override
  final bool? skippable;
  @override
  final double? skip_time_offset;
  @override
  final String? ima_url;
// Properties relevant only for Banner Ads
  @override
  final String? ad_unit_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdEventProps(session_id: $session_id, content_id: $content_id, content_title: $content_title, content_type: $content_type, ad_duration: $ad_duration, advertiser_name: $advertiser_name, content_extra_info: $content_extra_info, story_page_content_extra_info: $story_page_content_extra_info, backoffice_campaign_data: $backoffice_campaign_data, ad_exit_trigger: $ad_exit_trigger, ad_duration_viewed_percent: $ad_duration_viewed_percent, audio_state: $audio_state, advertiser_id: $advertiser_id, campaign_id: $campaign_id, campaign_name: $campaign_name, ad_server: $ad_server, ad_insertion_logic: $ad_insertion_logic, ad_index: $ad_index, gesture_type: $gesture_type, ad_id: $ad_id, ad_title: $ad_title, ad_description: $ad_description, ad_system: $ad_system, skippable: $skippable, skip_time_offset: $skip_time_offset, ima_url: $ima_url, ad_unit_id: $ad_unit_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdEventProps'))
      ..add(DiagnosticsProperty('session_id', session_id))
      ..add(DiagnosticsProperty('content_id', content_id))
      ..add(DiagnosticsProperty('content_title', content_title))
      ..add(DiagnosticsProperty('content_type', content_type))
      ..add(DiagnosticsProperty('ad_duration', ad_duration))
      ..add(DiagnosticsProperty('advertiser_name', advertiser_name))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty(
          'story_page_content_extra_info', story_page_content_extra_info))
      ..add(DiagnosticsProperty(
          'backoffice_campaign_data', backoffice_campaign_data))
      ..add(DiagnosticsProperty('ad_exit_trigger', ad_exit_trigger))
      ..add(DiagnosticsProperty(
          'ad_duration_viewed_percent', ad_duration_viewed_percent))
      ..add(DiagnosticsProperty('audio_state', audio_state))
      ..add(DiagnosticsProperty('advertiser_id', advertiser_id))
      ..add(DiagnosticsProperty('campaign_id', campaign_id))
      ..add(DiagnosticsProperty('campaign_name', campaign_name))
      ..add(DiagnosticsProperty('ad_server', ad_server))
      ..add(DiagnosticsProperty('ad_insertion_logic', ad_insertion_logic))
      ..add(DiagnosticsProperty('ad_index', ad_index))
      ..add(DiagnosticsProperty('gesture_type', gesture_type))
      ..add(DiagnosticsProperty('ad_id', ad_id))
      ..add(DiagnosticsProperty('ad_title', ad_title))
      ..add(DiagnosticsProperty('ad_description', ad_description))
      ..add(DiagnosticsProperty('ad_system', ad_system))
      ..add(DiagnosticsProperty('skippable', skippable))
      ..add(DiagnosticsProperty('skip_time_offset', skip_time_offset))
      ..add(DiagnosticsProperty('ima_url', ima_url))
      ..add(DiagnosticsProperty('ad_unit_id', ad_unit_id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdEventPropsImpl &&
            (identical(other.session_id, session_id) ||
                other.session_id == session_id) &&
            (identical(other.content_id, content_id) ||
                other.content_id == content_id) &&
            (identical(other.content_title, content_title) ||
                other.content_title == content_title) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            (identical(other.ad_duration, ad_duration) ||
                other.ad_duration == ad_duration) &&
            (identical(other.advertiser_name, advertiser_name) ||
                other.advertiser_name == advertiser_name) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            const DeepCollectionEquality().equals(
                other._story_page_content_extra_info,
                _story_page_content_extra_info) &&
            (identical(
                    other.backoffice_campaign_data, backoffice_campaign_data) ||
                other.backoffice_campaign_data == backoffice_campaign_data) &&
            (identical(other.ad_exit_trigger, ad_exit_trigger) ||
                other.ad_exit_trigger == ad_exit_trigger) &&
            (identical(other.ad_duration_viewed_percent,
                    ad_duration_viewed_percent) ||
                other.ad_duration_viewed_percent ==
                    ad_duration_viewed_percent) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
            (identical(other.advertiser_id, advertiser_id) ||
                other.advertiser_id == advertiser_id) &&
            (identical(other.campaign_id, campaign_id) ||
                other.campaign_id == campaign_id) &&
            (identical(other.campaign_name, campaign_name) ||
                other.campaign_name == campaign_name) &&
            (identical(other.ad_server, ad_server) ||
                other.ad_server == ad_server) &&
            (identical(other.ad_insertion_logic, ad_insertion_logic) ||
                other.ad_insertion_logic == ad_insertion_logic) &&
            (identical(other.ad_index, ad_index) ||
                other.ad_index == ad_index) &&
            (identical(other.gesture_type, gesture_type) ||
                other.gesture_type == gesture_type) &&
            (identical(other.ad_id, ad_id) || other.ad_id == ad_id) &&
            (identical(other.ad_title, ad_title) ||
                other.ad_title == ad_title) &&
            (identical(other.ad_description, ad_description) ||
                other.ad_description == ad_description) &&
            (identical(other.ad_system, ad_system) ||
                other.ad_system == ad_system) &&
            (identical(other.skippable, skippable) ||
                other.skippable == skippable) &&
            (identical(other.skip_time_offset, skip_time_offset) ||
                other.skip_time_offset == skip_time_offset) &&
            (identical(other.ima_url, ima_url) || other.ima_url == ima_url) &&
            (identical(other.ad_unit_id, ad_unit_id) ||
                other.ad_unit_id == ad_unit_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        session_id,
        content_id,
        content_title,
        content_type,
        ad_duration,
        advertiser_name,
        const DeepCollectionEquality().hash(_content_extra_info),
        const DeepCollectionEquality().hash(_story_page_content_extra_info),
        backoffice_campaign_data,
        ad_exit_trigger,
        ad_duration_viewed_percent,
        audio_state,
        advertiser_id,
        campaign_id,
        campaign_name,
        ad_server,
        ad_insertion_logic,
        ad_index,
        gesture_type,
        ad_id,
        ad_title,
        ad_description,
        ad_system,
        skippable,
        skip_time_offset,
        ima_url,
        ad_unit_id
      ]);

  /// Create a copy of AdEventProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdEventPropsImplCopyWith<_$AdEventPropsImpl> get copyWith =>
      __$$AdEventPropsImplCopyWithImpl<_$AdEventPropsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AdEventProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AdEventProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AdEventProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AdEventPropsImplToJson(
      this,
    );
  }
}

abstract class _AdEventProps implements AdEventProps {
  const factory _AdEventProps(
      {final String? session_id,
      final String? content_id,
      final String? content_title,
      @JsonKey(unknownEnumValue: ContentType.unknown)
      final ContentType? content_type,
      final double? ad_duration,
      final String? advertiser_name,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      final String? backoffice_campaign_data,
      @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
      final PlayerExitTriggers? ad_exit_trigger,
      final double? ad_duration_viewed_percent,
      @JsonKey(unknownEnumValue: AudioState.unknown)
      final AudioState? audio_state,
      final String? advertiser_id,
      final String? campaign_id,
      final String? campaign_name,
      final String? ad_server,
      final String? ad_insertion_logic,
      final int? ad_index,
      @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
      final BlazeAnalyticsAdGestureType? gesture_type,
      final String? ad_id,
      final String? ad_title,
      final String? ad_description,
      final String? ad_system,
      final bool? skippable,
      final double? skip_time_offset,
      final String? ima_url,
      final String? ad_unit_id}) = _$AdEventPropsImpl;

  factory _AdEventProps.fromJson(Map<String, dynamic> json) =
      _$AdEventPropsImpl.fromJson;

// Properties relevant for IMA, banner and CustomNative ads
  @override
  String? get session_id;

  /// The ID of the story, moment or video the ad interrupted. [content_type]
  /// tells which.
  @override
  String? get content_id;
  @override
  String? get content_title;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type;
  @override
  double? get ad_duration;
  @override
  String? get advertiser_name;
  @override
  Map<String, String>? get content_extra_info;

  /// iOS only.
  @override
  Map<String, String>? get story_page_content_extra_info;
  @override
  String?
      get backoffice_campaign_data; // Properties relevant only for CustomNative
  @override
  @JsonKey(unknownEnumValue: PlayerExitTriggers.unknown)
  PlayerExitTriggers? get ad_exit_trigger;

  /// The share of the ad that was watched, from 0 to 100, with two decimals.
  @override
  double? get ad_duration_viewed_percent;
  @override
  @JsonKey(unknownEnumValue: AudioState.unknown)
  AudioState? get audio_state;
  @override
  String? get advertiser_id;
  @override
  String? get campaign_id;
  @override
  String? get campaign_name;
  @override
  String? get ad_server;
  @override
  String? get ad_insertion_logic;
  @override
  int? get ad_index;
  @override
  @JsonKey(unknownEnumValue: BlazeAnalyticsAdGestureType.unknown)
  BlazeAnalyticsAdGestureType?
      get gesture_type; // Properties relevant only for IMA
  @override
  String? get ad_id;
  @override
  String? get ad_title;
  @override
  String? get ad_description;
  @override
  String? get ad_system;
  @override
  bool? get skippable;
  @override
  double? get skip_time_offset;
  @override
  String? get ima_url; // Properties relevant only for Banner Ads
  @override
  String? get ad_unit_id;

  /// Create a copy of AdEventProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdEventPropsImplCopyWith<_$AdEventPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InteractionProps _$InteractionPropsFromJson(Map<String, dynamic> json) {
  return _InteractionProps.fromJson(json);
}

/// @nodoc
mixin _$InteractionProps {
  String? get content_session_id => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type => throw _privateConstructorUsedError;
  String? get content_id => throw _privateConstructorUsedError;
  String? get content_name => throw _privateConstructorUsedError;
  String? get content_page_id => throw _privateConstructorUsedError;
  String? get interaction_id => throw _privateConstructorUsedError;
  String? get interaction_type => throw _privateConstructorUsedError;
  String? get interaction_selected_answer => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  Map<String, String>? get story_page_content_extra_info =>
      throw _privateConstructorUsedError;
  String? get client_enrichment_url => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InteractionProps value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InteractionProps value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InteractionProps value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this InteractionProps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InteractionProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionPropsCopyWith<InteractionProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionPropsCopyWith<$Res> {
  factory $InteractionPropsCopyWith(
          InteractionProps value, $Res Function(InteractionProps) then) =
      _$InteractionPropsCopyWithImpl<$Res, InteractionProps>;
  @useResult
  $Res call(
      {String? content_session_id,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      String? content_id,
      String? content_name,
      String? content_page_id,
      String? interaction_id,
      String? interaction_type,
      String? interaction_selected_answer,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      String? client_enrichment_url});
}

/// @nodoc
class _$InteractionPropsCopyWithImpl<$Res, $Val extends InteractionProps>
    implements $InteractionPropsCopyWith<$Res> {
  _$InteractionPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InteractionProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content_session_id = freezed,
    Object? content_type = freezed,
    Object? content_id = freezed,
    Object? content_name = freezed,
    Object? content_page_id = freezed,
    Object? interaction_id = freezed,
    Object? interaction_type = freezed,
    Object? interaction_selected_answer = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? client_enrichment_url = freezed,
  }) {
    return _then(_value.copyWith(
      content_session_id: freezed == content_session_id
          ? _value.content_session_id
          : content_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_name: freezed == content_name
          ? _value.content_name
          : content_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_page_id: freezed == content_page_id
          ? _value.content_page_id
          : content_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_id: freezed == interaction_id
          ? _value.interaction_id
          : interaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_type: freezed == interaction_type
          ? _value.interaction_type
          : interaction_type // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_selected_answer: freezed == interaction_selected_answer
          ? _value.interaction_selected_answer
          : interaction_selected_answer // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value.story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      client_enrichment_url: freezed == client_enrichment_url
          ? _value.client_enrichment_url
          : client_enrichment_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionPropsImplCopyWith<$Res>
    implements $InteractionPropsCopyWith<$Res> {
  factory _$$InteractionPropsImplCopyWith(_$InteractionPropsImpl value,
          $Res Function(_$InteractionPropsImpl) then) =
      __$$InteractionPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? content_session_id,
      @JsonKey(unknownEnumValue: ContentType.unknown) ContentType? content_type,
      String? content_id,
      String? content_name,
      String? content_page_id,
      String? interaction_id,
      String? interaction_type,
      String? interaction_selected_answer,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      String? client_enrichment_url});
}

/// @nodoc
class __$$InteractionPropsImplCopyWithImpl<$Res>
    extends _$InteractionPropsCopyWithImpl<$Res, _$InteractionPropsImpl>
    implements _$$InteractionPropsImplCopyWith<$Res> {
  __$$InteractionPropsImplCopyWithImpl(_$InteractionPropsImpl _value,
      $Res Function(_$InteractionPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InteractionProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content_session_id = freezed,
    Object? content_type = freezed,
    Object? content_id = freezed,
    Object? content_name = freezed,
    Object? content_page_id = freezed,
    Object? interaction_id = freezed,
    Object? interaction_type = freezed,
    Object? interaction_selected_answer = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? client_enrichment_url = freezed,
  }) {
    return _then(_$InteractionPropsImpl(
      content_session_id: freezed == content_session_id
          ? _value.content_session_id
          : content_session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_name: freezed == content_name
          ? _value.content_name
          : content_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_page_id: freezed == content_page_id
          ? _value.content_page_id
          : content_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_id: freezed == interaction_id
          ? _value.interaction_id
          : interaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_type: freezed == interaction_type
          ? _value.interaction_type
          : interaction_type // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_selected_answer: freezed == interaction_selected_answer
          ? _value.interaction_selected_answer
          : interaction_selected_answer // ignore: cast_nullable_to_non_nullable
              as String?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value._story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      client_enrichment_url: freezed == client_enrichment_url
          ? _value.client_enrichment_url
          : client_enrichment_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionPropsImpl
    with DiagnosticableTreeMixin
    implements _InteractionProps {
  const _$InteractionPropsImpl(
      {this.content_session_id,
      @JsonKey(unknownEnumValue: ContentType.unknown) this.content_type,
      this.content_id,
      this.content_name,
      this.content_page_id,
      this.interaction_id,
      this.interaction_type,
      this.interaction_selected_answer,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      this.client_enrichment_url})
      : _content_extra_info = content_extra_info,
        _story_page_content_extra_info = story_page_content_extra_info;

  factory _$InteractionPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionPropsImplFromJson(json);

  @override
  final String? content_session_id;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  final ContentType? content_type;
  @override
  final String? content_id;
  @override
  final String? content_name;
  @override
  final String? content_page_id;
  @override
  final String? interaction_id;
  @override
  final String? interaction_type;
  @override
  final String? interaction_selected_answer;
  final Map<String, String>? _content_extra_info;
  @override
  Map<String, String>? get content_extra_info {
    final value = _content_extra_info;
    if (value == null) return null;
    if (_content_extra_info is EqualUnmodifiableMapView)
      return _content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _story_page_content_extra_info;
  @override
  Map<String, String>? get story_page_content_extra_info {
    final value = _story_page_content_extra_info;
    if (value == null) return null;
    if (_story_page_content_extra_info is EqualUnmodifiableMapView)
      return _story_page_content_extra_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? client_enrichment_url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InteractionProps(content_session_id: $content_session_id, content_type: $content_type, content_id: $content_id, content_name: $content_name, content_page_id: $content_page_id, interaction_id: $interaction_id, interaction_type: $interaction_type, interaction_selected_answer: $interaction_selected_answer, content_extra_info: $content_extra_info, story_page_content_extra_info: $story_page_content_extra_info, client_enrichment_url: $client_enrichment_url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InteractionProps'))
      ..add(DiagnosticsProperty('content_session_id', content_session_id))
      ..add(DiagnosticsProperty('content_type', content_type))
      ..add(DiagnosticsProperty('content_id', content_id))
      ..add(DiagnosticsProperty('content_name', content_name))
      ..add(DiagnosticsProperty('content_page_id', content_page_id))
      ..add(DiagnosticsProperty('interaction_id', interaction_id))
      ..add(DiagnosticsProperty('interaction_type', interaction_type))
      ..add(DiagnosticsProperty(
          'interaction_selected_answer', interaction_selected_answer))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty(
          'story_page_content_extra_info', story_page_content_extra_info))
      ..add(
          DiagnosticsProperty('client_enrichment_url', client_enrichment_url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionPropsImpl &&
            (identical(other.content_session_id, content_session_id) ||
                other.content_session_id == content_session_id) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            (identical(other.content_id, content_id) ||
                other.content_id == content_id) &&
            (identical(other.content_name, content_name) ||
                other.content_name == content_name) &&
            (identical(other.content_page_id, content_page_id) ||
                other.content_page_id == content_page_id) &&
            (identical(other.interaction_id, interaction_id) ||
                other.interaction_id == interaction_id) &&
            (identical(other.interaction_type, interaction_type) ||
                other.interaction_type == interaction_type) &&
            (identical(other.interaction_selected_answer,
                    interaction_selected_answer) ||
                other.interaction_selected_answer ==
                    interaction_selected_answer) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            const DeepCollectionEquality().equals(
                other._story_page_content_extra_info,
                _story_page_content_extra_info) &&
            (identical(other.client_enrichment_url, client_enrichment_url) ||
                other.client_enrichment_url == client_enrichment_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content_session_id,
      content_type,
      content_id,
      content_name,
      content_page_id,
      interaction_id,
      interaction_type,
      interaction_selected_answer,
      const DeepCollectionEquality().hash(_content_extra_info),
      const DeepCollectionEquality().hash(_story_page_content_extra_info),
      client_enrichment_url);

  /// Create a copy of InteractionProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionPropsImplCopyWith<_$InteractionPropsImpl> get copyWith =>
      __$$InteractionPropsImplCopyWithImpl<_$InteractionPropsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InteractionProps value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InteractionProps value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InteractionProps value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionPropsImplToJson(
      this,
    );
  }
}

abstract class _InteractionProps implements InteractionProps {
  const factory _InteractionProps(
      {final String? content_session_id,
      @JsonKey(unknownEnumValue: ContentType.unknown)
      final ContentType? content_type,
      final String? content_id,
      final String? content_name,
      final String? content_page_id,
      final String? interaction_id,
      final String? interaction_type,
      final String? interaction_selected_answer,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      final String? client_enrichment_url}) = _$InteractionPropsImpl;

  factory _InteractionProps.fromJson(Map<String, dynamic> json) =
      _$InteractionPropsImpl.fromJson;

  @override
  String? get content_session_id;
  @override
  @JsonKey(unknownEnumValue: ContentType.unknown)
  ContentType? get content_type;
  @override
  String? get content_id;
  @override
  String? get content_name;
  @override
  String? get content_page_id;
  @override
  String? get interaction_id;
  @override
  String? get interaction_type;
  @override
  String? get interaction_selected_answer;
  @override
  Map<String, String>? get content_extra_info;
  @override
  Map<String, String>? get story_page_content_extra_info;
  @override
  String? get client_enrichment_url;

  /// Create a copy of InteractionProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionPropsImplCopyWith<_$InteractionPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeAnalyticsEvent _$BlazeAnalyticsEventFromJson(Map<String, dynamic> json) {
  return _BlazeAnalyticsEvent.fromJson(json);
}

/// @nodoc
mixin _$BlazeAnalyticsEvent {
  String get timestamp_utc => throw _privateConstructorUsedError;
  String get timestamp_user_tz => throw _privateConstructorUsedError;
  String get sdk_version => throw _privateConstructorUsedError;
  String get sdk_type => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: EventCategory.unknown)
  EventCategory get event_category => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: EventActionName.unknown)
  EventActionName get event_action => throw _privateConstructorUsedError;
  TechProps get tech => throw _privateConstructorUsedError;
  UserProps get user => throw _privateConstructorUsedError;
  ReferringPropsAnalytics get referring => throw _privateConstructorUsedError;
  WidgetProps? get widget => throw _privateConstructorUsedError;
  StoryProps? get story => throw _privateConstructorUsedError;
  MomentsProps? get moment => throw _privateConstructorUsedError;
  VideoProps? get video => throw _privateConstructorUsedError;
  AdEventProps? get ad => throw _privateConstructorUsedError;
  InteractionProps? get interaction => throw _privateConstructorUsedError;
  SearchProps? get search => throw _privateConstructorUsedError;
  TabProps? get tab => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeAnalyticsEvent value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeAnalyticsEvent value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeAnalyticsEvent value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeAnalyticsEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeAnalyticsEventCopyWith<BlazeAnalyticsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeAnalyticsEventCopyWith<$Res> {
  factory $BlazeAnalyticsEventCopyWith(
          BlazeAnalyticsEvent value, $Res Function(BlazeAnalyticsEvent) then) =
      _$BlazeAnalyticsEventCopyWithImpl<$Res, BlazeAnalyticsEvent>;
  @useResult
  $Res call(
      {String timestamp_utc,
      String timestamp_user_tz,
      String sdk_version,
      String sdk_type,
      @JsonKey(unknownEnumValue: EventCategory.unknown)
      EventCategory event_category,
      @JsonKey(unknownEnumValue: EventActionName.unknown)
      EventActionName event_action,
      TechProps tech,
      UserProps user,
      ReferringPropsAnalytics referring,
      WidgetProps? widget,
      StoryProps? story,
      MomentsProps? moment,
      VideoProps? video,
      AdEventProps? ad,
      InteractionProps? interaction,
      SearchProps? search,
      TabProps? tab});

  $TechPropsCopyWith<$Res> get tech;
  $UserPropsCopyWith<$Res> get user;
  $ReferringPropsAnalyticsCopyWith<$Res> get referring;
  $WidgetPropsCopyWith<$Res>? get widget;
  $StoryPropsCopyWith<$Res>? get story;
  $MomentsPropsCopyWith<$Res>? get moment;
  $VideoPropsCopyWith<$Res>? get video;
  $AdEventPropsCopyWith<$Res>? get ad;
  $InteractionPropsCopyWith<$Res>? get interaction;
  $SearchPropsCopyWith<$Res>? get search;
  $TabPropsCopyWith<$Res>? get tab;
}

/// @nodoc
class _$BlazeAnalyticsEventCopyWithImpl<$Res, $Val extends BlazeAnalyticsEvent>
    implements $BlazeAnalyticsEventCopyWith<$Res> {
  _$BlazeAnalyticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp_utc = null,
    Object? timestamp_user_tz = null,
    Object? sdk_version = null,
    Object? sdk_type = null,
    Object? event_category = null,
    Object? event_action = null,
    Object? tech = null,
    Object? user = null,
    Object? referring = null,
    Object? widget = freezed,
    Object? story = freezed,
    Object? moment = freezed,
    Object? video = freezed,
    Object? ad = freezed,
    Object? interaction = freezed,
    Object? search = freezed,
    Object? tab = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp_utc: null == timestamp_utc
          ? _value.timestamp_utc
          : timestamp_utc // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp_user_tz: null == timestamp_user_tz
          ? _value.timestamp_user_tz
          : timestamp_user_tz // ignore: cast_nullable_to_non_nullable
              as String,
      sdk_version: null == sdk_version
          ? _value.sdk_version
          : sdk_version // ignore: cast_nullable_to_non_nullable
              as String,
      sdk_type: null == sdk_type
          ? _value.sdk_type
          : sdk_type // ignore: cast_nullable_to_non_nullable
              as String,
      event_category: null == event_category
          ? _value.event_category
          : event_category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
      event_action: null == event_action
          ? _value.event_action
          : event_action // ignore: cast_nullable_to_non_nullable
              as EventActionName,
      tech: null == tech
          ? _value.tech
          : tech // ignore: cast_nullable_to_non_nullable
              as TechProps,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProps,
      referring: null == referring
          ? _value.referring
          : referring // ignore: cast_nullable_to_non_nullable
              as ReferringPropsAnalytics,
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as WidgetProps?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as StoryProps?,
      moment: freezed == moment
          ? _value.moment
          : moment // ignore: cast_nullable_to_non_nullable
              as MomentsProps?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoProps?,
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as AdEventProps?,
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as InteractionProps?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchProps?,
      tab: freezed == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as TabProps?,
    ) as $Val);
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TechPropsCopyWith<$Res> get tech {
    return $TechPropsCopyWith<$Res>(_value.tech, (value) {
      return _then(_value.copyWith(tech: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPropsCopyWith<$Res> get user {
    return $UserPropsCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferringPropsAnalyticsCopyWith<$Res> get referring {
    return $ReferringPropsAnalyticsCopyWith<$Res>(_value.referring, (value) {
      return _then(_value.copyWith(referring: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetPropsCopyWith<$Res>? get widget {
    if (_value.widget == null) {
      return null;
    }

    return $WidgetPropsCopyWith<$Res>(_value.widget!, (value) {
      return _then(_value.copyWith(widget: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryPropsCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryPropsCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MomentsPropsCopyWith<$Res>? get moment {
    if (_value.moment == null) {
      return null;
    }

    return $MomentsPropsCopyWith<$Res>(_value.moment!, (value) {
      return _then(_value.copyWith(moment: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoPropsCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $VideoPropsCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdEventPropsCopyWith<$Res>? get ad {
    if (_value.ad == null) {
      return null;
    }

    return $AdEventPropsCopyWith<$Res>(_value.ad!, (value) {
      return _then(_value.copyWith(ad: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InteractionPropsCopyWith<$Res>? get interaction {
    if (_value.interaction == null) {
      return null;
    }

    return $InteractionPropsCopyWith<$Res>(_value.interaction!, (value) {
      return _then(_value.copyWith(interaction: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchPropsCopyWith<$Res>? get search {
    if (_value.search == null) {
      return null;
    }

    return $SearchPropsCopyWith<$Res>(_value.search!, (value) {
      return _then(_value.copyWith(search: value) as $Val);
    });
  }

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TabPropsCopyWith<$Res>? get tab {
    if (_value.tab == null) {
      return null;
    }

    return $TabPropsCopyWith<$Res>(_value.tab!, (value) {
      return _then(_value.copyWith(tab: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeAnalyticsEventImplCopyWith<$Res>
    implements $BlazeAnalyticsEventCopyWith<$Res> {
  factory _$$BlazeAnalyticsEventImplCopyWith(_$BlazeAnalyticsEventImpl value,
          $Res Function(_$BlazeAnalyticsEventImpl) then) =
      __$$BlazeAnalyticsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String timestamp_utc,
      String timestamp_user_tz,
      String sdk_version,
      String sdk_type,
      @JsonKey(unknownEnumValue: EventCategory.unknown)
      EventCategory event_category,
      @JsonKey(unknownEnumValue: EventActionName.unknown)
      EventActionName event_action,
      TechProps tech,
      UserProps user,
      ReferringPropsAnalytics referring,
      WidgetProps? widget,
      StoryProps? story,
      MomentsProps? moment,
      VideoProps? video,
      AdEventProps? ad,
      InteractionProps? interaction,
      SearchProps? search,
      TabProps? tab});

  @override
  $TechPropsCopyWith<$Res> get tech;
  @override
  $UserPropsCopyWith<$Res> get user;
  @override
  $ReferringPropsAnalyticsCopyWith<$Res> get referring;
  @override
  $WidgetPropsCopyWith<$Res>? get widget;
  @override
  $StoryPropsCopyWith<$Res>? get story;
  @override
  $MomentsPropsCopyWith<$Res>? get moment;
  @override
  $VideoPropsCopyWith<$Res>? get video;
  @override
  $AdEventPropsCopyWith<$Res>? get ad;
  @override
  $InteractionPropsCopyWith<$Res>? get interaction;
  @override
  $SearchPropsCopyWith<$Res>? get search;
  @override
  $TabPropsCopyWith<$Res>? get tab;
}

/// @nodoc
class __$$BlazeAnalyticsEventImplCopyWithImpl<$Res>
    extends _$BlazeAnalyticsEventCopyWithImpl<$Res, _$BlazeAnalyticsEventImpl>
    implements _$$BlazeAnalyticsEventImplCopyWith<$Res> {
  __$$BlazeAnalyticsEventImplCopyWithImpl(_$BlazeAnalyticsEventImpl _value,
      $Res Function(_$BlazeAnalyticsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp_utc = null,
    Object? timestamp_user_tz = null,
    Object? sdk_version = null,
    Object? sdk_type = null,
    Object? event_category = null,
    Object? event_action = null,
    Object? tech = null,
    Object? user = null,
    Object? referring = null,
    Object? widget = freezed,
    Object? story = freezed,
    Object? moment = freezed,
    Object? video = freezed,
    Object? ad = freezed,
    Object? interaction = freezed,
    Object? search = freezed,
    Object? tab = freezed,
  }) {
    return _then(_$BlazeAnalyticsEventImpl(
      timestamp_utc: null == timestamp_utc
          ? _value.timestamp_utc
          : timestamp_utc // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp_user_tz: null == timestamp_user_tz
          ? _value.timestamp_user_tz
          : timestamp_user_tz // ignore: cast_nullable_to_non_nullable
              as String,
      sdk_version: null == sdk_version
          ? _value.sdk_version
          : sdk_version // ignore: cast_nullable_to_non_nullable
              as String,
      sdk_type: null == sdk_type
          ? _value.sdk_type
          : sdk_type // ignore: cast_nullable_to_non_nullable
              as String,
      event_category: null == event_category
          ? _value.event_category
          : event_category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
      event_action: null == event_action
          ? _value.event_action
          : event_action // ignore: cast_nullable_to_non_nullable
              as EventActionName,
      tech: null == tech
          ? _value.tech
          : tech // ignore: cast_nullable_to_non_nullable
              as TechProps,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProps,
      referring: null == referring
          ? _value.referring
          : referring // ignore: cast_nullable_to_non_nullable
              as ReferringPropsAnalytics,
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as WidgetProps?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as StoryProps?,
      moment: freezed == moment
          ? _value.moment
          : moment // ignore: cast_nullable_to_non_nullable
              as MomentsProps?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoProps?,
      ad: freezed == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as AdEventProps?,
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as InteractionProps?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchProps?,
      tab: freezed == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as TabProps?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeAnalyticsEventImpl
    with DiagnosticableTreeMixin
    implements _BlazeAnalyticsEvent {
  const _$BlazeAnalyticsEventImpl(
      {required this.timestamp_utc,
      required this.timestamp_user_tz,
      required this.sdk_version,
      required this.sdk_type,
      @JsonKey(unknownEnumValue: EventCategory.unknown)
      required this.event_category,
      @JsonKey(unknownEnumValue: EventActionName.unknown)
      required this.event_action,
      required this.tech,
      required this.user,
      required this.referring,
      this.widget,
      this.story,
      this.moment,
      this.video,
      this.ad,
      this.interaction,
      this.search,
      this.tab});

  factory _$BlazeAnalyticsEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeAnalyticsEventImplFromJson(json);

  @override
  final String timestamp_utc;
  @override
  final String timestamp_user_tz;
  @override
  final String sdk_version;
  @override
  final String sdk_type;
  @override
  @JsonKey(unknownEnumValue: EventCategory.unknown)
  final EventCategory event_category;
  @override
  @JsonKey(unknownEnumValue: EventActionName.unknown)
  final EventActionName event_action;
  @override
  final TechProps tech;
  @override
  final UserProps user;
  @override
  final ReferringPropsAnalytics referring;
  @override
  final WidgetProps? widget;
  @override
  final StoryProps? story;
  @override
  final MomentsProps? moment;
  @override
  final VideoProps? video;
  @override
  final AdEventProps? ad;
  @override
  final InteractionProps? interaction;
  @override
  final SearchProps? search;
  @override
  final TabProps? tab;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeAnalyticsEvent(timestamp_utc: $timestamp_utc, timestamp_user_tz: $timestamp_user_tz, sdk_version: $sdk_version, sdk_type: $sdk_type, event_category: $event_category, event_action: $event_action, tech: $tech, user: $user, referring: $referring, widget: $widget, story: $story, moment: $moment, video: $video, ad: $ad, interaction: $interaction, search: $search, tab: $tab)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlazeAnalyticsEvent'))
      ..add(DiagnosticsProperty('timestamp_utc', timestamp_utc))
      ..add(DiagnosticsProperty('timestamp_user_tz', timestamp_user_tz))
      ..add(DiagnosticsProperty('sdk_version', sdk_version))
      ..add(DiagnosticsProperty('sdk_type', sdk_type))
      ..add(DiagnosticsProperty('event_category', event_category))
      ..add(DiagnosticsProperty('event_action', event_action))
      ..add(DiagnosticsProperty('tech', tech))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('referring', referring))
      ..add(DiagnosticsProperty('widget', widget))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('moment', moment))
      ..add(DiagnosticsProperty('video', video))
      ..add(DiagnosticsProperty('ad', ad))
      ..add(DiagnosticsProperty('interaction', interaction))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('tab', tab));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeAnalyticsEventImpl &&
            (identical(other.timestamp_utc, timestamp_utc) ||
                other.timestamp_utc == timestamp_utc) &&
            (identical(other.timestamp_user_tz, timestamp_user_tz) ||
                other.timestamp_user_tz == timestamp_user_tz) &&
            (identical(other.sdk_version, sdk_version) ||
                other.sdk_version == sdk_version) &&
            (identical(other.sdk_type, sdk_type) ||
                other.sdk_type == sdk_type) &&
            (identical(other.event_category, event_category) ||
                other.event_category == event_category) &&
            (identical(other.event_action, event_action) ||
                other.event_action == event_action) &&
            (identical(other.tech, tech) || other.tech == tech) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.referring, referring) ||
                other.referring == referring) &&
            (identical(other.widget, widget) || other.widget == widget) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.moment, moment) || other.moment == moment) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.ad, ad) || other.ad == ad) &&
            (identical(other.interaction, interaction) ||
                other.interaction == interaction) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp_utc,
      timestamp_user_tz,
      sdk_version,
      sdk_type,
      event_category,
      event_action,
      tech,
      user,
      referring,
      widget,
      story,
      moment,
      video,
      ad,
      interaction,
      search,
      tab);

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeAnalyticsEventImplCopyWith<_$BlazeAnalyticsEventImpl> get copyWith =>
      __$$BlazeAnalyticsEventImplCopyWithImpl<_$BlazeAnalyticsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeAnalyticsEvent value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeAnalyticsEvent value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeAnalyticsEvent value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeAnalyticsEventImplToJson(
      this,
    );
  }
}

abstract class _BlazeAnalyticsEvent implements BlazeAnalyticsEvent {
  const factory _BlazeAnalyticsEvent(
      {required final String timestamp_utc,
      required final String timestamp_user_tz,
      required final String sdk_version,
      required final String sdk_type,
      @JsonKey(unknownEnumValue: EventCategory.unknown)
      required final EventCategory event_category,
      @JsonKey(unknownEnumValue: EventActionName.unknown)
      required final EventActionName event_action,
      required final TechProps tech,
      required final UserProps user,
      required final ReferringPropsAnalytics referring,
      final WidgetProps? widget,
      final StoryProps? story,
      final MomentsProps? moment,
      final VideoProps? video,
      final AdEventProps? ad,
      final InteractionProps? interaction,
      final SearchProps? search,
      final TabProps? tab}) = _$BlazeAnalyticsEventImpl;

  factory _BlazeAnalyticsEvent.fromJson(Map<String, dynamic> json) =
      _$BlazeAnalyticsEventImpl.fromJson;

  @override
  String get timestamp_utc;
  @override
  String get timestamp_user_tz;
  @override
  String get sdk_version;
  @override
  String get sdk_type;
  @override
  @JsonKey(unknownEnumValue: EventCategory.unknown)
  EventCategory get event_category;
  @override
  @JsonKey(unknownEnumValue: EventActionName.unknown)
  EventActionName get event_action;
  @override
  TechProps get tech;
  @override
  UserProps get user;
  @override
  ReferringPropsAnalytics get referring;
  @override
  WidgetProps? get widget;
  @override
  StoryProps? get story;
  @override
  MomentsProps? get moment;
  @override
  VideoProps? get video;
  @override
  AdEventProps? get ad;
  @override
  InteractionProps? get interaction;
  @override
  SearchProps? get search;
  @override
  TabProps? get tab;

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeAnalyticsEventImplCopyWith<_$BlazeAnalyticsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
