// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_layout_common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeMargins _$BlazeMarginsFromJson(Map<String, dynamic> json) {
  return _BlazeMargins.fromJson(json);
}

/// @nodoc
mixin _$BlazeMargins {
  double? get top => throw _privateConstructorUsedError;
  double? get leading => throw _privateConstructorUsedError;
  double? get bottom => throw _privateConstructorUsedError;
  double? get trailing => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeMargins value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeMargins value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeMargins value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeMargins to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeMargins
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeMarginsCopyWith<BlazeMargins> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeMarginsCopyWith<$Res> {
  factory $BlazeMarginsCopyWith(
          BlazeMargins value, $Res Function(BlazeMargins) then) =
      _$BlazeMarginsCopyWithImpl<$Res, BlazeMargins>;
  @useResult
  $Res call({double? top, double? leading, double? bottom, double? trailing});
}

/// @nodoc
class _$BlazeMarginsCopyWithImpl<$Res, $Val extends BlazeMargins>
    implements $BlazeMarginsCopyWith<$Res> {
  _$BlazeMarginsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeMargins
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = freezed,
    Object? leading = freezed,
    Object? bottom = freezed,
    Object? trailing = freezed,
  }) {
    return _then(_value.copyWith(
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      leading: freezed == leading
          ? _value.leading
          : leading // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
      trailing: freezed == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeMarginsImplCopyWith<$Res>
    implements $BlazeMarginsCopyWith<$Res> {
  factory _$$BlazeMarginsImplCopyWith(
          _$BlazeMarginsImpl value, $Res Function(_$BlazeMarginsImpl) then) =
      __$$BlazeMarginsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? top, double? leading, double? bottom, double? trailing});
}

/// @nodoc
class __$$BlazeMarginsImplCopyWithImpl<$Res>
    extends _$BlazeMarginsCopyWithImpl<$Res, _$BlazeMarginsImpl>
    implements _$$BlazeMarginsImplCopyWith<$Res> {
  __$$BlazeMarginsImplCopyWithImpl(
      _$BlazeMarginsImpl _value, $Res Function(_$BlazeMarginsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeMargins
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = freezed,
    Object? leading = freezed,
    Object? bottom = freezed,
    Object? trailing = freezed,
  }) {
    return _then(_$BlazeMarginsImpl(
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      leading: freezed == leading
          ? _value.leading
          : leading // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
      trailing: freezed == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeMarginsImpl implements _BlazeMargins {
  const _$BlazeMarginsImpl(
      {this.top, this.leading, this.bottom, this.trailing});

  factory _$BlazeMarginsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeMarginsImplFromJson(json);

  @override
  final double? top;
  @override
  final double? leading;
  @override
  final double? bottom;
  @override
  final double? trailing;

  @override
  String toString() {
    return 'BlazeMargins(top: $top, leading: $leading, bottom: $bottom, trailing: $trailing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeMarginsImpl &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.leading, leading) || other.leading == leading) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.trailing, trailing) ||
                other.trailing == trailing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, top, leading, bottom, trailing);

  /// Create a copy of BlazeMargins
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeMarginsImplCopyWith<_$BlazeMarginsImpl> get copyWith =>
      __$$BlazeMarginsImplCopyWithImpl<_$BlazeMarginsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeMargins value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeMargins value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeMargins value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeMarginsImplToJson(
      this,
    );
  }
}

abstract class _BlazeMargins implements BlazeMargins {
  const factory _BlazeMargins(
      {final double? top,
      final double? leading,
      final double? bottom,
      final double? trailing}) = _$BlazeMarginsImpl;

  factory _BlazeMargins.fromJson(Map<String, dynamic> json) =
      _$BlazeMarginsImpl.fromJson;

  @override
  double? get top;
  @override
  double? get leading;
  @override
  double? get bottom;
  @override
  double? get trailing;

  /// Create a copy of BlazeMargins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeMarginsImplCopyWith<_$BlazeMarginsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeFont _$BlazeFontFromJson(Map<String, dynamic> json) {
  return _BlazeFont.fromJson(json);
}

/// @nodoc
mixin _$BlazeFont {
  /// iOS font name (e.g., 'Agbalumo-Regular')
  String? get fontName => throw _privateConstructorUsedError;

  /// Android font file name without extension (e.g., 'agbalumo_regular')
  String? get fontFileName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFont value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFont value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFont value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeFont to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeFont
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeFontCopyWith<BlazeFont> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeFontCopyWith<$Res> {
  factory $BlazeFontCopyWith(BlazeFont value, $Res Function(BlazeFont) then) =
      _$BlazeFontCopyWithImpl<$Res, BlazeFont>;
  @useResult
  $Res call({String? fontName, String? fontFileName});
}

/// @nodoc
class _$BlazeFontCopyWithImpl<$Res, $Val extends BlazeFont>
    implements $BlazeFontCopyWith<$Res> {
  _$BlazeFontCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeFont
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontName = freezed,
    Object? fontFileName = freezed,
  }) {
    return _then(_value.copyWith(
      fontName: freezed == fontName
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFileName: freezed == fontFileName
          ? _value.fontFileName
          : fontFileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeFontImplCopyWith<$Res>
    implements $BlazeFontCopyWith<$Res> {
  factory _$$BlazeFontImplCopyWith(
          _$BlazeFontImpl value, $Res Function(_$BlazeFontImpl) then) =
      __$$BlazeFontImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fontName, String? fontFileName});
}

/// @nodoc
class __$$BlazeFontImplCopyWithImpl<$Res>
    extends _$BlazeFontCopyWithImpl<$Res, _$BlazeFontImpl>
    implements _$$BlazeFontImplCopyWith<$Res> {
  __$$BlazeFontImplCopyWithImpl(
      _$BlazeFontImpl _value, $Res Function(_$BlazeFontImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeFont
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontName = freezed,
    Object? fontFileName = freezed,
  }) {
    return _then(_$BlazeFontImpl(
      fontName: freezed == fontName
          ? _value.fontName
          : fontName // ignore: cast_nullable_to_non_nullable
              as String?,
      fontFileName: freezed == fontFileName
          ? _value.fontFileName
          : fontFileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeFontImpl implements _BlazeFont {
  const _$BlazeFontImpl({this.fontName, this.fontFileName});

  factory _$BlazeFontImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeFontImplFromJson(json);

  /// iOS font name (e.g., 'Agbalumo-Regular')
  @override
  final String? fontName;

  /// Android font file name without extension (e.g., 'agbalumo_regular')
  @override
  final String? fontFileName;

  @override
  String toString() {
    return 'BlazeFont(fontName: $fontName, fontFileName: $fontFileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeFontImpl &&
            (identical(other.fontName, fontName) ||
                other.fontName == fontName) &&
            (identical(other.fontFileName, fontFileName) ||
                other.fontFileName == fontFileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fontName, fontFileName);

  /// Create a copy of BlazeFont
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeFontImplCopyWith<_$BlazeFontImpl> get copyWith =>
      __$$BlazeFontImplCopyWithImpl<_$BlazeFontImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeFont value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeFont value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeFont value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeFontImplToJson(
      this,
    );
  }
}

abstract class _BlazeFont implements BlazeFont {
  const factory _BlazeFont(
      {final String? fontName, final String? fontFileName}) = _$BlazeFontImpl;

  factory _BlazeFont.fromJson(Map<String, dynamic> json) =
      _$BlazeFontImpl.fromJson;

  /// iOS font name (e.g., 'Agbalumo-Regular')
  @override
  String? get fontName;

  /// Android font file name without extension (e.g., 'agbalumo_regular')
  @override
  String? get fontFileName;

  /// Create a copy of BlazeFont
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeFontImplCopyWith<_$BlazeFontImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeImage _$BlazeImageFromJson(Map<String, dynamic> json) {
  return _BlazeImage.fromJson(json);
}

/// @nodoc
mixin _$BlazeImage {
  /// Image name for iOS or Android file name without extension
  String? get imageName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeImage value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeImage value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeImage value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeImageCopyWith<BlazeImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeImageCopyWith<$Res> {
  factory $BlazeImageCopyWith(
          BlazeImage value, $Res Function(BlazeImage) then) =
      _$BlazeImageCopyWithImpl<$Res, BlazeImage>;
  @useResult
  $Res call({String? imageName});
}

/// @nodoc
class _$BlazeImageCopyWithImpl<$Res, $Val extends BlazeImage>
    implements $BlazeImageCopyWith<$Res> {
  _$BlazeImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageName = freezed,
  }) {
    return _then(_value.copyWith(
      imageName: freezed == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeImageImplCopyWith<$Res>
    implements $BlazeImageCopyWith<$Res> {
  factory _$$BlazeImageImplCopyWith(
          _$BlazeImageImpl value, $Res Function(_$BlazeImageImpl) then) =
      __$$BlazeImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageName});
}

/// @nodoc
class __$$BlazeImageImplCopyWithImpl<$Res>
    extends _$BlazeImageCopyWithImpl<$Res, _$BlazeImageImpl>
    implements _$$BlazeImageImplCopyWith<$Res> {
  __$$BlazeImageImplCopyWithImpl(
      _$BlazeImageImpl _value, $Res Function(_$BlazeImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageName = freezed,
  }) {
    return _then(_$BlazeImageImpl(
      imageName: freezed == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeImageImpl implements _BlazeImage {
  const _$BlazeImageImpl({this.imageName});

  factory _$BlazeImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeImageImplFromJson(json);

  /// Image name for iOS or Android file name without extension
  @override
  final String? imageName;

  @override
  String toString() {
    return 'BlazeImage(imageName: $imageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeImageImpl &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageName);

  /// Create a copy of BlazeImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeImageImplCopyWith<_$BlazeImageImpl> get copyWith =>
      __$$BlazeImageImplCopyWithImpl<_$BlazeImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeImage value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeImage value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeImage value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeImageImplToJson(
      this,
    );
  }
}

abstract class _BlazeImage implements BlazeImage {
  const factory _BlazeImage({final String? imageName}) = _$BlazeImageImpl;

  factory _BlazeImage.fromJson(Map<String, dynamic> json) =
      _$BlazeImageImpl.fromJson;

  /// Image name for iOS or Android file name without extension
  @override
  String? get imageName;

  /// Create a copy of BlazeImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeImageImplCopyWith<_$BlazeImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeObjectPositioning _$BlazeObjectPositioningFromJson(
    Map<String, dynamic> json) {
  return _BlazeObjectPositioning.fromJson(json);
}

/// @nodoc
mixin _$BlazeObjectPositioning {
  BlazeObjectXPosition? get xPosition => throw _privateConstructorUsedError;
  BlazeObjectYPosition? get yPosition => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeObjectPositioning value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeObjectPositioning value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeObjectPositioning value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeObjectPositioning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeObjectPositioning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeObjectPositioningCopyWith<BlazeObjectPositioning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeObjectPositioningCopyWith<$Res> {
  factory $BlazeObjectPositioningCopyWith(BlazeObjectPositioning value,
          $Res Function(BlazeObjectPositioning) then) =
      _$BlazeObjectPositioningCopyWithImpl<$Res, BlazeObjectPositioning>;
  @useResult
  $Res call({BlazeObjectXPosition? xPosition, BlazeObjectYPosition? yPosition});
}

/// @nodoc
class _$BlazeObjectPositioningCopyWithImpl<$Res,
        $Val extends BlazeObjectPositioning>
    implements $BlazeObjectPositioningCopyWith<$Res> {
  _$BlazeObjectPositioningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeObjectPositioning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xPosition = freezed,
    Object? yPosition = freezed,
  }) {
    return _then(_value.copyWith(
      xPosition: freezed == xPosition
          ? _value.xPosition
          : xPosition // ignore: cast_nullable_to_non_nullable
              as BlazeObjectXPosition?,
      yPosition: freezed == yPosition
          ? _value.yPosition
          : yPosition // ignore: cast_nullable_to_non_nullable
              as BlazeObjectYPosition?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeObjectPositioningImplCopyWith<$Res>
    implements $BlazeObjectPositioningCopyWith<$Res> {
  factory _$$BlazeObjectPositioningImplCopyWith(
          _$BlazeObjectPositioningImpl value,
          $Res Function(_$BlazeObjectPositioningImpl) then) =
      __$$BlazeObjectPositioningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeObjectXPosition? xPosition, BlazeObjectYPosition? yPosition});
}

/// @nodoc
class __$$BlazeObjectPositioningImplCopyWithImpl<$Res>
    extends _$BlazeObjectPositioningCopyWithImpl<$Res,
        _$BlazeObjectPositioningImpl>
    implements _$$BlazeObjectPositioningImplCopyWith<$Res> {
  __$$BlazeObjectPositioningImplCopyWithImpl(
      _$BlazeObjectPositioningImpl _value,
      $Res Function(_$BlazeObjectPositioningImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeObjectPositioning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xPosition = freezed,
    Object? yPosition = freezed,
  }) {
    return _then(_$BlazeObjectPositioningImpl(
      xPosition: freezed == xPosition
          ? _value.xPosition
          : xPosition // ignore: cast_nullable_to_non_nullable
              as BlazeObjectXPosition?,
      yPosition: freezed == yPosition
          ? _value.yPosition
          : yPosition // ignore: cast_nullable_to_non_nullable
              as BlazeObjectYPosition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeObjectPositioningImpl implements _BlazeObjectPositioning {
  const _$BlazeObjectPositioningImpl({this.xPosition, this.yPosition});

  factory _$BlazeObjectPositioningImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeObjectPositioningImplFromJson(json);

  @override
  final BlazeObjectXPosition? xPosition;
  @override
  final BlazeObjectYPosition? yPosition;

  @override
  String toString() {
    return 'BlazeObjectPositioning(xPosition: $xPosition, yPosition: $yPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeObjectPositioningImpl &&
            (identical(other.xPosition, xPosition) ||
                other.xPosition == xPosition) &&
            (identical(other.yPosition, yPosition) ||
                other.yPosition == yPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xPosition, yPosition);

  /// Create a copy of BlazeObjectPositioning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeObjectPositioningImplCopyWith<_$BlazeObjectPositioningImpl>
      get copyWith => __$$BlazeObjectPositioningImplCopyWithImpl<
          _$BlazeObjectPositioningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeObjectPositioning value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeObjectPositioning value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeObjectPositioning value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeObjectPositioningImplToJson(
      this,
    );
  }
}

abstract class _BlazeObjectPositioning implements BlazeObjectPositioning {
  const factory _BlazeObjectPositioning(
      {final BlazeObjectXPosition? xPosition,
      final BlazeObjectYPosition? yPosition}) = _$BlazeObjectPositioningImpl;

  factory _BlazeObjectPositioning.fromJson(Map<String, dynamic> json) =
      _$BlazeObjectPositioningImpl.fromJson;

  @override
  BlazeObjectXPosition? get xPosition;
  @override
  BlazeObjectYPosition? get yPosition;

  /// Create a copy of BlazeObjectPositioning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeObjectPositioningImplCopyWith<_$BlazeObjectPositioningImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeTitleStyle _$BlazeTitleStyleFromJson(Map<String, dynamic> json) {
  return _BlazeTitleStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeTitleStyle {
  BlazeFont? get font => throw _privateConstructorUsedError;
  double? get textSize => throw _privateConstructorUsedError;
  double? get letterSpacing => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  double? get lineHeight => throw _privateConstructorUsedError;
  int? get maxLines => throw _privateConstructorUsedError;
  BlazeTextAlign? get textAlign => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeTitleStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeTitleStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeTitleStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeTitleStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeTitleStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeTitleStyleCopyWith<BlazeTitleStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeTitleStyleCopyWith<$Res> {
  factory $BlazeTitleStyleCopyWith(
          BlazeTitleStyle value, $Res Function(BlazeTitleStyle) then) =
      _$BlazeTitleStyleCopyWithImpl<$Res, BlazeTitleStyle>;
  @useResult
  $Res call(
      {BlazeFont? font,
      double? textSize,
      double? letterSpacing,
      String? textColor,
      double? lineHeight,
      int? maxLines,
      BlazeTextAlign? textAlign});

  $BlazeFontCopyWith<$Res>? get font;
}

/// @nodoc
class _$BlazeTitleStyleCopyWithImpl<$Res, $Val extends BlazeTitleStyle>
    implements $BlazeTitleStyleCopyWith<$Res> {
  _$BlazeTitleStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeTitleStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = freezed,
    Object? textSize = freezed,
    Object? letterSpacing = freezed,
    Object? textColor = freezed,
    Object? lineHeight = freezed,
    Object? maxLines = freezed,
    Object? textAlign = freezed,
  }) {
    return _then(_value.copyWith(
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      letterSpacing: freezed == letterSpacing
          ? _value.letterSpacing
          : letterSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      lineHeight: freezed == lineHeight
          ? _value.lineHeight
          : lineHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      textAlign: freezed == textAlign
          ? _value.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as BlazeTextAlign?,
    ) as $Val);
  }

  /// Create a copy of BlazeTitleStyle
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
abstract class _$$BlazeTitleStyleImplCopyWith<$Res>
    implements $BlazeTitleStyleCopyWith<$Res> {
  factory _$$BlazeTitleStyleImplCopyWith(_$BlazeTitleStyleImpl value,
          $Res Function(_$BlazeTitleStyleImpl) then) =
      __$$BlazeTitleStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeFont? font,
      double? textSize,
      double? letterSpacing,
      String? textColor,
      double? lineHeight,
      int? maxLines,
      BlazeTextAlign? textAlign});

  @override
  $BlazeFontCopyWith<$Res>? get font;
}

/// @nodoc
class __$$BlazeTitleStyleImplCopyWithImpl<$Res>
    extends _$BlazeTitleStyleCopyWithImpl<$Res, _$BlazeTitleStyleImpl>
    implements _$$BlazeTitleStyleImplCopyWith<$Res> {
  __$$BlazeTitleStyleImplCopyWithImpl(
      _$BlazeTitleStyleImpl _value, $Res Function(_$BlazeTitleStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeTitleStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = freezed,
    Object? textSize = freezed,
    Object? letterSpacing = freezed,
    Object? textColor = freezed,
    Object? lineHeight = freezed,
    Object? maxLines = freezed,
    Object? textAlign = freezed,
  }) {
    return _then(_$BlazeTitleStyleImpl(
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      letterSpacing: freezed == letterSpacing
          ? _value.letterSpacing
          : letterSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      lineHeight: freezed == lineHeight
          ? _value.lineHeight
          : lineHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      textAlign: freezed == textAlign
          ? _value.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as BlazeTextAlign?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeTitleStyleImpl implements _BlazeTitleStyle {
  const _$BlazeTitleStyleImpl(
      {this.font,
      this.textSize,
      this.letterSpacing,
      this.textColor,
      this.lineHeight,
      this.maxLines,
      this.textAlign});

  factory _$BlazeTitleStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeTitleStyleImplFromJson(json);

  @override
  final BlazeFont? font;
  @override
  final double? textSize;
  @override
  final double? letterSpacing;
  @override
  final String? textColor;
  @override
  final double? lineHeight;
  @override
  final int? maxLines;
  @override
  final BlazeTextAlign? textAlign;

  @override
  String toString() {
    return 'BlazeTitleStyle(font: $font, textSize: $textSize, letterSpacing: $letterSpacing, textColor: $textColor, lineHeight: $lineHeight, maxLines: $maxLines, textAlign: $textAlign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeTitleStyleImpl &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize) &&
            (identical(other.letterSpacing, letterSpacing) ||
                other.letterSpacing == letterSpacing) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.lineHeight, lineHeight) ||
                other.lineHeight == lineHeight) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, font, textSize, letterSpacing,
      textColor, lineHeight, maxLines, textAlign);

  /// Create a copy of BlazeTitleStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeTitleStyleImplCopyWith<_$BlazeTitleStyleImpl> get copyWith =>
      __$$BlazeTitleStyleImplCopyWithImpl<_$BlazeTitleStyleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeTitleStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeTitleStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeTitleStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeTitleStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeTitleStyle implements BlazeTitleStyle {
  const factory _BlazeTitleStyle(
      {final BlazeFont? font,
      final double? textSize,
      final double? letterSpacing,
      final String? textColor,
      final double? lineHeight,
      final int? maxLines,
      final BlazeTextAlign? textAlign}) = _$BlazeTitleStyleImpl;

  factory _BlazeTitleStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeTitleStyleImpl.fromJson;

  @override
  BlazeFont? get font;
  @override
  double? get textSize;
  @override
  double? get letterSpacing;
  @override
  String? get textColor;
  @override
  double? get lineHeight;
  @override
  int? get maxLines;
  @override
  BlazeTextAlign? get textAlign;

  /// Create a copy of BlazeTitleStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeTitleStyleImplCopyWith<_$BlazeTitleStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
