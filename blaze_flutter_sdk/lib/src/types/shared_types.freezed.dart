// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeColor _$BlazeColorFromJson(Map<String, dynamic> json) {
  return _BlazeColor.fromJson(json);
}

/// @nodoc
mixin _$BlazeColor {
  /// iOS color name
  String? get colorName => throw _privateConstructorUsedError;

  /// Android color file name
  String? get colorFileName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeColor value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeColor value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeColor value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeColor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeColorCopyWith<BlazeColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeColorCopyWith<$Res> {
  factory $BlazeColorCopyWith(
          BlazeColor value, $Res Function(BlazeColor) then) =
      _$BlazeColorCopyWithImpl<$Res, BlazeColor>;
  @useResult
  $Res call({String? colorName, String? colorFileName});
}

/// @nodoc
class _$BlazeColorCopyWithImpl<$Res, $Val extends BlazeColor>
    implements $BlazeColorCopyWith<$Res> {
  _$BlazeColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = freezed,
    Object? colorFileName = freezed,
  }) {
    return _then(_value.copyWith(
      colorName: freezed == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorFileName: freezed == colorFileName
          ? _value.colorFileName
          : colorFileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeColorImplCopyWith<$Res>
    implements $BlazeColorCopyWith<$Res> {
  factory _$$BlazeColorImplCopyWith(
          _$BlazeColorImpl value, $Res Function(_$BlazeColorImpl) then) =
      __$$BlazeColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? colorName, String? colorFileName});
}

/// @nodoc
class __$$BlazeColorImplCopyWithImpl<$Res>
    extends _$BlazeColorCopyWithImpl<$Res, _$BlazeColorImpl>
    implements _$$BlazeColorImplCopyWith<$Res> {
  __$$BlazeColorImplCopyWithImpl(
      _$BlazeColorImpl _value, $Res Function(_$BlazeColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = freezed,
    Object? colorFileName = freezed,
  }) {
    return _then(_$BlazeColorImpl(
      colorName: freezed == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorFileName: freezed == colorFileName
          ? _value.colorFileName
          : colorFileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeColorImpl implements _BlazeColor {
  const _$BlazeColorImpl({this.colorName, this.colorFileName});

  factory _$BlazeColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeColorImplFromJson(json);

  /// iOS color name
  @override
  final String? colorName;

  /// Android color file name
  @override
  final String? colorFileName;

  @override
  String toString() {
    return 'BlazeColor(colorName: $colorName, colorFileName: $colorFileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeColorImpl &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.colorFileName, colorFileName) ||
                other.colorFileName == colorFileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, colorName, colorFileName);

  /// Create a copy of BlazeColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeColorImplCopyWith<_$BlazeColorImpl> get copyWith =>
      __$$BlazeColorImplCopyWithImpl<_$BlazeColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeColor value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeColor value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeColor value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeColorImplToJson(
      this,
    );
  }
}

abstract class _BlazeColor implements BlazeColor {
  const factory _BlazeColor(
      {final String? colorName,
      final String? colorFileName}) = _$BlazeColorImpl;

  factory _BlazeColor.fromJson(Map<String, dynamic> json) =
      _$BlazeColorImpl.fromJson;

  /// iOS color name
  @override
  String? get colorName;

  /// Android color file name
  @override
  String? get colorFileName;

  /// Create a copy of BlazeColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeColorImplCopyWith<_$BlazeColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeFirstTimeSlideCTAStyle _$BlazeFirstTimeSlideCTAStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeFirstTimeSlideCTAStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeFirstTimeSlideCTAStyle {
  String? get title => throw _privateConstructorUsedError;
  BlazeColor? get backgroundColor => throw _privateConstructorUsedError;
  BlazeColor? get textColor => throw _privateConstructorUsedError;
  BlazeFont? get font => throw _privateConstructorUsedError;
  double? get textSize => throw _privateConstructorUsedError;
  double? get cornerRadius => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideCTAStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFirstTimeSlideCTAStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideCTAStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeFirstTimeSlideCTAStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeFirstTimeSlideCTAStyleCopyWith<BlazeFirstTimeSlideCTAStyle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeFirstTimeSlideCTAStyleCopyWith<$Res> {
  factory $BlazeFirstTimeSlideCTAStyleCopyWith(
          BlazeFirstTimeSlideCTAStyle value,
          $Res Function(BlazeFirstTimeSlideCTAStyle) then) =
      _$BlazeFirstTimeSlideCTAStyleCopyWithImpl<$Res,
          BlazeFirstTimeSlideCTAStyle>;
  @useResult
  $Res call(
      {String? title,
      BlazeColor? backgroundColor,
      BlazeColor? textColor,
      BlazeFont? font,
      double? textSize,
      double? cornerRadius});

  $BlazeColorCopyWith<$Res>? get backgroundColor;
  $BlazeColorCopyWith<$Res>? get textColor;
  $BlazeFontCopyWith<$Res>? get font;
}

/// @nodoc
class _$BlazeFirstTimeSlideCTAStyleCopyWithImpl<$Res,
        $Val extends BlazeFirstTimeSlideCTAStyle>
    implements $BlazeFirstTimeSlideCTAStyleCopyWith<$Res> {
  _$BlazeFirstTimeSlideCTAStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? font = freezed,
    Object? textSize = freezed,
    Object? cornerRadius = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as BlazeColor?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as BlazeColor?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeColorCopyWith<$Res>? get backgroundColor {
    if (_value.backgroundColor == null) {
      return null;
    }

    return $BlazeColorCopyWith<$Res>(_value.backgroundColor!, (value) {
      return _then(_value.copyWith(backgroundColor: value) as $Val);
    });
  }

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeColorCopyWith<$Res>? get textColor {
    if (_value.textColor == null) {
      return null;
    }

    return $BlazeColorCopyWith<$Res>(_value.textColor!, (value) {
      return _then(_value.copyWith(textColor: value) as $Val);
    });
  }

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeFontCopyWith<$Res>? get font {
    if (_value.font == null) {
      return null;
    }

    return $BlazeFontCopyWith<$Res>(_value.font!, (value) {
      return _then(_value.copyWith(font: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeFirstTimeSlideCTAStyleImplCopyWith<$Res>
    implements $BlazeFirstTimeSlideCTAStyleCopyWith<$Res> {
  factory _$$BlazeFirstTimeSlideCTAStyleImplCopyWith(
          _$BlazeFirstTimeSlideCTAStyleImpl value,
          $Res Function(_$BlazeFirstTimeSlideCTAStyleImpl) then) =
      __$$BlazeFirstTimeSlideCTAStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      BlazeColor? backgroundColor,
      BlazeColor? textColor,
      BlazeFont? font,
      double? textSize,
      double? cornerRadius});

  @override
  $BlazeColorCopyWith<$Res>? get backgroundColor;
  @override
  $BlazeColorCopyWith<$Res>? get textColor;
  @override
  $BlazeFontCopyWith<$Res>? get font;
}

/// @nodoc
class __$$BlazeFirstTimeSlideCTAStyleImplCopyWithImpl<$Res>
    extends _$BlazeFirstTimeSlideCTAStyleCopyWithImpl<$Res,
        _$BlazeFirstTimeSlideCTAStyleImpl>
    implements _$$BlazeFirstTimeSlideCTAStyleImplCopyWith<$Res> {
  __$$BlazeFirstTimeSlideCTAStyleImplCopyWithImpl(
      _$BlazeFirstTimeSlideCTAStyleImpl _value,
      $Res Function(_$BlazeFirstTimeSlideCTAStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? font = freezed,
    Object? textSize = freezed,
    Object? cornerRadius = freezed,
  }) {
    return _then(_$BlazeFirstTimeSlideCTAStyleImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as BlazeColor?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as BlazeColor?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeFirstTimeSlideCTAStyleImpl
    implements _BlazeFirstTimeSlideCTAStyle {
  const _$BlazeFirstTimeSlideCTAStyleImpl(
      {this.title,
      this.backgroundColor,
      this.textColor,
      this.font,
      this.textSize,
      this.cornerRadius});

  factory _$BlazeFirstTimeSlideCTAStyleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeFirstTimeSlideCTAStyleImplFromJson(json);

  @override
  final String? title;
  @override
  final BlazeColor? backgroundColor;
  @override
  final BlazeColor? textColor;
  @override
  final BlazeFont? font;
  @override
  final double? textSize;
  @override
  final double? cornerRadius;

  @override
  String toString() {
    return 'BlazeFirstTimeSlideCTAStyle(title: $title, backgroundColor: $backgroundColor, textColor: $textColor, font: $font, textSize: $textSize, cornerRadius: $cornerRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeFirstTimeSlideCTAStyleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize) &&
            (identical(other.cornerRadius, cornerRadius) ||
                other.cornerRadius == cornerRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, backgroundColor,
      textColor, font, textSize, cornerRadius);

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeFirstTimeSlideCTAStyleImplCopyWith<_$BlazeFirstTimeSlideCTAStyleImpl>
      get copyWith => __$$BlazeFirstTimeSlideCTAStyleImplCopyWithImpl<
          _$BlazeFirstTimeSlideCTAStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideCTAStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFirstTimeSlideCTAStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideCTAStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeFirstTimeSlideCTAStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeFirstTimeSlideCTAStyle
    implements BlazeFirstTimeSlideCTAStyle {
  const factory _BlazeFirstTimeSlideCTAStyle(
      {final String? title,
      final BlazeColor? backgroundColor,
      final BlazeColor? textColor,
      final BlazeFont? font,
      final double? textSize,
      final double? cornerRadius}) = _$BlazeFirstTimeSlideCTAStyleImpl;

  factory _BlazeFirstTimeSlideCTAStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeFirstTimeSlideCTAStyleImpl.fromJson;

  @override
  String? get title;
  @override
  BlazeColor? get backgroundColor;
  @override
  BlazeColor? get textColor;
  @override
  BlazeFont? get font;
  @override
  double? get textSize;
  @override
  double? get cornerRadius;

  /// Create a copy of BlazeFirstTimeSlideCTAStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeFirstTimeSlideCTAStyleImplCopyWith<_$BlazeFirstTimeSlideCTAStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazePlayerButtonStyle _$BlazePlayerButtonStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazePlayerButtonStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazePlayerButtonStyle {
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  bool? get isVisible => throw _privateConstructorUsedError;
  BlazeButtonScaleType? get scaleType => throw _privateConstructorUsedError;
  bool? get isVisibleForAds => throw _privateConstructorUsedError;
  BlazePlayerItemButtonImageStates? get customImage =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerButtonStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerButtonStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerButtonStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazePlayerButtonStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazePlayerButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazePlayerButtonStyleCopyWith<BlazePlayerButtonStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazePlayerButtonStyleCopyWith<$Res> {
  factory $BlazePlayerButtonStyleCopyWith(BlazePlayerButtonStyle value,
          $Res Function(BlazePlayerButtonStyle) then) =
      _$BlazePlayerButtonStyleCopyWithImpl<$Res, BlazePlayerButtonStyle>;
  @useResult
  $Res call(
      {double? width,
      double? height,
      String? color,
      bool? isVisible,
      BlazeButtonScaleType? scaleType,
      bool? isVisibleForAds,
      BlazePlayerItemButtonImageStates? customImage});

  $BlazePlayerItemButtonImageStatesCopyWith<$Res>? get customImage;
}

/// @nodoc
class _$BlazePlayerButtonStyleCopyWithImpl<$Res,
        $Val extends BlazePlayerButtonStyle>
    implements $BlazePlayerButtonStyleCopyWith<$Res> {
  _$BlazePlayerButtonStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazePlayerButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? isVisible = freezed,
    Object? scaleType = freezed,
    Object? isVisibleForAds = freezed,
    Object? customImage = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      scaleType: freezed == scaleType
          ? _value.scaleType
          : scaleType // ignore: cast_nullable_to_non_nullable
              as BlazeButtonScaleType?,
      isVisibleForAds: freezed == isVisibleForAds
          ? _value.isVisibleForAds
          : isVisibleForAds // ignore: cast_nullable_to_non_nullable
              as bool?,
      customImage: freezed == customImage
          ? _value.customImage
          : customImage // ignore: cast_nullable_to_non_nullable
              as BlazePlayerItemButtonImageStates?,
    ) as $Val);
  }

  /// Create a copy of BlazePlayerButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerItemButtonImageStatesCopyWith<$Res>? get customImage {
    if (_value.customImage == null) {
      return null;
    }

    return $BlazePlayerItemButtonImageStatesCopyWith<$Res>(_value.customImage!,
        (value) {
      return _then(_value.copyWith(customImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazePlayerButtonStyleImplCopyWith<$Res>
    implements $BlazePlayerButtonStyleCopyWith<$Res> {
  factory _$$BlazePlayerButtonStyleImplCopyWith(
          _$BlazePlayerButtonStyleImpl value,
          $Res Function(_$BlazePlayerButtonStyleImpl) then) =
      __$$BlazePlayerButtonStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? width,
      double? height,
      String? color,
      bool? isVisible,
      BlazeButtonScaleType? scaleType,
      bool? isVisibleForAds,
      BlazePlayerItemButtonImageStates? customImage});

  @override
  $BlazePlayerItemButtonImageStatesCopyWith<$Res>? get customImage;
}

/// @nodoc
class __$$BlazePlayerButtonStyleImplCopyWithImpl<$Res>
    extends _$BlazePlayerButtonStyleCopyWithImpl<$Res,
        _$BlazePlayerButtonStyleImpl>
    implements _$$BlazePlayerButtonStyleImplCopyWith<$Res> {
  __$$BlazePlayerButtonStyleImplCopyWithImpl(
      _$BlazePlayerButtonStyleImpl _value,
      $Res Function(_$BlazePlayerButtonStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePlayerButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? isVisible = freezed,
    Object? scaleType = freezed,
    Object? isVisibleForAds = freezed,
    Object? customImage = freezed,
  }) {
    return _then(_$BlazePlayerButtonStyleImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      scaleType: freezed == scaleType
          ? _value.scaleType
          : scaleType // ignore: cast_nullable_to_non_nullable
              as BlazeButtonScaleType?,
      isVisibleForAds: freezed == isVisibleForAds
          ? _value.isVisibleForAds
          : isVisibleForAds // ignore: cast_nullable_to_non_nullable
              as bool?,
      customImage: freezed == customImage
          ? _value.customImage
          : customImage // ignore: cast_nullable_to_non_nullable
              as BlazePlayerItemButtonImageStates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePlayerButtonStyleImpl implements _BlazePlayerButtonStyle {
  const _$BlazePlayerButtonStyleImpl(
      {this.width,
      this.height,
      this.color,
      this.isVisible,
      this.scaleType,
      this.isVisibleForAds,
      this.customImage});

  factory _$BlazePlayerButtonStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazePlayerButtonStyleImplFromJson(json);

  @override
  final double? width;
  @override
  final double? height;
  @override
  final String? color;
  @override
  final bool? isVisible;
  @override
  final BlazeButtonScaleType? scaleType;
  @override
  final bool? isVisibleForAds;
  @override
  final BlazePlayerItemButtonImageStates? customImage;

  @override
  String toString() {
    return 'BlazePlayerButtonStyle(width: $width, height: $height, color: $color, isVisible: $isVisible, scaleType: $scaleType, isVisibleForAds: $isVisibleForAds, customImage: $customImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePlayerButtonStyleImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.scaleType, scaleType) ||
                other.scaleType == scaleType) &&
            (identical(other.isVisibleForAds, isVisibleForAds) ||
                other.isVisibleForAds == isVisibleForAds) &&
            (identical(other.customImage, customImage) ||
                other.customImage == customImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, color, isVisible,
      scaleType, isVisibleForAds, customImage);

  /// Create a copy of BlazePlayerButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePlayerButtonStyleImplCopyWith<_$BlazePlayerButtonStyleImpl>
      get copyWith => __$$BlazePlayerButtonStyleImplCopyWithImpl<
          _$BlazePlayerButtonStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerButtonStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerButtonStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerButtonStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePlayerButtonStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazePlayerButtonStyle implements BlazePlayerButtonStyle {
  const factory _BlazePlayerButtonStyle(
          {final double? width,
          final double? height,
          final String? color,
          final bool? isVisible,
          final BlazeButtonScaleType? scaleType,
          final bool? isVisibleForAds,
          final BlazePlayerItemButtonImageStates? customImage}) =
      _$BlazePlayerButtonStyleImpl;

  factory _BlazePlayerButtonStyle.fromJson(Map<String, dynamic> json) =
      _$BlazePlayerButtonStyleImpl.fromJson;

  @override
  double? get width;
  @override
  double? get height;
  @override
  String? get color;
  @override
  bool? get isVisible;
  @override
  BlazeButtonScaleType? get scaleType;
  @override
  bool? get isVisibleForAds;
  @override
  BlazePlayerItemButtonImageStates? get customImage;

  /// Create a copy of BlazePlayerButtonStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePlayerButtonStyleImplCopyWith<_$BlazePlayerButtonStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeFirstTimeSlideInstructionStyle
    _$BlazeFirstTimeSlideInstructionStyleFromJson(Map<String, dynamic> json) {
  return _BlazeFirstTimeSlideInstructionStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeFirstTimeSlideInstructionStyle {
  BlazeFirstTimeSlideTextStyle? get headerText =>
      throw _privateConstructorUsedError;
  BlazeFirstTimeSlideTextStyle? get descriptionText =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideInstructionStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFirstTimeSlideInstructionStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideInstructionStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeFirstTimeSlideInstructionStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeFirstTimeSlideInstructionStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeFirstTimeSlideInstructionStyleCopyWith<
          BlazeFirstTimeSlideInstructionStyle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeFirstTimeSlideInstructionStyleCopyWith<$Res> {
  factory $BlazeFirstTimeSlideInstructionStyleCopyWith(
          BlazeFirstTimeSlideInstructionStyle value,
          $Res Function(BlazeFirstTimeSlideInstructionStyle) then) =
      _$BlazeFirstTimeSlideInstructionStyleCopyWithImpl<$Res,
          BlazeFirstTimeSlideInstructionStyle>;
  @useResult
  $Res call(
      {BlazeFirstTimeSlideTextStyle? headerText,
      BlazeFirstTimeSlideTextStyle? descriptionText});

  $BlazeFirstTimeSlideTextStyleCopyWith<$Res>? get headerText;
  $BlazeFirstTimeSlideTextStyleCopyWith<$Res>? get descriptionText;
}

/// @nodoc
class _$BlazeFirstTimeSlideInstructionStyleCopyWithImpl<$Res,
        $Val extends BlazeFirstTimeSlideInstructionStyle>
    implements $BlazeFirstTimeSlideInstructionStyleCopyWith<$Res> {
  _$BlazeFirstTimeSlideInstructionStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeFirstTimeSlideInstructionStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerText = freezed,
    Object? descriptionText = freezed,
  }) {
    return _then(_value.copyWith(
      headerText: freezed == headerText
          ? _value.headerText
          : headerText // ignore: cast_nullable_to_non_nullable
              as BlazeFirstTimeSlideTextStyle?,
      descriptionText: freezed == descriptionText
          ? _value.descriptionText
          : descriptionText // ignore: cast_nullable_to_non_nullable
              as BlazeFirstTimeSlideTextStyle?,
    ) as $Val);
  }

  /// Create a copy of BlazeFirstTimeSlideInstructionStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeFirstTimeSlideTextStyleCopyWith<$Res>? get headerText {
    if (_value.headerText == null) {
      return null;
    }

    return $BlazeFirstTimeSlideTextStyleCopyWith<$Res>(_value.headerText!,
        (value) {
      return _then(_value.copyWith(headerText: value) as $Val);
    });
  }

  /// Create a copy of BlazeFirstTimeSlideInstructionStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeFirstTimeSlideTextStyleCopyWith<$Res>? get descriptionText {
    if (_value.descriptionText == null) {
      return null;
    }

    return $BlazeFirstTimeSlideTextStyleCopyWith<$Res>(_value.descriptionText!,
        (value) {
      return _then(_value.copyWith(descriptionText: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeFirstTimeSlideInstructionStyleImplCopyWith<$Res>
    implements $BlazeFirstTimeSlideInstructionStyleCopyWith<$Res> {
  factory _$$BlazeFirstTimeSlideInstructionStyleImplCopyWith(
          _$BlazeFirstTimeSlideInstructionStyleImpl value,
          $Res Function(_$BlazeFirstTimeSlideInstructionStyleImpl) then) =
      __$$BlazeFirstTimeSlideInstructionStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeFirstTimeSlideTextStyle? headerText,
      BlazeFirstTimeSlideTextStyle? descriptionText});

  @override
  $BlazeFirstTimeSlideTextStyleCopyWith<$Res>? get headerText;
  @override
  $BlazeFirstTimeSlideTextStyleCopyWith<$Res>? get descriptionText;
}

/// @nodoc
class __$$BlazeFirstTimeSlideInstructionStyleImplCopyWithImpl<$Res>
    extends _$BlazeFirstTimeSlideInstructionStyleCopyWithImpl<$Res,
        _$BlazeFirstTimeSlideInstructionStyleImpl>
    implements _$$BlazeFirstTimeSlideInstructionStyleImplCopyWith<$Res> {
  __$$BlazeFirstTimeSlideInstructionStyleImplCopyWithImpl(
      _$BlazeFirstTimeSlideInstructionStyleImpl _value,
      $Res Function(_$BlazeFirstTimeSlideInstructionStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeFirstTimeSlideInstructionStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerText = freezed,
    Object? descriptionText = freezed,
  }) {
    return _then(_$BlazeFirstTimeSlideInstructionStyleImpl(
      headerText: freezed == headerText
          ? _value.headerText
          : headerText // ignore: cast_nullable_to_non_nullable
              as BlazeFirstTimeSlideTextStyle?,
      descriptionText: freezed == descriptionText
          ? _value.descriptionText
          : descriptionText // ignore: cast_nullable_to_non_nullable
              as BlazeFirstTimeSlideTextStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeFirstTimeSlideInstructionStyleImpl
    implements _BlazeFirstTimeSlideInstructionStyle {
  const _$BlazeFirstTimeSlideInstructionStyleImpl(
      {this.headerText, this.descriptionText});

  factory _$BlazeFirstTimeSlideInstructionStyleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeFirstTimeSlideInstructionStyleImplFromJson(json);

  @override
  final BlazeFirstTimeSlideTextStyle? headerText;
  @override
  final BlazeFirstTimeSlideTextStyle? descriptionText;

  @override
  String toString() {
    return 'BlazeFirstTimeSlideInstructionStyle(headerText: $headerText, descriptionText: $descriptionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeFirstTimeSlideInstructionStyleImpl &&
            (identical(other.headerText, headerText) ||
                other.headerText == headerText) &&
            (identical(other.descriptionText, descriptionText) ||
                other.descriptionText == descriptionText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, headerText, descriptionText);

  /// Create a copy of BlazeFirstTimeSlideInstructionStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeFirstTimeSlideInstructionStyleImplCopyWith<
          _$BlazeFirstTimeSlideInstructionStyleImpl>
      get copyWith => __$$BlazeFirstTimeSlideInstructionStyleImplCopyWithImpl<
          _$BlazeFirstTimeSlideInstructionStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideInstructionStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFirstTimeSlideInstructionStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideInstructionStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeFirstTimeSlideInstructionStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeFirstTimeSlideInstructionStyle
    implements BlazeFirstTimeSlideInstructionStyle {
  const factory _BlazeFirstTimeSlideInstructionStyle(
          {final BlazeFirstTimeSlideTextStyle? headerText,
          final BlazeFirstTimeSlideTextStyle? descriptionText}) =
      _$BlazeFirstTimeSlideInstructionStyleImpl;

  factory _BlazeFirstTimeSlideInstructionStyle.fromJson(
          Map<String, dynamic> json) =
      _$BlazeFirstTimeSlideInstructionStyleImpl.fromJson;

  @override
  BlazeFirstTimeSlideTextStyle? get headerText;
  @override
  BlazeFirstTimeSlideTextStyle? get descriptionText;

  /// Create a copy of BlazeFirstTimeSlideInstructionStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeFirstTimeSlideInstructionStyleImplCopyWith<
          _$BlazeFirstTimeSlideInstructionStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeFirstTimeSlideTextStyle _$BlazeFirstTimeSlideTextStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeFirstTimeSlideTextStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeFirstTimeSlideTextStyle {
  String? get text => throw _privateConstructorUsedError;
  BlazeFont? get font => throw _privateConstructorUsedError;
  BlazeColor? get textColor => throw _privateConstructorUsedError;
  double? get textSize => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideTextStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFirstTimeSlideTextStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideTextStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeFirstTimeSlideTextStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeFirstTimeSlideTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeFirstTimeSlideTextStyleCopyWith<BlazeFirstTimeSlideTextStyle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeFirstTimeSlideTextStyleCopyWith<$Res> {
  factory $BlazeFirstTimeSlideTextStyleCopyWith(
          BlazeFirstTimeSlideTextStyle value,
          $Res Function(BlazeFirstTimeSlideTextStyle) then) =
      _$BlazeFirstTimeSlideTextStyleCopyWithImpl<$Res,
          BlazeFirstTimeSlideTextStyle>;
  @useResult
  $Res call(
      {String? text, BlazeFont? font, BlazeColor? textColor, double? textSize});

  $BlazeFontCopyWith<$Res>? get font;
  $BlazeColorCopyWith<$Res>? get textColor;
}

/// @nodoc
class _$BlazeFirstTimeSlideTextStyleCopyWithImpl<$Res,
        $Val extends BlazeFirstTimeSlideTextStyle>
    implements $BlazeFirstTimeSlideTextStyleCopyWith<$Res> {
  _$BlazeFirstTimeSlideTextStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeFirstTimeSlideTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? font = freezed,
    Object? textColor = freezed,
    Object? textSize = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as BlazeColor?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of BlazeFirstTimeSlideTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeFontCopyWith<$Res>? get font {
    if (_value.font == null) {
      return null;
    }

    return $BlazeFontCopyWith<$Res>(_value.font!, (value) {
      return _then(_value.copyWith(font: value) as $Val);
    });
  }

  /// Create a copy of BlazeFirstTimeSlideTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeColorCopyWith<$Res>? get textColor {
    if (_value.textColor == null) {
      return null;
    }

    return $BlazeColorCopyWith<$Res>(_value.textColor!, (value) {
      return _then(_value.copyWith(textColor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeFirstTimeSlideTextStyleImplCopyWith<$Res>
    implements $BlazeFirstTimeSlideTextStyleCopyWith<$Res> {
  factory _$$BlazeFirstTimeSlideTextStyleImplCopyWith(
          _$BlazeFirstTimeSlideTextStyleImpl value,
          $Res Function(_$BlazeFirstTimeSlideTextStyleImpl) then) =
      __$$BlazeFirstTimeSlideTextStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text, BlazeFont? font, BlazeColor? textColor, double? textSize});

  @override
  $BlazeFontCopyWith<$Res>? get font;
  @override
  $BlazeColorCopyWith<$Res>? get textColor;
}

/// @nodoc
class __$$BlazeFirstTimeSlideTextStyleImplCopyWithImpl<$Res>
    extends _$BlazeFirstTimeSlideTextStyleCopyWithImpl<$Res,
        _$BlazeFirstTimeSlideTextStyleImpl>
    implements _$$BlazeFirstTimeSlideTextStyleImplCopyWith<$Res> {
  __$$BlazeFirstTimeSlideTextStyleImplCopyWithImpl(
      _$BlazeFirstTimeSlideTextStyleImpl _value,
      $Res Function(_$BlazeFirstTimeSlideTextStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeFirstTimeSlideTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? font = freezed,
    Object? textColor = freezed,
    Object? textSize = freezed,
  }) {
    return _then(_$BlazeFirstTimeSlideTextStyleImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as BlazeColor?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeFirstTimeSlideTextStyleImpl
    implements _BlazeFirstTimeSlideTextStyle {
  const _$BlazeFirstTimeSlideTextStyleImpl(
      {this.text, this.font, this.textColor, this.textSize});

  factory _$BlazeFirstTimeSlideTextStyleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeFirstTimeSlideTextStyleImplFromJson(json);

  @override
  final String? text;
  @override
  final BlazeFont? font;
  @override
  final BlazeColor? textColor;
  @override
  final double? textSize;

  @override
  String toString() {
    return 'BlazeFirstTimeSlideTextStyle(text: $text, font: $font, textColor: $textColor, textSize: $textSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeFirstTimeSlideTextStyleImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, font, textColor, textSize);

  /// Create a copy of BlazeFirstTimeSlideTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeFirstTimeSlideTextStyleImplCopyWith<
          _$BlazeFirstTimeSlideTextStyleImpl>
      get copyWith => __$$BlazeFirstTimeSlideTextStyleImplCopyWithImpl<
          _$BlazeFirstTimeSlideTextStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideTextStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFirstTimeSlideTextStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFirstTimeSlideTextStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeFirstTimeSlideTextStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeFirstTimeSlideTextStyle
    implements BlazeFirstTimeSlideTextStyle {
  const factory _BlazeFirstTimeSlideTextStyle(
      {final String? text,
      final BlazeFont? font,
      final BlazeColor? textColor,
      final double? textSize}) = _$BlazeFirstTimeSlideTextStyleImpl;

  factory _BlazeFirstTimeSlideTextStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeFirstTimeSlideTextStyleImpl.fromJson;

  @override
  String? get text;
  @override
  BlazeFont? get font;
  @override
  BlazeColor? get textColor;
  @override
  double? get textSize;

  /// Create a copy of BlazeFirstTimeSlideTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeFirstTimeSlideTextStyleImplCopyWith<
          _$BlazeFirstTimeSlideTextStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazePlayerItemButtonImageStates _$BlazePlayerItemButtonImageStatesFromJson(
    Map<String, dynamic> json) {
  return _BlazePlayerItemButtonImageStates.fromJson(json);
}

/// @nodoc
mixin _$BlazePlayerItemButtonImageStates {
  BlazeImage? get selectedImage => throw _privateConstructorUsedError;
  BlazeImage? get unselectedImage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerItemButtonImageStates value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerItemButtonImageStates value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerItemButtonImageStates value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazePlayerItemButtonImageStates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazePlayerItemButtonImageStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazePlayerItemButtonImageStatesCopyWith<BlazePlayerItemButtonImageStates>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazePlayerItemButtonImageStatesCopyWith<$Res> {
  factory $BlazePlayerItemButtonImageStatesCopyWith(
          BlazePlayerItemButtonImageStates value,
          $Res Function(BlazePlayerItemButtonImageStates) then) =
      _$BlazePlayerItemButtonImageStatesCopyWithImpl<$Res,
          BlazePlayerItemButtonImageStates>;
  @useResult
  $Res call({BlazeImage? selectedImage, BlazeImage? unselectedImage});

  $BlazeImageCopyWith<$Res>? get selectedImage;
  $BlazeImageCopyWith<$Res>? get unselectedImage;
}

/// @nodoc
class _$BlazePlayerItemButtonImageStatesCopyWithImpl<$Res,
        $Val extends BlazePlayerItemButtonImageStates>
    implements $BlazePlayerItemButtonImageStatesCopyWith<$Res> {
  _$BlazePlayerItemButtonImageStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazePlayerItemButtonImageStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImage = freezed,
    Object? unselectedImage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
      unselectedImage: freezed == unselectedImage
          ? _value.unselectedImage
          : unselectedImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
    ) as $Val);
  }

  /// Create a copy of BlazePlayerItemButtonImageStates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeImageCopyWith<$Res>? get selectedImage {
    if (_value.selectedImage == null) {
      return null;
    }

    return $BlazeImageCopyWith<$Res>(_value.selectedImage!, (value) {
      return _then(_value.copyWith(selectedImage: value) as $Val);
    });
  }

  /// Create a copy of BlazePlayerItemButtonImageStates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeImageCopyWith<$Res>? get unselectedImage {
    if (_value.unselectedImage == null) {
      return null;
    }

    return $BlazeImageCopyWith<$Res>(_value.unselectedImage!, (value) {
      return _then(_value.copyWith(unselectedImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazePlayerItemButtonImageStatesImplCopyWith<$Res>
    implements $BlazePlayerItemButtonImageStatesCopyWith<$Res> {
  factory _$$BlazePlayerItemButtonImageStatesImplCopyWith(
          _$BlazePlayerItemButtonImageStatesImpl value,
          $Res Function(_$BlazePlayerItemButtonImageStatesImpl) then) =
      __$$BlazePlayerItemButtonImageStatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeImage? selectedImage, BlazeImage? unselectedImage});

  @override
  $BlazeImageCopyWith<$Res>? get selectedImage;
  @override
  $BlazeImageCopyWith<$Res>? get unselectedImage;
}

/// @nodoc
class __$$BlazePlayerItemButtonImageStatesImplCopyWithImpl<$Res>
    extends _$BlazePlayerItemButtonImageStatesCopyWithImpl<$Res,
        _$BlazePlayerItemButtonImageStatesImpl>
    implements _$$BlazePlayerItemButtonImageStatesImplCopyWith<$Res> {
  __$$BlazePlayerItemButtonImageStatesImplCopyWithImpl(
      _$BlazePlayerItemButtonImageStatesImpl _value,
      $Res Function(_$BlazePlayerItemButtonImageStatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazePlayerItemButtonImageStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImage = freezed,
    Object? unselectedImage = freezed,
  }) {
    return _then(_$BlazePlayerItemButtonImageStatesImpl(
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
      unselectedImage: freezed == unselectedImage
          ? _value.unselectedImage
          : unselectedImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazePlayerItemButtonImageStatesImpl
    implements _BlazePlayerItemButtonImageStates {
  const _$BlazePlayerItemButtonImageStatesImpl(
      {this.selectedImage, this.unselectedImage});

  factory _$BlazePlayerItemButtonImageStatesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazePlayerItemButtonImageStatesImplFromJson(json);

  @override
  final BlazeImage? selectedImage;
  @override
  final BlazeImage? unselectedImage;

  @override
  String toString() {
    return 'BlazePlayerItemButtonImageStates(selectedImage: $selectedImage, unselectedImage: $unselectedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazePlayerItemButtonImageStatesImpl &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage) &&
            (identical(other.unselectedImage, unselectedImage) ||
                other.unselectedImage == unselectedImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, selectedImage, unselectedImage);

  /// Create a copy of BlazePlayerItemButtonImageStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazePlayerItemButtonImageStatesImplCopyWith<
          _$BlazePlayerItemButtonImageStatesImpl>
      get copyWith => __$$BlazePlayerItemButtonImageStatesImplCopyWithImpl<
          _$BlazePlayerItemButtonImageStatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazePlayerItemButtonImageStates value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazePlayerItemButtonImageStates value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazePlayerItemButtonImageStates value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazePlayerItemButtonImageStatesImplToJson(
      this,
    );
  }
}

abstract class _BlazePlayerItemButtonImageStates
    implements BlazePlayerItemButtonImageStates {
  const factory _BlazePlayerItemButtonImageStates(
          {final BlazeImage? selectedImage,
          final BlazeImage? unselectedImage}) =
      _$BlazePlayerItemButtonImageStatesImpl;

  factory _BlazePlayerItemButtonImageStates.fromJson(
          Map<String, dynamic> json) =
      _$BlazePlayerItemButtonImageStatesImpl.fromJson;

  @override
  BlazeImage? get selectedImage;
  @override
  BlazeImage? get unselectedImage;

  /// Create a copy of BlazePlayerItemButtonImageStates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazePlayerItemButtonImageStatesImplCopyWith<
          _$BlazePlayerItemButtonImageStatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeSeekBarStyle _$BlazeSeekBarStyleFromJson(Map<String, dynamic> json) {
  return _BlazeSeekBarStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeSeekBarStyle {
  bool? get isVisible => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get progressColor => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get cornerRadius => throw _privateConstructorUsedError;
  String? get thumbColor => throw _privateConstructorUsedError;
  BlazeImage? get thumbImage => throw _privateConstructorUsedError;
  double? get thumbSize => throw _privateConstructorUsedError;
  bool? get isThumbVisible => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeSeekBarStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeSeekBarStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeSeekBarStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeSeekBarStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeSeekBarStyleCopyWith<BlazeSeekBarStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeSeekBarStyleCopyWith<$Res> {
  factory $BlazeSeekBarStyleCopyWith(
          BlazeSeekBarStyle value, $Res Function(BlazeSeekBarStyle) then) =
      _$BlazeSeekBarStyleCopyWithImpl<$Res, BlazeSeekBarStyle>;
  @useResult
  $Res call(
      {bool? isVisible,
      String? backgroundColor,
      String? progressColor,
      double? height,
      double? cornerRadius,
      String? thumbColor,
      BlazeImage? thumbImage,
      double? thumbSize,
      bool? isThumbVisible});

  $BlazeImageCopyWith<$Res>? get thumbImage;
}

/// @nodoc
class _$BlazeSeekBarStyleCopyWithImpl<$Res, $Val extends BlazeSeekBarStyle>
    implements $BlazeSeekBarStyleCopyWith<$Res> {
  _$BlazeSeekBarStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = freezed,
    Object? backgroundColor = freezed,
    Object? progressColor = freezed,
    Object? height = freezed,
    Object? cornerRadius = freezed,
    Object? thumbColor = freezed,
    Object? thumbImage = freezed,
    Object? thumbSize = freezed,
    Object? isThumbVisible = freezed,
  }) {
    return _then(_value.copyWith(
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      progressColor: freezed == progressColor
          ? _value.progressColor
          : progressColor // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbColor: freezed == thumbColor
          ? _value.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbImage: freezed == thumbImage
          ? _value.thumbImage
          : thumbImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
      thumbSize: freezed == thumbSize
          ? _value.thumbSize
          : thumbSize // ignore: cast_nullable_to_non_nullable
              as double?,
      isThumbVisible: freezed == isThumbVisible
          ? _value.isThumbVisible
          : isThumbVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of BlazeSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeImageCopyWith<$Res>? get thumbImage {
    if (_value.thumbImage == null) {
      return null;
    }

    return $BlazeImageCopyWith<$Res>(_value.thumbImage!, (value) {
      return _then(_value.copyWith(thumbImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeSeekBarStyleImplCopyWith<$Res>
    implements $BlazeSeekBarStyleCopyWith<$Res> {
  factory _$$BlazeSeekBarStyleImplCopyWith(_$BlazeSeekBarStyleImpl value,
          $Res Function(_$BlazeSeekBarStyleImpl) then) =
      __$$BlazeSeekBarStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isVisible,
      String? backgroundColor,
      String? progressColor,
      double? height,
      double? cornerRadius,
      String? thumbColor,
      BlazeImage? thumbImage,
      double? thumbSize,
      bool? isThumbVisible});

  @override
  $BlazeImageCopyWith<$Res>? get thumbImage;
}

/// @nodoc
class __$$BlazeSeekBarStyleImplCopyWithImpl<$Res>
    extends _$BlazeSeekBarStyleCopyWithImpl<$Res, _$BlazeSeekBarStyleImpl>
    implements _$$BlazeSeekBarStyleImplCopyWith<$Res> {
  __$$BlazeSeekBarStyleImplCopyWithImpl(_$BlazeSeekBarStyleImpl _value,
      $Res Function(_$BlazeSeekBarStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = freezed,
    Object? backgroundColor = freezed,
    Object? progressColor = freezed,
    Object? height = freezed,
    Object? cornerRadius = freezed,
    Object? thumbColor = freezed,
    Object? thumbImage = freezed,
    Object? thumbSize = freezed,
    Object? isThumbVisible = freezed,
  }) {
    return _then(_$BlazeSeekBarStyleImpl(
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      progressColor: freezed == progressColor
          ? _value.progressColor
          : progressColor // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbColor: freezed == thumbColor
          ? _value.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbImage: freezed == thumbImage
          ? _value.thumbImage
          : thumbImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
      thumbSize: freezed == thumbSize
          ? _value.thumbSize
          : thumbSize // ignore: cast_nullable_to_non_nullable
              as double?,
      isThumbVisible: freezed == isThumbVisible
          ? _value.isThumbVisible
          : isThumbVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeSeekBarStyleImpl implements _BlazeSeekBarStyle {
  const _$BlazeSeekBarStyleImpl(
      {this.isVisible,
      this.backgroundColor,
      this.progressColor,
      this.height,
      this.cornerRadius,
      this.thumbColor,
      this.thumbImage,
      this.thumbSize,
      this.isThumbVisible});

  factory _$BlazeSeekBarStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeSeekBarStyleImplFromJson(json);

  @override
  final bool? isVisible;
  @override
  final String? backgroundColor;
  @override
  final String? progressColor;
  @override
  final double? height;
  @override
  final double? cornerRadius;
  @override
  final String? thumbColor;
  @override
  final BlazeImage? thumbImage;
  @override
  final double? thumbSize;
  @override
  final bool? isThumbVisible;

  @override
  String toString() {
    return 'BlazeSeekBarStyle(isVisible: $isVisible, backgroundColor: $backgroundColor, progressColor: $progressColor, height: $height, cornerRadius: $cornerRadius, thumbColor: $thumbColor, thumbImage: $thumbImage, thumbSize: $thumbSize, isThumbVisible: $isThumbVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeSeekBarStyleImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.progressColor, progressColor) ||
                other.progressColor == progressColor) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.cornerRadius, cornerRadius) ||
                other.cornerRadius == cornerRadius) &&
            (identical(other.thumbColor, thumbColor) ||
                other.thumbColor == thumbColor) &&
            (identical(other.thumbImage, thumbImage) ||
                other.thumbImage == thumbImage) &&
            (identical(other.thumbSize, thumbSize) ||
                other.thumbSize == thumbSize) &&
            (identical(other.isThumbVisible, isThumbVisible) ||
                other.isThumbVisible == isThumbVisible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isVisible,
      backgroundColor,
      progressColor,
      height,
      cornerRadius,
      thumbColor,
      thumbImage,
      thumbSize,
      isThumbVisible);

  /// Create a copy of BlazeSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeSeekBarStyleImplCopyWith<_$BlazeSeekBarStyleImpl> get copyWith =>
      __$$BlazeSeekBarStyleImplCopyWithImpl<_$BlazeSeekBarStyleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeSeekBarStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeSeekBarStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeSeekBarStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeSeekBarStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeSeekBarStyle implements BlazeSeekBarStyle {
  const factory _BlazeSeekBarStyle(
      {final bool? isVisible,
      final String? backgroundColor,
      final String? progressColor,
      final double? height,
      final double? cornerRadius,
      final String? thumbColor,
      final BlazeImage? thumbImage,
      final double? thumbSize,
      final bool? isThumbVisible}) = _$BlazeSeekBarStyleImpl;

  factory _BlazeSeekBarStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeSeekBarStyleImpl.fromJson;

  @override
  bool? get isVisible;
  @override
  String? get backgroundColor;
  @override
  String? get progressColor;
  @override
  double? get height;
  @override
  double? get cornerRadius;
  @override
  String? get thumbColor;
  @override
  BlazeImage? get thumbImage;
  @override
  double? get thumbSize;
  @override
  bool? get isThumbVisible;

  /// Create a copy of BlazeSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeSeekBarStyleImplCopyWith<_$BlazeSeekBarStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
