// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captions_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeCaptionsStyle _$BlazeCaptionsStyleFromJson(Map<String, dynamic> json) {
  return _BlazeCaptionsStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeCaptionsStyle {
  /// The font used for captions text. When omitted, the native default font
  /// family is kept.
  BlazeFont? get font => throw _privateConstructorUsedError;

  /// Caption text size in sp. Android-only — on iOS the size is baked into
  /// [font] itself, so this field is a no-op there. When omitted, the
  /// native default size applies.
  double? get textSize => throw _privateConstructorUsedError;

  /// The on-screen position of the captions box within the player.
  /// When omitted, the native default position is kept.
  BlazeCaptionsPositioning? get positioning =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCaptionsStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCaptionsStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCaptionsStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeCaptionsStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeCaptionsStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeCaptionsStyleCopyWith<BlazeCaptionsStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeCaptionsStyleCopyWith<$Res> {
  factory $BlazeCaptionsStyleCopyWith(
          BlazeCaptionsStyle value, $Res Function(BlazeCaptionsStyle) then) =
      _$BlazeCaptionsStyleCopyWithImpl<$Res, BlazeCaptionsStyle>;
  @useResult
  $Res call(
      {BlazeFont? font,
      double? textSize,
      BlazeCaptionsPositioning? positioning});

  $BlazeFontCopyWith<$Res>? get font;
  $BlazeCaptionsPositioningCopyWith<$Res>? get positioning;
}

/// @nodoc
class _$BlazeCaptionsStyleCopyWithImpl<$Res, $Val extends BlazeCaptionsStyle>
    implements $BlazeCaptionsStyleCopyWith<$Res> {
  _$BlazeCaptionsStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeCaptionsStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = freezed,
    Object? textSize = freezed,
    Object? positioning = freezed,
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
      positioning: freezed == positioning
          ? _value.positioning
          : positioning // ignore: cast_nullable_to_non_nullable
              as BlazeCaptionsPositioning?,
    ) as $Val);
  }

  /// Create a copy of BlazeCaptionsStyle
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

  /// Create a copy of BlazeCaptionsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeCaptionsPositioningCopyWith<$Res>? get positioning {
    if (_value.positioning == null) {
      return null;
    }

    return $BlazeCaptionsPositioningCopyWith<$Res>(_value.positioning!,
        (value) {
      return _then(_value.copyWith(positioning: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeCaptionsStyleImplCopyWith<$Res>
    implements $BlazeCaptionsStyleCopyWith<$Res> {
  factory _$$BlazeCaptionsStyleImplCopyWith(_$BlazeCaptionsStyleImpl value,
          $Res Function(_$BlazeCaptionsStyleImpl) then) =
      __$$BlazeCaptionsStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeFont? font,
      double? textSize,
      BlazeCaptionsPositioning? positioning});

  @override
  $BlazeFontCopyWith<$Res>? get font;
  @override
  $BlazeCaptionsPositioningCopyWith<$Res>? get positioning;
}

/// @nodoc
class __$$BlazeCaptionsStyleImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsStyleCopyWithImpl<$Res, _$BlazeCaptionsStyleImpl>
    implements _$$BlazeCaptionsStyleImplCopyWith<$Res> {
  __$$BlazeCaptionsStyleImplCopyWithImpl(_$BlazeCaptionsStyleImpl _value,
      $Res Function(_$BlazeCaptionsStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = freezed,
    Object? textSize = freezed,
    Object? positioning = freezed,
  }) {
    return _then(_$BlazeCaptionsStyleImpl(
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      positioning: freezed == positioning
          ? _value.positioning
          : positioning // ignore: cast_nullable_to_non_nullable
              as BlazeCaptionsPositioning?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsStyleImpl implements _BlazeCaptionsStyle {
  const _$BlazeCaptionsStyleImpl({this.font, this.textSize, this.positioning});

  factory _$BlazeCaptionsStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeCaptionsStyleImplFromJson(json);

  /// The font used for captions text. When omitted, the native default font
  /// family is kept.
  @override
  final BlazeFont? font;

  /// Caption text size in sp. Android-only — on iOS the size is baked into
  /// [font] itself, so this field is a no-op there. When omitted, the
  /// native default size applies.
  @override
  final double? textSize;

  /// The on-screen position of the captions box within the player.
  /// When omitted, the native default position is kept.
  @override
  final BlazeCaptionsPositioning? positioning;

  @override
  String toString() {
    return 'BlazeCaptionsStyle(font: $font, textSize: $textSize, positioning: $positioning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsStyleImpl &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize) &&
            (identical(other.positioning, positioning) ||
                other.positioning == positioning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, font, textSize, positioning);

  /// Create a copy of BlazeCaptionsStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeCaptionsStyleImplCopyWith<_$BlazeCaptionsStyleImpl> get copyWith =>
      __$$BlazeCaptionsStyleImplCopyWithImpl<_$BlazeCaptionsStyleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCaptionsStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCaptionsStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCaptionsStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeCaptionsStyle implements BlazeCaptionsStyle {
  const factory _BlazeCaptionsStyle(
      {final BlazeFont? font,
      final double? textSize,
      final BlazeCaptionsPositioning? positioning}) = _$BlazeCaptionsStyleImpl;

  factory _BlazeCaptionsStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsStyleImpl.fromJson;

  /// The font used for captions text. When omitted, the native default font
  /// family is kept.
  @override
  BlazeFont? get font;

  /// Caption text size in sp. Android-only — on iOS the size is baked into
  /// [font] itself, so this field is a no-op there. When omitted, the
  /// native default size applies.
  @override
  double? get textSize;

  /// The on-screen position of the captions box within the player.
  /// When omitted, the native default position is kept.
  @override
  BlazeCaptionsPositioning? get positioning;

  /// Create a copy of BlazeCaptionsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeCaptionsStyleImplCopyWith<_$BlazeCaptionsStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlazeCaptionsPositioning _$BlazeCaptionsPositioningFromJson(
    Map<String, dynamic> json) {
  return _BlazeCaptionsPositioning.fromJson(json);
}

/// @nodoc
mixin _$BlazeCaptionsPositioning {
  /// The horizontal positioning of the captions box. When omitted, the
  /// native default ([BlazeCaptionsXPosition.start]) is kept.
  BlazeCaptionsXPosition? get xPosition => throw _privateConstructorUsedError;

  /// The vertical positioning of the captions box. When omitted, the
  /// native default ([BlazeCaptionsYPosition.top]) is kept.
  BlazeCaptionsYPosition? get yPosition => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCaptionsPositioning value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCaptionsPositioning value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCaptionsPositioning value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeCaptionsPositioning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeCaptionsPositioning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeCaptionsPositioningCopyWith<BlazeCaptionsPositioning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeCaptionsPositioningCopyWith<$Res> {
  factory $BlazeCaptionsPositioningCopyWith(BlazeCaptionsPositioning value,
          $Res Function(BlazeCaptionsPositioning) then) =
      _$BlazeCaptionsPositioningCopyWithImpl<$Res, BlazeCaptionsPositioning>;
  @useResult
  $Res call(
      {BlazeCaptionsXPosition? xPosition, BlazeCaptionsYPosition? yPosition});

  $BlazeCaptionsXPositionCopyWith<$Res>? get xPosition;
  $BlazeCaptionsYPositionCopyWith<$Res>? get yPosition;
}

/// @nodoc
class _$BlazeCaptionsPositioningCopyWithImpl<$Res,
        $Val extends BlazeCaptionsPositioning>
    implements $BlazeCaptionsPositioningCopyWith<$Res> {
  _$BlazeCaptionsPositioningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeCaptionsPositioning
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
              as BlazeCaptionsXPosition?,
      yPosition: freezed == yPosition
          ? _value.yPosition
          : yPosition // ignore: cast_nullable_to_non_nullable
              as BlazeCaptionsYPosition?,
    ) as $Val);
  }

  /// Create a copy of BlazeCaptionsPositioning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeCaptionsXPositionCopyWith<$Res>? get xPosition {
    if (_value.xPosition == null) {
      return null;
    }

    return $BlazeCaptionsXPositionCopyWith<$Res>(_value.xPosition!, (value) {
      return _then(_value.copyWith(xPosition: value) as $Val);
    });
  }

  /// Create a copy of BlazeCaptionsPositioning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeCaptionsYPositionCopyWith<$Res>? get yPosition {
    if (_value.yPosition == null) {
      return null;
    }

    return $BlazeCaptionsYPositionCopyWith<$Res>(_value.yPosition!, (value) {
      return _then(_value.copyWith(yPosition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeCaptionsPositioningImplCopyWith<$Res>
    implements $BlazeCaptionsPositioningCopyWith<$Res> {
  factory _$$BlazeCaptionsPositioningImplCopyWith(
          _$BlazeCaptionsPositioningImpl value,
          $Res Function(_$BlazeCaptionsPositioningImpl) then) =
      __$$BlazeCaptionsPositioningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeCaptionsXPosition? xPosition, BlazeCaptionsYPosition? yPosition});

  @override
  $BlazeCaptionsXPositionCopyWith<$Res>? get xPosition;
  @override
  $BlazeCaptionsYPositionCopyWith<$Res>? get yPosition;
}

/// @nodoc
class __$$BlazeCaptionsPositioningImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsPositioningCopyWithImpl<$Res,
        _$BlazeCaptionsPositioningImpl>
    implements _$$BlazeCaptionsPositioningImplCopyWith<$Res> {
  __$$BlazeCaptionsPositioningImplCopyWithImpl(
      _$BlazeCaptionsPositioningImpl _value,
      $Res Function(_$BlazeCaptionsPositioningImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsPositioning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xPosition = freezed,
    Object? yPosition = freezed,
  }) {
    return _then(_$BlazeCaptionsPositioningImpl(
      xPosition: freezed == xPosition
          ? _value.xPosition
          : xPosition // ignore: cast_nullable_to_non_nullable
              as BlazeCaptionsXPosition?,
      yPosition: freezed == yPosition
          ? _value.yPosition
          : yPosition // ignore: cast_nullable_to_non_nullable
              as BlazeCaptionsYPosition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsPositioningImpl implements _BlazeCaptionsPositioning {
  const _$BlazeCaptionsPositioningImpl({this.xPosition, this.yPosition});

  factory _$BlazeCaptionsPositioningImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeCaptionsPositioningImplFromJson(json);

  /// The horizontal positioning of the captions box. When omitted, the
  /// native default ([BlazeCaptionsXPosition.start]) is kept.
  @override
  final BlazeCaptionsXPosition? xPosition;

  /// The vertical positioning of the captions box. When omitted, the
  /// native default ([BlazeCaptionsYPosition.top]) is kept.
  @override
  final BlazeCaptionsYPosition? yPosition;

  @override
  String toString() {
    return 'BlazeCaptionsPositioning(xPosition: $xPosition, yPosition: $yPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsPositioningImpl &&
            (identical(other.xPosition, xPosition) ||
                other.xPosition == xPosition) &&
            (identical(other.yPosition, yPosition) ||
                other.yPosition == yPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xPosition, yPosition);

  /// Create a copy of BlazeCaptionsPositioning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeCaptionsPositioningImplCopyWith<_$BlazeCaptionsPositioningImpl>
      get copyWith => __$$BlazeCaptionsPositioningImplCopyWithImpl<
          _$BlazeCaptionsPositioningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeCaptionsPositioning value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeCaptionsPositioning value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeCaptionsPositioning value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsPositioningImplToJson(
      this,
    );
  }
}

abstract class _BlazeCaptionsPositioning implements BlazeCaptionsPositioning {
  const factory _BlazeCaptionsPositioning(
          {final BlazeCaptionsXPosition? xPosition,
          final BlazeCaptionsYPosition? yPosition}) =
      _$BlazeCaptionsPositioningImpl;

  factory _BlazeCaptionsPositioning.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsPositioningImpl.fromJson;

  /// The horizontal positioning of the captions box. When omitted, the
  /// native default ([BlazeCaptionsXPosition.start]) is kept.
  @override
  BlazeCaptionsXPosition? get xPosition;

  /// The vertical positioning of the captions box. When omitted, the
  /// native default ([BlazeCaptionsYPosition.top]) is kept.
  @override
  BlazeCaptionsYPosition? get yPosition;

  /// Create a copy of BlazeCaptionsPositioning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeCaptionsPositioningImplCopyWith<_$BlazeCaptionsPositioningImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeCaptionsXPosition _$BlazeCaptionsXPositionFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'start':
      return BlazeCaptionsXPositionStart.fromJson(json);
    case 'center':
      return BlazeCaptionsXPositionCenter.fromJson(json);
    case 'custom':
      return BlazeCaptionsXPositionCustom.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'BlazeCaptionsXPosition',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BlazeCaptionsXPosition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() center,
    required TResult Function(int offsetPercent) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? center,
    TResult? Function(int offsetPercent)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? center,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsXPositionStart value) start,
    required TResult Function(BlazeCaptionsXPositionCenter value) center,
    required TResult Function(BlazeCaptionsXPositionCustom value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsXPositionStart value)? start,
    TResult? Function(BlazeCaptionsXPositionCenter value)? center,
    TResult? Function(BlazeCaptionsXPositionCustom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsXPositionStart value)? start,
    TResult Function(BlazeCaptionsXPositionCenter value)? center,
    TResult Function(BlazeCaptionsXPositionCustom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeCaptionsXPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeCaptionsXPositionCopyWith<$Res> {
  factory $BlazeCaptionsXPositionCopyWith(BlazeCaptionsXPosition value,
          $Res Function(BlazeCaptionsXPosition) then) =
      _$BlazeCaptionsXPositionCopyWithImpl<$Res, BlazeCaptionsXPosition>;
}

/// @nodoc
class _$BlazeCaptionsXPositionCopyWithImpl<$Res,
        $Val extends BlazeCaptionsXPosition>
    implements $BlazeCaptionsXPositionCopyWith<$Res> {
  _$BlazeCaptionsXPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeCaptionsXPosition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlazeCaptionsXPositionStartImplCopyWith<$Res> {
  factory _$$BlazeCaptionsXPositionStartImplCopyWith(
          _$BlazeCaptionsXPositionStartImpl value,
          $Res Function(_$BlazeCaptionsXPositionStartImpl) then) =
      __$$BlazeCaptionsXPositionStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeCaptionsXPositionStartImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsXPositionCopyWithImpl<$Res,
        _$BlazeCaptionsXPositionStartImpl>
    implements _$$BlazeCaptionsXPositionStartImplCopyWith<$Res> {
  __$$BlazeCaptionsXPositionStartImplCopyWithImpl(
      _$BlazeCaptionsXPositionStartImpl _value,
      $Res Function(_$BlazeCaptionsXPositionStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsXPosition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsXPositionStartImpl implements BlazeCaptionsXPositionStart {
  const _$BlazeCaptionsXPositionStartImpl({final String? $type})
      : $type = $type ?? 'start';

  factory _$BlazeCaptionsXPositionStartImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCaptionsXPositionStartImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeCaptionsXPosition.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsXPositionStartImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() center,
    required TResult Function(int offsetPercent) custom,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? center,
    TResult? Function(int offsetPercent)? custom,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? center,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsXPositionStart value) start,
    required TResult Function(BlazeCaptionsXPositionCenter value) center,
    required TResult Function(BlazeCaptionsXPositionCustom value) custom,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsXPositionStart value)? start,
    TResult? Function(BlazeCaptionsXPositionCenter value)? center,
    TResult? Function(BlazeCaptionsXPositionCustom value)? custom,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsXPositionStart value)? start,
    TResult Function(BlazeCaptionsXPositionCenter value)? center,
    TResult Function(BlazeCaptionsXPositionCustom value)? custom,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsXPositionStartImplToJson(
      this,
    );
  }
}

abstract class BlazeCaptionsXPositionStart implements BlazeCaptionsXPosition {
  const factory BlazeCaptionsXPositionStart() =
      _$BlazeCaptionsXPositionStartImpl;

  factory BlazeCaptionsXPositionStart.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsXPositionStartImpl.fromJson;
}

/// @nodoc
abstract class _$$BlazeCaptionsXPositionCenterImplCopyWith<$Res> {
  factory _$$BlazeCaptionsXPositionCenterImplCopyWith(
          _$BlazeCaptionsXPositionCenterImpl value,
          $Res Function(_$BlazeCaptionsXPositionCenterImpl) then) =
      __$$BlazeCaptionsXPositionCenterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeCaptionsXPositionCenterImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsXPositionCopyWithImpl<$Res,
        _$BlazeCaptionsXPositionCenterImpl>
    implements _$$BlazeCaptionsXPositionCenterImplCopyWith<$Res> {
  __$$BlazeCaptionsXPositionCenterImplCopyWithImpl(
      _$BlazeCaptionsXPositionCenterImpl _value,
      $Res Function(_$BlazeCaptionsXPositionCenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsXPosition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsXPositionCenterImpl
    implements BlazeCaptionsXPositionCenter {
  const _$BlazeCaptionsXPositionCenterImpl({final String? $type})
      : $type = $type ?? 'center';

  factory _$BlazeCaptionsXPositionCenterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCaptionsXPositionCenterImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeCaptionsXPosition.center()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsXPositionCenterImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() center,
    required TResult Function(int offsetPercent) custom,
  }) {
    return center();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? center,
    TResult? Function(int offsetPercent)? custom,
  }) {
    return center?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? center,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) {
    if (center != null) {
      return center();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsXPositionStart value) start,
    required TResult Function(BlazeCaptionsXPositionCenter value) center,
    required TResult Function(BlazeCaptionsXPositionCustom value) custom,
  }) {
    return center(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsXPositionStart value)? start,
    TResult? Function(BlazeCaptionsXPositionCenter value)? center,
    TResult? Function(BlazeCaptionsXPositionCustom value)? custom,
  }) {
    return center?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsXPositionStart value)? start,
    TResult Function(BlazeCaptionsXPositionCenter value)? center,
    TResult Function(BlazeCaptionsXPositionCustom value)? custom,
    required TResult orElse(),
  }) {
    if (center != null) {
      return center(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsXPositionCenterImplToJson(
      this,
    );
  }
}

abstract class BlazeCaptionsXPositionCenter implements BlazeCaptionsXPosition {
  const factory BlazeCaptionsXPositionCenter() =
      _$BlazeCaptionsXPositionCenterImpl;

  factory BlazeCaptionsXPositionCenter.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsXPositionCenterImpl.fromJson;
}

/// @nodoc
abstract class _$$BlazeCaptionsXPositionCustomImplCopyWith<$Res> {
  factory _$$BlazeCaptionsXPositionCustomImplCopyWith(
          _$BlazeCaptionsXPositionCustomImpl value,
          $Res Function(_$BlazeCaptionsXPositionCustomImpl) then) =
      __$$BlazeCaptionsXPositionCustomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int offsetPercent});
}

/// @nodoc
class __$$BlazeCaptionsXPositionCustomImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsXPositionCopyWithImpl<$Res,
        _$BlazeCaptionsXPositionCustomImpl>
    implements _$$BlazeCaptionsXPositionCustomImplCopyWith<$Res> {
  __$$BlazeCaptionsXPositionCustomImplCopyWithImpl(
      _$BlazeCaptionsXPositionCustomImpl _value,
      $Res Function(_$BlazeCaptionsXPositionCustomImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsXPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsetPercent = null,
  }) {
    return _then(_$BlazeCaptionsXPositionCustomImpl(
      offsetPercent: null == offsetPercent
          ? _value.offsetPercent
          : offsetPercent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsXPositionCustomImpl
    implements BlazeCaptionsXPositionCustom {
  const _$BlazeCaptionsXPositionCustomImpl(
      {required this.offsetPercent, final String? $type})
      : $type = $type ?? 'custom';

  factory _$BlazeCaptionsXPositionCustomImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCaptionsXPositionCustomImplFromJson(json);

  @override
  final int offsetPercent;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeCaptionsXPosition.custom(offsetPercent: $offsetPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsXPositionCustomImpl &&
            (identical(other.offsetPercent, offsetPercent) ||
                other.offsetPercent == offsetPercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offsetPercent);

  /// Create a copy of BlazeCaptionsXPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeCaptionsXPositionCustomImplCopyWith<
          _$BlazeCaptionsXPositionCustomImpl>
      get copyWith => __$$BlazeCaptionsXPositionCustomImplCopyWithImpl<
          _$BlazeCaptionsXPositionCustomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() center,
    required TResult Function(int offsetPercent) custom,
  }) {
    return custom(offsetPercent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? center,
    TResult? Function(int offsetPercent)? custom,
  }) {
    return custom?.call(offsetPercent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? center,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(offsetPercent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsXPositionStart value) start,
    required TResult Function(BlazeCaptionsXPositionCenter value) center,
    required TResult Function(BlazeCaptionsXPositionCustom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsXPositionStart value)? start,
    TResult? Function(BlazeCaptionsXPositionCenter value)? center,
    TResult? Function(BlazeCaptionsXPositionCustom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsXPositionStart value)? start,
    TResult Function(BlazeCaptionsXPositionCenter value)? center,
    TResult Function(BlazeCaptionsXPositionCustom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsXPositionCustomImplToJson(
      this,
    );
  }
}

abstract class BlazeCaptionsXPositionCustom implements BlazeCaptionsXPosition {
  const factory BlazeCaptionsXPositionCustom(
      {required final int offsetPercent}) = _$BlazeCaptionsXPositionCustomImpl;

  factory BlazeCaptionsXPositionCustom.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsXPositionCustomImpl.fromJson;

  int get offsetPercent;

  /// Create a copy of BlazeCaptionsXPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeCaptionsXPositionCustomImplCopyWith<
          _$BlazeCaptionsXPositionCustomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeCaptionsYPosition _$BlazeCaptionsYPositionFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'top':
      return BlazeCaptionsYPositionTop.fromJson(json);
    case 'center':
      return BlazeCaptionsYPositionCenter.fromJson(json);
    case 'bottom':
      return BlazeCaptionsYPositionBottom.fromJson(json);
    case 'custom':
      return BlazeCaptionsYPositionCustom.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'BlazeCaptionsYPosition',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BlazeCaptionsYPosition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() center,
    required TResult Function() bottom,
    required TResult Function(int offsetPercent) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? center,
    TResult? Function()? bottom,
    TResult? Function(int offsetPercent)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? center,
    TResult Function()? bottom,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsYPositionTop value) top,
    required TResult Function(BlazeCaptionsYPositionCenter value) center,
    required TResult Function(BlazeCaptionsYPositionBottom value) bottom,
    required TResult Function(BlazeCaptionsYPositionCustom value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsYPositionTop value)? top,
    TResult? Function(BlazeCaptionsYPositionCenter value)? center,
    TResult? Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult? Function(BlazeCaptionsYPositionCustom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsYPositionTop value)? top,
    TResult Function(BlazeCaptionsYPositionCenter value)? center,
    TResult Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult Function(BlazeCaptionsYPositionCustom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeCaptionsYPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeCaptionsYPositionCopyWith<$Res> {
  factory $BlazeCaptionsYPositionCopyWith(BlazeCaptionsYPosition value,
          $Res Function(BlazeCaptionsYPosition) then) =
      _$BlazeCaptionsYPositionCopyWithImpl<$Res, BlazeCaptionsYPosition>;
}

/// @nodoc
class _$BlazeCaptionsYPositionCopyWithImpl<$Res,
        $Val extends BlazeCaptionsYPosition>
    implements $BlazeCaptionsYPositionCopyWith<$Res> {
  _$BlazeCaptionsYPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeCaptionsYPosition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlazeCaptionsYPositionTopImplCopyWith<$Res> {
  factory _$$BlazeCaptionsYPositionTopImplCopyWith(
          _$BlazeCaptionsYPositionTopImpl value,
          $Res Function(_$BlazeCaptionsYPositionTopImpl) then) =
      __$$BlazeCaptionsYPositionTopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeCaptionsYPositionTopImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsYPositionCopyWithImpl<$Res,
        _$BlazeCaptionsYPositionTopImpl>
    implements _$$BlazeCaptionsYPositionTopImplCopyWith<$Res> {
  __$$BlazeCaptionsYPositionTopImplCopyWithImpl(
      _$BlazeCaptionsYPositionTopImpl _value,
      $Res Function(_$BlazeCaptionsYPositionTopImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsYPosition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsYPositionTopImpl implements BlazeCaptionsYPositionTop {
  const _$BlazeCaptionsYPositionTopImpl({final String? $type})
      : $type = $type ?? 'top';

  factory _$BlazeCaptionsYPositionTopImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeCaptionsYPositionTopImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeCaptionsYPosition.top()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsYPositionTopImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() center,
    required TResult Function() bottom,
    required TResult Function(int offsetPercent) custom,
  }) {
    return top();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? center,
    TResult? Function()? bottom,
    TResult? Function(int offsetPercent)? custom,
  }) {
    return top?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? center,
    TResult Function()? bottom,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) {
    if (top != null) {
      return top();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsYPositionTop value) top,
    required TResult Function(BlazeCaptionsYPositionCenter value) center,
    required TResult Function(BlazeCaptionsYPositionBottom value) bottom,
    required TResult Function(BlazeCaptionsYPositionCustom value) custom,
  }) {
    return top(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsYPositionTop value)? top,
    TResult? Function(BlazeCaptionsYPositionCenter value)? center,
    TResult? Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult? Function(BlazeCaptionsYPositionCustom value)? custom,
  }) {
    return top?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsYPositionTop value)? top,
    TResult Function(BlazeCaptionsYPositionCenter value)? center,
    TResult Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult Function(BlazeCaptionsYPositionCustom value)? custom,
    required TResult orElse(),
  }) {
    if (top != null) {
      return top(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsYPositionTopImplToJson(
      this,
    );
  }
}

abstract class BlazeCaptionsYPositionTop implements BlazeCaptionsYPosition {
  const factory BlazeCaptionsYPositionTop() = _$BlazeCaptionsYPositionTopImpl;

  factory BlazeCaptionsYPositionTop.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsYPositionTopImpl.fromJson;
}

/// @nodoc
abstract class _$$BlazeCaptionsYPositionCenterImplCopyWith<$Res> {
  factory _$$BlazeCaptionsYPositionCenterImplCopyWith(
          _$BlazeCaptionsYPositionCenterImpl value,
          $Res Function(_$BlazeCaptionsYPositionCenterImpl) then) =
      __$$BlazeCaptionsYPositionCenterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeCaptionsYPositionCenterImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsYPositionCopyWithImpl<$Res,
        _$BlazeCaptionsYPositionCenterImpl>
    implements _$$BlazeCaptionsYPositionCenterImplCopyWith<$Res> {
  __$$BlazeCaptionsYPositionCenterImplCopyWithImpl(
      _$BlazeCaptionsYPositionCenterImpl _value,
      $Res Function(_$BlazeCaptionsYPositionCenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsYPosition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsYPositionCenterImpl
    implements BlazeCaptionsYPositionCenter {
  const _$BlazeCaptionsYPositionCenterImpl({final String? $type})
      : $type = $type ?? 'center';

  factory _$BlazeCaptionsYPositionCenterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCaptionsYPositionCenterImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeCaptionsYPosition.center()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsYPositionCenterImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() center,
    required TResult Function() bottom,
    required TResult Function(int offsetPercent) custom,
  }) {
    return center();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? center,
    TResult? Function()? bottom,
    TResult? Function(int offsetPercent)? custom,
  }) {
    return center?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? center,
    TResult Function()? bottom,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) {
    if (center != null) {
      return center();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsYPositionTop value) top,
    required TResult Function(BlazeCaptionsYPositionCenter value) center,
    required TResult Function(BlazeCaptionsYPositionBottom value) bottom,
    required TResult Function(BlazeCaptionsYPositionCustom value) custom,
  }) {
    return center(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsYPositionTop value)? top,
    TResult? Function(BlazeCaptionsYPositionCenter value)? center,
    TResult? Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult? Function(BlazeCaptionsYPositionCustom value)? custom,
  }) {
    return center?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsYPositionTop value)? top,
    TResult Function(BlazeCaptionsYPositionCenter value)? center,
    TResult Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult Function(BlazeCaptionsYPositionCustom value)? custom,
    required TResult orElse(),
  }) {
    if (center != null) {
      return center(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsYPositionCenterImplToJson(
      this,
    );
  }
}

abstract class BlazeCaptionsYPositionCenter implements BlazeCaptionsYPosition {
  const factory BlazeCaptionsYPositionCenter() =
      _$BlazeCaptionsYPositionCenterImpl;

  factory BlazeCaptionsYPositionCenter.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsYPositionCenterImpl.fromJson;
}

/// @nodoc
abstract class _$$BlazeCaptionsYPositionBottomImplCopyWith<$Res> {
  factory _$$BlazeCaptionsYPositionBottomImplCopyWith(
          _$BlazeCaptionsYPositionBottomImpl value,
          $Res Function(_$BlazeCaptionsYPositionBottomImpl) then) =
      __$$BlazeCaptionsYPositionBottomImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlazeCaptionsYPositionBottomImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsYPositionCopyWithImpl<$Res,
        _$BlazeCaptionsYPositionBottomImpl>
    implements _$$BlazeCaptionsYPositionBottomImplCopyWith<$Res> {
  __$$BlazeCaptionsYPositionBottomImplCopyWithImpl(
      _$BlazeCaptionsYPositionBottomImpl _value,
      $Res Function(_$BlazeCaptionsYPositionBottomImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsYPosition
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsYPositionBottomImpl
    implements BlazeCaptionsYPositionBottom {
  const _$BlazeCaptionsYPositionBottomImpl({final String? $type})
      : $type = $type ?? 'bottom';

  factory _$BlazeCaptionsYPositionBottomImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCaptionsYPositionBottomImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeCaptionsYPosition.bottom()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsYPositionBottomImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() center,
    required TResult Function() bottom,
    required TResult Function(int offsetPercent) custom,
  }) {
    return bottom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? center,
    TResult? Function()? bottom,
    TResult? Function(int offsetPercent)? custom,
  }) {
    return bottom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? center,
    TResult Function()? bottom,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) {
    if (bottom != null) {
      return bottom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsYPositionTop value) top,
    required TResult Function(BlazeCaptionsYPositionCenter value) center,
    required TResult Function(BlazeCaptionsYPositionBottom value) bottom,
    required TResult Function(BlazeCaptionsYPositionCustom value) custom,
  }) {
    return bottom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsYPositionTop value)? top,
    TResult? Function(BlazeCaptionsYPositionCenter value)? center,
    TResult? Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult? Function(BlazeCaptionsYPositionCustom value)? custom,
  }) {
    return bottom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsYPositionTop value)? top,
    TResult Function(BlazeCaptionsYPositionCenter value)? center,
    TResult Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult Function(BlazeCaptionsYPositionCustom value)? custom,
    required TResult orElse(),
  }) {
    if (bottom != null) {
      return bottom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsYPositionBottomImplToJson(
      this,
    );
  }
}

abstract class BlazeCaptionsYPositionBottom implements BlazeCaptionsYPosition {
  const factory BlazeCaptionsYPositionBottom() =
      _$BlazeCaptionsYPositionBottomImpl;

  factory BlazeCaptionsYPositionBottom.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsYPositionBottomImpl.fromJson;
}

/// @nodoc
abstract class _$$BlazeCaptionsYPositionCustomImplCopyWith<$Res> {
  factory _$$BlazeCaptionsYPositionCustomImplCopyWith(
          _$BlazeCaptionsYPositionCustomImpl value,
          $Res Function(_$BlazeCaptionsYPositionCustomImpl) then) =
      __$$BlazeCaptionsYPositionCustomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int offsetPercent});
}

/// @nodoc
class __$$BlazeCaptionsYPositionCustomImplCopyWithImpl<$Res>
    extends _$BlazeCaptionsYPositionCopyWithImpl<$Res,
        _$BlazeCaptionsYPositionCustomImpl>
    implements _$$BlazeCaptionsYPositionCustomImplCopyWith<$Res> {
  __$$BlazeCaptionsYPositionCustomImplCopyWithImpl(
      _$BlazeCaptionsYPositionCustomImpl _value,
      $Res Function(_$BlazeCaptionsYPositionCustomImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeCaptionsYPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsetPercent = null,
  }) {
    return _then(_$BlazeCaptionsYPositionCustomImpl(
      offsetPercent: null == offsetPercent
          ? _value.offsetPercent
          : offsetPercent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeCaptionsYPositionCustomImpl
    implements BlazeCaptionsYPositionCustom {
  const _$BlazeCaptionsYPositionCustomImpl(
      {required this.offsetPercent, final String? $type})
      : $type = $type ?? 'custom';

  factory _$BlazeCaptionsYPositionCustomImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeCaptionsYPositionCustomImplFromJson(json);

  @override
  final int offsetPercent;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeCaptionsYPosition.custom(offsetPercent: $offsetPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeCaptionsYPositionCustomImpl &&
            (identical(other.offsetPercent, offsetPercent) ||
                other.offsetPercent == offsetPercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offsetPercent);

  /// Create a copy of BlazeCaptionsYPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeCaptionsYPositionCustomImplCopyWith<
          _$BlazeCaptionsYPositionCustomImpl>
      get copyWith => __$$BlazeCaptionsYPositionCustomImplCopyWithImpl<
          _$BlazeCaptionsYPositionCustomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() center,
    required TResult Function() bottom,
    required TResult Function(int offsetPercent) custom,
  }) {
    return custom(offsetPercent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? center,
    TResult? Function()? bottom,
    TResult? Function(int offsetPercent)? custom,
  }) {
    return custom?.call(offsetPercent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? center,
    TResult Function()? bottom,
    TResult Function(int offsetPercent)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(offsetPercent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeCaptionsYPositionTop value) top,
    required TResult Function(BlazeCaptionsYPositionCenter value) center,
    required TResult Function(BlazeCaptionsYPositionBottom value) bottom,
    required TResult Function(BlazeCaptionsYPositionCustom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeCaptionsYPositionTop value)? top,
    TResult? Function(BlazeCaptionsYPositionCenter value)? center,
    TResult? Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult? Function(BlazeCaptionsYPositionCustom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeCaptionsYPositionTop value)? top,
    TResult Function(BlazeCaptionsYPositionCenter value)? center,
    TResult Function(BlazeCaptionsYPositionBottom value)? bottom,
    TResult Function(BlazeCaptionsYPositionCustom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeCaptionsYPositionCustomImplToJson(
      this,
    );
  }
}

abstract class BlazeCaptionsYPositionCustom implements BlazeCaptionsYPosition {
  const factory BlazeCaptionsYPositionCustom(
      {required final int offsetPercent}) = _$BlazeCaptionsYPositionCustomImpl;

  factory BlazeCaptionsYPositionCustom.fromJson(Map<String, dynamic> json) =
      _$BlazeCaptionsYPositionCustomImpl.fromJson;

  int get offsetPercent;

  /// Create a copy of BlazeCaptionsYPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeCaptionsYPositionCustomImplCopyWith<
          _$BlazeCaptionsYPositionCustomImpl>
      get copyWith => throw _privateConstructorUsedError;
}
