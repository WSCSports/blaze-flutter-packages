// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blaze_data_source_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlazeDataSourceType _$BlazeDataSourceTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'labels':
      return BlazeDataSourceTypeLabels.fromJson(json);
    case 'ids':
      return BlazeDataSourceTypeIds.fromJson(json);
    case 'recommendations':
      return BlazeDataSourceTypeRecommendations.fromJson(json);
    case 'search':
      return BlazeDataSourceTypeSearch.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BlazeDataSourceType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BlazeDataSourceType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)
        labels,
    required TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)
        ids,
    required TResult Function(BlazeRecommendationsType recommendationsType)
        recommendations,
    required TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult? Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult? Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult? Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourceTypeLabels value) labels,
    required TResult Function(BlazeDataSourceTypeIds value) ids,
    required TResult Function(BlazeDataSourceTypeRecommendations value)
        recommendations,
    required TResult Function(BlazeDataSourceTypeSearch value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourceTypeLabels value)? labels,
    TResult? Function(BlazeDataSourceTypeIds value)? ids,
    TResult? Function(BlazeDataSourceTypeRecommendations value)?
        recommendations,
    TResult? Function(BlazeDataSourceTypeSearch value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourceTypeLabels value)? labels,
    TResult Function(BlazeDataSourceTypeIds value)? ids,
    TResult Function(BlazeDataSourceTypeRecommendations value)? recommendations,
    TResult Function(BlazeDataSourceTypeSearch value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeDataSourceType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeDataSourceTypeCopyWith<$Res> {
  factory $BlazeDataSourceTypeCopyWith(
          BlazeDataSourceType value, $Res Function(BlazeDataSourceType) then) =
      _$BlazeDataSourceTypeCopyWithImpl<$Res, BlazeDataSourceType>;
}

/// @nodoc
class _$BlazeDataSourceTypeCopyWithImpl<$Res, $Val extends BlazeDataSourceType>
    implements $BlazeDataSourceTypeCopyWith<$Res> {
  _$BlazeDataSourceTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlazeDataSourceTypeLabelsImplCopyWith<$Res> {
  factory _$$BlazeDataSourceTypeLabelsImplCopyWith(
          _$BlazeDataSourceTypeLabelsImpl value,
          $Res Function(_$BlazeDataSourceTypeLabelsImpl) then) =
      __$$BlazeDataSourceTypeLabelsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BlazeWidgetLabel labels,
      BlazeOrderType? orderType,
      List<BlazeWidgetLabel>? labelsPriority,
      int? maxItems,
      BlazeAdvancedOrderType? advancedOrderType,
      BlazeDataSourcePersonalizedType? personalizedType});

  $BlazeWidgetLabelCopyWith<$Res> get labels;
  $BlazeDataSourcePersonalizedTypeCopyWith<$Res>? get personalizedType;
}

