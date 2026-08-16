// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos_player_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeVideosPlayerStyle _$BlazeVideosPlayerStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosPlayerStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosPlayerStyle {
  BlazeVideosPlayerHeadingTextStyle? get headingText =>
      throw _privateConstructorUsedError;
  BlazeVideosPlayerButtonsStyle? get buttons =>
      throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  BlazeVideosPlayerCtaStyle? get cta => throw _privateConstructorUsedError;
  BlazeVideosPlayerSeekBarStyle? get seekBar =>
      throw _privateConstructorUsedError;

  /// How long, in milliseconds, the controls overlay stays visible before
  /// auto-hiding after it is shown.
  ///
  /// Non-positive values (zero or negative) are rejected natively and fall
  /// back to the SDK default. Omit to keep the preset value.
  int? get overlayVisibilityThresholdMs => throw _privateConstructorUsedError;

  /// Styles the rendered captions text. To style the CC toggle button
  /// itself, use [BlazeVideosPlayerButtonsStyle.captions].
  BlazeCaptionsStyle? get captions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosPlayerStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosPlayerStyleCopyWith<BlazeVideosPlayerStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosPlayerStyleCopyWith<$Res> {
  factory $BlazeVideosPlayerStyleCopyWith(BlazeVideosPlayerStyle value,
          $Res Function(BlazeVideosPlayerStyle) then) =
      _$BlazeVideosPlayerStyleCopyWithImpl<$Res, BlazeVideosPlayerStyle>;
  @useResult
  $Res call(
      {BlazeVideosPlayerHeadingTextStyle? headingText,
      BlazeVideosPlayerButtonsStyle? buttons,
      String? backgroundColor,
      BlazeVideosPlayerCtaStyle? cta,
      BlazeVideosPlayerSeekBarStyle? seekBar,
      int? overlayVisibilityThresholdMs,
      BlazeCaptionsStyle? captions});

  $BlazeVideosPlayerHeadingTextStyleCopyWith<$Res>? get headingText;
  $BlazeVideosPlayerButtonsStyleCopyWith<$Res>? get buttons;
  $BlazeVideosPlayerCtaStyleCopyWith<$Res>? get cta;
  $BlazeVideosPlayerSeekBarStyleCopyWith<$Res>? get seekBar;
  $BlazeCaptionsStyleCopyWith<$Res>? get captions;
}

