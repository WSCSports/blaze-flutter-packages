// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_style_overrides.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeWidgetItemCustomMapping _$BlazeWidgetItemCustomMappingFromJson(
    Map<String, dynamic> json) {
  return _BlazeWidgetItemCustomMapping.fromJson(json);
}

/// @nodoc
mixin _$BlazeWidgetItemCustomMapping {
  /// The key for the custom mapping, represented as a `String`.
  /// This key identifies the type of data or attribute the value corresponds to.
  String get key => throw _privateConstructorUsedError;

  /// The value for the custom mapping, represented as a `String`.
  /// This value contains the specific data or attribute associated with the key.
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemCustomMapping value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetItemCustomMapping value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemCustomMapping value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeWidgetItemCustomMapping to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeWidgetItemCustomMapping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeWidgetItemCustomMappingCopyWith<BlazeWidgetItemCustomMapping>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeWidgetItemCustomMappingCopyWith<$Res> {
  factory $BlazeWidgetItemCustomMappingCopyWith(
          BlazeWidgetItemCustomMapping value,
          $Res Function(BlazeWidgetItemCustomMapping) then) =
      _$BlazeWidgetItemCustomMappingCopyWithImpl<$Res,
          BlazeWidgetItemCustomMapping>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$BlazeWidgetItemCustomMappingCopyWithImpl<$Res,
        $Val extends BlazeWidgetItemCustomMapping>
    implements $BlazeWidgetItemCustomMappingCopyWith<$Res> {
  _$BlazeWidgetItemCustomMappingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeWidgetItemCustomMapping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeWidgetItemCustomMappingImplCopyWith<$Res>
    implements $BlazeWidgetItemCustomMappingCopyWith<$Res> {
  factory _$$BlazeWidgetItemCustomMappingImplCopyWith(
          _$BlazeWidgetItemCustomMappingImpl value,
          $Res Function(_$BlazeWidgetItemCustomMappingImpl) then) =
      __$$BlazeWidgetItemCustomMappingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$BlazeWidgetItemCustomMappingImplCopyWithImpl<$Res>
    extends _$BlazeWidgetItemCustomMappingCopyWithImpl<$Res,
        _$BlazeWidgetItemCustomMappingImpl>
    implements _$$BlazeWidgetItemCustomMappingImplCopyWith<$Res> {
  __$$BlazeWidgetItemCustomMappingImplCopyWithImpl(
      _$BlazeWidgetItemCustomMappingImpl _value,
      $Res Function(_$BlazeWidgetItemCustomMappingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeWidgetItemCustomMapping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$BlazeWidgetItemCustomMappingImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeWidgetItemCustomMappingImpl
    implements _BlazeWidgetItemCustomMapping {
  const _$BlazeWidgetItemCustomMappingImpl(
      {required this.key, required this.value});

  factory _$BlazeWidgetItemCustomMappingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeWidgetItemCustomMappingImplFromJson(json);

  /// The key for the custom mapping, represented as a `String`.
  /// This key identifies the type of data or attribute the value corresponds to.
  @override
  final String key;

  /// The value for the custom mapping, represented as a `String`.
  /// This value contains the specific data or attribute associated with the key.
  @override
  final String value;

  @override
  String toString() {
    return 'BlazeWidgetItemCustomMapping(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeWidgetItemCustomMappingImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of BlazeWidgetItemCustomMapping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeWidgetItemCustomMappingImplCopyWith<
          _$BlazeWidgetItemCustomMappingImpl>
      get copyWith => __$$BlazeWidgetItemCustomMappingImplCopyWithImpl<
          _$BlazeWidgetItemCustomMappingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemCustomMapping value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetItemCustomMapping value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemCustomMapping value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeWidgetItemCustomMappingImplToJson(
      this,
    );
  }
}

abstract class _BlazeWidgetItemCustomMapping
    implements BlazeWidgetItemCustomMapping {
  const factory _BlazeWidgetItemCustomMapping(
      {required final String key,
      required final String value}) = _$BlazeWidgetItemCustomMappingImpl;

  factory _BlazeWidgetItemCustomMapping.fromJson(Map<String, dynamic> json) =
      _$BlazeWidgetItemCustomMappingImpl.fromJson;

  /// The key for the custom mapping, represented as a `String`.
  /// This key identifies the type of data or attribute the value corresponds to.
  @override
  String get key;

  /// The value for the custom mapping, represented as a `String`.
  /// This value contains the specific data or attribute associated with the key.
  @override
  String get value;

  /// Create a copy of BlazeWidgetItemCustomMapping
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeWidgetItemCustomMappingImplCopyWith<
          _$BlazeWidgetItemCustomMappingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeWidgetItemStyleOverrides _$BlazeWidgetItemStyleOverridesFromJson(
    Map<String, dynamic> json) {
  return _BlazeWidgetItemStyleOverrides.fromJson(json);
}

/// @nodoc
mixin _$BlazeWidgetItemStyleOverrides {
  /// Status indicator style overrides (live/read/unread indicators)
  BlazeWidgetItemStatusIndicatorStyle? get statusIndicator =>
      throw _privateConstructorUsedError;

  /// Image border style overrides for different states
  BlazeWidgetItemImageContainerBorderStyle? get imageBorder =>
      throw _privateConstructorUsedError;

  /// Badge style overrides for different states
  BlazeWidgetItemBadgeStyle? get badge => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyleOverrides value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetItemStyleOverrides value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyleOverrides value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeWidgetItemStyleOverrides to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeWidgetItemStyleOverridesCopyWith<BlazeWidgetItemStyleOverrides>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeWidgetItemStyleOverridesCopyWith<$Res> {
  factory $BlazeWidgetItemStyleOverridesCopyWith(
          BlazeWidgetItemStyleOverrides value,
          $Res Function(BlazeWidgetItemStyleOverrides) then) =
      _$BlazeWidgetItemStyleOverridesCopyWithImpl<$Res,
          BlazeWidgetItemStyleOverrides>;
  @useResult
  $Res call(
      {BlazeWidgetItemStatusIndicatorStyle? statusIndicator,
      BlazeWidgetItemImageContainerBorderStyle? imageBorder,
      BlazeWidgetItemBadgeStyle? badge});

  $BlazeWidgetItemStatusIndicatorStyleCopyWith<$Res>? get statusIndicator;
  $BlazeWidgetItemImageContainerBorderStyleCopyWith<$Res>? get imageBorder;
  $BlazeWidgetItemBadgeStyleCopyWith<$Res>? get badge;
}

/// @nodoc
class _$BlazeWidgetItemStyleOverridesCopyWithImpl<$Res,
        $Val extends BlazeWidgetItemStyleOverrides>
    implements $BlazeWidgetItemStyleOverridesCopyWith<$Res> {
  _$BlazeWidgetItemStyleOverridesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusIndicator = freezed,
    Object? imageBorder = freezed,
    Object? badge = freezed,
  }) {
    return _then(_value.copyWith(
      statusIndicator: freezed == statusIndicator
          ? _value.statusIndicator
          : statusIndicator // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemStatusIndicatorStyle?,
      imageBorder: freezed == imageBorder
          ? _value.imageBorder
          : imageBorder // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemImageContainerBorderStyle?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemBadgeStyle?,
    ) as $Val);
  }

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetItemStatusIndicatorStyleCopyWith<$Res>? get statusIndicator {
    if (_value.statusIndicator == null) {
      return null;
    }

    return $BlazeWidgetItemStatusIndicatorStyleCopyWith<$Res>(
        _value.statusIndicator!, (value) {
      return _then(_value.copyWith(statusIndicator: value) as $Val);
    });
  }

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetItemImageContainerBorderStyleCopyWith<$Res>? get imageBorder {
    if (_value.imageBorder == null) {
      return null;
    }

    return $BlazeWidgetItemImageContainerBorderStyleCopyWith<$Res>(
        _value.imageBorder!, (value) {
      return _then(_value.copyWith(imageBorder: value) as $Val);
    });
  }

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetItemBadgeStyleCopyWith<$Res>? get badge {
    if (_value.badge == null) {
      return null;
    }

    return $BlazeWidgetItemBadgeStyleCopyWith<$Res>(_value.badge!, (value) {
      return _then(_value.copyWith(badge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeWidgetItemStyleOverridesImplCopyWith<$Res>
    implements $BlazeWidgetItemStyleOverridesCopyWith<$Res> {
  factory _$$BlazeWidgetItemStyleOverridesImplCopyWith(
          _$BlazeWidgetItemStyleOverridesImpl value,
          $Res Function(_$BlazeWidgetItemStyleOverridesImpl) then) =
      __$$BlazeWidgetItemStyleOverridesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeWidgetItemStatusIndicatorStyle? statusIndicator,
      BlazeWidgetItemImageContainerBorderStyle? imageBorder,
      BlazeWidgetItemBadgeStyle? badge});

  @override
  $BlazeWidgetItemStatusIndicatorStyleCopyWith<$Res>? get statusIndicator;
  @override
  $BlazeWidgetItemImageContainerBorderStyleCopyWith<$Res>? get imageBorder;
  @override
  $BlazeWidgetItemBadgeStyleCopyWith<$Res>? get badge;
}

/// @nodoc
class __$$BlazeWidgetItemStyleOverridesImplCopyWithImpl<$Res>
    extends _$BlazeWidgetItemStyleOverridesCopyWithImpl<$Res,
        _$BlazeWidgetItemStyleOverridesImpl>
    implements _$$BlazeWidgetItemStyleOverridesImplCopyWith<$Res> {
  __$$BlazeWidgetItemStyleOverridesImplCopyWithImpl(
      _$BlazeWidgetItemStyleOverridesImpl _value,
      $Res Function(_$BlazeWidgetItemStyleOverridesImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusIndicator = freezed,
    Object? imageBorder = freezed,
    Object? badge = freezed,
  }) {
    return _then(_$BlazeWidgetItemStyleOverridesImpl(
      statusIndicator: freezed == statusIndicator
          ? _value.statusIndicator
          : statusIndicator // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemStatusIndicatorStyle?,
      imageBorder: freezed == imageBorder
          ? _value.imageBorder
          : imageBorder // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemImageContainerBorderStyle?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemBadgeStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeWidgetItemStyleOverridesImpl
    implements _BlazeWidgetItemStyleOverrides {
  const _$BlazeWidgetItemStyleOverridesImpl(
      {this.statusIndicator, this.imageBorder, this.badge});

  factory _$BlazeWidgetItemStyleOverridesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeWidgetItemStyleOverridesImplFromJson(json);

  /// Status indicator style overrides (live/read/unread indicators)
  @override
  final BlazeWidgetItemStatusIndicatorStyle? statusIndicator;

  /// Image border style overrides for different states
  @override
  final BlazeWidgetItemImageContainerBorderStyle? imageBorder;

  /// Badge style overrides for different states
  @override
  final BlazeWidgetItemBadgeStyle? badge;

  @override
  String toString() {
    return 'BlazeWidgetItemStyleOverrides(statusIndicator: $statusIndicator, imageBorder: $imageBorder, badge: $badge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeWidgetItemStyleOverridesImpl &&
            (identical(other.statusIndicator, statusIndicator) ||
                other.statusIndicator == statusIndicator) &&
            (identical(other.imageBorder, imageBorder) ||
                other.imageBorder == imageBorder) &&
            (identical(other.badge, badge) || other.badge == badge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, statusIndicator, imageBorder, badge);

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeWidgetItemStyleOverridesImplCopyWith<
          _$BlazeWidgetItemStyleOverridesImpl>
      get copyWith => __$$BlazeWidgetItemStyleOverridesImplCopyWithImpl<
          _$BlazeWidgetItemStyleOverridesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyleOverrides value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetItemStyleOverrides value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyleOverrides value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeWidgetItemStyleOverridesImplToJson(
      this,
    );
  }
}

abstract class _BlazeWidgetItemStyleOverrides
    implements BlazeWidgetItemStyleOverrides {
  const factory _BlazeWidgetItemStyleOverrides(
          {final BlazeWidgetItemStatusIndicatorStyle? statusIndicator,
          final BlazeWidgetItemImageContainerBorderStyle? imageBorder,
          final BlazeWidgetItemBadgeStyle? badge}) =
      _$BlazeWidgetItemStyleOverridesImpl;

  factory _BlazeWidgetItemStyleOverrides.fromJson(Map<String, dynamic> json) =
      _$BlazeWidgetItemStyleOverridesImpl.fromJson;

  /// Status indicator style overrides (live/read/unread indicators)
  @override
  BlazeWidgetItemStatusIndicatorStyle? get statusIndicator;

  /// Image border style overrides for different states
  @override
  BlazeWidgetItemImageContainerBorderStyle? get imageBorder;

  /// Badge style overrides for different states
  @override
  BlazeWidgetItemBadgeStyle? get badge;

  /// Create a copy of BlazeWidgetItemStyleOverrides
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeWidgetItemStyleOverridesImplCopyWith<
          _$BlazeWidgetItemStyleOverridesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