/// @nodoc
class __$$BlazeDataSourceTypeLabelsImplCopyWithImpl<$Res>
    extends _$BlazeDataSourceTypeCopyWithImpl<$Res,
        _$BlazeDataSourceTypeLabelsImpl>
    implements _$$BlazeDataSourceTypeLabelsImplCopyWith<$Res> {
  __$$BlazeDataSourceTypeLabelsImplCopyWithImpl(
      _$BlazeDataSourceTypeLabelsImpl _value,
      $Res Function(_$BlazeDataSourceTypeLabelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labels = null,
    Object? orderType = freezed,
    Object? labelsPriority = freezed,
    Object? maxItems = freezed,
    Object? advancedOrderType = freezed,
    Object? personalizedType = freezed,
  }) {
    return _then(_$BlazeDataSourceTypeLabelsImpl(
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetLabel,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as BlazeOrderType?,
      labelsPriority: freezed == labelsPriority
          ? _value._labelsPriority
          : labelsPriority // ignore: cast_nullable_to_non_nullable
              as List<BlazeWidgetLabel>?,
      maxItems: freezed == maxItems
          ? _value.maxItems
          : maxItems // ignore: cast_nullable_to_non_nullable
              as int?,
      advancedOrderType: freezed == advancedOrderType
          ? _value.advancedOrderType
          : advancedOrderType // ignore: cast_nullable_to_non_nullable
              as BlazeAdvancedOrderType?,
      personalizedType: freezed == personalizedType
          ? _value.personalizedType
          : personalizedType // ignore: cast_nullable_to_non_nullable
              as BlazeDataSourcePersonalizedType?,
    ));
  }

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetLabelCopyWith<$Res> get labels {
    return $BlazeWidgetLabelCopyWith<$Res>(_value.labels, (value) {
      return _then(_value.copyWith(labels: value));
    });
  }

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeDataSourcePersonalizedTypeCopyWith<$Res>? get personalizedType {
    if (_value.personalizedType == null) {
      return null;
    }

    return $BlazeDataSourcePersonalizedTypeCopyWith<$Res>(
        _value.personalizedType!, (value) {
      return _then(_value.copyWith(personalizedType: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeDataSourceTypeLabelsImpl implements BlazeDataSourceTypeLabels {
  const _$BlazeDataSourceTypeLabelsImpl(
      {required this.labels,
      this.orderType,
      final List<BlazeWidgetLabel>? labelsPriority,
      this.maxItems,
      this.advancedOrderType,
      this.personalizedType,
      final String? $type})
      : _labelsPriority = labelsPriority,
        $type = $type ?? 'labels';

  factory _$BlazeDataSourceTypeLabelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeDataSourceTypeLabelsImplFromJson(json);

  @override
  final BlazeWidgetLabel labels;
  @override
  final BlazeOrderType? orderType;
  final List<BlazeWidgetLabel>? _labelsPriority;
  @override
  List<BlazeWidgetLabel>? get labelsPriority {
    final value = _labelsPriority;
    if (value == null) return null;
    if (_labelsPriority is EqualUnmodifiableListView) return _labelsPriority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? maxItems;
  @override
  final BlazeAdvancedOrderType? advancedOrderType;
  @override
  final BlazeDataSourcePersonalizedType? personalizedType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BlazeDataSourceType.labels(labels: $labels, orderType: $orderType, labelsPriority: $labelsPriority, maxItems: $maxItems, advancedOrderType: $advancedOrderType, personalizedType: $personalizedType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeDataSourceTypeLabelsImpl &&
            (identical(other.labels, labels) || other.labels == labels) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            const DeepCollectionEquality()
                .equals(other._labelsPriority, _labelsPriority) &&
            (identical(other.maxItems, maxItems) ||
                other.maxItems == maxItems) &&
            (identical(other.advancedOrderType, advancedOrderType) ||
                other.advancedOrderType == advancedOrderType) &&
            (identical(other.personalizedType, personalizedType) ||
                other.personalizedType == personalizedType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labels,
      orderType,
      const DeepCollectionEquality().hash(_labelsPriority),
      maxItems,
      advancedOrderType,
      personalizedType);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeDataSourceTypeLabelsImplCopyWith<_$BlazeDataSourceTypeLabelsImpl>
      get copyWith => __$$BlazeDataSourceTypeLabelsImplCopyWithImpl<
          _$BlazeDataSourceTypeLabelsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)
        labels,
    required TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)
        ids,
    required TResult Function(BlazeRecommendationsType recommendationsType)
        recommendations,
    required TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)
        search,
  }) {
    return labels(this.labels, orderType, labelsPriority, maxItems,
        advancedOrderType, personalizedType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult? Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult? Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult? Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
  }) {
    return labels?.call(this.labels, orderType, labelsPriority, maxItems,
        advancedOrderType, personalizedType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
    required TResult orElse(),
  }) {
    if (labels != null) {
      return labels(this.labels, orderType, labelsPriority, maxItems,
          advancedOrderType, personalizedType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourceTypeLabels value) labels,
    required TResult Function(BlazeDataSourceTypeIds value) ids,
    required TResult Function(BlazeDataSourceTypeRecommendations value)
        recommendations,
    required TResult Function(BlazeDataSourceTypeSearch value) search,
  }) {
    return labels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourceTypeLabels value)? labels,
    TResult? Function(BlazeDataSourceTypeIds value)? ids,
    TResult? Function(BlazeDataSourceTypeRecommendations value)?
        recommendations,
    TResult? Function(BlazeDataSourceTypeSearch value)? search,
  }) {
    return labels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourceTypeLabels value)? labels,
    TResult Function(BlazeDataSourceTypeIds value)? ids,
    TResult Function(BlazeDataSourceTypeRecommendations value)? recommendations,
    TResult Function(BlazeDataSourceTypeSearch value)? search,
    required TResult orElse(),
  }) {
    if (labels != null) {
      return labels(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeDataSourceTypeLabelsImplToJson(
      this,
    );
  }
}

abstract class BlazeDataSourceTypeLabels implements BlazeDataSourceType {
  const factory BlazeDataSourceTypeLabels(
          {required final BlazeWidgetLabel labels,
          final BlazeOrderType? orderType,
          final List<BlazeWidgetLabel>? labelsPriority,
          final int? maxItems,
          final BlazeAdvancedOrderType? advancedOrderType,
          final BlazeDataSourcePersonalizedType? personalizedType}) =
      _$BlazeDataSourceTypeLabelsImpl;

  factory BlazeDataSourceTypeLabels.fromJson(Map<String, dynamic> json) =
      _$BlazeDataSourceTypeLabelsImpl.fromJson;

  BlazeWidgetLabel get labels;
  BlazeOrderType? get orderType;
  List<BlazeWidgetLabel>? get labelsPriority;
  int? get maxItems;
  BlazeAdvancedOrderType? get advancedOrderType;
  BlazeDataSourcePersonalizedType? get personalizedType;

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeDataSourceTypeLabelsImplCopyWith<_$BlazeDataSourceTypeLabelsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlazeDataSourceTypeIdsImplCopyWith<$Res> {
  factory _$$BlazeDataSourceTypeIdsImplCopyWith(
          _$BlazeDataSourceTypeIdsImpl value,
          $Res Function(_$BlazeDataSourceTypeIdsImpl) then) =
      __$$BlazeDataSourceTypeIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String> ids,
      BlazeOrderType? orderType,
      BlazeAdvancedOrderType? advancedOrderType});
}