/// @nodoc
class _$BlazeVideosPlayerStyleCopyWithImpl<$Res,
        $Val extends BlazeVideosPlayerStyle>
    implements $BlazeVideosPlayerStyleCopyWith<$Res> {
  _$BlazeVideosPlayerStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headingText = freezed,
    Object? buttons = freezed,
    Object? backgroundColor = freezed,
    Object? cta = freezed,
    Object? seekBar = freezed,
    Object? overlayVisibilityThresholdMs = freezed,
    Object? captions = freezed,
  }) {
    return _then(_value.copyWith(
      headingText: freezed == headingText
          ? _value.headingText
          : headingText // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerHeadingTextStyle?,
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerButtonsStyle?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      cta: freezed == cta
          ? _value.cta
          : cta // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerCtaStyle?,
      seekBar: freezed == seekBar
          ? _value.seekBar
          : seekBar // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerSeekBarStyle?,
      overlayVisibilityThresholdMs: freezed == overlayVisibilityThresholdMs
          ? _value.overlayVisibilityThresholdMs
          : overlayVisibilityThresholdMs // ignore: cast_nullable_to_non_nullable
              as int?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as BlazeCaptionsStyle?,
    ) as $Val);
  }

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeVideosPlayerHeadingTextStyleCopyWith<$Res>? get headingText {
    if (_value.headingText == null) {
      return null;
    }

    return $BlazeVideosPlayerHeadingTextStyleCopyWith<$Res>(_value.headingText!,
        (value) {
      return _then(_value.copyWith(headingText: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeVideosPlayerButtonsStyleCopyWith<$Res>? get buttons {
    if (_value.buttons == null) {
      return null;
    }

    return $BlazeVideosPlayerButtonsStyleCopyWith<$Res>(_value.buttons!,
        (value) {
      return _then(_value.copyWith(buttons: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeVideosPlayerCtaStyleCopyWith<$Res>? get cta {
    if (_value.cta == null) {
      return null;
    }

    return $BlazeVideosPlayerCtaStyleCopyWith<$Res>(_value.cta!, (value) {
      return _then(_value.copyWith(cta: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeVideosPlayerSeekBarStyleCopyWith<$Res>? get seekBar {
    if (_value.seekBar == null) {
      return null;
    }

    return $BlazeVideosPlayerSeekBarStyleCopyWith<$Res>(_value.seekBar!,
        (value) {
      return _then(_value.copyWith(seekBar: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeCaptionsStyleCopyWith<$Res>? get captions {
    if (_value.captions == null) {
      return null;
    }

    return $BlazeCaptionsStyleCopyWith<$Res>(_value.captions!, (value) {
      return _then(_value.copyWith(captions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeVideosPlayerStyleImplCopyWith<$Res>
    implements $BlazeVideosPlayerStyleCopyWith<$Res> {
  factory _$$BlazeVideosPlayerStyleImplCopyWith(
          _$BlazeVideosPlayerStyleImpl value,
          $Res Function(_$BlazeVideosPlayerStyleImpl) then) =
      __$$BlazeVideosPlayerStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeVideosPlayerHeadingTextStyle? headingText,
      BlazeVideosPlayerButtonsStyle? buttons,
      String? backgroundColor,
      BlazeVideosPlayerCtaStyle? cta,
      BlazeVideosPlayerSeekBarStyle? seekBar,
      int? overlayVisibilityThresholdMs,
      BlazeCaptionsStyle? captions});

  @override
  $BlazeVideosPlayerHeadingTextStyleCopyWith<$Res>? get headingText;
  @override
  $BlazeVideosPlayerButtonsStyleCopyWith<$Res>? get buttons;
  @override
  $BlazeVideosPlayerCtaStyleCopyWith<$Res>? get cta;
  @override
  $BlazeVideosPlayerSeekBarStyleCopyWith<$Res>? get seekBar;
  @override
  $BlazeCaptionsStyleCopyWith<$Res>? get captions;
}

/// @nodoc
class __$$BlazeVideosPlayerStyleImplCopyWithImpl<$Res>
    extends _$BlazeVideosPlayerStyleCopyWithImpl<$Res,
        _$BlazeVideosPlayerStyleImpl>
    implements _$$BlazeVideosPlayerStyleImplCopyWith<$Res> {
  __$$BlazeVideosPlayerStyleImplCopyWithImpl(
      _$BlazeVideosPlayerStyleImpl _value,
      $Res Function(_$BlazeVideosPlayerStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headingText = freezed,
    Object? buttons = freezed,
    Object? backgroundColor = freezed,
    Object? cta = freezed,
    Object? seekBar = freezed,
    Object? overlayVisibilityThresholdMs = freezed,
    Object? captions = freezed,
  }) {
    return _then(_$BlazeVideosPlayerStyleImpl(
      headingText: freezed == headingText
          ? _value.headingText
          : headingText // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerHeadingTextStyle?,
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerButtonsStyle?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      cta: freezed == cta
          ? _value.cta
          : cta // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerCtaStyle?,
      seekBar: freezed == seekBar
          ? _value.seekBar
          : seekBar // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerSeekBarStyle?,
      overlayVisibilityThresholdMs: freezed == overlayVisibilityThresholdMs
          ? _value.overlayVisibilityThresholdMs
          : overlayVisibilityThresholdMs // ignore: cast_nullable_to_non_nullable
              as int?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as BlazeCaptionsStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosPlayerStyleImpl implements _BlazeVideosPlayerStyle {
  const _$BlazeVideosPlayerStyleImpl(
      {this.headingText,
      this.buttons,
      this.backgroundColor,
      this.cta,
      this.seekBar,
      this.overlayVisibilityThresholdMs,
      this.captions});

  factory _$BlazeVideosPlayerStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeVideosPlayerStyleImplFromJson(json);

  @override
  final BlazeVideosPlayerHeadingTextStyle? headingText;
  @override
  final BlazeVideosPlayerButtonsStyle? buttons;
  @override
  final String? backgroundColor;
  @override
  final BlazeVideosPlayerCtaStyle? cta;
  @override
  final BlazeVideosPlayerSeekBarStyle? seekBar;

  /// How long, in milliseconds, the controls overlay stays visible before
  /// auto-hiding after it is shown.
  ///
  /// Non-positive values (zero or negative) are rejected natively and fall
  /// back to the SDK default. Omit to keep the preset value.
  @override
  final int? overlayVisibilityThresholdMs;

  /// Styles the rendered captions text. To style the CC toggle button
  /// itself, use [BlazeVideosPlayerButtonsStyle.captions].
  @override
  final BlazeCaptionsStyle? captions;

  @override
  String toString() {
    return 'BlazeVideosPlayerStyle(headingText: $headingText, buttons: $buttons, backgroundColor: $backgroundColor, cta: $cta, seekBar: $seekBar, overlayVisibilityThresholdMs: $overlayVisibilityThresholdMs, captions: $captions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosPlayerStyleImpl &&
            (identical(other.headingText, headingText) ||
                other.headingText == headingText) &&
            (identical(other.buttons, buttons) || other.buttons == buttons) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.cta, cta) || other.cta == cta) &&
            (identical(other.seekBar, seekBar) || other.seekBar == seekBar) &&
            (identical(other.overlayVisibilityThresholdMs,
                    overlayVisibilityThresholdMs) ||
                other.overlayVisibilityThresholdMs ==
                    overlayVisibilityThresholdMs) &&
            (identical(other.captions, captions) ||
                other.captions == captions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, headingText, buttons,
      backgroundColor, cta, seekBar, overlayVisibilityThresholdMs, captions);

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosPlayerStyleImplCopyWith<_$BlazeVideosPlayerStyleImpl>
      get copyWith => __$$BlazeVideosPlayerStyleImplCopyWithImpl<
          _$BlazeVideosPlayerStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosPlayerStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosPlayerStyle implements BlazeVideosPlayerStyle {
  const factory _BlazeVideosPlayerStyle(
      {final BlazeVideosPlayerHeadingTextStyle? headingText,
      final BlazeVideosPlayerButtonsStyle? buttons,
      final String? backgroundColor,
      final BlazeVideosPlayerCtaStyle? cta,
      final BlazeVideosPlayerSeekBarStyle? seekBar,
      final int? overlayVisibilityThresholdMs,
      final BlazeCaptionsStyle? captions}) = _$BlazeVideosPlayerStyleImpl;

  factory _BlazeVideosPlayerStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeVideosPlayerStyleImpl.fromJson;

  @override
  BlazeVideosPlayerHeadingTextStyle? get headingText;
  @override
  BlazeVideosPlayerButtonsStyle? get buttons;
  @override
  String? get backgroundColor;
  @override
  BlazeVideosPlayerCtaStyle? get cta;
  @override
  BlazeVideosPlayerSeekBarStyle? get seekBar;

  /// How long, in milliseconds, the controls overlay stays visible before
  /// auto-hiding after it is shown.
  ///
  /// Non-positive values (zero or negative) are rejected natively and fall
  /// back to the SDK default. Omit to keep the preset value.
  @override
  int? get overlayVisibilityThresholdMs;

  /// Styles the rendered captions text. To style the CC toggle button
  /// itself, use [BlazeVideosPlayerButtonsStyle.captions].
  @override
  BlazeCaptionsStyle? get captions;

  /// Create a copy of BlazeVideosPlayerStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosPlayerStyleImplCopyWith<_$BlazeVideosPlayerStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeVideosPlayerHeadingTextStyle _$BlazeVideosPlayerHeadingTextStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosPlayerHeadingTextStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosPlayerHeadingTextStyle {
  BlazeFont? get font => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  double? get textSize => throw _privateConstructorUsedError;
  BlazeVideosPlayerHeadingTextContentSource? get contentSource =>
      throw _privateConstructorUsedError;
  bool? get isVisible => throw _privateConstructorUsedError;
  int? get numberOfLines => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerHeadingTextStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerHeadingTextStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerHeadingTextStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosPlayerHeadingTextStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosPlayerHeadingTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosPlayerHeadingTextStyleCopyWith<BlazeVideosPlayerHeadingTextStyle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosPlayerHeadingTextStyleCopyWith<$Res> {
  factory $BlazeVideosPlayerHeadingTextStyleCopyWith(
          BlazeVideosPlayerHeadingTextStyle value,
          $Res Function(BlazeVideosPlayerHeadingTextStyle) then) =
      _$BlazeVideosPlayerHeadingTextStyleCopyWithImpl<$Res,
          BlazeVideosPlayerHeadingTextStyle>;
  @useResult
  $Res call(
      {BlazeFont? font,
      String? textColor,
      double? textSize,
      BlazeVideosPlayerHeadingTextContentSource? contentSource,
      bool? isVisible,
      int? numberOfLines});

  $BlazeFontCopyWith<$Res>? get font;
}

/// @nodoc
class _$BlazeVideosPlayerHeadingTextStyleCopyWithImpl<$Res,
        $Val extends BlazeVideosPlayerHeadingTextStyle>
    implements $BlazeVideosPlayerHeadingTextStyleCopyWith<$Res> {
  _$BlazeVideosPlayerHeadingTextStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosPlayerHeadingTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = freezed,
    Object? textColor = freezed,
    Object? textSize = freezed,
    Object? contentSource = freezed,
    Object? isVisible = freezed,
    Object? numberOfLines = freezed,
  }) {
    return _then(_value.copyWith(
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      contentSource: freezed == contentSource
          ? _value.contentSource
          : contentSource // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerHeadingTextContentSource?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      numberOfLines: freezed == numberOfLines
          ? _value.numberOfLines
          : numberOfLines // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of BlazeVideosPlayerHeadingTextStyle
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
abstract class _$$BlazeVideosPlayerHeadingTextStyleImplCopyWith<$Res>
    implements $BlazeVideosPlayerHeadingTextStyleCopyWith<$Res> {
  factory _$$BlazeVideosPlayerHeadingTextStyleImplCopyWith(
          _$BlazeVideosPlayerHeadingTextStyleImpl value,
          $Res Function(_$BlazeVideosPlayerHeadingTextStyleImpl) then) =
      __$$BlazeVideosPlayerHeadingTextStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeFont? font,
      String? textColor,
      double? textSize,
      BlazeVideosPlayerHeadingTextContentSource? contentSource,
      bool? isVisible,
      int? numberOfLines});

  @override
  $BlazeFontCopyWith<$Res>? get font;
}

/// @nodoc
class __$$BlazeVideosPlayerHeadingTextStyleImplCopyWithImpl<$Res>
    extends _$BlazeVideosPlayerHeadingTextStyleCopyWithImpl<$Res,
        _$BlazeVideosPlayerHeadingTextStyleImpl>
    implements _$$BlazeVideosPlayerHeadingTextStyleImplCopyWith<$Res> {
  __$$BlazeVideosPlayerHeadingTextStyleImplCopyWithImpl(
      _$BlazeVideosPlayerHeadingTextStyleImpl _value,
      $Res Function(_$BlazeVideosPlayerHeadingTextStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosPlayerHeadingTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = freezed,
    Object? textColor = freezed,
    Object? textSize = freezed,
    Object? contentSource = freezed,
    Object? isVisible = freezed,
    Object? numberOfLines = freezed,
  }) {
    return _then(_$BlazeVideosPlayerHeadingTextStyleImpl(
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      contentSource: freezed == contentSource
          ? _value.contentSource
          : contentSource // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerHeadingTextContentSource?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      numberOfLines: freezed == numberOfLines
          ? _value.numberOfLines
          : numberOfLines // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosPlayerHeadingTextStyleImpl
    implements _BlazeVideosPlayerHeadingTextStyle {
  const _$BlazeVideosPlayerHeadingTextStyleImpl(
      {this.font,
      this.textColor,
      this.textSize,
      this.contentSource,
      this.isVisible,
      this.numberOfLines});

  factory _$BlazeVideosPlayerHeadingTextStyleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeVideosPlayerHeadingTextStyleImplFromJson(json);

  @override
  final BlazeFont? font;
  @override
  final String? textColor;
  @override
  final double? textSize;
  @override
  final BlazeVideosPlayerHeadingTextContentSource? contentSource;
  @override
  final bool? isVisible;
  @override
  final int? numberOfLines;

  @override
  String toString() {
    return 'BlazeVideosPlayerHeadingTextStyle(font: $font, textColor: $textColor, textSize: $textSize, contentSource: $contentSource, isVisible: $isVisible, numberOfLines: $numberOfLines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosPlayerHeadingTextStyleImpl &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize) &&
            (identical(other.contentSource, contentSource) ||
                other.contentSource == contentSource) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.numberOfLines, numberOfLines) ||
                other.numberOfLines == numberOfLines));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, font, textColor, textSize,
      contentSource, isVisible, numberOfLines);

  /// Create a copy of BlazeVideosPlayerHeadingTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosPlayerHeadingTextStyleImplCopyWith<
          _$BlazeVideosPlayerHeadingTextStyleImpl>
      get copyWith => __$$BlazeVideosPlayerHeadingTextStyleImplCopyWithImpl<
          _$BlazeVideosPlayerHeadingTextStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerHeadingTextStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerHeadingTextStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerHeadingTextStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosPlayerHeadingTextStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosPlayerHeadingTextStyle
    implements BlazeVideosPlayerHeadingTextStyle {
  const factory _BlazeVideosPlayerHeadingTextStyle(
      {final BlazeFont? font,
      final String? textColor,
      final double? textSize,
      final BlazeVideosPlayerHeadingTextContentSource? contentSource,
      final bool? isVisible,
      final int? numberOfLines}) = _$BlazeVideosPlayerHeadingTextStyleImpl;

  factory _BlazeVideosPlayerHeadingTextStyle.fromJson(
          Map<String, dynamic> json) =
      _$BlazeVideosPlayerHeadingTextStyleImpl.fromJson;

  @override
  BlazeFont? get font;
  @override
  String? get textColor;
  @override
  double? get textSize;
  @override
  BlazeVideosPlayerHeadingTextContentSource? get contentSource;
  @override
  bool? get isVisible;
  @override
  int? get numberOfLines;

  /// Create a copy of BlazeVideosPlayerHeadingTextStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosPlayerHeadingTextStyleImplCopyWith<
          _$BlazeVideosPlayerHeadingTextStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeVideosPlayerButtonsStyle _$BlazeVideosPlayerButtonsStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosPlayerButtonsStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosPlayerButtonsStyle {
  BlazePlayerButtonStyle? get mute => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get exit => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get share => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get like => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get playPause => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get previous => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get next => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get captions => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get forceRotation =>
      throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get casting => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get pictureInPicture =>
      throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get seekForward => throw _privateConstructorUsedError;
  BlazePlayerButtonStyle? get seekBackward =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerButtonsStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerButtonsStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerButtonsStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosPlayerButtonsStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosPlayerButtonsStyleCopyWith<BlazeVideosPlayerButtonsStyle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosPlayerButtonsStyleCopyWith<$Res> {
  factory $BlazeVideosPlayerButtonsStyleCopyWith(
          BlazeVideosPlayerButtonsStyle value,
          $Res Function(BlazeVideosPlayerButtonsStyle) then) =
      _$BlazeVideosPlayerButtonsStyleCopyWithImpl<$Res,
          BlazeVideosPlayerButtonsStyle>;
  @useResult
  $Res call(
      {BlazePlayerButtonStyle? mute,
      BlazePlayerButtonStyle? exit,
      BlazePlayerButtonStyle? share,
      BlazePlayerButtonStyle? like,
      BlazePlayerButtonStyle? playPause,
      BlazePlayerButtonStyle? previous,
      BlazePlayerButtonStyle? next,
      BlazePlayerButtonStyle? captions,
      BlazePlayerButtonStyle? forceRotation,
      BlazePlayerButtonStyle? casting,
      BlazePlayerButtonStyle? pictureInPicture,
      BlazePlayerButtonStyle? seekForward,
      BlazePlayerButtonStyle? seekBackward});

  $BlazePlayerButtonStyleCopyWith<$Res>? get mute;
  $BlazePlayerButtonStyleCopyWith<$Res>? get exit;
  $BlazePlayerButtonStyleCopyWith<$Res>? get share;
  $BlazePlayerButtonStyleCopyWith<$Res>? get like;
  $BlazePlayerButtonStyleCopyWith<$Res>? get playPause;
  $BlazePlayerButtonStyleCopyWith<$Res>? get previous;
  $BlazePlayerButtonStyleCopyWith<$Res>? get next;
  $BlazePlayerButtonStyleCopyWith<$Res>? get captions;
  $BlazePlayerButtonStyleCopyWith<$Res>? get forceRotation;
  $BlazePlayerButtonStyleCopyWith<$Res>? get casting;
  $BlazePlayerButtonStyleCopyWith<$Res>? get pictureInPicture;
  $BlazePlayerButtonStyleCopyWith<$Res>? get seekForward;
  $BlazePlayerButtonStyleCopyWith<$Res>? get seekBackward;
}

/// @nodoc
class _$BlazeVideosPlayerButtonsStyleCopyWithImpl<$Res,
        $Val extends BlazeVideosPlayerButtonsStyle>
    implements $BlazeVideosPlayerButtonsStyleCopyWith<$Res> {
  _$BlazeVideosPlayerButtonsStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mute = freezed,
    Object? exit = freezed,
    Object? share = freezed,
    Object? like = freezed,
    Object? playPause = freezed,
    Object? previous = freezed,
    Object? next = freezed,
    Object? captions = freezed,
    Object? forceRotation = freezed,
    Object? casting = freezed,
    Object? pictureInPicture = freezed,
    Object? seekForward = freezed,
    Object? seekBackward = freezed,
  }) {
    return _then(_value.copyWith(
      mute: freezed == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      exit: freezed == exit
          ? _value.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      playPause: freezed == playPause
          ? _value.playPause
          : playPause // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      forceRotation: freezed == forceRotation
          ? _value.forceRotation
          : forceRotation // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      casting: freezed == casting
          ? _value.casting
          : casting // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      pictureInPicture: freezed == pictureInPicture
          ? _value.pictureInPicture
          : pictureInPicture // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      seekForward: freezed == seekForward
          ? _value.seekForward
          : seekForward // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      seekBackward: freezed == seekBackward
          ? _value.seekBackward
          : seekBackward // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
    ) as $Val);
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get mute {
    if (_value.mute == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.mute!, (value) {
      return _then(_value.copyWith(mute: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get exit {
    if (_value.exit == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.exit!, (value) {
      return _then(_value.copyWith(exit: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get share {
    if (_value.share == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.share!, (value) {
      return _then(_value.copyWith(share: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get like {
    if (_value.like == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.like!, (value) {
      return _then(_value.copyWith(like: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get playPause {
    if (_value.playPause == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.playPause!, (value) {
      return _then(_value.copyWith(playPause: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get next {
    if (_value.next == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.next!, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get captions {
    if (_value.captions == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.captions!, (value) {
      return _then(_value.copyWith(captions: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get forceRotation {
    if (_value.forceRotation == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.forceRotation!,
        (value) {
      return _then(_value.copyWith(forceRotation: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get casting {
    if (_value.casting == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.casting!, (value) {
      return _then(_value.copyWith(casting: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get pictureInPicture {
    if (_value.pictureInPicture == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.pictureInPicture!,
        (value) {
      return _then(_value.copyWith(pictureInPicture: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get seekForward {
    if (_value.seekForward == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.seekForward!, (value) {
      return _then(_value.copyWith(seekForward: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazePlayerButtonStyleCopyWith<$Res>? get seekBackward {
    if (_value.seekBackward == null) {
      return null;
    }

    return $BlazePlayerButtonStyleCopyWith<$Res>(_value.seekBackward!, (value) {
      return _then(_value.copyWith(seekBackward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeVideosPlayerButtonsStyleImplCopyWith<$Res>
    implements $BlazeVideosPlayerButtonsStyleCopyWith<$Res> {
  factory _$$BlazeVideosPlayerButtonsStyleImplCopyWith(
          _$BlazeVideosPlayerButtonsStyleImpl value,
          $Res Function(_$BlazeVideosPlayerButtonsStyleImpl) then) =
      __$$BlazeVideosPlayerButtonsStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazePlayerButtonStyle? mute,
      BlazePlayerButtonStyle? exit,
      BlazePlayerButtonStyle? share,
      BlazePlayerButtonStyle? like,
      BlazePlayerButtonStyle? playPause,
      BlazePlayerButtonStyle? previous,
      BlazePlayerButtonStyle? next,
      BlazePlayerButtonStyle? captions,
      BlazePlayerButtonStyle? forceRotation,
      BlazePlayerButtonStyle? casting,
      BlazePlayerButtonStyle? pictureInPicture,
      BlazePlayerButtonStyle? seekForward,
      BlazePlayerButtonStyle? seekBackward});

  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get mute;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get exit;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get share;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get like;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get playPause;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get previous;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get next;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get captions;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get forceRotation;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get casting;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get pictureInPicture;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get seekForward;
  @override
  $BlazePlayerButtonStyleCopyWith<$Res>? get seekBackward;
}

/// @nodoc
class __$$BlazeVideosPlayerButtonsStyleImplCopyWithImpl<$Res>
    extends _$BlazeVideosPlayerButtonsStyleCopyWithImpl<$Res,
        _$BlazeVideosPlayerButtonsStyleImpl>
    implements _$$BlazeVideosPlayerButtonsStyleImplCopyWith<$Res> {
  __$$BlazeVideosPlayerButtonsStyleImplCopyWithImpl(
      _$BlazeVideosPlayerButtonsStyleImpl _value,
      $Res Function(_$BlazeVideosPlayerButtonsStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mute = freezed,
    Object? exit = freezed,
    Object? share = freezed,
    Object? like = freezed,
    Object? playPause = freezed,
    Object? previous = freezed,
    Object? next = freezed,
    Object? captions = freezed,
    Object? forceRotation = freezed,
    Object? casting = freezed,
    Object? pictureInPicture = freezed,
    Object? seekForward = freezed,
    Object? seekBackward = freezed,
  }) {
    return _then(_$BlazeVideosPlayerButtonsStyleImpl(
      mute: freezed == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      exit: freezed == exit
          ? _value.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      playPause: freezed == playPause
          ? _value.playPause
          : playPause // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      forceRotation: freezed == forceRotation
          ? _value.forceRotation
          : forceRotation // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      casting: freezed == casting
          ? _value.casting
          : casting // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      pictureInPicture: freezed == pictureInPicture
          ? _value.pictureInPicture
          : pictureInPicture // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      seekForward: freezed == seekForward
          ? _value.seekForward
          : seekForward // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
      seekBackward: freezed == seekBackward
          ? _value.seekBackward
          : seekBackward // ignore: cast_nullable_to_non_nullable
              as BlazePlayerButtonStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosPlayerButtonsStyleImpl
    implements _BlazeVideosPlayerButtonsStyle {
  const _$BlazeVideosPlayerButtonsStyleImpl(
      {this.mute,
      this.exit,
      this.share,
      this.like,
      this.playPause,
      this.previous,
      this.next,
      this.captions,
      this.forceRotation,
      this.casting,
      this.pictureInPicture,
      this.seekForward,
      this.seekBackward});

  factory _$BlazeVideosPlayerButtonsStyleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeVideosPlayerButtonsStyleImplFromJson(json);

  @override
  final BlazePlayerButtonStyle? mute;
  @override
  final BlazePlayerButtonStyle? exit;
  @override
  final BlazePlayerButtonStyle? share;
  @override
  final BlazePlayerButtonStyle? like;
  @override
  final BlazePlayerButtonStyle? playPause;
  @override
  final BlazePlayerButtonStyle? previous;
  @override
  final BlazePlayerButtonStyle? next;
  @override
  final BlazePlayerButtonStyle? captions;
  @override
  final BlazePlayerButtonStyle? forceRotation;
  @override
  final BlazePlayerButtonStyle? casting;
  @override
  final BlazePlayerButtonStyle? pictureInPicture;
  @override
  final BlazePlayerButtonStyle? seekForward;
  @override
  final BlazePlayerButtonStyle? seekBackward;

  @override
  String toString() {
    return 'BlazeVideosPlayerButtonsStyle(mute: $mute, exit: $exit, share: $share, like: $like, playPause: $playPause, previous: $previous, next: $next, captions: $captions, forceRotation: $forceRotation, casting: $casting, pictureInPicture: $pictureInPicture, seekForward: $seekForward, seekBackward: $seekBackward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosPlayerButtonsStyleImpl &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.exit, exit) || other.exit == exit) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.playPause, playPause) ||
                other.playPause == playPause) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.captions, captions) ||
                other.captions == captions) &&
            (identical(other.forceRotation, forceRotation) ||
                other.forceRotation == forceRotation) &&
            (identical(other.casting, casting) || other.casting == casting) &&
            (identical(other.pictureInPicture, pictureInPicture) ||
                other.pictureInPicture == pictureInPicture) &&
            (identical(other.seekForward, seekForward) ||
                other.seekForward == seekForward) &&
            (identical(other.seekBackward, seekBackward) ||
                other.seekBackward == seekBackward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mute,
      exit,
      share,
      like,
      playPause,
      previous,
      next,
      captions,
      forceRotation,
      casting,
      pictureInPicture,
      seekForward,
      seekBackward);

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosPlayerButtonsStyleImplCopyWith<
          _$BlazeVideosPlayerButtonsStyleImpl>
      get copyWith => __$$BlazeVideosPlayerButtonsStyleImplCopyWithImpl<
          _$BlazeVideosPlayerButtonsStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerButtonsStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerButtonsStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerButtonsStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosPlayerButtonsStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosPlayerButtonsStyle
    implements BlazeVideosPlayerButtonsStyle {
  const factory _BlazeVideosPlayerButtonsStyle(
          {final BlazePlayerButtonStyle? mute,
          final BlazePlayerButtonStyle? exit,
          final BlazePlayerButtonStyle? share,
          final BlazePlayerButtonStyle? like,
          final BlazePlayerButtonStyle? playPause,
          final BlazePlayerButtonStyle? previous,
          final BlazePlayerButtonStyle? next,
          final BlazePlayerButtonStyle? captions,
          final BlazePlayerButtonStyle? forceRotation,
          final BlazePlayerButtonStyle? casting,
          final BlazePlayerButtonStyle? pictureInPicture,
          final BlazePlayerButtonStyle? seekForward,
          final BlazePlayerButtonStyle? seekBackward}) =
      _$BlazeVideosPlayerButtonsStyleImpl;

  factory _BlazeVideosPlayerButtonsStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeVideosPlayerButtonsStyleImpl.fromJson;

  @override
  BlazePlayerButtonStyle? get mute;
  @override
  BlazePlayerButtonStyle? get exit;
  @override
  BlazePlayerButtonStyle? get share;
  @override
  BlazePlayerButtonStyle? get like;
  @override
  BlazePlayerButtonStyle? get playPause;
  @override
  BlazePlayerButtonStyle? get previous;
  @override
  BlazePlayerButtonStyle? get next;
  @override
  BlazePlayerButtonStyle? get captions;
  @override
  BlazePlayerButtonStyle? get forceRotation;
  @override
  BlazePlayerButtonStyle? get casting;
  @override
  BlazePlayerButtonStyle? get pictureInPicture;
  @override
  BlazePlayerButtonStyle? get seekForward;
  @override
  BlazePlayerButtonStyle? get seekBackward;

  /// Create a copy of BlazeVideosPlayerButtonsStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosPlayerButtonsStyleImplCopyWith<
          _$BlazeVideosPlayerButtonsStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeVideosPlayerCtaStyle _$BlazeVideosPlayerCtaStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosPlayerCtaStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosPlayerCtaStyle {
  double? get cornerRadius => throw _privateConstructorUsedError;
  double? get textSize => throw _privateConstructorUsedError;
  BlazeFont? get font => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  BlazeVideosPlayerCtaIconStyle? get icon => throw _privateConstructorUsedError;
  bool? get isVisible => throw _privateConstructorUsedError;

  /// Fallback border color for the CTA button.
  ///
  /// A border color supplied by the backend/CMS for the CTA takes precedence
  /// when present and parseable; this value is used otherwise. Omit to keep
  /// the preset value (no border).
  String? get borderColor => throw _privateConstructorUsedError;

  /// Fallback border width for the CTA button. See [borderColor] for
  /// precedence rules.
  double? get borderWidth => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerCtaStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosPlayerCtaStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosPlayerCtaStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosPlayerCtaStyleCopyWith<BlazeVideosPlayerCtaStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosPlayerCtaStyleCopyWith<$Res> {
  factory $BlazeVideosPlayerCtaStyleCopyWith(BlazeVideosPlayerCtaStyle value,
          $Res Function(BlazeVideosPlayerCtaStyle) then) =
      _$BlazeVideosPlayerCtaStyleCopyWithImpl<$Res, BlazeVideosPlayerCtaStyle>;
  @useResult
  $Res call(
      {double? cornerRadius,
      double? textSize,
      BlazeFont? font,
      double? width,
      double? height,
      BlazeVideosPlayerCtaIconStyle? icon,
      bool? isVisible,
      String? borderColor,
      double? borderWidth});

  $BlazeFontCopyWith<$Res>? get font;
  $BlazeVideosPlayerCtaIconStyleCopyWith<$Res>? get icon;
}

/// @nodoc
class _$BlazeVideosPlayerCtaStyleCopyWithImpl<$Res,
        $Val extends BlazeVideosPlayerCtaStyle>
    implements $BlazeVideosPlayerCtaStyleCopyWith<$Res> {
  _$BlazeVideosPlayerCtaStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosPlayerCtaStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cornerRadius = freezed,
    Object? textSize = freezed,
    Object? font = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? icon = freezed,
    Object? isVisible = freezed,
    Object? borderColor = freezed,
    Object? borderWidth = freezed,
  }) {
    return _then(_value.copyWith(
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerCtaIconStyle?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      borderWidth: freezed == borderWidth
          ? _value.borderWidth
          : borderWidth // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of BlazeVideosPlayerCtaStyle
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

  /// Create a copy of BlazeVideosPlayerCtaStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeVideosPlayerCtaIconStyleCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $BlazeVideosPlayerCtaIconStyleCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeVideosPlayerCtaStyleImplCopyWith<$Res>
    implements $BlazeVideosPlayerCtaStyleCopyWith<$Res> {
  factory _$$BlazeVideosPlayerCtaStyleImplCopyWith(
          _$BlazeVideosPlayerCtaStyleImpl value,
          $Res Function(_$BlazeVideosPlayerCtaStyleImpl) then) =
      __$$BlazeVideosPlayerCtaStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? cornerRadius,
      double? textSize,
      BlazeFont? font,
      double? width,
      double? height,
      BlazeVideosPlayerCtaIconStyle? icon,
      bool? isVisible,
      String? borderColor,
      double? borderWidth});

  @override
  $BlazeFontCopyWith<$Res>? get font;
  @override
  $BlazeVideosPlayerCtaIconStyleCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$BlazeVideosPlayerCtaStyleImplCopyWithImpl<$Res>
    extends _$BlazeVideosPlayerCtaStyleCopyWithImpl<$Res,
        _$BlazeVideosPlayerCtaStyleImpl>
    implements _$$BlazeVideosPlayerCtaStyleImplCopyWith<$Res> {
  __$$BlazeVideosPlayerCtaStyleImplCopyWithImpl(
      _$BlazeVideosPlayerCtaStyleImpl _value,
      $Res Function(_$BlazeVideosPlayerCtaStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosPlayerCtaStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cornerRadius = freezed,
    Object? textSize = freezed,
    Object? font = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? icon = freezed,
    Object? isVisible = freezed,
    Object? borderColor = freezed,
    Object? borderWidth = freezed,
  }) {
    return _then(_$BlazeVideosPlayerCtaStyleImpl(
      cornerRadius: freezed == cornerRadius
          ? _value.cornerRadius
          : cornerRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      textSize: freezed == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as double?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as BlazeFont?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerCtaIconStyle?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      borderWidth: freezed == borderWidth
          ? _value.borderWidth
          : borderWidth // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosPlayerCtaStyleImpl implements _BlazeVideosPlayerCtaStyle {
  const _$BlazeVideosPlayerCtaStyleImpl(
      {this.cornerRadius,
      this.textSize,
      this.font,
      this.width,
      this.height,
      this.icon,
      this.isVisible,
      this.borderColor,
      this.borderWidth});

  factory _$BlazeVideosPlayerCtaStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeVideosPlayerCtaStyleImplFromJson(json);

  @override
  final double? cornerRadius;
  @override
  final double? textSize;
  @override
  final BlazeFont? font;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final BlazeVideosPlayerCtaIconStyle? icon;
  @override
  final bool? isVisible;

  /// Fallback border color for the CTA button.
  ///
  /// A border color supplied by the backend/CMS for the CTA takes precedence
  /// when present and parseable; this value is used otherwise. Omit to keep
  /// the preset value (no border).
  @override
  final String? borderColor;

  /// Fallback border width for the CTA button. See [borderColor] for
  /// precedence rules.
  @override
  final double? borderWidth;

  @override
  String toString() {
    return 'BlazeVideosPlayerCtaStyle(cornerRadius: $cornerRadius, textSize: $textSize, font: $font, width: $width, height: $height, icon: $icon, isVisible: $isVisible, borderColor: $borderColor, borderWidth: $borderWidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosPlayerCtaStyleImpl &&
            (identical(other.cornerRadius, cornerRadius) ||
                other.cornerRadius == cornerRadius) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize) &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor) &&
            (identical(other.borderWidth, borderWidth) ||
                other.borderWidth == borderWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cornerRadius, textSize, font,
      width, height, icon, isVisible, borderColor, borderWidth);

  /// Create a copy of BlazeVideosPlayerCtaStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosPlayerCtaStyleImplCopyWith<_$BlazeVideosPlayerCtaStyleImpl>
      get copyWith => __$$BlazeVideosPlayerCtaStyleImplCopyWithImpl<
          _$BlazeVideosPlayerCtaStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerCtaStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosPlayerCtaStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosPlayerCtaStyle implements BlazeVideosPlayerCtaStyle {
  const factory _BlazeVideosPlayerCtaStyle(
      {final double? cornerRadius,
      final double? textSize,
      final BlazeFont? font,
      final double? width,
      final double? height,
      final BlazeVideosPlayerCtaIconStyle? icon,
      final bool? isVisible,
      final String? borderColor,
      final double? borderWidth}) = _$BlazeVideosPlayerCtaStyleImpl;

  factory _BlazeVideosPlayerCtaStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeVideosPlayerCtaStyleImpl.fromJson;

  @override
  double? get cornerRadius;
  @override
  double? get textSize;
  @override
  BlazeFont? get font;
  @override
  double? get width;
  @override
  double? get height;
  @override
  BlazeVideosPlayerCtaIconStyle? get icon;
  @override
  bool? get isVisible;

  /// Fallback border color for the CTA button.
  ///
  /// A border color supplied by the backend/CMS for the CTA takes precedence
  /// when present and parseable; this value is used otherwise. Omit to keep
  /// the preset value (no border).
  @override
  String? get borderColor;

  /// Fallback border width for the CTA button. See [borderColor] for
  /// precedence rules.
  @override
  double? get borderWidth;

  /// Create a copy of BlazeVideosPlayerCtaStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosPlayerCtaStyleImplCopyWith<_$BlazeVideosPlayerCtaStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeVideosPlayerCtaIconStyle _$BlazeVideosPlayerCtaIconStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosPlayerCtaIconStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosPlayerCtaIconStyle {
  BlazeImage? get iconImage => throw _privateConstructorUsedError;
  BlazeVideosPlayerCTAIconPositioning? get iconPositioning =>
      throw _privateConstructorUsedError;
  String? get iconTint => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaIconStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerCtaIconStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaIconStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosPlayerCtaIconStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosPlayerCtaIconStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosPlayerCtaIconStyleCopyWith<BlazeVideosPlayerCtaIconStyle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosPlayerCtaIconStyleCopyWith<$Res> {
  factory $BlazeVideosPlayerCtaIconStyleCopyWith(
          BlazeVideosPlayerCtaIconStyle value,
          $Res Function(BlazeVideosPlayerCtaIconStyle) then) =
      _$BlazeVideosPlayerCtaIconStyleCopyWithImpl<$Res,
          BlazeVideosPlayerCtaIconStyle>;
  @useResult
  $Res call(
      {BlazeImage? iconImage,
      BlazeVideosPlayerCTAIconPositioning? iconPositioning,
      String? iconTint});

  $BlazeImageCopyWith<$Res>? get iconImage;
}

/// @nodoc
class _$BlazeVideosPlayerCtaIconStyleCopyWithImpl<$Res,
        $Val extends BlazeVideosPlayerCtaIconStyle>
    implements $BlazeVideosPlayerCtaIconStyleCopyWith<$Res> {
  _$BlazeVideosPlayerCtaIconStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosPlayerCtaIconStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconImage = freezed,
    Object? iconPositioning = freezed,
    Object? iconTint = freezed,
  }) {
    return _then(_value.copyWith(
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
      iconPositioning: freezed == iconPositioning
          ? _value.iconPositioning
          : iconPositioning // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerCTAIconPositioning?,
      iconTint: freezed == iconTint
          ? _value.iconTint
          : iconTint // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BlazeVideosPlayerCtaIconStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeImageCopyWith<$Res>? get iconImage {
    if (_value.iconImage == null) {
      return null;
    }

    return $BlazeImageCopyWith<$Res>(_value.iconImage!, (value) {
      return _then(_value.copyWith(iconImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeVideosPlayerCtaIconStyleImplCopyWith<$Res>
    implements $BlazeVideosPlayerCtaIconStyleCopyWith<$Res> {
  factory _$$BlazeVideosPlayerCtaIconStyleImplCopyWith(
          _$BlazeVideosPlayerCtaIconStyleImpl value,
          $Res Function(_$BlazeVideosPlayerCtaIconStyleImpl) then) =
      __$$BlazeVideosPlayerCtaIconStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlazeImage? iconImage,
      BlazeVideosPlayerCTAIconPositioning? iconPositioning,
      String? iconTint});

  @override
  $BlazeImageCopyWith<$Res>? get iconImage;
}

/// @nodoc
class __$$BlazeVideosPlayerCtaIconStyleImplCopyWithImpl<$Res>
    extends _$BlazeVideosPlayerCtaIconStyleCopyWithImpl<$Res,
        _$BlazeVideosPlayerCtaIconStyleImpl>
    implements _$$BlazeVideosPlayerCtaIconStyleImplCopyWith<$Res> {
  __$$BlazeVideosPlayerCtaIconStyleImplCopyWithImpl(
      _$BlazeVideosPlayerCtaIconStyleImpl _value,
      $Res Function(_$BlazeVideosPlayerCtaIconStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosPlayerCtaIconStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconImage = freezed,
    Object? iconPositioning = freezed,
    Object? iconTint = freezed,
  }) {
    return _then(_$BlazeVideosPlayerCtaIconStyleImpl(
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as BlazeImage?,
      iconPositioning: freezed == iconPositioning
          ? _value.iconPositioning
          : iconPositioning // ignore: cast_nullable_to_non_nullable
              as BlazeVideosPlayerCTAIconPositioning?,
      iconTint: freezed == iconTint
          ? _value.iconTint
          : iconTint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosPlayerCtaIconStyleImpl
    implements _BlazeVideosPlayerCtaIconStyle {
  const _$BlazeVideosPlayerCtaIconStyleImpl(
      {this.iconImage, this.iconPositioning, this.iconTint});

  factory _$BlazeVideosPlayerCtaIconStyleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeVideosPlayerCtaIconStyleImplFromJson(json);

  @override
  final BlazeImage? iconImage;
  @override
  final BlazeVideosPlayerCTAIconPositioning? iconPositioning;
  @override
  final String? iconTint;

  @override
  String toString() {
    return 'BlazeVideosPlayerCtaIconStyle(iconImage: $iconImage, iconPositioning: $iconPositioning, iconTint: $iconTint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosPlayerCtaIconStyleImpl &&
            (identical(other.iconImage, iconImage) ||
                other.iconImage == iconImage) &&
            (identical(other.iconPositioning, iconPositioning) ||
                other.iconPositioning == iconPositioning) &&
            (identical(other.iconTint, iconTint) ||
                other.iconTint == iconTint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iconImage, iconPositioning, iconTint);

  /// Create a copy of BlazeVideosPlayerCtaIconStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosPlayerCtaIconStyleImplCopyWith<
          _$BlazeVideosPlayerCtaIconStyleImpl>
      get copyWith => __$$BlazeVideosPlayerCtaIconStyleImplCopyWithImpl<
          _$BlazeVideosPlayerCtaIconStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaIconStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerCtaIconStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerCtaIconStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosPlayerCtaIconStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosPlayerCtaIconStyle
    implements BlazeVideosPlayerCtaIconStyle {
  const factory _BlazeVideosPlayerCtaIconStyle(
      {final BlazeImage? iconImage,
      final BlazeVideosPlayerCTAIconPositioning? iconPositioning,
      final String? iconTint}) = _$BlazeVideosPlayerCtaIconStyleImpl;

  factory _BlazeVideosPlayerCtaIconStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeVideosPlayerCtaIconStyleImpl.fromJson;

  @override
  BlazeImage? get iconImage;
  @override
  BlazeVideosPlayerCTAIconPositioning? get iconPositioning;
  @override
  String? get iconTint;

  /// Create a copy of BlazeVideosPlayerCtaIconStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosPlayerCtaIconStyleImplCopyWith<
          _$BlazeVideosPlayerCtaIconStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeVideosPlayerSeekBarStyle _$BlazeVideosPlayerSeekBarStyleFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosPlayerSeekBarStyle.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosPlayerSeekBarStyle {
  bool? get isVisible => throw _privateConstructorUsedError;
  BlazeSeekBarStyle? get playingState => throw _privateConstructorUsedError;
  BlazeSeekBarStyle? get pausedState => throw _privateConstructorUsedError;
  double? get horizontalSpacing => throw _privateConstructorUsedError;
  double? get bottomSpacing => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerSeekBarStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerSeekBarStyle value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerSeekBarStyle value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosPlayerSeekBarStyle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosPlayerSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosPlayerSeekBarStyleCopyWith<BlazeVideosPlayerSeekBarStyle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosPlayerSeekBarStyleCopyWith<$Res> {
  factory $BlazeVideosPlayerSeekBarStyleCopyWith(
          BlazeVideosPlayerSeekBarStyle value,
          $Res Function(BlazeVideosPlayerSeekBarStyle) then) =
      _$BlazeVideosPlayerSeekBarStyleCopyWithImpl<$Res,
          BlazeVideosPlayerSeekBarStyle>;
  @useResult
  $Res call(
      {bool? isVisible,
      BlazeSeekBarStyle? playingState,
      BlazeSeekBarStyle? pausedState,
      double? horizontalSpacing,
      double? bottomSpacing});

  $BlazeSeekBarStyleCopyWith<$Res>? get playingState;
  $BlazeSeekBarStyleCopyWith<$Res>? get pausedState;
}

/// @nodoc
class _$BlazeVideosPlayerSeekBarStyleCopyWithImpl<$Res,
        $Val extends BlazeVideosPlayerSeekBarStyle>
    implements $BlazeVideosPlayerSeekBarStyleCopyWith<$Res> {
  _$BlazeVideosPlayerSeekBarStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosPlayerSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = freezed,
    Object? playingState = freezed,
    Object? pausedState = freezed,
    Object? horizontalSpacing = freezed,
    Object? bottomSpacing = freezed,
  }) {
    return _then(_value.copyWith(
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      playingState: freezed == playingState
          ? _value.playingState
          : playingState // ignore: cast_nullable_to_non_nullable
              as BlazeSeekBarStyle?,
      pausedState: freezed == pausedState
          ? _value.pausedState
          : pausedState // ignore: cast_nullable_to_non_nullable
              as BlazeSeekBarStyle?,
      horizontalSpacing: freezed == horizontalSpacing
          ? _value.horizontalSpacing
          : horizontalSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomSpacing: freezed == bottomSpacing
          ? _value.bottomSpacing
          : bottomSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of BlazeVideosPlayerSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeSeekBarStyleCopyWith<$Res>? get playingState {
    if (_value.playingState == null) {
      return null;
    }

    return $BlazeSeekBarStyleCopyWith<$Res>(_value.playingState!, (value) {
      return _then(_value.copyWith(playingState: value) as $Val);
    });
  }

  /// Create a copy of BlazeVideosPlayerSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeSeekBarStyleCopyWith<$Res>? get pausedState {
    if (_value.pausedState == null) {
      return null;
    }

    return $BlazeSeekBarStyleCopyWith<$Res>(_value.pausedState!, (value) {
      return _then(_value.copyWith(pausedState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeVideosPlayerSeekBarStyleImplCopyWith<$Res>
    implements $BlazeVideosPlayerSeekBarStyleCopyWith<$Res> {
  factory _$$BlazeVideosPlayerSeekBarStyleImplCopyWith(
          _$BlazeVideosPlayerSeekBarStyleImpl value,
          $Res Function(_$BlazeVideosPlayerSeekBarStyleImpl) then) =
      __$$BlazeVideosPlayerSeekBarStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isVisible,
      BlazeSeekBarStyle? playingState,
      BlazeSeekBarStyle? pausedState,
      double? horizontalSpacing,
      double? bottomSpacing});

  @override
  $BlazeSeekBarStyleCopyWith<$Res>? get playingState;
  @override
  $BlazeSeekBarStyleCopyWith<$Res>? get pausedState;
}

/// @nodoc
class __$$BlazeVideosPlayerSeekBarStyleImplCopyWithImpl<$Res>
    extends _$BlazeVideosPlayerSeekBarStyleCopyWithImpl<$Res,
        _$BlazeVideosPlayerSeekBarStyleImpl>
    implements _$$BlazeVideosPlayerSeekBarStyleImplCopyWith<$Res> {
  __$$BlazeVideosPlayerSeekBarStyleImplCopyWithImpl(
      _$BlazeVideosPlayerSeekBarStyleImpl _value,
      $Res Function(_$BlazeVideosPlayerSeekBarStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosPlayerSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = freezed,
    Object? playingState = freezed,
    Object? pausedState = freezed,
    Object? horizontalSpacing = freezed,
    Object? bottomSpacing = freezed,
  }) {
    return _then(_$BlazeVideosPlayerSeekBarStyleImpl(
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      playingState: freezed == playingState
          ? _value.playingState
          : playingState // ignore: cast_nullable_to_non_nullable
              as BlazeSeekBarStyle?,
      pausedState: freezed == pausedState
          ? _value.pausedState
          : pausedState // ignore: cast_nullable_to_non_nullable
              as BlazeSeekBarStyle?,
      horizontalSpacing: freezed == horizontalSpacing
          ? _value.horizontalSpacing
          : horizontalSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      bottomSpacing: freezed == bottomSpacing
          ? _value.bottomSpacing
          : bottomSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosPlayerSeekBarStyleImpl
    implements _BlazeVideosPlayerSeekBarStyle {
  const _$BlazeVideosPlayerSeekBarStyleImpl(
      {this.isVisible,
      this.playingState,
      this.pausedState,
      this.horizontalSpacing,
      this.bottomSpacing});

  factory _$BlazeVideosPlayerSeekBarStyleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeVideosPlayerSeekBarStyleImplFromJson(json);

  @override
  final bool? isVisible;
  @override
  final BlazeSeekBarStyle? playingState;
  @override
  final BlazeSeekBarStyle? pausedState;
  @override
  final double? horizontalSpacing;
  @override
  final double? bottomSpacing;

  @override
  String toString() {
    return 'BlazeVideosPlayerSeekBarStyle(isVisible: $isVisible, playingState: $playingState, pausedState: $pausedState, horizontalSpacing: $horizontalSpacing, bottomSpacing: $bottomSpacing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosPlayerSeekBarStyleImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.playingState, playingState) ||
                other.playingState == playingState) &&
            (identical(other.pausedState, pausedState) ||
                other.pausedState == pausedState) &&
            (identical(other.horizontalSpacing, horizontalSpacing) ||
                other.horizontalSpacing == horizontalSpacing) &&
            (identical(other.bottomSpacing, bottomSpacing) ||
                other.bottomSpacing == bottomSpacing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isVisible, playingState,
      pausedState, horizontalSpacing, bottomSpacing);

  /// Create a copy of BlazeVideosPlayerSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosPlayerSeekBarStyleImplCopyWith<
          _$BlazeVideosPlayerSeekBarStyleImpl>
      get copyWith => __$$BlazeVideosPlayerSeekBarStyleImplCopyWithImpl<
          _$BlazeVideosPlayerSeekBarStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerSeekBarStyle value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosPlayerSeekBarStyle value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosPlayerSeekBarStyle value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosPlayerSeekBarStyleImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosPlayerSeekBarStyle
    implements BlazeVideosPlayerSeekBarStyle {
  const factory _BlazeVideosPlayerSeekBarStyle(
      {final bool? isVisible,
      final BlazeSeekBarStyle? playingState,
      final BlazeSeekBarStyle? pausedState,
      final double? horizontalSpacing,
      final double? bottomSpacing}) = _$BlazeVideosPlayerSeekBarStyleImpl;

  factory _BlazeVideosPlayerSeekBarStyle.fromJson(Map<String, dynamic> json) =
      _$BlazeVideosPlayerSeekBarStyleImpl.fromJson;

  @override
  bool? get isVisible;
  @override
  BlazeSeekBarStyle? get playingState;
  @override
  BlazeSeekBarStyle? get pausedState;
  @override
  double? get horizontalSpacing;
  @override
  double? get bottomSpacing;

  /// Create a copy of BlazeVideosPlayerSeekBarStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosPlayerSeekBarStyleImplCopyWith<
          _$BlazeVideosPlayerSeekBarStyleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
