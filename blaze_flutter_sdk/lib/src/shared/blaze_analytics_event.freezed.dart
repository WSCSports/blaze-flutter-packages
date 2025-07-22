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

AnalyticsVideosCtaConfig _$AnalyticsVideosCtaConfigFromJson(
    Map<String, dynamic> json) {
  return _AnalyticsVideosCtaConfig.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsVideosCtaConfig {
  AnalyticsVideosCtaConfigType? get type => throw _privateConstructorUsedError;
  double? get visible_duration => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsVideosCtaConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsVideosCtaConfig value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsVideosCtaConfig value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AnalyticsVideosCtaConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsVideosCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsVideosCtaConfigCopyWith<AnalyticsVideosCtaConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsVideosCtaConfigCopyWith<$Res> {
  factory $AnalyticsVideosCtaConfigCopyWith(AnalyticsVideosCtaConfig value,
          $Res Function(AnalyticsVideosCtaConfig) then) =
      _$AnalyticsVideosCtaConfigCopyWithImpl<$Res, AnalyticsVideosCtaConfig>;
  @useResult
  $Res call({AnalyticsVideosCtaConfigType? type, double? visible_duration});
}

/// @nodoc
class _$AnalyticsVideosCtaConfigCopyWithImpl<$Res,
        $Val extends AnalyticsVideosCtaConfig>
    implements $AnalyticsVideosCtaConfigCopyWith<$Res> {
  _$AnalyticsVideosCtaConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsVideosCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? visible_duration = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnalyticsVideosCtaConfigType?,
      visible_duration: freezed == visible_duration
          ? _value.visible_duration
          : visible_duration // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsVideosCtaConfigImplCopyWith<$Res>
    implements $AnalyticsVideosCtaConfigCopyWith<$Res> {
  factory _$$AnalyticsVideosCtaConfigImplCopyWith(
          _$AnalyticsVideosCtaConfigImpl value,
          $Res Function(_$AnalyticsVideosCtaConfigImpl) then) =
      __$$AnalyticsVideosCtaConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnalyticsVideosCtaConfigType? type, double? visible_duration});
}

/// @nodoc
class __$$AnalyticsVideosCtaConfigImplCopyWithImpl<$Res>
    extends _$AnalyticsVideosCtaConfigCopyWithImpl<$Res,
        _$AnalyticsVideosCtaConfigImpl>
    implements _$$AnalyticsVideosCtaConfigImplCopyWith<$Res> {
  __$$AnalyticsVideosCtaConfigImplCopyWithImpl(
      _$AnalyticsVideosCtaConfigImpl _value,
      $Res Function(_$AnalyticsVideosCtaConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsVideosCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? visible_duration = freezed,
  }) {
    return _then(_$AnalyticsVideosCtaConfigImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnalyticsVideosCtaConfigType?,
      visible_duration: freezed == visible_duration
          ? _value.visible_duration
          : visible_duration // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsVideosCtaConfigImpl
    with DiagnosticableTreeMixin
    implements _AnalyticsVideosCtaConfig {
  const _$AnalyticsVideosCtaConfigImpl({this.type, this.visible_duration});

  factory _$AnalyticsVideosCtaConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsVideosCtaConfigImplFromJson(json);

  @override
  final AnalyticsVideosCtaConfigType? type;
  @override
  final double? visible_duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsVideosCtaConfig(type: $type, visible_duration: $visible_duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsVideosCtaConfig'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('visible_duration', visible_duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsVideosCtaConfigImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.visible_duration, visible_duration) ||
                other.visible_duration == visible_duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, visible_duration);

  /// Create a copy of AnalyticsVideosCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsVideosCtaConfigImplCopyWith<_$AnalyticsVideosCtaConfigImpl>
      get copyWith => __$$AnalyticsVideosCtaConfigImplCopyWithImpl<
          _$AnalyticsVideosCtaConfigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnalyticsVideosCtaConfig value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnalyticsVideosCtaConfig value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnalyticsVideosCtaConfig value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsVideosCtaConfigImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsVideosCtaConfig implements AnalyticsVideosCtaConfig {
  const factory _AnalyticsVideosCtaConfig(
      {final AnalyticsVideosCtaConfigType? type,
      final double? visible_duration}) = _$AnalyticsVideosCtaConfigImpl;

  factory _AnalyticsVideosCtaConfig.fromJson(Map<String, dynamic> json) =
      _$AnalyticsVideosCtaConfigImpl.fromJson;

  @override
  AnalyticsVideosCtaConfigType? get type;
  @override
  double? get visible_duration;

  /// Create a copy of AnalyticsVideosCtaConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsVideosCtaConfigImplCopyWith<_$AnalyticsVideosCtaConfigImpl>
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
      {String generated_user_id, String? external_user_id, String locale});
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
      {String generated_user_id, String? external_user_id, String locale});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPropsImpl with DiagnosticableTreeMixin implements _UserProps {
  const _$UserPropsImpl(
      {required this.generated_user_id,
      this.external_user_id,
      required this.locale});

  factory _$UserPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPropsImplFromJson(json);

  @override
  final String generated_user_id;
  @override
  final String? external_user_id;
  @override
  final String locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProps(generated_user_id: $generated_user_id, external_user_id: $external_user_id, locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProps'))
      ..add(DiagnosticsProperty('generated_user_id', generated_user_id))
      ..add(DiagnosticsProperty('external_user_id', external_user_id))
      ..add(DiagnosticsProperty('locale', locale));
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
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, generated_user_id, external_user_id, locale);

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
      required final String locale}) = _$UserPropsImpl;

  factory _UserProps.fromJson(Map<String, dynamic> json) =
      _$UserPropsImpl.fromJson;

  @override
  String get generated_user_id;
  @override
  String? get external_user_id;
  @override
  String get locale;

  /// Create a copy of UserProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPropsImplCopyWith<_$UserPropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferringPropsAnalytics _$ReferringPropsAnalyticsFromJson(
    Map<String, dynamic> json) {
  return _ReferringPropsAnalytics.fromJson(json);
}

/// @nodoc
mixin _$ReferringPropsAnalytics {
  String? get origin_widget_id => throw _privateConstructorUsedError;
  String? get origin_widget_type => throw _privateConstructorUsedError;
  String? get labels_expression => throw _privateConstructorUsedError;

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
      {String? origin_widget_id,
      String? origin_widget_type,
      String? labels_expression});
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
    Object? origin_widget_id = freezed,
    Object? origin_widget_type = freezed,
    Object? labels_expression = freezed,
  }) {
    return _then(_value.copyWith(
      origin_widget_id: freezed == origin_widget_id
          ? _value.origin_widget_id
          : origin_widget_id // ignore: cast_nullable_to_non_nullable
              as String?,
      origin_widget_type: freezed == origin_widget_type
          ? _value.origin_widget_type
          : origin_widget_type // ignore: cast_nullable_to_non_nullable
              as String?,
      labels_expression: freezed == labels_expression
          ? _value.labels_expression
          : labels_expression // ignore: cast_nullable_to_non_nullable
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
      {String? origin_widget_id,
      String? origin_widget_type,
      String? labels_expression});
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
    Object? origin_widget_id = freezed,
    Object? origin_widget_type = freezed,
    Object? labels_expression = freezed,
  }) {
    return _then(_$ReferringPropsAnalyticsImpl(
      origin_widget_id: freezed == origin_widget_id
          ? _value.origin_widget_id
          : origin_widget_id // ignore: cast_nullable_to_non_nullable
              as String?,
      origin_widget_type: freezed == origin_widget_type
          ? _value.origin_widget_type
          : origin_widget_type // ignore: cast_nullable_to_non_nullable
              as String?,
      labels_expression: freezed == labels_expression
          ? _value.labels_expression
          : labels_expression // ignore: cast_nullable_to_non_nullable
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
      {this.origin_widget_id, this.origin_widget_type, this.labels_expression});

  factory _$ReferringPropsAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferringPropsAnalyticsImplFromJson(json);

  @override
  final String? origin_widget_id;
  @override
  final String? origin_widget_type;
  @override
  final String? labels_expression;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReferringPropsAnalytics(origin_widget_id: $origin_widget_id, origin_widget_type: $origin_widget_type, labels_expression: $labels_expression)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReferringPropsAnalytics'))
      ..add(DiagnosticsProperty('origin_widget_id', origin_widget_id))
      ..add(DiagnosticsProperty('origin_widget_type', origin_widget_type))
      ..add(DiagnosticsProperty('labels_expression', labels_expression));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferringPropsAnalyticsImpl &&
            (identical(other.origin_widget_id, origin_widget_id) ||
                other.origin_widget_id == origin_widget_id) &&
            (identical(other.origin_widget_type, origin_widget_type) ||
                other.origin_widget_type == origin_widget_type) &&
            (identical(other.labels_expression, labels_expression) ||
                other.labels_expression == labels_expression));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, origin_widget_id, origin_widget_type, labels_expression);

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
      {final String? origin_widget_id,
      final String? origin_widget_type,
      final String? labels_expression}) = _$ReferringPropsAnalyticsImpl;

  factory _ReferringPropsAnalytics.fromJson(Map<String, dynamic> json) =
      _$ReferringPropsAnalyticsImpl.fromJson;

  @override
  String? get origin_widget_id;
  @override
  String? get origin_widget_type;
  @override
  String? get labels_expression;

  /// Create a copy of ReferringPropsAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferringPropsAnalyticsImplCopyWith<_$ReferringPropsAnalyticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WidgetProps _$WidgetPropsFromJson(Map<String, dynamic> json) {
  return _WidgetProps.fromJson(json);
}