/// @nodoc
class __$$BlazeDataSourceTypeIdsImplCopyWithImpl<$Res>
    extends _$BlazeDataSourceTypeCopyWithImpl<$Res,
        _$BlazeDataSourceTypeIdsImpl>
    implements _$$BlazeDataSourceTypeIdsImplCopyWith<$Res> {
  __$$BlazeDataSourceTypeIdsImplCopyWithImpl(
      _$BlazeDataSourceTypeIdsImpl _value,
      $Res Function(_$BlazeDataSourceTypeIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
    Object? orderType = freezed,
    Object? advancedOrderType = freezed,
  }) {
    return _then(_$BlazeDataSourceTypeIdsImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as BlazeOrderType?,
      advancedOrderType: freezed == advancedOrderType
          ? _value.advancedOrderType
          : advancedOrderType // ignore: cast_nullable_to_non_nullable
              as BlazeAdvancedOrderType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeDataSourceTypeIdsImpl implements BlazeDataSourceTypeIds {
  const _$BlazeDataSourceTypeIdsImpl(
      {required final List<String> ids,
      this.orderType,
      this.advancedOrderType,
      final String? $type})
      : _ids = ids,
        $type = $type ?? 'ids';

  factory _$BlazeDataSourceTypeIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeDataSourceTypeIdsImplFromJson(json);

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  final BlazeOrderType? orderType;
  @override
  final BlazeAdvancedOrderType? advancedOrderType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BlazeDataSourceType.ids(ids: $ids, orderType: $orderType, advancedOrderType: $advancedOrderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeDataSourceTypeIdsImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.advancedOrderType, advancedOrderType) ||
                other.advancedOrderType == advancedOrderType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ids), orderType, advancedOrderType);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeDataSourceTypeIdsImplCopyWith<_$BlazeDataSourceTypeIdsImpl>
      get copyWith => __$$BlazeDataSourceTypeIdsImplCopyWithImpl<
          _$BlazeDataSourceTypeIdsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)
        labels,
    required TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)
        ids,
    required TResult Function(BlazeRecommendationsType recommendationsType)
        recommendations,
    required TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)
        search,
  }) {
    return ids(this.ids, orderType, advancedOrderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult? Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult? Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult? Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
  }) {
    return ids?.call(this.ids, orderType, advancedOrderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
    required TResult orElse(),
  }) {
    if (ids != null) {
      return ids(this.ids, orderType, advancedOrderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourceTypeLabels value) labels,
    required TResult Function(BlazeDataSourceTypeIds value) ids,
    required TResult Function(BlazeDataSourceTypeRecommendations value)
        recommendations,
    required TResult Function(BlazeDataSourceTypeSearch value) search,
  }) {
    return ids(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourceTypeLabels value)? labels,
    TResult? Function(BlazeDataSourceTypeIds value)? ids,
    TResult? Function(BlazeDataSourceTypeRecommendations value)?
        recommendations,
    TResult? Function(BlazeDataSourceTypeSearch value)? search,
  }) {
    return ids?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourceTypeLabels value)? labels,
    TResult Function(BlazeDataSourceTypeIds value)? ids,
    TResult Function(BlazeDataSourceTypeRecommendations value)? recommendations,
    TResult Function(BlazeDataSourceTypeSearch value)? search,
    required TResult orElse(),
  }) {
    if (ids != null) {
      return ids(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeDataSourceTypeIdsImplToJson(
      this,
    );
  }
}

abstract class BlazeDataSourceTypeIds implements BlazeDataSourceType {
  const factory BlazeDataSourceTypeIds(
          {required final List<String> ids,
          final BlazeOrderType? orderType,
          final BlazeAdvancedOrderType? advancedOrderType}) =
      _$BlazeDataSourceTypeIdsImpl;

  factory BlazeDataSourceTypeIds.fromJson(Map<String, dynamic> json) =
      _$BlazeDataSourceTypeIdsImpl.fromJson;

  List<String> get ids;
  BlazeOrderType? get orderType;
  BlazeAdvancedOrderType? get advancedOrderType;

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeDataSourceTypeIdsImplCopyWith<_$BlazeDataSourceTypeIdsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlazeDataSourceTypeRecommendationsImplCopyWith<$Res> {
  factory _$$BlazeDataSourceTypeRecommendationsImplCopyWith(
          _$BlazeDataSourceTypeRecommendationsImpl value,
          $Res Function(_$BlazeDataSourceTypeRecommendationsImpl) then) =
      __$$BlazeDataSourceTypeRecommendationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlazeRecommendationsType recommendationsType});

  $BlazeRecommendationsTypeCopyWith<$Res> get recommendationsType;
}

