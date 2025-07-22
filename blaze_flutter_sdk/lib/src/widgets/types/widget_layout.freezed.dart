// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeWidgetItemStyle _$BlazeWidgetItemStyleFromJson(Map<String, dynamic> json) {
  return _BlazeWidgetItemStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeWidgetItemStyle {
  BlazeWidgetItemTitleStyle? get title => throw _privateConstructorUsedError;
  BlazeWidgetItemImageStyle? get image => throw _privateConstructorUsedError;
  BlazeWidgetItemStatusIndicatorStyle? get statusIndicator =>
      throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  double? get cornerRadius => throw _privateConstructorUsedError;
  double? get cornerRadiusRatio => throw _privateConstructorUsedError;
  BlazeMargins? get margins => throw _privateConstructorUsedError;
  BlazeWidgetItemBadgeStyle? get badge => throw _privateConstructorUsedError;

  /// The duration element configuration of the widget item.
  /// Note: This property is only applicable for `Videos` and `Moments` player type.
  BlazeWidgetItemDurationElementStyle? get durationElement =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetItemStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeWidgetItemStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeWidgetItemStyleCopyWith<BlazeWidgetItemStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeWidgetItemStyleCopyWith<$Res> {
  factory $BlazeWidgetItemStyleCopyWith(BlazeWidgetItemStyle value,
          $Res Function(BlazeWidgetItemStyle) then) =
      _$BlazeWidgetItemStyleCopyWithImpl<$Res, BlazeWidgetItemStyle>;
  @useResult
  $Res call(
      {BlazeWidgetItemTitleStyle? title,
      BlazeWidgetItemImageStyle? image,
      BlazeWidgetItemStatusIndicatorStyle? statusIndicator,
      String? backgroundColor,
      double? cornerRadius,
      double? cornerRadiusRatio,
      BlazeMargins? margins,
      BlazeWidgetItemBadgeStyle? badge,
      BlazeWidgetItemDurationElementStyle? durationElement});

  $BlazeWidgetItemTitleStyleCopyWith<$Res>? get title;
  $BlazeWidgetItemImageStyleCopyWith<$Res>? get image;
  $BlazeWidgetItemStatusIndicatorStyleCopyWith<$Res>? get statusIndicator;
  $BlazeMarginsCopyWith<$Res>? get margins;
  $BlazeWidgetItemBadgeStyleCopyWith<$Res>? get badge;
  $BlazeWidgetItemDurationElementStyleCopyWith<$Res>? get durationElement;
}

/// @nodoc
class _$BlazeWidgetItemStyleCopyWithImpl<$Res,
        $Val extends BlazeWidgetItemStyle>
    implements $BlazeWidgetItemStyleCopyWith<$Res> {
  _$BlazeWidgetItemStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? statusIndicator = freezed,
    Object? backgroundColor = freezed,
    Object? cornerRadius = freezed,
    Object? cornerRadiusRatio = freezed,
    Object? margins = freezed,
    Object? badge = freezed,
    Object? durationElement = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemTitleStyle?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemImageStyle?,
      statusIndicator: freezed == statusIndicator
          ? _value.statusIndicator
          : statusIndicator // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemStatusIndicatorStyle?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      cornerRadiusRatio: freezed == cornerRadiusRatio
          ? _value.cornerRadiusRatio
          : cornerRadiusRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      margins: freezed == margins
          ? _value.margins
          : margins // ignore: cast_nullable_to_non_nullable
              as BlazeMargins?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemBadgeStyle?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemDurationElementStyle?,
    ) as $Val);
  }

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetItemTitleStyleCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $BlazeWidgetItemTitleStyleCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetItemImageStyleCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $BlazeWidgetItemImageStyleCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of BlazeWidgetItemStyle
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

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeMarginsCopyWith<$Res>? get margins {
    if (_value.margins == null) {
      return null;
    }

    return $BlazeMarginsCopyWith<$Res>(_value.margins!, (value) {
      return _then(_value.copyWith(margins: value) as $Val);
    });
  }

  /// Create a copy of BlazeWidgetItemStyle
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

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetItemDurationElementStyleCopyWith<$Res>? get durationElement {
    if (_value.durationElement == null) {
      return null;
    }

    return $BlazeWidgetItemDurationElementStyleCopyWith<$Res>(
        _value.durationElement!, (value) {
      return _then(_value.copyWith(durationElement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeWidgetItemStyleImplCopyWith<$Res>
    implements $BlazeWidgetItemStyleCopyWith<$Res> {
  factory _$$BlazeWidgetItemStyleImplCopyWith(_$BlazeWidgetItemStyleImpl value,
          $Res Function(_$BlazeWidgetItemStyleImpl) then) =
      __$$BlazeWidgetItemStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeWidgetItemTitleStyle? title,
      BlazeWidgetItemImageStyle? image,
      BlazeWidgetItemStatusIndicatorStyle? statusIndicator,
      String? backgroundColor,
      double? cornerRadius,
      double? cornerRadiusRatio,
      BlazeMargins? margins,
      BlazeWidgetItemBadgeStyle? badge,
      BlazeWidgetItemDurationElementStyle? durationElement});

  @override
  $BlazeWidgetItemTitleStyleCopyWith<$Res>? get title;
  @override
  $BlazeWidgetItemImageStyleCopyWith<$Res>? get image;
  @override
  $BlazeWidgetItemStatusIndicatorStyleCopyWith<$Res>? get statusIndicator;
  @override
  $BlazeMarginsCopyWith<$Res>? get margins;
  @override
  $BlazeWidgetItemBadgeStyleCopyWith<$Res>? get badge;
  @override
  $BlazeWidgetItemDurationElementStyleCopyWith<$Res>? get durationElement;
}

/// @nodoc
class __$$BlazeWidgetItemStyleImplCopyWithImpl<$Res>
    extends _$BlazeWidgetItemStyleCopyWithImpl<$Res, _$BlazeWidgetItemStyleImpl>
    implements _$$BlazeWidgetItemStyleImplCopyWith<$Res> {
  __$$BlazeWidgetItemStyleImplCopyWithImpl(_$BlazeWidgetItemStyleImpl _value,
      $Res Function(_$BlazeWidgetItemStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? statusIndicator = freezed,
    Object? backgroundColor = freezed,
    Object? cornerRadius = freezed,
    Object? cornerRadiusRatio = freezed,
    Object? margins = freezed,
    Object? badge = freezed,
    Object? durationElement = freezed,
  }) {
    return _then(_$BlazeWidgetItemStyleImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemTitleStyle?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemImageStyle?,
      statusIndicator: freezed == statusIndicator
          ? _value.statusIndicator
          : statusIndicator // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemStatusIndicatorStyle?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      cornerRadiusRatio: freezed == cornerRadiusRatio
          ? _value.cornerRadiusRatio
          : cornerRadiusRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      margins: freezed == margins
          ? _value.margins
          : margins // ignore: cast_nullable_to_non_nullable
              as BlazeMargins?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemBadgeStyle?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemDurationElementStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeWidgetItemStyleImpl implements _BlazeWidgetItemStyle {
  const _$BlazeWidgetItemStyleImpl(
      {this.title,
      this.image,
      this.statusIndicator,
      this.backgroundColor,
      this.cornerRadius,
      this.cornerRadiusRatio,
      this.margins,
      this.badge,
      this.durationElement});

  factory _$BlazeWidgetItemStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeWidgetItemStyleImplFromJson(json);

  @override
  final BlazeWidgetItemTitleStyle? title;
  @override
  final BlazeWidgetItemImageStyle? image;
  @override
  final BlazeWidgetItemStatusIndicatorStyle? statusIndicator;
  @override
  final String? backgroundColor;
  @override
  final double? cornerRadius;
  @override
  final double? cornerRadiusRatio;
  @override
  final BlazeMargins? margins;
  @override
  final BlazeWidgetItemBadgeStyle? badge;

  /// The duration element configuration of the widget item.
  /// Note: This property is only applicable for `Videos` and `Moments` player type.
  @override
  final BlazeWidgetItemDurationElementStyle? durationElement;

  @override
  String toString() {
    return 'BlazeWidgetItemStyle(title: $title, image: $image, statusIndicator: $statusIndicator, backgroundColor: $backgroundColor, cornerRadius: $cornerRadius, cornerRadiusRatio: $cornerRadiusRatio, margins: $margins, badge: $badge, durationElement: $durationElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeWidgetItemStyleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.statusIndicator, statusIndicator) ||
                other.statusIndicator == statusIndicator) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.cornerRadius, cornerRadius) ||
                other.cornerRadius == cornerRadius) &&
            (identical(other.cornerRadiusRatio, cornerRadiusRatio) ||
                other.cornerRadiusRatio == cornerRadiusRatio) &&
            (identical(other.margins, margins) || other.margins == margins) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.durationElement, durationElement) ||
                other.durationElement == durationElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      image,
      statusIndicator,
      backgroundColor,
      cornerRadius,
      cornerRadiusRatio,
      margins,
      badge,
      durationElement);

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeWidgetItemStyleImplCopyWith<_$BlazeWidgetItemStyleImpl>
      get copyWith =>
          __$$BlazeWidgetItemStyleImplCopyWithImpl<_$BlazeWidgetItemStyleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetItemStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetItemStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeWidgetItemStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeWidgetItemStyle implements BlazeWidgetItemStyle {
  const factory _BlazeWidgetItemStyle(
          {final BlazeWidgetItemTitleStyle? title,
          final BlazeWidgetItemImageStyle? image,
          final BlazeWidgetItemStatusIndicatorStyle? statusIndicator,
          final String? backgroundColor,
          final double? cornerRadius,
          final double? cornerRadiusRatio,
          final BlazeMargins? margins,
          final BlazeWidgetItemBadgeStyle? badge,
          final BlazeWidgetItemDurationElementStyle? durationElement}) =
      _$BlazeWidgetItemStyleImpl;

  factory _BlazeWidgetItemStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeWidgetItemStyleImpl.fromJson;

  @override
  BlazeWidgetItemTitleStyle? get title;
  @override
  BlazeWidgetItemImageStyle? get image;
  @override
  BlazeWidgetItemStatusIndicatorStyle? get statusIndicator;
  @override
  String? get backgroundColor;
  @override
  double? get cornerRadius;
  @override
  double? get cornerRadiusRatio;
  @override
  BlazeMargins? get margins;
  @override
  BlazeWidgetItemBadgeStyle? get badge;

  /// The duration element configuration of the widget item.
  /// Note: This property is only applicable for `Videos` and `Moments` player type.
  @override
  BlazeWidgetItemDurationElementStyle? get durationElement;

  /// Create a copy of BlazeWidgetItemStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeWidgetItemStyleImplCopyWith<_$BlazeWidgetItemStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeWidgetLayout _$BlazeWidgetLayoutFromJson(Map<String, dynamic> json) {
  return _BlazeWidgetLayout.fromJson(json);
}

/// @nodoc
mixin _$BlazeWidgetLayout {
  double? get horizontalItemsSpacing => throw _privateConstructorUsedError;
  double? get verticalItemsSpacing => throw _privateConstructorUsedError;
  double? get itemRatio => throw _privateConstructorUsedError;
  BlazeMargins? get margins => throw _privateConstructorUsedError;
  int? get columns => throw _privateConstructorUsedError;
  int? get maxDisplayItemsCount => throw _privateConstructorUsedError;
  BlazeWidgetItemStyle? get widgetItemStyle =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetLayout value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetLayout value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetLayout value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeWidgetLayout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeWidgetLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeWidgetLayoutCopyWith<BlazeWidgetLayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeWidgetLayoutCopyWith<$Res> {
  factory $BlazeWidgetLayoutCopyWith(
          BlazeWidgetLayout value, $Res Function(BlazeWidgetLayout) then) =
      _$BlazeWidgetLayoutCopyWithImpl<$Res, BlazeWidgetLayout>;
  @useResult
  $Res call(
      {double? horizontalItemsSpacing,
      double? verticalItemsSpacing,
      double? itemRatio,
      BlazeMargins? margins,
      int? columns,
      int? maxDisplayItemsCount,
      BlazeWidgetItemStyle? widgetItemStyle});

  $BlazeMarginsCopyWith<$Res>? get margins;
  $BlazeWidgetItemStyleCopyWith<$Res>? get widgetItemStyle;
}

/// @nodoc
class _$BlazeWidgetLayoutCopyWithImpl<$Res, $Val extends BlazeWidgetLayout>
    implements $BlazeWidgetLayoutCopyWith<$Res> {
  _$BlazeWidgetLayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeWidgetLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontalItemsSpacing = freezed,
    Object? verticalItemsSpacing = freezed,
    Object? itemRatio = freezed,
    Object? margins = freezed,
    Object? columns = freezed,
    Object? maxDisplayItemsCount = freezed,
    Object? widgetItemStyle = freezed,
  }) {
    return _then(_value.copyWith(
      horizontalItemsSpacing: freezed == horizontalItemsSpacing
          ? _value.horizontalItemsSpacing
          : horizontalItemsSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      verticalItemsSpacing: freezed == verticalItemsSpacing
          ? _value.verticalItemsSpacing
          : verticalItemsSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      itemRatio: freezed == itemRatio
          ? _value.itemRatio
          : itemRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      margins: freezed == margins
          ? _value.margins
          : margins // ignore: cast_nullable_to_non_nullable
              as BlazeMargins?,
      columns: freezed == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int?,
      maxDisplayItemsCount: freezed == maxDisplayItemsCount
          ? _value.maxDisplayItemsCount
          : maxDisplayItemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      widgetItemStyle: freezed == widgetItemStyle
          ? _value.widgetItemStyle
          : widgetItemStyle // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemStyle?,
    ) as $Val);
  }

  /// Create a copy of BlazeWidgetLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeMarginsCopyWith<$Res>? get margins {
    if (_value.margins == null) {
      return null;
    }

    return $BlazeMarginsCopyWith<$Res>(_value.margins!, (value) {
      return _then(_value.copyWith(margins: value) as $Val);
    });
  }

  /// Create a copy of BlazeWidgetLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetItemStyleCopyWith<$Res>? get widgetItemStyle {
    if (_value.widgetItemStyle == null) {
      return null;
    }

    return $BlazeWidgetItemStyleCopyWith<$Res>(_value.widgetItemStyle!,
        (value) {
      return _then(_value.copyWith(widgetItemStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeWidgetLayoutImplCopyWith<$Res>
    implements $BlazeWidgetLayoutCopyWith<$Res> {
  factory _$$BlazeWidgetLayoutImplCopyWith(_$BlazeWidgetLayoutImpl value,
          $Res Function(_$BlazeWidgetLayoutImpl) then) =
      __$$BlazeWidgetLayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? horizontalItemsSpacing,
      double? verticalItemsSpacing,
      double? itemRatio,
      BlazeMargins? margins,
      int? columns,
      int? maxDisplayItemsCount,
      BlazeWidgetItemStyle? widgetItemStyle});

  @override
  $BlazeMarginsCopyWith<$Res>? get margins;
  @override
  $BlazeWidgetItemStyleCopyWith<$Res>? get widgetItemStyle;
}

/// @nodoc
class __$$BlazeWidgetLayoutImplCopyWithImpl<$Res>
    extends _$BlazeWidgetLayoutCopyWithImpl<$Res, _$BlazeWidgetLayoutImpl>
    implements _$$BlazeWidgetLayoutImplCopyWith<$Res> {
  __$$BlazeWidgetLayoutImplCopyWithImpl(_$BlazeWidgetLayoutImpl _value,
      $Res Function(_$BlazeWidgetLayoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeWidgetLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontalItemsSpacing = freezed,
    Object? verticalItemsSpacing = freezed,
    Object? itemRatio = freezed,
    Object? margins = freezed,
    Object? columns = freezed,
    Object? maxDisplayItemsCount = freezed,
    Object? widgetItemStyle = freezed,
  }) {
    return _then(_$BlazeWidgetLayoutImpl(
      horizontalItemsSpacing: freezed == horizontalItemsSpacing
          ? _value.horizontalItemsSpacing
          : horizontalItemsSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      verticalItemsSpacing: freezed == verticalItemsSpacing
          ? _value.verticalItemsSpacing
          : verticalItemsSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      itemRatio: freezed == itemRatio
          ? _value.itemRatio
          : itemRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      margins: freezed == margins
          ? _value.margins
          : margins // ignore: cast_nullable_to_non_nullable
              as BlazeMargins?,
      columns: freezed == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int?,
      maxDisplayItemsCount: freezed == maxDisplayItemsCount
          ? _value.maxDisplayItemsCount
          : maxDisplayItemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      widgetItemStyle: freezed == widgetItemStyle
          ? _value.widgetItemStyle
          : widgetItemStyle // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetItemStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeWidgetLayoutImpl implements _BlazeWidgetLayout {
  const _$BlazeWidgetLayoutImpl(
      {this.horizontalItemsSpacing,
      this.verticalItemsSpacing,
      this.itemRatio,
      this.margins,
      this.columns,
      this.maxDisplayItemsCount,
      this.widgetItemStyle});

  factory _$BlazeWidgetLayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeWidgetLayoutImplFromJson(json);

  @override
  final double? horizontalItemsSpacing;
  @override
  final double? verticalItemsSpacing;
  @override
  final double? itemRatio;
  @override
  final BlazeMargins? margins;
  @override
  final int? columns;
  @override
  final int? maxDisplayItemsCount;
  @override
  final BlazeWidgetItemStyle? widgetItemStyle;

  @override
  String toString() {
    return 'BlazeWidgetLayout(horizontalItemsSpacing: $horizontalItemsSpacing, verticalItemsSpacing: $verticalItemsSpacing, itemRatio: $itemRatio, margins: $margins, columns: $columns, maxDisplayItemsCount: $maxDisplayItemsCount, widgetItemStyle: $widgetItemStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeWidgetLayoutImpl &&
            (identical(other.horizontalItemsSpacing, horizontalItemsSpacing) ||
                other.horizontalItemsSpacing == horizontalItemsSpacing) &&
            (identical(other.verticalItemsSpacing, verticalItemsSpacing) ||
                other.verticalItemsSpacing == verticalItemsSpacing) &&
            (identical(other.itemRatio, itemRatio) ||
                other.itemRatio == itemRatio) &&
            (identical(other.margins, margins) || other.margins == margins) &&
            (identical(other.columns, columns) || other.columns == columns) &&
            (identical(other.maxDisplayItemsCount, maxDisplayItemsCount) ||
                other.maxDisplayItemsCount == maxDisplayItemsCount) &&
            (identical(other.widgetItemStyle, widgetItemStyle) ||
                other.widgetItemStyle == widgetItemStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      horizontalItemsSpacing,
      verticalItemsSpacing,
      itemRatio,
      margins,
      columns,
      maxDisplayItemsCount,
      widgetItemStyle);

  /// Create a copy of BlazeWidgetLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeWidgetLayoutImplCopyWith<_$BlazeWidgetLayoutImpl> get copyWith =>
      __$$BlazeWidgetLayoutImplCopyWithImpl<_$BlazeWidgetLayoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeWidgetLayout value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeWidgetLayout value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeWidgetLayout value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeWidgetLayoutImplToJson(
      this,
    );
  }
}

abstract class _BlazeWidgetLayout implements BlazeWidgetLayout {
  const factory _BlazeWidgetLayout(
      {final double? horizontalItemsSpacing,
      final double? verticalItemsSpacing,
      final double? itemRatio,
      final BlazeMargins? margins,
      final int? columns,
      final int? maxDisplayItemsCount,
      final BlazeWidgetItemStyle? widgetItemStyle}) = _$BlazeWidgetLayoutImpl;

  factory _BlazeWidgetLayout.fromJson(Map<String, dynamic> json) =
      _$BlazeWidgetLayoutImpl.fromJson;

  @override
  double? get horizontalItemsSpacing;
  @override
  double? get verticalItemsSpacing;
  @override
  double? get itemRatio;
  @override
  BlazeMargins? get margins;
  @override
  int? get columns;
  @override
  int? get maxDisplayItemsCount;
  @override
  BlazeWidgetItemStyle? get widgetItemStyle;

  /// Create a copy of BlazeWidgetLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeWidgetLayoutImplCopyWith<_$BlazeWidgetLayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