/// @nodoc
mixin _$WidgetProps {
  String? get widget_id => throw _privateConstructorUsedError;
  WidgetType? get widget_type => throw _privateConstructorUsedError;
  String? get widget_size => throw _privateConstructorUsedError;
  int? get widget_content_count => throw _privateConstructorUsedError;
  String? get content_id => throw _privateConstructorUsedError;
  ContentType? get content_type => throw _privateConstructorUsedError;
  int? get content_index => throw _privateConstructorUsedError;
  String? get thumbnail_size => throw _privateConstructorUsedError;
  String? get thumbnail_aspect_ratio => throw _privateConstructorUsedError;
  ThumbnailType? get thumbnail_type => throw _privateConstructorUsedError;
  List<String>? get widget_content_list => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  bool? get animated_thumbnail_enabled => throw _privateConstructorUsedError;
  ThumbnailFormat? get thumbnail_format => throw _privateConstructorUsedError;

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
      WidgetType? widget_type,
      String? widget_size,
      int? widget_content_count,
      String? content_id,
      ContentType? content_type,
      int? content_index,
      String? thumbnail_size,
      String? thumbnail_aspect_ratio,
      ThumbnailType? thumbnail_type,
      List<String>? widget_content_list,
      Map<String, String>? content_extra_info,
      bool? animated_thumbnail_enabled,
      ThumbnailFormat? thumbnail_format});
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
    Object? content_id = freezed,
    Object? content_type = freezed,
    Object? content_index = freezed,
    Object? thumbnail_size = freezed,
    Object? thumbnail_aspect_ratio = freezed,
    Object? thumbnail_type = freezed,
    Object? widget_content_list = freezed,
    Object? content_extra_info = freezed,
    Object? animated_thumbnail_enabled = freezed,
    Object? thumbnail_format = freezed,
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
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
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
      WidgetType? widget_type,
      String? widget_size,
      int? widget_content_count,
      String? content_id,
      ContentType? content_type,
      int? content_index,
      String? thumbnail_size,
      String? thumbnail_aspect_ratio,
      ThumbnailType? thumbnail_type,
      List<String>? widget_content_list,
      Map<String, String>? content_extra_info,
      bool? animated_thumbnail_enabled,
      ThumbnailFormat? thumbnail_format});
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
    Object? content_id = freezed,
    Object? content_type = freezed,
    Object? content_index = freezed,
    Object? thumbnail_size = freezed,
    Object? thumbnail_aspect_ratio = freezed,
    Object? thumbnail_type = freezed,
    Object? widget_content_list = freezed,
    Object? content_extra_info = freezed,
    Object? animated_thumbnail_enabled = freezed,
    Object? thumbnail_format = freezed,
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
      content_id: freezed == content_id
          ? _value.content_id
          : content_id // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WidgetPropsImpl with DiagnosticableTreeMixin implements _WidgetProps {
  const _$WidgetPropsImpl(
      {this.widget_id,
      this.widget_type,
      this.widget_size,
      this.widget_content_count,
      this.content_id,
      this.content_type,
      this.content_index,
      this.thumbnail_size,
      this.thumbnail_aspect_ratio,
      this.thumbnail_type,
      final List<String>? widget_content_list,
      final Map<String, String>? content_extra_info,
      this.animated_thumbnail_enabled,
      this.thumbnail_format})
      : _widget_content_list = widget_content_list,
        _content_extra_info = content_extra_info;

  factory _$WidgetPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WidgetPropsImplFromJson(json);

  @override
  final String? widget_id;
  @override
  final WidgetType? widget_type;
  @override
  final String? widget_size;
  @override
  final int? widget_content_count;
  @override
  final String? content_id;
  @override
  final ContentType? content_type;
  @override
  final int? content_index;
  @override
  final String? thumbnail_size;
  @override
  final String? thumbnail_aspect_ratio;
  @override
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
  final ThumbnailFormat? thumbnail_format;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WidgetProps(widget_id: $widget_id, widget_type: $widget_type, widget_size: $widget_size, widget_content_count: $widget_content_count, content_id: $content_id, content_type: $content_type, content_index: $content_index, thumbnail_size: $thumbnail_size, thumbnail_aspect_ratio: $thumbnail_aspect_ratio, thumbnail_type: $thumbnail_type, widget_content_list: $widget_content_list, content_extra_info: $content_extra_info, animated_thumbnail_enabled: $animated_thumbnail_enabled, thumbnail_format: $thumbnail_format)';
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
      ..add(DiagnosticsProperty('content_id', content_id))
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
      ..add(DiagnosticsProperty('thumbnail_format', thumbnail_format));
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
            (identical(other.content_id, content_id) ||
                other.content_id == content_id) &&
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
                other.thumbnail_format == thumbnail_format));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      widget_id,
      widget_type,
      widget_size,
      widget_content_count,
      content_id,
      content_type,
      content_index,
      thumbnail_size,
      thumbnail_aspect_ratio,
      thumbnail_type,
      const DeepCollectionEquality().hash(_widget_content_list),
      const DeepCollectionEquality().hash(_content_extra_info),
      animated_thumbnail_enabled,
      thumbnail_format);

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
      final WidgetType? widget_type,
      final String? widget_size,
      final int? widget_content_count,
      final String? content_id,
      final ContentType? content_type,
      final int? content_index,
      final String? thumbnail_size,
      final String? thumbnail_aspect_ratio,
      final ThumbnailType? thumbnail_type,
      final List<String>? widget_content_list,
      final Map<String, String>? content_extra_info,
      final bool? animated_thumbnail_enabled,
      final ThumbnailFormat? thumbnail_format}) = _$WidgetPropsImpl;

  factory _WidgetProps.fromJson(Map<String, dynamic> json) =
      _$WidgetPropsImpl.fromJson;

  @override
  String? get widget_id;
  @override
  WidgetType? get widget_type;
  @override
  String? get widget_size;
  @override
  int? get widget_content_count;
  @override
  String? get content_id;
  @override
  ContentType? get content_type;
  @override
  int? get content_index;
  @override
  String? get thumbnail_size;
  @override
  String? get thumbnail_aspect_ratio;
  @override
  ThumbnailType? get thumbnail_type;
  @override
  List<String>? get widget_content_list;
  @override
  Map<String, String>? get content_extra_info;
  @override
  bool? get animated_thumbnail_enabled;
  @override
  ThumbnailFormat? get thumbnail_format;

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
  String? get story_page_id => throw _privateConstructorUsedError;
  String? get story_page_parent_id => throw _privateConstructorUsedError;
  String? get story_composition_type => throw _privateConstructorUsedError;
  int? get story_page_index => throw _privateConstructorUsedError;
  int? get story_page_count => throw _privateConstructorUsedError;
  PlayableNavigationType? get story_page_navigation_type =>
      throw _privateConstructorUsedError;
  PlayableNavigationDirection? get story_page_navigation_direction =>
      throw _privateConstructorUsedError;
  PlayerStartTriggers? get story_start_trigger =>
      throw _privateConstructorUsedError;
  PlayerExitTriggers? get story_exit_trigger =>
      throw _privateConstructorUsedError;
  double? get story_page_duration => throw _privateConstructorUsedError;
  double? get story_page_duration_viewed_percent =>
      throw _privateConstructorUsedError;
  PlaybackActionMethod? get playback_action_method =>
      throw _privateConstructorUsedError;
  AudioState? get audio_state => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  Map<String, String>? get story_page_content_extra_info =>
      throw _privateConstructorUsedError;
  String? get gesture_type => throw _privateConstructorUsedError;
  String? get cc_state => throw _privateConstructorUsedError;
  String? get custom_button_name => throw _privateConstructorUsedError;

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
      String? story_page_id,
      String? story_page_parent_id,
      String? story_composition_type,
      int? story_page_index,
      int? story_page_count,
      PlayableNavigationType? story_page_navigation_type,
      PlayableNavigationDirection? story_page_navigation_direction,
      PlayerStartTriggers? story_start_trigger,
      PlayerExitTriggers? story_exit_trigger,
      double? story_page_duration,
      double? story_page_duration_viewed_percent,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      String? gesture_type,
      String? cc_state,
      String? custom_button_name});
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
    Object? story_page_id = freezed,
    Object? story_page_parent_id = freezed,
    Object? story_composition_type = freezed,
    Object? story_page_index = freezed,
    Object? story_page_count = freezed,
    Object? story_page_navigation_type = freezed,
    Object? story_page_navigation_direction = freezed,
    Object? story_start_trigger = freezed,
    Object? story_exit_trigger = freezed,
    Object? story_page_duration = freezed,
    Object? story_page_duration_viewed_percent = freezed,
    Object? playback_action_method = freezed,
    Object? audio_state = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? gesture_type = freezed,
    Object? cc_state = freezed,
    Object? custom_button_name = freezed,
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
      story_page_id: freezed == story_page_id
          ? _value.story_page_id
          : story_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_parent_id: freezed == story_page_parent_id
          ? _value.story_page_parent_id
          : story_page_parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_composition_type: freezed == story_composition_type
          ? _value.story_composition_type
          : story_composition_type // ignore: cast_nullable_to_non_nullable
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
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
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
              as String?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      custom_button_name: freezed == custom_button_name
          ? _value.custom_button_name
          : custom_button_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      String? story_page_id,
      String? story_page_parent_id,
      String? story_composition_type,
      int? story_page_index,
      int? story_page_count,
      PlayableNavigationType? story_page_navigation_type,
      PlayableNavigationDirection? story_page_navigation_direction,
      PlayerStartTriggers? story_start_trigger,
      PlayerExitTriggers? story_exit_trigger,
      double? story_page_duration,
      double? story_page_duration_viewed_percent,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      String? gesture_type,
      String? cc_state,
      String? custom_button_name});
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
    Object? story_page_id = freezed,
    Object? story_page_parent_id = freezed,
    Object? story_composition_type = freezed,
    Object? story_page_index = freezed,
    Object? story_page_count = freezed,
    Object? story_page_navigation_type = freezed,
    Object? story_page_navigation_direction = freezed,
    Object? story_start_trigger = freezed,
    Object? story_exit_trigger = freezed,
    Object? story_page_duration = freezed,
    Object? story_page_duration_viewed_percent = freezed,
    Object? playback_action_method = freezed,
    Object? audio_state = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? gesture_type = freezed,
    Object? cc_state = freezed,
    Object? custom_button_name = freezed,
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
      story_page_id: freezed == story_page_id
          ? _value.story_page_id
          : story_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_page_parent_id: freezed == story_page_parent_id
          ? _value.story_page_parent_id
          : story_page_parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_composition_type: freezed == story_composition_type
          ? _value.story_composition_type
          : story_composition_type // ignore: cast_nullable_to_non_nullable
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
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
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
              as String?,
      cc_state: freezed == cc_state
          ? _value.cc_state
          : cc_state // ignore: cast_nullable_to_non_nullable
              as String?,
      custom_button_name: freezed == custom_button_name
          ? _value.custom_button_name
          : custom_button_name // ignore: cast_nullable_to_non_nullable
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
      this.story_page_id,
      this.story_page_parent_id,
      this.story_composition_type,
      this.story_page_index,
      this.story_page_count,
      this.story_page_navigation_type,
      this.story_page_navigation_direction,
      this.story_start_trigger,
      this.story_exit_trigger,
      this.story_page_duration,
      this.story_page_duration_viewed_percent,
      this.playback_action_method,
      this.audio_state,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      this.gesture_type,
      this.cc_state,
      this.custom_button_name})
      : _content_extra_info = content_extra_info,
        _story_page_content_extra_info = story_page_content_extra_info;

  factory _$StoryPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryPropsImplFromJson(json);

  @override
  final String? story_session_id;
  @override
  final String? story_id;
  @override
  final String? story_title;
  @override
  final String? story_page_id;
  @override
  final String? story_page_parent_id;
  @override
  final String? story_composition_type;
  @override
  final int? story_page_index;
  @override
  final int? story_page_count;
  @override
  final PlayableNavigationType? story_page_navigation_type;
  @override
  final PlayableNavigationDirection? story_page_navigation_direction;
  @override
  final PlayerStartTriggers? story_start_trigger;
  @override
  final PlayerExitTriggers? story_exit_trigger;
  @override
  final double? story_page_duration;
  @override
  final double? story_page_duration_viewed_percent;
  @override
  final PlaybackActionMethod? playback_action_method;
  @override
  final AudioState? audio_state;
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
  final String? gesture_type;
  @override
  final String? cc_state;
  @override
  final String? custom_button_name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryProps(story_session_id: $story_session_id, story_id: $story_id, story_title: $story_title, story_page_id: $story_page_id, story_page_parent_id: $story_page_parent_id, story_composition_type: $story_composition_type, story_page_index: $story_page_index, story_page_count: $story_page_count, story_page_navigation_type: $story_page_navigation_type, story_page_navigation_direction: $story_page_navigation_direction, story_start_trigger: $story_start_trigger, story_exit_trigger: $story_exit_trigger, story_page_duration: $story_page_duration, story_page_duration_viewed_percent: $story_page_duration_viewed_percent, playback_action_method: $playback_action_method, audio_state: $audio_state, content_extra_info: $content_extra_info, story_page_content_extra_info: $story_page_content_extra_info, gesture_type: $gesture_type, cc_state: $cc_state, custom_button_name: $custom_button_name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoryProps'))
      ..add(DiagnosticsProperty('story_session_id', story_session_id))
      ..add(DiagnosticsProperty('story_id', story_id))
      ..add(DiagnosticsProperty('story_title', story_title))
      ..add(DiagnosticsProperty('story_page_id', story_page_id))
      ..add(DiagnosticsProperty('story_page_parent_id', story_page_parent_id))
      ..add(
          DiagnosticsProperty('story_composition_type', story_composition_type))
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
      ..add(
          DiagnosticsProperty('playback_action_method', playback_action_method))
      ..add(DiagnosticsProperty('audio_state', audio_state))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty(
          'story_page_content_extra_info', story_page_content_extra_info))
      ..add(DiagnosticsProperty('gesture_type', gesture_type))
      ..add(DiagnosticsProperty('cc_state', cc_state))
      ..add(DiagnosticsProperty('custom_button_name', custom_button_name));
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
            (identical(other.story_page_id, story_page_id) ||
                other.story_page_id == story_page_id) &&
            (identical(other.story_page_parent_id, story_page_parent_id) ||
                other.story_page_parent_id == story_page_parent_id) &&
            (identical(other.story_composition_type, story_composition_type) ||
                other.story_composition_type == story_composition_type) &&
            (identical(other.story_page_index, story_page_index) ||
                other.story_page_index == story_page_index) &&
            (identical(other.story_page_count, story_page_count) ||
                other.story_page_count == story_page_count) &&
            (identical(other.story_page_navigation_type, story_page_navigation_type) ||
                other.story_page_navigation_type ==
                    story_page_navigation_type) &&
            (identical(other.story_page_navigation_direction,
                    story_page_navigation_direction) ||
                other.story_page_navigation_direction ==
                    story_page_navigation_direction) &&
            (identical(other.story_start_trigger, story_start_trigger) ||
                other.story_start_trigger == story_start_trigger) &&
            (identical(other.story_exit_trigger, story_exit_trigger) ||
                other.story_exit_trigger == story_exit_trigger) &&
            (identical(other.story_page_duration, story_page_duration) ||
                other.story_page_duration == story_page_duration) &&
            (identical(other.story_page_duration_viewed_percent,
                    story_page_duration_viewed_percent) ||
                other.story_page_duration_viewed_percent ==
                    story_page_duration_viewed_percent) &&
            (identical(other.playback_action_method, playback_action_method) ||
                other.playback_action_method == playback_action_method) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            const DeepCollectionEquality().equals(
                other._story_page_content_extra_info,
                _story_page_content_extra_info) &&
            (identical(other.gesture_type, gesture_type) ||
                other.gesture_type == gesture_type) &&
            (identical(other.cc_state, cc_state) ||
                other.cc_state == cc_state) &&
            (identical(other.custom_button_name, custom_button_name) ||
                other.custom_button_name == custom_button_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        story_session_id,
        story_id,
        story_title,
        story_page_id,
        story_page_parent_id,
        story_composition_type,
        story_page_index,
        story_page_count,
        story_page_navigation_type,
        story_page_navigation_direction,
        story_start_trigger,
        story_exit_trigger,
        story_page_duration,
        story_page_duration_viewed_percent,
        playback_action_method,
        audio_state,
        const DeepCollectionEquality().hash(_content_extra_info),
        const DeepCollectionEquality().hash(_story_page_content_extra_info),
        gesture_type,
        cc_state,
        custom_button_name
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
      final String? story_page_id,
      final String? story_page_parent_id,
      final String? story_composition_type,
      final int? story_page_index,
      final int? story_page_count,
      final PlayableNavigationType? story_page_navigation_type,
      final PlayableNavigationDirection? story_page_navigation_direction,
      final PlayerStartTriggers? story_start_trigger,
      final PlayerExitTriggers? story_exit_trigger,
      final double? story_page_duration,
      final double? story_page_duration_viewed_percent,
      final PlaybackActionMethod? playback_action_method,
      final AudioState? audio_state,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      final String? gesture_type,
      final String? cc_state,
      final String? custom_button_name}) = _$StoryPropsImpl;

  factory _StoryProps.fromJson(Map<String, dynamic> json) =
      _$StoryPropsImpl.fromJson;

  @override
  String? get story_session_id;
  @override
  String? get story_id;
  @override
  String? get story_title;
  @override
  String? get story_page_id;
  @override
  String? get story_page_parent_id;
  @override
  String? get story_composition_type;
  @override
  int? get story_page_index;
  @override
  int? get story_page_count;
  @override
  PlayableNavigationType? get story_page_navigation_type;
  @override
  PlayableNavigationDirection? get story_page_navigation_direction;
  @override
  PlayerStartTriggers? get story_start_trigger;
  @override
  PlayerExitTriggers? get story_exit_trigger;
  @override
  double? get story_page_duration;
  @override
  double? get story_page_duration_viewed_percent;
  @override
  PlaybackActionMethod? get playback_action_method;
  @override
  AudioState? get audio_state;
  @override
  Map<String, String>? get content_extra_info;
  @override
  Map<String, String>? get story_page_content_extra_info;
  @override
  String? get gesture_type;
  @override
  String? get cc_state;
  @override
  String? get custom_button_name;

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
  PlayableNavigationType? get moment_navigation_type =>
      throw _privateConstructorUsedError;
  PlayableNavigationDirection? get moment_navigation_direction =>
      throw _privateConstructorUsedError;
  PlayerStartTriggers? get moment_start_trigger =>
      throw _privateConstructorUsedError;
  PlayerExitTriggers? get moment_exit_trigger =>
      throw _privateConstructorUsedError;
  double? get moment_duration => throw _privateConstructorUsedError;
  double? get moment_duration_viewed_percent =>
      throw _privateConstructorUsedError;
  PlaybackActionMethod? get playback_action_method =>
      throw _privateConstructorUsedError;
  AudioState? get audio_state => throw _privateConstructorUsedError;
  int? get loop_number => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  String? get cc_state => throw _privateConstructorUsedError;
  String? get custom_button_name => throw _privateConstructorUsedError;

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
      PlayableNavigationType? moment_navigation_type,
      PlayableNavigationDirection? moment_navigation_direction,
      PlayerStartTriggers? moment_start_trigger,
      PlayerExitTriggers? moment_exit_trigger,
      double? moment_duration,
      double? moment_duration_viewed_percent,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
      int? loop_number,
      Map<String, String>? content_extra_info,
      String? cc_state,
      String? custom_button_name});
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
    Object? moment_navigation_type = freezed,
    Object? moment_navigation_direction = freezed,
    Object? moment_start_trigger = freezed,
    Object? moment_exit_trigger = freezed,
    Object? moment_duration = freezed,
    Object? moment_duration_viewed_percent = freezed,
    Object? playback_action_method = freezed,
    Object? audio_state = freezed,
    Object? loop_number = freezed,
    Object? content_extra_info = freezed,
    Object? cc_state = freezed,
    Object? custom_button_name = freezed,
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
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      loop_number: freezed == loop_number
          ? _value.loop_number
          : loop_number // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
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
      PlayableNavigationType? moment_navigation_type,
      PlayableNavigationDirection? moment_navigation_direction,
      PlayerStartTriggers? moment_start_trigger,
      PlayerExitTriggers? moment_exit_trigger,
      double? moment_duration,
      double? moment_duration_viewed_percent,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
      int? loop_number,
      Map<String, String>? content_extra_info,
      String? cc_state,
      String? custom_button_name});
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
    Object? moment_navigation_type = freezed,
    Object? moment_navigation_direction = freezed,
    Object? moment_start_trigger = freezed,
    Object? moment_exit_trigger = freezed,
    Object? moment_duration = freezed,
    Object? moment_duration_viewed_percent = freezed,
    Object? playback_action_method = freezed,
    Object? audio_state = freezed,
    Object? loop_number = freezed,
    Object? content_extra_info = freezed,
    Object? cc_state = freezed,
    Object? custom_button_name = freezed,
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
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
      loop_number: freezed == loop_number
          ? _value.loop_number
          : loop_number // ignore: cast_nullable_to_non_nullable
              as int?,
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
      this.moment_navigation_type,
      this.moment_navigation_direction,
      this.moment_start_trigger,
      this.moment_exit_trigger,
      this.moment_duration,
      this.moment_duration_viewed_percent,
      this.playback_action_method,
      this.audio_state,
      this.loop_number,
      final Map<String, String>? content_extra_info,
      this.cc_state,
      this.custom_button_name})
      : _content_extra_info = content_extra_info;

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
  final PlayableNavigationType? moment_navigation_type;
  @override
  final PlayableNavigationDirection? moment_navigation_direction;
  @override
  final PlayerStartTriggers? moment_start_trigger;
  @override
  final PlayerExitTriggers? moment_exit_trigger;
  @override
  final double? moment_duration;
  @override
  final double? moment_duration_viewed_percent;
  @override
  final PlaybackActionMethod? playback_action_method;
  @override
  final AudioState? audio_state;
  @override
  final int? loop_number;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MomentsProps(moments_session_id: $moments_session_id, moment_id: $moment_id, moment_title: $moment_title, moment_index: $moment_index, moment_navigation_type: $moment_navigation_type, moment_navigation_direction: $moment_navigation_direction, moment_start_trigger: $moment_start_trigger, moment_exit_trigger: $moment_exit_trigger, moment_duration: $moment_duration, moment_duration_viewed_percent: $moment_duration_viewed_percent, playback_action_method: $playback_action_method, audio_state: $audio_state, loop_number: $loop_number, content_extra_info: $content_extra_info, cc_state: $cc_state, custom_button_name: $custom_button_name)';
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
      ..add(
          DiagnosticsProperty('moment_navigation_type', moment_navigation_type))
      ..add(DiagnosticsProperty(
          'moment_navigation_direction', moment_navigation_direction))
      ..add(DiagnosticsProperty('moment_start_trigger', moment_start_trigger))
      ..add(DiagnosticsProperty('moment_exit_trigger', moment_exit_trigger))
      ..add(DiagnosticsProperty('moment_duration', moment_duration))
      ..add(DiagnosticsProperty(
          'moment_duration_viewed_percent', moment_duration_viewed_percent))
      ..add(
          DiagnosticsProperty('playback_action_method', playback_action_method))
      ..add(DiagnosticsProperty('audio_state', audio_state))
      ..add(DiagnosticsProperty('loop_number', loop_number))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty('cc_state', cc_state))
      ..add(DiagnosticsProperty('custom_button_name', custom_button_name));
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
            (identical(other.moment_navigation_type, moment_navigation_type) ||
                other.moment_navigation_type == moment_navigation_type) &&
            (identical(other.moment_navigation_direction,
                    moment_navigation_direction) ||
                other.moment_navigation_direction ==
                    moment_navigation_direction) &&
            (identical(other.moment_start_trigger, moment_start_trigger) ||
                other.moment_start_trigger == moment_start_trigger) &&
            (identical(other.moment_exit_trigger, moment_exit_trigger) ||
                other.moment_exit_trigger == moment_exit_trigger) &&
            (identical(other.moment_duration, moment_duration) ||
                other.moment_duration == moment_duration) &&
            (identical(other.moment_duration_viewed_percent,
                    moment_duration_viewed_percent) ||
                other.moment_duration_viewed_percent ==
                    moment_duration_viewed_percent) &&
            (identical(other.playback_action_method, playback_action_method) ||
                other.playback_action_method == playback_action_method) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
            (identical(other.loop_number, loop_number) ||
                other.loop_number == loop_number) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            (identical(other.cc_state, cc_state) ||
                other.cc_state == cc_state) &&
            (identical(other.custom_button_name, custom_button_name) ||
                other.custom_button_name == custom_button_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      moments_session_id,
      moment_id,
      moment_title,
      moment_index,
      moment_navigation_type,
      moment_navigation_direction,
      moment_start_trigger,
      moment_exit_trigger,
      moment_duration,
      moment_duration_viewed_percent,
      playback_action_method,
      audio_state,
      loop_number,
      const DeepCollectionEquality().hash(_content_extra_info),
      cc_state,
      custom_button_name);

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
      final PlayableNavigationType? moment_navigation_type,
      final PlayableNavigationDirection? moment_navigation_direction,
      final PlayerStartTriggers? moment_start_trigger,
      final PlayerExitTriggers? moment_exit_trigger,
      final double? moment_duration,
      final double? moment_duration_viewed_percent,
      final PlaybackActionMethod? playback_action_method,
      final AudioState? audio_state,
      final int? loop_number,
      final Map<String, String>? content_extra_info,
      final String? cc_state,
      final String? custom_button_name}) = _$MomentsPropsImpl;

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
  PlayableNavigationType? get moment_navigation_type;
  @override
  PlayableNavigationDirection? get moment_navigation_direction;
  @override
  PlayerStartTriggers? get moment_start_trigger;
  @override
  PlayerExitTriggers? get moment_exit_trigger;
  @override
  double? get moment_duration;
  @override
  double? get moment_duration_viewed_percent;
  @override
  PlaybackActionMethod? get playback_action_method;
  @override
  AudioState? get audio_state;
  @override
  int? get loop_number;
  @override
  Map<String, String>? get content_extra_info;
  @override
  String? get cc_state;
  @override
  String? get custom_button_name;

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
  String? get video_title => throw _privateConstructorUsedError;
  AudioState? get audio_state => throw _privateConstructorUsedError;
  PlayerStartTriggers? get video_start_trigger =>
      throw _privateConstructorUsedError;
  PlayerExitTriggers? get video_end_trigger =>
      throw _privateConstructorUsedError;
  double? get video_duration => throw _privateConstructorUsedError;
  VideoSeekType? get seek_type => throw _privateConstructorUsedError;
  double? get seek_total_time => throw _privateConstructorUsedError;
  VideoSeekDirection? get seek_direction => throw _privateConstructorUsedError;
  double? get video_time_start => throw _privateConstructorUsedError;
  double? get video_time_end => throw _privateConstructorUsedError;
  BlazeAnalyticsOrientation? get player_orientation =>
      throw _privateConstructorUsedError;
  BlazeAnalyticsOrientation? get device_orientation =>
      throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  AnalyticsVideosCtaConfig? get cta_config =>
      throw _privateConstructorUsedError;

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
      String? video_title,
      AudioState? audio_state,
      PlayerStartTriggers? video_start_trigger,
      PlayerExitTriggers? video_end_trigger,
      double? video_duration,
      VideoSeekType? seek_type,
      double? seek_total_time,
      VideoSeekDirection? seek_direction,
      double? video_time_start,
      double? video_time_end,
      BlazeAnalyticsOrientation? player_orientation,
      BlazeAnalyticsOrientation? device_orientation,
      Map<String, String>? content_extra_info,
      AnalyticsVideosCtaConfig? cta_config});

  $AnalyticsVideosCtaConfigCopyWith<$Res>? get cta_config;
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
    Object? video_title = freezed,
    Object? audio_state = freezed,
    Object? video_start_trigger = freezed,
    Object? video_end_trigger = freezed,
    Object? video_duration = freezed,
    Object? seek_type = freezed,
    Object? seek_total_time = freezed,
    Object? seek_direction = freezed,
    Object? video_time_start = freezed,
    Object? video_time_end = freezed,
    Object? player_orientation = freezed,
    Object? device_orientation = freezed,
    Object? content_extra_info = freezed,
    Object? cta_config = freezed,
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
      video_title: freezed == video_title
          ? _value.video_title
          : video_title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      video_duration: freezed == video_duration
          ? _value.video_duration
          : video_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_type: freezed == seek_type
          ? _value.seek_type
          : seek_type // ignore: cast_nullable_to_non_nullable
              as VideoSeekType?,
      seek_total_time: freezed == seek_total_time
          ? _value.seek_total_time
          : seek_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_direction: freezed == seek_direction
          ? _value.seek_direction
          : seek_direction // ignore: cast_nullable_to_non_nullable
              as VideoSeekDirection?,
      video_time_start: freezed == video_time_start
          ? _value.video_time_start
          : video_time_start // ignore: cast_nullable_to_non_nullable
              as double?,
      video_time_end: freezed == video_time_end
          ? _value.video_time_end
          : video_time_end // ignore: cast_nullable_to_non_nullable
              as double?,
      player_orientation: freezed == player_orientation
          ? _value.player_orientation
          : player_orientation // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsOrientation?,
      device_orientation: freezed == device_orientation
          ? _value.device_orientation
          : device_orientation // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsOrientation?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsVideosCtaConfig?,
    ) as $Val);
  }

  /// Create a copy of VideoProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsVideosCtaConfigCopyWith<$Res>? get cta_config {
    if (_value.cta_config == null) {
      return null;
    }

    return $AnalyticsVideosCtaConfigCopyWith<$Res>(_value.cta_config!, (value) {
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
      String? video_title,
      AudioState? audio_state,
      PlayerStartTriggers? video_start_trigger,
      PlayerExitTriggers? video_end_trigger,
      double? video_duration,
      VideoSeekType? seek_type,
      double? seek_total_time,
      VideoSeekDirection? seek_direction,
      double? video_time_start,
      double? video_time_end,
      BlazeAnalyticsOrientation? player_orientation,
      BlazeAnalyticsOrientation? device_orientation,
      Map<String, String>? content_extra_info,
      AnalyticsVideosCtaConfig? cta_config});

  @override
  $AnalyticsVideosCtaConfigCopyWith<$Res>? get cta_config;
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
    Object? video_title = freezed,
    Object? audio_state = freezed,
    Object? video_start_trigger = freezed,
    Object? video_end_trigger = freezed,
    Object? video_duration = freezed,
    Object? seek_type = freezed,
    Object? seek_total_time = freezed,
    Object? seek_direction = freezed,
    Object? video_time_start = freezed,
    Object? video_time_end = freezed,
    Object? player_orientation = freezed,
    Object? device_orientation = freezed,
    Object? content_extra_info = freezed,
    Object? cta_config = freezed,
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
      video_title: freezed == video_title
          ? _value.video_title
          : video_title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      video_duration: freezed == video_duration
          ? _value.video_duration
          : video_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_type: freezed == seek_type
          ? _value.seek_type
          : seek_type // ignore: cast_nullable_to_non_nullable
              as VideoSeekType?,
      seek_total_time: freezed == seek_total_time
          ? _value.seek_total_time
          : seek_total_time // ignore: cast_nullable_to_non_nullable
              as double?,
      seek_direction: freezed == seek_direction
          ? _value.seek_direction
          : seek_direction // ignore: cast_nullable_to_non_nullable
              as VideoSeekDirection?,
      video_time_start: freezed == video_time_start
          ? _value.video_time_start
          : video_time_start // ignore: cast_nullable_to_non_nullable
              as double?,
      video_time_end: freezed == video_time_end
          ? _value.video_time_end
          : video_time_end // ignore: cast_nullable_to_non_nullable
              as double?,
      player_orientation: freezed == player_orientation
          ? _value.player_orientation
          : player_orientation // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsOrientation?,
      device_orientation: freezed == device_orientation
          ? _value.device_orientation
          : device_orientation // ignore: cast_nullable_to_non_nullable
              as BlazeAnalyticsOrientation?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      cta_config: freezed == cta_config
          ? _value.cta_config
          : cta_config // ignore: cast_nullable_to_non_nullable
              as AnalyticsVideosCtaConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoPropsImpl with DiagnosticableTreeMixin implements _VideoProps {
  const _$VideoPropsImpl(
      {this.video_session_id,
      this.video_id,
      this.video_title,
      this.audio_state,
      this.video_start_trigger,
      this.video_end_trigger,
      this.video_duration,
      this.seek_type,
      this.seek_total_time,
      this.seek_direction,
      this.video_time_start,
      this.video_time_end,
      this.player_orientation,
      this.device_orientation,
      final Map<String, String>? content_extra_info,
      this.cta_config})
      : _content_extra_info = content_extra_info;

  factory _$VideoPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoPropsImplFromJson(json);

  @override
  final String? video_session_id;
  @override
  final String? video_id;
  @override
  final String? video_title;
  @override
  final AudioState? audio_state;
  @override
  final PlayerStartTriggers? video_start_trigger;
  @override
  final PlayerExitTriggers? video_end_trigger;
  @override
  final double? video_duration;
  @override
  final VideoSeekType? seek_type;
  @override
  final double? seek_total_time;
  @override
  final VideoSeekDirection? seek_direction;
  @override
  final double? video_time_start;
  @override
  final double? video_time_end;
  @override
  final BlazeAnalyticsOrientation? player_orientation;
  @override
  final BlazeAnalyticsOrientation? device_orientation;
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
  final AnalyticsVideosCtaConfig? cta_config;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoProps(video_session_id: $video_session_id, video_id: $video_id, video_title: $video_title, audio_state: $audio_state, video_start_trigger: $video_start_trigger, video_end_trigger: $video_end_trigger, video_duration: $video_duration, seek_type: $seek_type, seek_total_time: $seek_total_time, seek_direction: $seek_direction, video_time_start: $video_time_start, video_time_end: $video_time_end, player_orientation: $player_orientation, device_orientation: $device_orientation, content_extra_info: $content_extra_info, cta_config: $cta_config)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoProps'))
      ..add(DiagnosticsProperty('video_session_id', video_session_id))
      ..add(DiagnosticsProperty('video_id', video_id))
      ..add(DiagnosticsProperty('video_title', video_title))
      ..add(DiagnosticsProperty('audio_state', audio_state))
      ..add(DiagnosticsProperty('video_start_trigger', video_start_trigger))
      ..add(DiagnosticsProperty('video_end_trigger', video_end_trigger))
      ..add(DiagnosticsProperty('video_duration', video_duration))
      ..add(DiagnosticsProperty('seek_type', seek_type))
      ..add(DiagnosticsProperty('seek_total_time', seek_total_time))
      ..add(DiagnosticsProperty('seek_direction', seek_direction))
      ..add(DiagnosticsProperty('video_time_start', video_time_start))
      ..add(DiagnosticsProperty('video_time_end', video_time_end))
      ..add(DiagnosticsProperty('player_orientation', player_orientation))
      ..add(DiagnosticsProperty('device_orientation', device_orientation))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty('cta_config', cta_config));
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
            (identical(other.video_title, video_title) ||
                other.video_title == video_title) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
            (identical(other.video_start_trigger, video_start_trigger) ||
                other.video_start_trigger == video_start_trigger) &&
            (identical(other.video_end_trigger, video_end_trigger) ||
                other.video_end_trigger == video_end_trigger) &&
            (identical(other.video_duration, video_duration) ||
                other.video_duration == video_duration) &&
            (identical(other.seek_type, seek_type) ||
                other.seek_type == seek_type) &&
            (identical(other.seek_total_time, seek_total_time) ||
                other.seek_total_time == seek_total_time) &&
            (identical(other.seek_direction, seek_direction) ||
                other.seek_direction == seek_direction) &&
            (identical(other.video_time_start, video_time_start) ||
                other.video_time_start == video_time_start) &&
            (identical(other.video_time_end, video_time_end) ||
                other.video_time_end == video_time_end) &&
            (identical(other.player_orientation, player_orientation) ||
                other.player_orientation == player_orientation) &&
            (identical(other.device_orientation, device_orientation) ||
                other.device_orientation == device_orientation) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            (identical(other.cta_config, cta_config) ||
                other.cta_config == cta_config));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      video_session_id,
      video_id,
      video_title,
      audio_state,
      video_start_trigger,
      video_end_trigger,
      video_duration,
      seek_type,
      seek_total_time,
      seek_direction,
      video_time_start,
      video_time_end,
      player_orientation,
      device_orientation,
      const DeepCollectionEquality().hash(_content_extra_info),
      cta_config);

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
      final String? video_title,
      final AudioState? audio_state,
      final PlayerStartTriggers? video_start_trigger,
      final PlayerExitTriggers? video_end_trigger,
      final double? video_duration,
      final VideoSeekType? seek_type,
      final double? seek_total_time,
      final VideoSeekDirection? seek_direction,
      final double? video_time_start,
      final double? video_time_end,
      final BlazeAnalyticsOrientation? player_orientation,
      final BlazeAnalyticsOrientation? device_orientation,
      final Map<String, String>? content_extra_info,
      final AnalyticsVideosCtaConfig? cta_config}) = _$VideoPropsImpl;

  factory _VideoProps.fromJson(Map<String, dynamic> json) =
      _$VideoPropsImpl.fromJson;

  @override
  String? get video_session_id;
  @override
  String? get video_id;
  @override
  String? get video_title;
  @override
  AudioState? get audio_state;
  @override
  PlayerStartTriggers? get video_start_trigger;
  @override
  PlayerExitTriggers? get video_end_trigger;
  @override
  double? get video_duration;
  @override
  VideoSeekType? get seek_type;
  @override
  double? get seek_total_time;
  @override
  VideoSeekDirection? get seek_direction;
  @override
  double? get video_time_start;
  @override
  double? get video_time_end;
  @override
  BlazeAnalyticsOrientation? get player_orientation;
  @override
  BlazeAnalyticsOrientation? get device_orientation;
  @override
  Map<String, String>? get content_extra_info;
  @override
  AnalyticsVideosCtaConfig? get cta_config;

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
// Properties relevant for both IMA and CustomNative
  String? get session_id => throw _privateConstructorUsedError;
  String? get story_id => throw _privateConstructorUsedError;
  String? get story_title => throw _privateConstructorUsedError;
  String? get moment_id => throw _privateConstructorUsedError;
  String? get moment_title => throw _privateConstructorUsedError;
  double? get ad_duration => throw _privateConstructorUsedError;
  String? get advertiser_name => throw _privateConstructorUsedError;
  ContentType? get content_type => throw _privateConstructorUsedError;
  Map<String, String>? get content_extra_info =>
      throw _privateConstructorUsedError;
  Map<String, String>? get story_page_content_extra_info =>
      throw _privateConstructorUsedError; // Properties relevant only for CustomNative
  PlayerExitTriggers? get ad_exit_trigger => throw _privateConstructorUsedError;
  double? get ad_duration_viewed_percent => throw _privateConstructorUsedError;
  PlaybackActionMethod? get playback_action_method =>
      throw _privateConstructorUsedError;
  AudioState? get audio_state => throw _privateConstructorUsedError;
  String? get advertiser_id => throw _privateConstructorUsedError;
  String? get campaign_id => throw _privateConstructorUsedError;
  String? get campaign_name => throw _privateConstructorUsedError;
  String? get ad_server => throw _privateConstructorUsedError;
  String? get ad_insertion_logic => throw _privateConstructorUsedError;
  int? get ad_index => throw _privateConstructorUsedError;
  BlazeAnalyticsAdGestureType? get gesture_type =>
      throw _privateConstructorUsedError; // Properties relevant only for IMA
  String? get ad_id => throw _privateConstructorUsedError;
  String? get ad_title => throw _privateConstructorUsedError;
  String? get ad_description => throw _privateConstructorUsedError;
  String? get ad_system => throw _privateConstructorUsedError;
  bool? get skippable => throw _privateConstructorUsedError;
  double? get skip_time_offset => throw _privateConstructorUsedError;
  String? get ima_url => throw _privateConstructorUsedError;
  String? get video_id => throw _privateConstructorUsedError;
  String? get video_title =>
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
      String? story_id,
      String? story_title,
      String? moment_id,
      String? moment_title,
      double? ad_duration,
      String? advertiser_name,
      ContentType? content_type,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      PlayerExitTriggers? ad_exit_trigger,
      double? ad_duration_viewed_percent,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
      String? advertiser_id,
      String? campaign_id,
      String? campaign_name,
      String? ad_server,
      String? ad_insertion_logic,
      int? ad_index,
      BlazeAnalyticsAdGestureType? gesture_type,
      String? ad_id,
      String? ad_title,
      String? ad_description,
      String? ad_system,
      bool? skippable,
      double? skip_time_offset,
      String? ima_url,
      String? video_id,
      String? video_title,
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
    Object? story_id = freezed,
    Object? story_title = freezed,
    Object? moment_id = freezed,
    Object? moment_title = freezed,
    Object? ad_duration = freezed,
    Object? advertiser_name = freezed,
    Object? content_type = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? ad_exit_trigger = freezed,
    Object? ad_duration_viewed_percent = freezed,
    Object? playback_action_method = freezed,
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
    Object? video_id = freezed,
    Object? video_title = freezed,
    Object? ad_unit_id = freezed,
  }) {
    return _then(_value.copyWith(
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_id: freezed == story_id
          ? _value.story_id
          : story_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_title: freezed == story_title
          ? _value.story_title
          : story_title // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_id: freezed == moment_id
          ? _value.moment_id
          : moment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_title: freezed == moment_title
          ? _value.moment_title
          : moment_title // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_duration: freezed == ad_duration
          ? _value.ad_duration
          : ad_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      advertiser_name: freezed == advertiser_name
          ? _value.advertiser_name
          : advertiser_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      content_extra_info: freezed == content_extra_info
          ? _value.content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value.story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      ad_exit_trigger: freezed == ad_exit_trigger
          ? _value.ad_exit_trigger
          : ad_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      ad_duration_viewed_percent: freezed == ad_duration_viewed_percent
          ? _value.ad_duration_viewed_percent
          : ad_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
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
      video_id: freezed == video_id
          ? _value.video_id
          : video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      video_title: freezed == video_title
          ? _value.video_title
          : video_title // ignore: cast_nullable_to_non_nullable
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
      String? story_id,
      String? story_title,
      String? moment_id,
      String? moment_title,
      double? ad_duration,
      String? advertiser_name,
      ContentType? content_type,
      Map<String, String>? content_extra_info,
      Map<String, String>? story_page_content_extra_info,
      PlayerExitTriggers? ad_exit_trigger,
      double? ad_duration_viewed_percent,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
      String? advertiser_id,
      String? campaign_id,
      String? campaign_name,
      String? ad_server,
      String? ad_insertion_logic,
      int? ad_index,
      BlazeAnalyticsAdGestureType? gesture_type,
      String? ad_id,
      String? ad_title,
      String? ad_description,
      String? ad_system,
      bool? skippable,
      double? skip_time_offset,
      String? ima_url,
      String? video_id,
      String? video_title,
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
    Object? story_id = freezed,
    Object? story_title = freezed,
    Object? moment_id = freezed,
    Object? moment_title = freezed,
    Object? ad_duration = freezed,
    Object? advertiser_name = freezed,
    Object? content_type = freezed,
    Object? content_extra_info = freezed,
    Object? story_page_content_extra_info = freezed,
    Object? ad_exit_trigger = freezed,
    Object? ad_duration_viewed_percent = freezed,
    Object? playback_action_method = freezed,
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
    Object? video_id = freezed,
    Object? video_title = freezed,
    Object? ad_unit_id = freezed,
  }) {
    return _then(_$AdEventPropsImpl(
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_id: freezed == story_id
          ? _value.story_id
          : story_id // ignore: cast_nullable_to_non_nullable
              as String?,
      story_title: freezed == story_title
          ? _value.story_title
          : story_title // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_id: freezed == moment_id
          ? _value.moment_id
          : moment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      moment_title: freezed == moment_title
          ? _value.moment_title
          : moment_title // ignore: cast_nullable_to_non_nullable
              as String?,
      ad_duration: freezed == ad_duration
          ? _value.ad_duration
          : ad_duration // ignore: cast_nullable_to_non_nullable
              as double?,
      advertiser_name: freezed == advertiser_name
          ? _value.advertiser_name
          : advertiser_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content_type: freezed == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as ContentType?,
      content_extra_info: freezed == content_extra_info
          ? _value._content_extra_info
          : content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      story_page_content_extra_info: freezed == story_page_content_extra_info
          ? _value._story_page_content_extra_info
          : story_page_content_extra_info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      ad_exit_trigger: freezed == ad_exit_trigger
          ? _value.ad_exit_trigger
          : ad_exit_trigger // ignore: cast_nullable_to_non_nullable
              as PlayerExitTriggers?,
      ad_duration_viewed_percent: freezed == ad_duration_viewed_percent
          ? _value.ad_duration_viewed_percent
          : ad_duration_viewed_percent // ignore: cast_nullable_to_non_nullable
              as double?,
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
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
      video_id: freezed == video_id
          ? _value.video_id
          : video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      video_title: freezed == video_title
          ? _value.video_title
          : video_title // ignore: cast_nullable_to_non_nullable
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
      this.story_id,
      this.story_title,
      this.moment_id,
      this.moment_title,
      this.ad_duration,
      this.advertiser_name,
      this.content_type,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      this.ad_exit_trigger,
      this.ad_duration_viewed_percent,
      this.playback_action_method,
      this.audio_state,
      this.advertiser_id,
      this.campaign_id,
      this.campaign_name,
      this.ad_server,
      this.ad_insertion_logic,
      this.ad_index,
      this.gesture_type,
      this.ad_id,
      this.ad_title,
      this.ad_description,
      this.ad_system,
      this.skippable,
      this.skip_time_offset,
      this.ima_url,
      this.video_id,
      this.video_title,
      this.ad_unit_id})
      : _content_extra_info = content_extra_info,
        _story_page_content_extra_info = story_page_content_extra_info;

  factory _$AdEventPropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdEventPropsImplFromJson(json);

// Properties relevant for both IMA and CustomNative
  @override
  final String? session_id;
  @override
  final String? story_id;
  @override
  final String? story_title;
  @override
  final String? moment_id;
  @override
  final String? moment_title;
  @override
  final double? ad_duration;
  @override
  final String? advertiser_name;
  @override
  final ContentType? content_type;
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

// Properties relevant only for CustomNative
  @override
  final PlayerExitTriggers? ad_exit_trigger;
  @override
  final double? ad_duration_viewed_percent;
  @override
  final PlaybackActionMethod? playback_action_method;
  @override
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
  @override
  final String? video_id;
  @override
  final String? video_title;
// Properties relevant only for Banner Ads
  @override
  final String? ad_unit_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdEventProps(session_id: $session_id, story_id: $story_id, story_title: $story_title, moment_id: $moment_id, moment_title: $moment_title, ad_duration: $ad_duration, advertiser_name: $advertiser_name, content_type: $content_type, content_extra_info: $content_extra_info, story_page_content_extra_info: $story_page_content_extra_info, ad_exit_trigger: $ad_exit_trigger, ad_duration_viewed_percent: $ad_duration_viewed_percent, playback_action_method: $playback_action_method, audio_state: $audio_state, advertiser_id: $advertiser_id, campaign_id: $campaign_id, campaign_name: $campaign_name, ad_server: $ad_server, ad_insertion_logic: $ad_insertion_logic, ad_index: $ad_index, gesture_type: $gesture_type, ad_id: $ad_id, ad_title: $ad_title, ad_description: $ad_description, ad_system: $ad_system, skippable: $skippable, skip_time_offset: $skip_time_offset, ima_url: $ima_url, video_id: $video_id, video_title: $video_title, ad_unit_id: $ad_unit_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdEventProps'))
      ..add(DiagnosticsProperty('session_id', session_id))
      ..add(DiagnosticsProperty('story_id', story_id))
      ..add(DiagnosticsProperty('story_title', story_title))
      ..add(DiagnosticsProperty('moment_id', moment_id))
      ..add(DiagnosticsProperty('moment_title', moment_title))
      ..add(DiagnosticsProperty('ad_duration', ad_duration))
      ..add(DiagnosticsProperty('advertiser_name', advertiser_name))
      ..add(DiagnosticsProperty('content_type', content_type))
      ..add(DiagnosticsProperty('content_extra_info', content_extra_info))
      ..add(DiagnosticsProperty(
          'story_page_content_extra_info', story_page_content_extra_info))
      ..add(DiagnosticsProperty('ad_exit_trigger', ad_exit_trigger))
      ..add(DiagnosticsProperty(
          'ad_duration_viewed_percent', ad_duration_viewed_percent))
      ..add(
          DiagnosticsProperty('playback_action_method', playback_action_method))
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
      ..add(DiagnosticsProperty('video_id', video_id))
      ..add(DiagnosticsProperty('video_title', video_title))
      ..add(DiagnosticsProperty('ad_unit_id', ad_unit_id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdEventPropsImpl &&
            (identical(other.session_id, session_id) ||
                other.session_id == session_id) &&
            (identical(other.story_id, story_id) ||
                other.story_id == story_id) &&
            (identical(other.story_title, story_title) ||
                other.story_title == story_title) &&
            (identical(other.moment_id, moment_id) ||
                other.moment_id == moment_id) &&
            (identical(other.moment_title, moment_title) ||
                other.moment_title == moment_title) &&
            (identical(other.ad_duration, ad_duration) ||
                other.ad_duration == ad_duration) &&
            (identical(other.advertiser_name, advertiser_name) ||
                other.advertiser_name == advertiser_name) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            const DeepCollectionEquality()
                .equals(other._content_extra_info, _content_extra_info) &&
            const DeepCollectionEquality().equals(
                other._story_page_content_extra_info,
                _story_page_content_extra_info) &&
            (identical(other.ad_exit_trigger, ad_exit_trigger) ||
                other.ad_exit_trigger == ad_exit_trigger) &&
            (identical(other.ad_duration_viewed_percent,
                    ad_duration_viewed_percent) ||
                other.ad_duration_viewed_percent ==
                    ad_duration_viewed_percent) &&
            (identical(other.playback_action_method, playback_action_method) ||
                other.playback_action_method == playback_action_method) &&
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
            (identical(other.video_id, video_id) ||
                other.video_id == video_id) &&
            (identical(other.video_title, video_title) ||
                other.video_title == video_title) &&
            (identical(other.ad_unit_id, ad_unit_id) ||
                other.ad_unit_id == ad_unit_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        session_id,
        story_id,
        story_title,
        moment_id,
        moment_title,
        ad_duration,
        advertiser_name,
        content_type,
        const DeepCollectionEquality().hash(_content_extra_info),
        const DeepCollectionEquality().hash(_story_page_content_extra_info),
        ad_exit_trigger,
        ad_duration_viewed_percent,
        playback_action_method,
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
        video_id,
        video_title,
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
      final String? story_id,
      final String? story_title,
      final String? moment_id,
      final String? moment_title,
      final double? ad_duration,
      final String? advertiser_name,
      final ContentType? content_type,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      final PlayerExitTriggers? ad_exit_trigger,
      final double? ad_duration_viewed_percent,
      final PlaybackActionMethod? playback_action_method,
      final AudioState? audio_state,
      final String? advertiser_id,
      final String? campaign_id,
      final String? campaign_name,
      final String? ad_server,
      final String? ad_insertion_logic,
      final int? ad_index,
      final BlazeAnalyticsAdGestureType? gesture_type,
      final String? ad_id,
      final String? ad_title,
      final String? ad_description,
      final String? ad_system,
      final bool? skippable,
      final double? skip_time_offset,
      final String? ima_url,
      final String? video_id,
      final String? video_title,
      final String? ad_unit_id}) = _$AdEventPropsImpl;

  factory _AdEventProps.fromJson(Map<String, dynamic> json) =
      _$AdEventPropsImpl.fromJson;

// Properties relevant for both IMA and CustomNative
  @override
  String? get session_id;
  @override
  String? get story_id;
  @override
  String? get story_title;
  @override
  String? get moment_id;
  @override
  String? get moment_title;
  @override
  double? get ad_duration;
  @override
  String? get advertiser_name;
  @override
  ContentType? get content_type;
  @override
  Map<String, String>? get content_extra_info;
  @override
  Map<String, String>?
      get story_page_content_extra_info; // Properties relevant only for CustomNative
  @override
  PlayerExitTriggers? get ad_exit_trigger;
  @override
  double? get ad_duration_viewed_percent;
  @override
  PlaybackActionMethod? get playback_action_method;
  @override
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
  String? get ima_url;
  @override
  String? get video_id;
  @override
  String? get video_title; // Properties relevant only for Banner Ads
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
  ContentType? get content_type => throw _privateConstructorUsedError;
  String? get content_id => throw _privateConstructorUsedError;
  String? get content_page_id => throw _privateConstructorUsedError;
  String? get content_title => throw _privateConstructorUsedError;
  String? get interaction_id => throw _privateConstructorUsedError;
  String? get interaction_type => throw _privateConstructorUsedError;
  String? get interaction_text => throw _privateConstructorUsedError;
  String? get interaction_selected_answer => throw _privateConstructorUsedError;
  PlaybackActionMethod? get playback_action_method =>
      throw _privateConstructorUsedError;
  AudioState? get audio_state => throw _privateConstructorUsedError;
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
      ContentType? content_type,
      String? content_id,
      String? content_page_id,
      String? content_title,
      String? interaction_id,
      String? interaction_type,
      String? interaction_text,
      String? interaction_selected_answer,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
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
    Object? content_page_id = freezed,
    Object? content_title = freezed,
    Object? interaction_id = freezed,
    Object? interaction_type = freezed,
    Object? interaction_text = freezed,
    Object? interaction_selected_answer = freezed,
    Object? playback_action_method = freezed,
    Object? audio_state = freezed,
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
      content_page_id: freezed == content_page_id
          ? _value.content_page_id
          : content_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_title: freezed == content_title
          ? _value.content_title
          : content_title // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_id: freezed == interaction_id
          ? _value.interaction_id
          : interaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_type: freezed == interaction_type
          ? _value.interaction_type
          : interaction_type // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_text: freezed == interaction_text
          ? _value.interaction_text
          : interaction_text // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_selected_answer: freezed == interaction_selected_answer
          ? _value.interaction_selected_answer
          : interaction_selected_answer // ignore: cast_nullable_to_non_nullable
              as String?,
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
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
      ContentType? content_type,
      String? content_id,
      String? content_page_id,
      String? content_title,
      String? interaction_id,
      String? interaction_type,
      String? interaction_text,
      String? interaction_selected_answer,
      PlaybackActionMethod? playback_action_method,
      AudioState? audio_state,
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
    Object? content_page_id = freezed,
    Object? content_title = freezed,
    Object? interaction_id = freezed,
    Object? interaction_type = freezed,
    Object? interaction_text = freezed,
    Object? interaction_selected_answer = freezed,
    Object? playback_action_method = freezed,
    Object? audio_state = freezed,
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
      content_page_id: freezed == content_page_id
          ? _value.content_page_id
          : content_page_id // ignore: cast_nullable_to_non_nullable
              as String?,
      content_title: freezed == content_title
          ? _value.content_title
          : content_title // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_id: freezed == interaction_id
          ? _value.interaction_id
          : interaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_type: freezed == interaction_type
          ? _value.interaction_type
          : interaction_type // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_text: freezed == interaction_text
          ? _value.interaction_text
          : interaction_text // ignore: cast_nullable_to_non_nullable
              as String?,
      interaction_selected_answer: freezed == interaction_selected_answer
          ? _value.interaction_selected_answer
          : interaction_selected_answer // ignore: cast_nullable_to_non_nullable
              as String?,
      playback_action_method: freezed == playback_action_method
          ? _value.playback_action_method
          : playback_action_method // ignore: cast_nullable_to_non_nullable
              as PlaybackActionMethod?,
      audio_state: freezed == audio_state
          ? _value.audio_state
          : audio_state // ignore: cast_nullable_to_non_nullable
              as AudioState?,
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
      this.content_type,
      this.content_id,
      this.content_page_id,
      this.content_title,
      this.interaction_id,
      this.interaction_type,
      this.interaction_text,
      this.interaction_selected_answer,
      this.playback_action_method,
      this.audio_state,
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
  final ContentType? content_type;
  @override
  final String? content_id;
  @override
  final String? content_page_id;
  @override
  final String? content_title;
  @override
  final String? interaction_id;
  @override
  final String? interaction_type;
  @override
  final String? interaction_text;
  @override
  final String? interaction_selected_answer;
  @override
  final PlaybackActionMethod? playback_action_method;
  @override
  final AudioState? audio_state;
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
    return 'InteractionProps(content_session_id: $content_session_id, content_type: $content_type, content_id: $content_id, content_page_id: $content_page_id, content_title: $content_title, interaction_id: $interaction_id, interaction_type: $interaction_type, interaction_text: $interaction_text, interaction_selected_answer: $interaction_selected_answer, playback_action_method: $playback_action_method, audio_state: $audio_state, content_extra_info: $content_extra_info, story_page_content_extra_info: $story_page_content_extra_info, client_enrichment_url: $client_enrichment_url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InteractionProps'))
      ..add(DiagnosticsProperty('content_session_id', content_session_id))
      ..add(DiagnosticsProperty('content_type', content_type))
      ..add(DiagnosticsProperty('content_id', content_id))
      ..add(DiagnosticsProperty('content_page_id', content_page_id))
      ..add(DiagnosticsProperty('content_title', content_title))
      ..add(DiagnosticsProperty('interaction_id', interaction_id))
      ..add(DiagnosticsProperty('interaction_type', interaction_type))
      ..add(DiagnosticsProperty('interaction_text', interaction_text))
      ..add(DiagnosticsProperty(
          'interaction_selected_answer', interaction_selected_answer))
      ..add(
          DiagnosticsProperty('playback_action_method', playback_action_method))
      ..add(DiagnosticsProperty('audio_state', audio_state))
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
            (identical(other.content_page_id, content_page_id) ||
                other.content_page_id == content_page_id) &&
            (identical(other.content_title, content_title) ||
                other.content_title == content_title) &&
            (identical(other.interaction_id, interaction_id) ||
                other.interaction_id == interaction_id) &&
            (identical(other.interaction_type, interaction_type) ||
                other.interaction_type == interaction_type) &&
            (identical(other.interaction_text, interaction_text) ||
                other.interaction_text == interaction_text) &&
            (identical(other.interaction_selected_answer,
                    interaction_selected_answer) ||
                other.interaction_selected_answer ==
                    interaction_selected_answer) &&
            (identical(other.playback_action_method, playback_action_method) ||
                other.playback_action_method == playback_action_method) &&
            (identical(other.audio_state, audio_state) ||
                other.audio_state == audio_state) &&
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
      content_page_id,
      content_title,
      interaction_id,
      interaction_type,
      interaction_text,
      interaction_selected_answer,
      playback_action_method,
      audio_state,
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
      final ContentType? content_type,
      final String? content_id,
      final String? content_page_id,
      final String? content_title,
      final String? interaction_id,
      final String? interaction_type,
      final String? interaction_text,
      final String? interaction_selected_answer,
      final PlaybackActionMethod? playback_action_method,
      final AudioState? audio_state,
      final Map<String, String>? content_extra_info,
      final Map<String, String>? story_page_content_extra_info,
      final String? client_enrichment_url}) = _$InteractionPropsImpl;

  factory _InteractionProps.fromJson(Map<String, dynamic> json) =
      _$InteractionPropsImpl.fromJson;

  @override
  String? get content_session_id;
  @override
  ContentType? get content_type;
  @override
  String? get content_id;
  @override
  String? get content_page_id;
  @override
  String? get content_title;
  @override
  String? get interaction_id;
  @override
  String? get interaction_type;
  @override
  String? get interaction_text;
  @override
  String? get interaction_selected_answer;
  @override
  PlaybackActionMethod? get playback_action_method;
  @override
  AudioState? get audio_state;
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
  EventCategory get event_category => throw _privateConstructorUsedError;
  EventActionName get event_action => throw _privateConstructorUsedError;
  UserProps get user => throw _privateConstructorUsedError;
  ReferringPropsAnalytics get referring => throw _privateConstructorUsedError;
  WidgetProps? get widget => throw _privateConstructorUsedError;
  StoryProps? get story => throw _privateConstructorUsedError;
  MomentsProps? get moment => throw _privateConstructorUsedError;
  VideoProps? get video => throw _privateConstructorUsedError;
  AdEventProps? get ad => throw _privateConstructorUsedError;
  InteractionProps? get interaction => throw _privateConstructorUsedError;

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
      EventCategory event_category,
      EventActionName event_action,
      UserProps user,
      ReferringPropsAnalytics referring,
      WidgetProps? widget,
      StoryProps? story,
      MomentsProps? moment,
      VideoProps? video,
      AdEventProps? ad,
      InteractionProps? interaction});

  $UserPropsCopyWith<$Res> get user;
  $ReferringPropsAnalyticsCopyWith<$Res> get referring;
  $WidgetPropsCopyWith<$Res>? get widget;
  $StoryPropsCopyWith<$Res>? get story;
  $MomentsPropsCopyWith<$Res>? get moment;
  $VideoPropsCopyWith<$Res>? get video;
  $AdEventPropsCopyWith<$Res>? get ad;
  $InteractionPropsCopyWith<$Res>? get interaction;
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
    Object? user = null,
    Object? referring = null,
    Object? widget = freezed,
    Object? story = freezed,
    Object? moment = freezed,
    Object? video = freezed,
    Object? ad = freezed,
    Object? interaction = freezed,
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
    ) as $Val);
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
      EventCategory event_category,
      EventActionName event_action,
      UserProps user,
      ReferringPropsAnalytics referring,
      WidgetProps? widget,
      StoryProps? story,
      MomentsProps? moment,
      VideoProps? video,
      AdEventProps? ad,
      InteractionProps? interaction});

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
    Object? user = null,
    Object? referring = null,
    Object? widget = freezed,
    Object? story = freezed,
    Object? moment = freezed,
    Object? video = freezed,
    Object? ad = freezed,
    Object? interaction = freezed,
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
      required this.event_category,
      required this.event_action,
      required this.user,
      required this.referring,
      this.widget,
      this.story,
      this.moment,
      this.video,
      this.ad,
      this.interaction});

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
  final EventCategory event_category;
  @override
  final EventActionName event_action;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlazeAnalyticsEvent(timestamp_utc: $timestamp_utc, timestamp_user_tz: $timestamp_user_tz, sdk_version: $sdk_version, sdk_type: $sdk_type, event_category: $event_category, event_action: $event_action, user: $user, referring: $referring, widget: $widget, story: $story, moment: $moment, video: $video, ad: $ad, interaction: $interaction)';
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
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('referring', referring))
      ..add(DiagnosticsProperty('widget', widget))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('moment', moment))
      ..add(DiagnosticsProperty('video', video))
      ..add(DiagnosticsProperty('ad', ad))
      ..add(DiagnosticsProperty('interaction', interaction));
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
            (identical(other.user, user) || other.user == user) &&
            (identical(other.referring, referring) ||
                other.referring == referring) &&
            (identical(other.widget, widget) || other.widget == widget) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.moment, moment) || other.moment == moment) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.ad, ad) || other.ad == ad) &&
            (identical(other.interaction, interaction) ||
                other.interaction == interaction));
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
      user,
      referring,
      widget,
      story,
      moment,
      video,
      ad,
      interaction);

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
      required final EventCategory event_category,
      required final EventActionName event_action,
      required final UserProps user,
      required final ReferringPropsAnalytics referring,
      final WidgetProps? widget,
      final StoryProps? story,
      final MomentsProps? moment,
      final VideoProps? video,
      final AdEventProps? ad,
      final InteractionProps? interaction}) = _$BlazeAnalyticsEventImpl;

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
  EventCategory get event_category;
  @override
  EventActionName get event_action;
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

  /// Create a copy of BlazeAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeAnalyticsEventImplCopyWith<_$BlazeAnalyticsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