/// @nodoc
class __$$BlazeDataSourceTypeRecommendationsImplCopyWithImpl<$Res>
    extends _$BlazeDataSourceTypeCopyWithImpl<$Res,
        _$BlazeDataSourceTypeRecommendationsImpl>
    implements _$$BlazeDataSourceTypeRecommendationsImplCopyWith<$Res> {
  __$$BlazeDataSourceTypeRecommendationsImplCopyWithImpl(
      _$BlazeDataSourceTypeRecommendationsImpl _value,
      $Res Function(_$BlazeDataSourceTypeRecommendationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationsType = null,
  }) {
    return _then(_$BlazeDataSourceTypeRecommendationsImpl(
      recommendationsType: null == recommendationsType
          ? _value.recommendationsType
          : recommendationsType // ignore: cast_nullable_to_non_nullable
              as BlazeRecommendationsType,
    ));
  }

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeRecommendationsTypeCopyWith<$Res> get recommendationsType {
    return $BlazeRecommendationsTypeCopyWith<$Res>(_value.recommendationsType,
        (value) {
      return _then(_value.copyWith(recommendationsType: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeDataSourceTypeRecommendationsImpl
    implements BlazeDataSourceTypeRecommendations {
  const _$BlazeDataSourceTypeRecommendationsImpl(
      {required this.recommendationsType, final String? $type})
      : $type = $type ?? 'recommendations';

  factory _$BlazeDataSourceTypeRecommendationsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeDataSourceTypeRecommendationsImplFromJson(json);

  @override
  final BlazeRecommendationsType recommendationsType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BlazeDataSourceType.recommendations(recommendationsType: $recommendationsType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeDataSourceTypeRecommendationsImpl &&
            (identical(other.recommendationsType, recommendationsType) ||
                other.recommendationsType == recommendationsType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, recommendationsType);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeDataSourceTypeRecommendationsImplCopyWith<
          _$BlazeDataSourceTypeRecommendationsImpl>
      get copyWith => __$$BlazeDataSourceTypeRecommendationsImplCopyWithImpl<
          _$BlazeDataSourceTypeRecommendationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)
        labels,
    required TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)
        ids,
    required TResult Function(BlazeRecommendationsType recommendationsType)
        recommendations,
    required TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)
        search,
  }) {
    return recommendations(recommendationsType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult? Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult? Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult? Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
  }) {
    return recommendations?.call(recommendationsType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
    required TResult orElse(),
  }) {
    if (recommendations != null) {
      return recommendations(recommendationsType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourceTypeLabels value) labels,
    required TResult Function(BlazeDataSourceTypeIds value) ids,
    required TResult Function(BlazeDataSourceTypeRecommendations value)
        recommendations,
    required TResult Function(BlazeDataSourceTypeSearch value) search,
  }) {
    return recommendations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourceTypeLabels value)? labels,
    TResult? Function(BlazeDataSourceTypeIds value)? ids,
    TResult? Function(BlazeDataSourceTypeRecommendations value)?
        recommendations,
    TResult? Function(BlazeDataSourceTypeSearch value)? search,
  }) {
    return recommendations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourceTypeLabels value)? labels,
    TResult Function(BlazeDataSourceTypeIds value)? ids,
    TResult Function(BlazeDataSourceTypeRecommendations value)? recommendations,
    TResult Function(BlazeDataSourceTypeSearch value)? search,
    required TResult orElse(),
  }) {
    if (recommendations != null) {
      return recommendations(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeDataSourceTypeRecommendationsImplToJson(
      this,
    );
  }
}

abstract class BlazeDataSourceTypeRecommendations
    implements BlazeDataSourceType {
  const factory BlazeDataSourceTypeRecommendations(
          {required final BlazeRecommendationsType recommendationsType}) =
      _$BlazeDataSourceTypeRecommendationsImpl;

  factory BlazeDataSourceTypeRecommendations.fromJson(
          Map<String, dynamic> json) =
      _$BlazeDataSourceTypeRecommendationsImpl.fromJson;

  BlazeRecommendationsType get recommendationsType;

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeDataSourceTypeRecommendationsImplCopyWith<
          _$BlazeDataSourceTypeRecommendationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlazeDataSourceTypeSearchImplCopyWith<$Res> {
  factory _$$BlazeDataSourceTypeSearchImplCopyWith(
          _$BlazeDataSourceTypeSearchImpl value,
          $Res Function(_$BlazeDataSourceTypeSearchImpl) then) =
      __$$BlazeDataSourceTypeSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText, int? maxItems, BlazeWidgetLabel? labels});

  $BlazeWidgetLabelCopyWith<$Res>? get labels;
}

/// @nodoc
class __$$BlazeDataSourceTypeSearchImplCopyWithImpl<$Res>
    extends _$BlazeDataSourceTypeCopyWithImpl<$Res,
        _$BlazeDataSourceTypeSearchImpl>
    implements _$$BlazeDataSourceTypeSearchImplCopyWith<$Res> {
  __$$BlazeDataSourceTypeSearchImplCopyWithImpl(
      _$BlazeDataSourceTypeSearchImpl _value,
      $Res Function(_$BlazeDataSourceTypeSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? maxItems = freezed,
    Object? labels = freezed,
  }) {
    return _then(_$BlazeDataSourceTypeSearchImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      maxItems: freezed == maxItems
          ? _value.maxItems
          : maxItems // ignore: cast_nullable_to_non_nullable
              as int?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetLabel?,
    ));
  }

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetLabelCopyWith<$Res>? get labels {
    if (_value.labels == null) {
      return null;
    }

    return $BlazeWidgetLabelCopyWith<$Res>(_value.labels!, (value) {
      return _then(_value.copyWith(labels: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeDataSourceTypeSearchImpl implements BlazeDataSourceTypeSearch {
  const _$BlazeDataSourceTypeSearchImpl(
      {required this.searchText,
      this.maxItems,
      this.labels,
      final String? $type})
      : $type = $type ?? 'search';

  factory _$BlazeDataSourceTypeSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlazeDataSourceTypeSearchImplFromJson(json);

  /// The text to search content for.
  @override
  final String searchText;

  /// Optional maximum number of items to return.
  @override
  final int? maxItems;

  /// Optional label expression to scope the search to.
  @override
  final BlazeWidgetLabel? labels;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BlazeDataSourceType.search(searchText: $searchText, maxItems: $maxItems, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeDataSourceTypeSearchImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.maxItems, maxItems) ||
                other.maxItems == maxItems) &&
            (identical(other.labels, labels) || other.labels == labels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, searchText, maxItems, labels);

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeDataSourceTypeSearchImplCopyWith<_$BlazeDataSourceTypeSearchImpl>
      get copyWith => __$$BlazeDataSourceTypeSearchImplCopyWithImpl<
          _$BlazeDataSourceTypeSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)
        labels,
    required TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)
        ids,
    required TResult Function(BlazeRecommendationsType recommendationsType)
        recommendations,
    required TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)
        search,
  }) {
    return search(searchText, maxItems, this.labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult? Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult? Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult? Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
  }) {
    return search?.call(searchText, maxItems, this.labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BlazeWidgetLabel labels,
            BlazeOrderType? orderType,
            List<BlazeWidgetLabel>? labelsPriority,
            int? maxItems,
            BlazeAdvancedOrderType? advancedOrderType,
            BlazeDataSourcePersonalizedType? personalizedType)?
        labels,
    TResult Function(List<String> ids, BlazeOrderType? orderType,
            BlazeAdvancedOrderType? advancedOrderType)?
        ids,
    TResult Function(BlazeRecommendationsType recommendationsType)?
        recommendations,
    TResult Function(
            String searchText, int? maxItems, BlazeWidgetLabel? labels)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchText, maxItems, this.labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourceTypeLabels value) labels,
    required TResult Function(BlazeDataSourceTypeIds value) ids,
    required TResult Function(BlazeDataSourceTypeRecommendations value)
        recommendations,
    required TResult Function(BlazeDataSourceTypeSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourceTypeLabels value)? labels,
    TResult? Function(BlazeDataSourceTypeIds value)? ids,
    TResult? Function(BlazeDataSourceTypeRecommendations value)?
        recommendations,
    TResult? Function(BlazeDataSourceTypeSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourceTypeLabels value)? labels,
    TResult Function(BlazeDataSourceTypeIds value)? ids,
    TResult Function(BlazeDataSourceTypeRecommendations value)? recommendations,
    TResult Function(BlazeDataSourceTypeSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeDataSourceTypeSearchImplToJson(
      this,
    );
  }
}

