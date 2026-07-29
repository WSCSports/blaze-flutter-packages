// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_screen_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeSearchScreenOptions _$BlazeSearchScreenOptionsFromJson(
    Map<String, dynamic> json) {
  return _BlazeSearchScreenOptions.fromJson(json);
}

/// @nodoc
mixin _$BlazeSearchScreenOptions {
  /// Optional data source used to populate suggestions on the search screen.
  BlazeDataSourceType? get suggestionsDataSource =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeSearchScreenOptions value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeSearchScreenOptions value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeSearchScreenOptions value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeSearchScreenOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeSearchScreenOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeSearchScreenOptionsCopyWith<BlazeSearchScreenOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeSearchScreenOptionsCopyWith<$Res> {
  factory $BlazeSearchScreenOptionsCopyWith(BlazeSearchScreenOptions value,
          $Res Function(BlazeSearchScreenOptions) then) =
      _$BlazeSearchScreenOptionsCopyWithImpl<$Res, BlazeSearchScreenOptions>;
  @useResult
  $Res call({BlazeDataSourceType? suggestionsDataSource});

  $BlazeDataSourceTypeCopyWith<$Res>? get suggestionsDataSource;
}

/// @nodoc
class _$BlazeSearchScreenOptionsCopyWithImpl<$Res,
        $Val extends BlazeSearchScreenOptions>
    implements $BlazeSearchScreenOptionsCopyWith<$Res> {
  _$BlazeSearchScreenOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeSearchScreenOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestionsDataSource = freezed,
  }) {
    return _then(_value.copyWith(
      suggestionsDataSource: freezed == suggestionsDataSource
          ? _value.suggestionsDataSource
          : suggestionsDataSource // ignore: cast_nullable_to_non_nullable
              as BlazeDataSourceType?,
    ) as $Val);
  }

  /// Create a copy of BlazeSearchScreenOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeDataSourceTypeCopyWith<$Res>? get suggestionsDataSource {
    if (_value.suggestionsDataSource == null) {
      return null;
    }

    return $BlazeDataSourceTypeCopyWith<$Res>(_value.suggestionsDataSource!,
        (value) {
      return _then(_value.copyWith(suggestionsDataSource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlazeSearchScreenOptionsImplCopyWith<$Res>
    implements $BlazeSearchScreenOptionsCopyWith<$Res> {
  factory _$$BlazeSearchScreenOptionsImplCopyWith(
          _$BlazeSearchScreenOptionsImpl value,
          $Res Function(_$BlazeSearchScreenOptionsImpl) then) =
      __$$BlazeSearchScreenOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlazeDataSourceType? suggestionsDataSource});

  @override
  $BlazeDataSourceTypeCopyWith<$Res>? get suggestionsDataSource;
}

/// @nodoc
class __$$BlazeSearchScreenOptionsImplCopyWithImpl<$Res>
    extends _$BlazeSearchScreenOptionsCopyWithImpl<$Res,
        _$BlazeSearchScreenOptionsImpl>
    implements _$$BlazeSearchScreenOptionsImplCopyWith<$Res> {
  __$$BlazeSearchScreenOptionsImplCopyWithImpl(
      _$BlazeSearchScreenOptionsImpl _value,
      $Res Function(_$BlazeSearchScreenOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeSearchScreenOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestionsDataSource = freezed,
  }) {
    return _then(_$BlazeSearchScreenOptionsImpl(
      suggestionsDataSource: freezed == suggestionsDataSource
          ? _value.suggestionsDataSource
          : suggestionsDataSource // ignore: cast_nullable_to_non_nullable
              as BlazeDataSourceType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeSearchScreenOptionsImpl implements _BlazeSearchScreenOptions {
  const _$BlazeSearchScreenOptionsImpl({this.suggestionsDataSource});

  factory _$BlazeSearchScreenOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeSearchScreenOptionsImplFromJson(json);

  /// Optional data source used to populate suggestions on the search screen.
  @override
  final BlazeDataSourceType? suggestionsDataSource;

  @override
  String toString() {
    return 'BlazeSearchScreenOptions(suggestionsDataSource: $suggestionsDataSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeSearchScreenOptionsImpl &&
            (identical(other.suggestionsDataSource, suggestionsDataSource) ||
                other.suggestionsDataSource == suggestionsDataSource));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, suggestionsDataSource);

  /// Create a copy of BlazeSearchScreenOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeSearchScreenOptionsImplCopyWith<_$BlazeSearchScreenOptionsImpl>
      get copyWith => __$$BlazeSearchScreenOptionsImplCopyWithImpl<
          _$BlazeSearchScreenOptionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeSearchScreenOptions value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeSearchScreenOptions value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeSearchScreenOptions value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeSearchScreenOptionsImplToJson(
      this,
    );
  }
}

abstract class _BlazeSearchScreenOptions implements BlazeSearchScreenOptions {
  const factory _BlazeSearchScreenOptions(
          {final BlazeDataSourceType? suggestionsDataSource}) =
      _$BlazeSearchScreenOptionsImpl;

  factory _BlazeSearchScreenOptions.fromJson(Map<String, dynamic> json) =
      _$BlazeSearchScreenOptionsImpl.fromJson;

  /// Optional data source used to populate suggestions on the search screen.
  @override
  BlazeDataSourceType? get suggestionsDataSource;

  /// Create a copy of BlazeSearchScreenOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeSearchScreenOptionsImplCopyWith<_$BlazeSearchScreenOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
