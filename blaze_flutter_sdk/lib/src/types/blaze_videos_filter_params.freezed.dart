// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_videos_filter_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeVideosFilterParams _$BlazeVideosFilterParamsFromJson(
    Map<String, dynamic> json) {
  return _BlazeVideosFilterParams.fromJson(json);
}

/// @nodoc
mixin _$BlazeVideosFilterParams {
  /// Which content types to include. `null` means no filtering by content type.
  List<BlazeVideoContentType>? get contentTypes =>
      throw _privateConstructorUsedError;

  /// Which live-stream statuses to include. `null` means no filtering by stream status.
  List<BlazeLiveStreamStatus>? get streamStates =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosFilterParams value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosFilterParams value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosFilterParams value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeVideosFilterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeVideosFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeVideosFilterParamsCopyWith<BlazeVideosFilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeVideosFilterParamsCopyWith<$Res> {
  factory $BlazeVideosFilterParamsCopyWith(BlazeVideosFilterParams value,
          $Res Function(BlazeVideosFilterParams) then) =
      _$BlazeVideosFilterParamsCopyWithImpl<$Res, BlazeVideosFilterParams>;
  @useResult
  $Res call(
      {List<BlazeVideoContentType>? contentTypes,
      List<BlazeLiveStreamStatus>? streamStates});
}

/// @nodoc
class _$BlazeVideosFilterParamsCopyWithImpl<$Res,
        $Val extends BlazeVideosFilterParams>
    implements $BlazeVideosFilterParamsCopyWith<$Res> {
  _$BlazeVideosFilterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeVideosFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentTypes = freezed,
    Object? streamStates = freezed,
  }) {
    return _then(_value.copyWith(
      contentTypes: freezed == contentTypes
          ? _value.contentTypes
          : contentTypes // ignore: cast_nullable_to_non_nullable
              as List<BlazeVideoContentType>?,
      streamStates: freezed == streamStates
          ? _value.streamStates
          : streamStates // ignore: cast_nullable_to_non_nullable
              as List<BlazeLiveStreamStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeVideosFilterParamsImplCopyWith<$Res>
    implements $BlazeVideosFilterParamsCopyWith<$Res> {
  factory _$$BlazeVideosFilterParamsImplCopyWith(
          _$BlazeVideosFilterParamsImpl value,
          $Res Function(_$BlazeVideosFilterParamsImpl) then) =
      __$$BlazeVideosFilterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BlazeVideoContentType>? contentTypes,
      List<BlazeLiveStreamStatus>? streamStates});
}

/// @nodoc
class __$$BlazeVideosFilterParamsImplCopyWithImpl<$Res>
    extends _$BlazeVideosFilterParamsCopyWithImpl<$Res,
        _$BlazeVideosFilterParamsImpl>
    implements _$$BlazeVideosFilterParamsImplCopyWith<$Res> {
  __$$BlazeVideosFilterParamsImplCopyWithImpl(
      _$BlazeVideosFilterParamsImpl _value,
      $Res Function(_$BlazeVideosFilterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeVideosFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentTypes = freezed,
    Object? streamStates = freezed,
  }) {
    return _then(_$BlazeVideosFilterParamsImpl(
      contentTypes: freezed == contentTypes
          ? _value._contentTypes
          : contentTypes // ignore: cast_nullable_to_non_nullable
              as List<BlazeVideoContentType>?,
      streamStates: freezed == streamStates
          ? _value._streamStates
          : streamStates // ignore: cast_nullable_to_non_nullable
              as List<BlazeLiveStreamStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeVideosFilterParamsImpl implements _BlazeVideosFilterParams {
  const _$BlazeVideosFilterParamsImpl(
      {final List<BlazeVideoContentType>? contentTypes,
      final List<BlazeLiveStreamStatus>? streamStates})
      : _contentTypes = contentTypes,
        _streamStates = streamStates;

  factory _$BlazeVideosFilterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeVideosFilterParamsImplFromJson(json);

  /// Which content types to include. `null` means no filtering by content type.
  final List<BlazeVideoContentType>? _contentTypes;

  /// Which content types to include. `null` means no filtering by content type.
  @override
  List<BlazeVideoContentType>? get contentTypes {
    final value = _contentTypes;
    if (value == null) return null;
    if (_contentTypes is EqualUnmodifiableListView) return _contentTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Which live-stream statuses to include. `null` means no filtering by stream status.
  final List<BlazeLiveStreamStatus>? _streamStates;

  /// Which live-stream statuses to include. `null` means no filtering by stream status.
  @override
  List<BlazeLiveStreamStatus>? get streamStates {
    final value = _streamStates;
    if (value == null) return null;
    if (_streamStates is EqualUnmodifiableListView) return _streamStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BlazeVideosFilterParams(contentTypes: $contentTypes, streamStates: $streamStates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeVideosFilterParamsImpl &&
            const DeepCollectionEquality()
                .equals(other._contentTypes, _contentTypes) &&
            const DeepCollectionEquality()
                .equals(other._streamStates, _streamStates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contentTypes),
      const DeepCollectionEquality().hash(_streamStates));

  /// Create a copy of BlazeVideosFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeVideosFilterParamsImplCopyWith<_$BlazeVideosFilterParamsImpl>
      get copyWith => __$$BlazeVideosFilterParamsImplCopyWithImpl<
          _$BlazeVideosFilterParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeVideosFilterParams value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeVideosFilterParams value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeVideosFilterParams value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeVideosFilterParamsImplToJson(
      this,
    );
  }
}

abstract class _BlazeVideosFilterParams implements BlazeVideosFilterParams {
  const factory _BlazeVideosFilterParams(
          {final List<BlazeVideoContentType>? contentTypes,
          final List<BlazeLiveStreamStatus>? streamStates}) =
      _$BlazeVideosFilterParamsImpl;

  factory _BlazeVideosFilterParams.fromJson(Map<String, dynamic> json) =
      _$BlazeVideosFilterParamsImpl.fromJson;

  /// Which content types to include. `null` means no filtering by content type.
  @override
  List<BlazeVideoContentType>? get contentTypes;

  /// Which live-stream statuses to include. `null` means no filtering by stream status.
  @override
  List<BlazeLiveStreamStatus>? get streamStates;

  /// Create a copy of BlazeVideosFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeVideosFilterParamsImplCopyWith<_$BlazeVideosFilterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