abstract class BlazeDataSourceTypeSearch implements BlazeDataSourceType {
  const factory BlazeDataSourceTypeSearch(
      {required final String searchText,
      final int? maxItems,
      final BlazeWidgetLabel? labels}) = _$BlazeDataSourceTypeSearchImpl;

  factory BlazeDataSourceTypeSearch.fromJson(Map<String, dynamic> json) =
      _$BlazeDataSourceTypeSearchImpl.fromJson;

  /// The text to search content for.
  String get searchText;

  /// Optional maximum number of items to return.
  int? get maxItems;

  /// Optional label expression to scope the search to.
  BlazeWidgetLabel? get labels;

  /// Create a copy of BlazeDataSourceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeDataSourceTypeSearchImplCopyWith<_$BlazeDataSourceTypeSearchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeDataSourcePersonalizedType _$BlazeDataSourcePersonalizedTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'Ids':
      return BlazeDataSourcePersonalizedTypeIds.fromJson(json);
    case 'Labels':
      return BlazeDataSourcePersonalizedTypeLabels.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'type',
          'BlazeDataSourcePersonalizedType',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BlazeDataSourcePersonalizedType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)
        ids,
    required TResult Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)
        labels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)?
        ids,
    TResult? Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)?
        labels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)?
        ids,
    TResult Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)?
        labels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourcePersonalizedTypeIds value) ids,
    required TResult Function(BlazeDataSourcePersonalizedTypeLabels value)
        labels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourcePersonalizedTypeIds value)? ids,
    TResult? Function(BlazeDataSourcePersonalizedTypeLabels value)? labels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourcePersonalizedTypeIds value)? ids,
    TResult Function(BlazeDataSourcePersonalizedTypeLabels value)? labels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeDataSourcePersonalizedType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeDataSourcePersonalizedTypeCopyWith<$Res> {
  factory $BlazeDataSourcePersonalizedTypeCopyWith(
          BlazeDataSourcePersonalizedType value,
          $Res Function(BlazeDataSourcePersonalizedType) then) =
      _$BlazeDataSourcePersonalizedTypeCopyWithImpl<$Res,
          BlazeDataSourcePersonalizedType>;
}

/// @nodoc
class _$BlazeDataSourcePersonalizedTypeCopyWithImpl<$Res,
        $Val extends BlazeDataSourcePersonalizedType>
    implements $BlazeDataSourcePersonalizedTypeCopyWith<$Res> {
  _$BlazeDataSourcePersonalizedTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlazeDataSourcePersonalizedTypeIdsImplCopyWith<$Res> {
  factory _$$BlazeDataSourcePersonalizedTypeIdsImplCopyWith(
          _$BlazeDataSourcePersonalizedTypeIdsImpl value,
          $Res Function(_$BlazeDataSourcePersonalizedTypeIdsImpl) then) =
      __$$BlazeDataSourcePersonalizedTypeIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids});
}

