// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_widget_delegate_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeOnWidgetItemClickedEvent _$BlazeOnWidgetItemClickedEventFromJson(
    Map<String, dynamic> json) {
  return _BlazeOnWidgetItemClickedEvent.fromJson(json);
}

/// @nodoc
mixin _$BlazeOnWidgetItemClickedEvent {
  String get widgetId => throw _privateConstructorUsedError;
  String get widgetItemId => throw _privateConstructorUsedError;
  String? get widgetItemTitle => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnWidgetItemClickedEvent value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnWidgetItemClickedEvent value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnWidgetItemClickedEvent value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeOnWidgetItemClickedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeOnWidgetItemClickedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeOnWidgetItemClickedEventCopyWith<BlazeOnWidgetItemClickedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeOnWidgetItemClickedEventCopyWith<$Res> {
  factory $BlazeOnWidgetItemClickedEventCopyWith(
          BlazeOnWidgetItemClickedEvent value,
          $Res Function(BlazeOnWidgetItemClickedEvent) then) =
      _$BlazeOnWidgetItemClickedEventCopyWithImpl<$Res,
          BlazeOnWidgetItemClickedEvent>;
  @useResult
  $Res call({String widgetId, String widgetItemId, String? widgetItemTitle});
}

/// @nodoc
class _$BlazeOnWidgetItemClickedEventCopyWithImpl<$Res,
        $Val extends BlazeOnWidgetItemClickedEvent>
    implements $BlazeOnWidgetItemClickedEventCopyWith<$Res> {
  _$BlazeOnWidgetItemClickedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeOnWidgetItemClickedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetId = null,
    Object? widgetItemId = null,
    Object? widgetItemTitle = freezed,
  }) {
    return _then(_value.copyWith(
      widgetId: null == widgetId
          ? _value.widgetId
          : widgetId // ignore: cast_nullable_to_non_nullable
              as String,
      widgetItemId: null == widgetItemId
          ? _value.widgetItemId
          : widgetItemId // ignore: cast_nullable_to_non_nullable
              as String,
      widgetItemTitle: freezed == widgetItemTitle
          ? _value.widgetItemTitle
          : widgetItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlazeOnWidgetItemClickedEventImplCopyWith<$Res>
    implements $BlazeOnWidgetItemClickedEventCopyWith<$Res> {
  factory _$$BlazeOnWidgetItemClickedEventImplCopyWith(
          _$BlazeOnWidgetItemClickedEventImpl value,
          $Res Function(_$BlazeOnWidgetItemClickedEventImpl) then) =
      __$$BlazeOnWidgetItemClickedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String widgetId, String widgetItemId, String? widgetItemTitle});
}

/// @nodoc
class __$$BlazeOnWidgetItemClickedEventImplCopyWithImpl<$Res>
    extends _$BlazeOnWidgetItemClickedEventCopyWithImpl<$Res,
        _$BlazeOnWidgetItemClickedEventImpl>
    implements _$$BlazeOnWidgetItemClickedEventImplCopyWith<$Res> {
  __$$BlazeOnWidgetItemClickedEventImplCopyWithImpl(
      _$BlazeOnWidgetItemClickedEventImpl _value,
      $Res Function(_$BlazeOnWidgetItemClickedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeOnWidgetItemClickedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetId = null,
    Object? widgetItemId = null,
    Object? widgetItemTitle = freezed,
  }) {
    return _then(_$BlazeOnWidgetItemClickedEventImpl(
      widgetId: null == widgetId
          ? _value.widgetId
          : widgetId // ignore: cast_nullable_to_non_nullable
              as String,
      widgetItemId: null == widgetItemId
          ? _value.widgetItemId
          : widgetItemId // ignore: cast_nullable_to_non_nullable
              as String,
      widgetItemTitle: freezed == widgetItemTitle
          ? _value.widgetItemTitle
          : widgetItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeOnWidgetItemClickedEventImpl
    implements _BlazeOnWidgetItemClickedEvent {
  const _$BlazeOnWidgetItemClickedEventImpl(
      {required this.widgetId,
      required this.widgetItemId,
      this.widgetItemTitle});

  factory _$BlazeOnWidgetItemClickedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeOnWidgetItemClickedEventImplFromJson(json);

  @override
  final String widgetId;
  @override
  final String widgetItemId;
  @override
  final String? widgetItemTitle;

  @override
  String toString() {
    return 'BlazeOnWidgetItemClickedEvent(widgetId: $widgetId, widgetItemId: $widgetItemId, widgetItemTitle: $widgetItemTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeOnWidgetItemClickedEventImpl &&
            (identical(other.widgetId, widgetId) ||
                other.widgetId == widgetId) &&
            (identical(other.widgetItemId, widgetItemId) ||
                other.widgetItemId == widgetItemId) &&
            (identical(other.widgetItemTitle, widgetItemTitle) ||
                other.widgetItemTitle == widgetItemTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, widgetId, widgetItemId, widgetItemTitle);

  /// Create a copy of BlazeOnWidgetItemClickedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeOnWidgetItemClickedEventImplCopyWith<
          _$BlazeOnWidgetItemClickedEventImpl>
      get copyWith => __$$BlazeOnWidgetItemClickedEventImplCopyWithImpl<
          _$BlazeOnWidgetItemClickedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BlazeOnWidgetItemClickedEvent value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BlazeOnWidgetItemClickedEvent value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BlazeOnWidgetItemClickedEvent value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeOnWidgetItemClickedEventImplToJson(
      this,
    );
  }
}

abstract class _BlazeOnWidgetItemClickedEvent
    implements BlazeOnWidgetItemClickedEvent {
  const factory _BlazeOnWidgetItemClickedEvent(
      {required final String widgetId,
      required final String widgetItemId,
      final String? widgetItemTitle}) = _$BlazeOnWidgetItemClickedEventImpl;

  factory _BlazeOnWidgetItemClickedEvent.fromJson(Map<String, dynamic> json) =
      _$BlazeOnWidgetItemClickedEventImpl.fromJson;

  @override
  String get widgetId;
  @override
  String get widgetItemId;
  @override
  String? get widgetItemTitle;

  /// Create a copy of BlazeOnWidgetItemClickedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeOnWidgetItemClickedEventImplCopyWith<
          _$BlazeOnWidgetItemClickedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