/// @nodoc
class __$$BlazeDataSourcePersonalizedTypeIdsImplCopyWithImpl<$Res>
    extends _$BlazeDataSourcePersonalizedTypeCopyWithImpl<$Res,
        _$BlazeDataSourcePersonalizedTypeIdsImpl>
    implements _$$BlazeDataSourcePersonalizedTypeIdsImplCopyWith<$Res> {
  __$$BlazeDataSourcePersonalizedTypeIdsImplCopyWithImpl(
      _$BlazeDataSourcePersonalizedTypeIdsImpl _value,
      $Res Function(_$BlazeDataSourcePersonalizedTypeIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$BlazeDataSourcePersonalizedTypeIdsImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as Map<BlazeDataSourcePersonalizedTypeContentType, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeDataSourcePersonalizedTypeIdsImpl
    implements BlazeDataSourcePersonalizedTypeIds {
  const _$BlazeDataSourcePersonalizedTypeIdsImpl(
      {required final Map<BlazeDataSourcePersonalizedTypeContentType,
              List<String>>
          ids,
      final String? $type})
      : _ids = ids,
        $type = $type ?? 'Ids';

  factory _$BlazeDataSourcePersonalizedTypeIdsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeDataSourcePersonalizedTypeIdsImplFromJson(json);

  final Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> _ids;
  @override
  Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> get ids {
    if (_ids is EqualUnmodifiableMapView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ids);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeDataSourcePersonalizedType.ids(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeDataSourcePersonalizedTypeIdsImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeDataSourcePersonalizedTypeIdsImplCopyWith<
          _$BlazeDataSourcePersonalizedTypeIdsImpl>
      get copyWith => __$$BlazeDataSourcePersonalizedTypeIdsImplCopyWithImpl<
          _$BlazeDataSourcePersonalizedTypeIdsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)
        ids,
    required TResult Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)
        labels,
  }) {
    return ids(this.ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)?
        ids,
    TResult? Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)?
        labels,
  }) {
    return ids?.call(this.ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)?
        ids,
    TResult Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)?
        labels,
    required TResult orElse(),
  }) {
    if (ids != null) {
      return ids(this.ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourcePersonalizedTypeIds value) ids,
    required TResult Function(BlazeDataSourcePersonalizedTypeLabels value)
        labels,
  }) {
    return ids(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourcePersonalizedTypeIds value)? ids,
    TResult? Function(BlazeDataSourcePersonalizedTypeLabels value)? labels,
  }) {
    return ids?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourcePersonalizedTypeIds value)? ids,
    TResult Function(BlazeDataSourcePersonalizedTypeLabels value)? labels,
    required TResult orElse(),
  }) {
    if (ids != null) {
      return ids(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeDataSourcePersonalizedTypeIdsImplToJson(
      this,
    );
  }
}

abstract class BlazeDataSourcePersonalizedTypeIds
    implements BlazeDataSourcePersonalizedType {
  const factory BlazeDataSourcePersonalizedTypeIds(
      {required final Map<BlazeDataSourcePersonalizedTypeContentType,
              List<String>>
          ids}) = _$BlazeDataSourcePersonalizedTypeIdsImpl;

  factory BlazeDataSourcePersonalizedTypeIds.fromJson(
          Map<String, dynamic> json) =
      _$BlazeDataSourcePersonalizedTypeIdsImpl.fromJson;

  Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> get ids;

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeDataSourcePersonalizedTypeIdsImplCopyWith<
          _$BlazeDataSourcePersonalizedTypeIdsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWith<$Res> {
  factory _$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWith(
          _$BlazeDataSourcePersonalizedTypeLabelsImpl value,
          $Res Function(_$BlazeDataSourcePersonalizedTypeLabelsImpl) then) =
      __$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BlazeWidgetLabel labelsFilter, List<BlazeWidgetLabel> labelsPriority});

  $BlazeWidgetLabelCopyWith<$Res> get labelsFilter;
}

/// @nodoc
class __$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWithImpl<$Res>
    extends _$BlazeDataSourcePersonalizedTypeCopyWithImpl<$Res,
        _$BlazeDataSourcePersonalizedTypeLabelsImpl>
    implements _$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWith<$Res> {
  __$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWithImpl(
      _$BlazeDataSourcePersonalizedTypeLabelsImpl _value,
      $Res Function(_$BlazeDataSourcePersonalizedTypeLabelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelsFilter = null,
    Object? labelsPriority = null,
  }) {
    return _then(_$BlazeDataSourcePersonalizedTypeLabelsImpl(
      labelsFilter: null == labelsFilter
          ? _value.labelsFilter
          : labelsFilter // ignore: cast_nullable_to_non_nullable
              as BlazeWidgetLabel,
      labelsPriority: null == labelsPriority
          ? _value._labelsPriority
          : labelsPriority // ignore: cast_nullable_to_non_nullable
              as List<BlazeWidgetLabel>,
    ));
  }

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlazeWidgetLabelCopyWith<$Res> get labelsFilter {
    return $BlazeWidgetLabelCopyWith<$Res>(_value.labelsFilter, (value) {
      return _then(_value.copyWith(labelsFilter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BlazeDataSourcePersonalizedTypeLabelsImpl
    implements BlazeDataSourcePersonalizedTypeLabels {
  const _$BlazeDataSourcePersonalizedTypeLabelsImpl(
      {required this.labelsFilter,
      required final List<BlazeWidgetLabel> labelsPriority,
      final String? $type})
      : _labelsPriority = labelsPriority,
        $type = $type ?? 'Labels';

  factory _$BlazeDataSourcePersonalizedTypeLabelsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BlazeDataSourcePersonalizedTypeLabelsImplFromJson(json);

  /// Mandatory filter expression that defines which content is considered.
  @override
  final BlazeWidgetLabel labelsFilter;

  /// Mandatory array of BlazeWidgetLabel to define the sorting priority for the labels.
  final List<BlazeWidgetLabel> _labelsPriority;

  /// Mandatory array of BlazeWidgetLabel to define the sorting priority for the labels.
  @override
  List<BlazeWidgetLabel> get labelsPriority {
    if (_labelsPriority is EqualUnmodifiableListView) return _labelsPriority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labelsPriority);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeDataSourcePersonalizedType.labels(labelsFilter: $labelsFilter, labelsPriority: $labelsPriority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlazeDataSourcePersonalizedTypeLabelsImpl &&
            (identical(other.labelsFilter, labelsFilter) ||
                other.labelsFilter == labelsFilter) &&
            const DeepCollectionEquality()
                .equals(other._labelsPriority, _labelsPriority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, labelsFilter,
      const DeepCollectionEquality().hash(_labelsPriority));

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWith<
          _$BlazeDataSourcePersonalizedTypeLabelsImpl>
      get copyWith => __$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWithImpl<
          _$BlazeDataSourcePersonalizedTypeLabelsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)
        ids,
    required TResult Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)
        labels,
  }) {
    return labels(labelsFilter, labelsPriority);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)?
        ids,
    TResult? Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)?
        labels,
  }) {
    return labels?.call(labelsFilter, labelsPriority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids)?
        ids,
    TResult Function(BlazeWidgetLabel labelsFilter,
            List<BlazeWidgetLabel> labelsPriority)?
        labels,
    required TResult orElse(),
  }) {
    if (labels != null) {
      return labels(labelsFilter, labelsPriority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlazeDataSourcePersonalizedTypeIds value) ids,
    required TResult Function(BlazeDataSourcePersonalizedTypeLabels value)
        labels,
  }) {
    return labels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlazeDataSourcePersonalizedTypeIds value)? ids,
    TResult? Function(BlazeDataSourcePersonalizedTypeLabels value)? labels,
  }) {
    return labels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlazeDataSourcePersonalizedTypeIds value)? ids,
    TResult Function(BlazeDataSourcePersonalizedTypeLabels value)? labels,
    required TResult orElse(),
  }) {
    if (labels != null) {
      return labels(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlazeDataSourcePersonalizedTypeLabelsImplToJson(
      this,
    );
  }
}

abstract class BlazeDataSourcePersonalizedTypeLabels
    implements BlazeDataSourcePersonalizedType {
  const factory BlazeDataSourcePersonalizedTypeLabels(
          {required final BlazeWidgetLabel labelsFilter,
          required final List<BlazeWidgetLabel> labelsPriority}) =
      _$BlazeDataSourcePersonalizedTypeLabelsImpl;

  factory BlazeDataSourcePersonalizedTypeLabels.fromJson(
          Map<String, dynamic> json) =
      _$BlazeDataSourcePersonalizedTypeLabelsImpl.fromJson;

  /// Mandatory filter expression that defines which content is considered.
  BlazeWidgetLabel get labelsFilter;

  /// Mandatory array of BlazeWidgetLabel to define the sorting priority for the labels.
  List<BlazeWidgetLabel> get labelsPriority;

  /// Create a copy of BlazeDataSourcePersonalizedType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlazeDataSourcePersonalizedTypeLabelsImplCopyWith<
          _$BlazeDataSourcePersonalizedTypeLabelsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BlazeRecommendationsType _$BlazeRecommendationsTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'ForYou':
      return ForYou.fromJson(json);
    case 'Trending':
      return Trending.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'BlazeRecommendationsType',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BlazeRecommendationsType {
  /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
  /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
  List<String>? get anyLabelFilter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)
        forYou,
    required TResult Function(List<String>? anyLabelFilter) trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)?
        forYou,
    TResult? Function(List<String>? anyLabelFilter)? trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)?
        forYou,
    TResult Function(List<String>? anyLabelFilter)? trending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForYou value) forYou,
    required TResult Function(Trending value) trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForYou value)? forYou,
    TResult? Function(Trending value)? trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForYou value)? forYou,
    TResult Function(Trending value)? trending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BlazeRecommendationsType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlazeRecommendationsTypeCopyWith<BlazeRecommendationsType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlazeRecommendationsTypeCopyWith<$Res> {
  factory $BlazeRecommendationsTypeCopyWith(BlazeRecommendationsType value,
          $Res Function(BlazeRecommendationsType) then) =
      _$BlazeRecommendationsTypeCopyWithImpl<$Res, BlazeRecommendationsType>;
  @useResult
  $Res call({List<String>? anyLabelFilter});
}

/// @nodoc
class _$BlazeRecommendationsTypeCopyWithImpl<$Res,
        $Val extends BlazeRecommendationsType>
    implements $BlazeRecommendationsTypeCopyWith<$Res> {
  _$BlazeRecommendationsTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anyLabelFilter = freezed,
  }) {
    return _then(_value.copyWith(
      anyLabelFilter: freezed == anyLabelFilter
          ? _value.anyLabelFilter
          : anyLabelFilter // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForYouImplCopyWith<$Res>
    implements $BlazeRecommendationsTypeCopyWith<$Res> {
  factory _$$ForYouImplCopyWith(
          _$ForYouImpl value, $Res Function(_$ForYouImpl) then) =
      __$$ForYouImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? anyLabelFilter, List<String>? promotedLabels});
}

/// @nodoc
class __$$ForYouImplCopyWithImpl<$Res>
    extends _$BlazeRecommendationsTypeCopyWithImpl<$Res, _$ForYouImpl>
    implements _$$ForYouImplCopyWith<$Res> {
  __$$ForYouImplCopyWithImpl(
      _$ForYouImpl _value, $Res Function(_$ForYouImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anyLabelFilter = freezed,
    Object? promotedLabels = freezed,
  }) {
    return _then(_$ForYouImpl(
      anyLabelFilter: freezed == anyLabelFilter
          ? _value._anyLabelFilter
          : anyLabelFilter // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      promotedLabels: freezed == promotedLabels
          ? _value._promotedLabels
          : promotedLabels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForYouImpl implements ForYou {
  const _$ForYouImpl(
      {final List<String>? anyLabelFilter,
      final List<String>? promotedLabels,
      final String? $type})
      : _anyLabelFilter = anyLabelFilter,
        _promotedLabels = promotedLabels,
        $type = $type ?? 'ForYou';

  factory _$ForYouImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForYouImplFromJson(json);

  /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
  /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
  final List<String>? _anyLabelFilter;

  /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
  /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
  @override
  List<String>? get anyLabelFilter {
    final value = _anyLabelFilter;
    if (value == null) return null;
    if (_anyLabelFilter is EqualUnmodifiableListView) return _anyLabelFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [promotedLabels] is an array of strings, allowing you to prioritize certain labels when fetching recommendations.
  /// This parameter ensures that the content with the specified labels is given higher priority in the recommendation system.
  final List<String>? _promotedLabels;

  /// [promotedLabels] is an array of strings, allowing you to prioritize certain labels when fetching recommendations.
  /// This parameter ensures that the content with the specified labels is given higher priority in the recommendation system.
  @override
  List<String>? get promotedLabels {
    final value = _promotedLabels;
    if (value == null) return null;
    if (_promotedLabels is EqualUnmodifiableListView) return _promotedLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeRecommendationsType.forYou(anyLabelFilter: $anyLabelFilter, promotedLabels: $promotedLabels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForYouImpl &&
            const DeepCollectionEquality()
                .equals(other._anyLabelFilter, _anyLabelFilter) &&
            const DeepCollectionEquality()
                .equals(other._promotedLabels, _promotedLabels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_anyLabelFilter),
      const DeepCollectionEquality().hash(_promotedLabels));

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForYouImplCopyWith<_$ForYouImpl> get copyWith =>
      __$$ForYouImplCopyWithImpl<_$ForYouImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)
        forYou,
    required TResult Function(List<String>? anyLabelFilter) trending,
  }) {
    return forYou(anyLabelFilter, promotedLabels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)?
        forYou,
    TResult? Function(List<String>? anyLabelFilter)? trending,
  }) {
    return forYou?.call(anyLabelFilter, promotedLabels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)?
        forYou,
    TResult Function(List<String>? anyLabelFilter)? trending,
    required TResult orElse(),
  }) {
    if (forYou != null) {
      return forYou(anyLabelFilter, promotedLabels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForYou value) forYou,
    required TResult Function(Trending value) trending,
  }) {
    return forYou(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForYou value)? forYou,
    TResult? Function(Trending value)? trending,
  }) {
    return forYou?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForYou value)? forYou,
    TResult Function(Trending value)? trending,
    required TResult orElse(),
  }) {
    if (forYou != null) {
      return forYou(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ForYouImplToJson(
      this,
    );
  }
}

abstract class ForYou implements BlazeRecommendationsType {
  const factory ForYou(
      {final List<String>? anyLabelFilter,
      final List<String>? promotedLabels}) = _$ForYouImpl;

  factory ForYou.fromJson(Map<String, dynamic> json) = _$ForYouImpl.fromJson;

  /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
  /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
  @override
  List<String>? get anyLabelFilter;

  /// [promotedLabels] is an array of strings, allowing you to prioritize certain labels when fetching recommendations.
  /// This parameter ensures that the content with the specified labels is given higher priority in the recommendation system.
  List<String>? get promotedLabels;

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForYouImplCopyWith<_$ForYouImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrendingImplCopyWith<$Res>
    implements $BlazeRecommendationsTypeCopyWith<$Res> {
  factory _$$TrendingImplCopyWith(
          _$TrendingImpl value, $Res Function(_$TrendingImpl) then) =
      __$$TrendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? anyLabelFilter});
}

/// @nodoc
class __$$TrendingImplCopyWithImpl<$Res>
    extends _$BlazeRecommendationsTypeCopyWithImpl<$Res, _$TrendingImpl>
    implements _$$TrendingImplCopyWith<$Res> {
  __$$TrendingImplCopyWithImpl(
      _$TrendingImpl _value, $Res Function(_$TrendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anyLabelFilter = freezed,
  }) {
    return _then(_$TrendingImpl(
      anyLabelFilter: freezed == anyLabelFilter
          ? _value._anyLabelFilter
          : anyLabelFilter // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingImpl implements Trending {
  const _$TrendingImpl(
      {final List<String>? anyLabelFilter, final String? $type})
      : _anyLabelFilter = anyLabelFilter,
        $type = $type ?? 'Trending';

  factory _$TrendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingImplFromJson(json);

  /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
  /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
  final List<String>? _anyLabelFilter;

  /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
  /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
  @override
  List<String>? get anyLabelFilter {
    final value = _anyLabelFilter;
    if (value == null) return null;
    if (_anyLabelFilter is EqualUnmodifiableListView) return _anyLabelFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'BlazeRecommendationsType.trending(anyLabelFilter: $anyLabelFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingImpl &&
            const DeepCollectionEquality()
                .equals(other._anyLabelFilter, _anyLabelFilter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_anyLabelFilter));

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingImplCopyWith<_$TrendingImpl> get copyWith =>
      __$$TrendingImplCopyWithImpl<_$TrendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)
        forYou,
    required TResult Function(List<String>? anyLabelFilter) trending,
  }) {
    return trending(anyLabelFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)?
        forYou,
    TResult? Function(List<String>? anyLabelFilter)? trending,
  }) {
    return trending?.call(anyLabelFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<String>? anyLabelFilter, List<String>? promotedLabels)?
        forYou,
    TResult Function(List<String>? anyLabelFilter)? trending,
    required TResult orElse(),
  }) {
    if (trending != null) {
      return trending(anyLabelFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForYou value) forYou,
    required TResult Function(Trending value) trending,
  }) {
    return trending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForYou value)? forYou,
    TResult? Function(Trending value)? trending,
  }) {
    return trending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForYou value)? forYou,
    TResult Function(Trending value)? trending,
    required TResult orElse(),
  }) {
    if (trending != null) {
      return trending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingImplToJson(
      this,
    );
  }
}

abstract class Trending implements BlazeRecommendationsType {
  const factory Trending({final List<String>? anyLabelFilter}) = _$TrendingImpl;

  factory Trending.fromJson(Map<String, dynamic> json) =
      _$TrendingImpl.fromJson;

  /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
  /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
  @override
  List<String>? get anyLabelFilter;

  /// Create a copy of BlazeRecommendationsType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingImplCopyWith<_$TrendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
