// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blaze_data_source_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlazeDataSourceTypeLabelsImpl _$$BlazeDataSourceTypeLabelsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeDataSourceTypeLabelsImpl(
      labels: BlazeWidgetLabel.fromJson(json['labels'] as Map<String, dynamic>),
      orderType:
          $enumDecodeNullable(_$BlazeOrderTypeEnumMap, json['orderType']),
      labelsPriority: (json['labelsPriority'] as List<dynamic>?)
          ?.map((e) => BlazeWidgetLabel.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxItems: (json['maxItems'] as num?)?.toInt(),
      advancedOrderType: $enumDecodeNullable(
          _$BlazeAdvancedOrderTypeEnumMap, json['advancedOrderType']),
      personalizedType: json['personalizedType'] == null
          ? null
          : BlazeDataSourcePersonalizedType.fromJson(
              json['personalizedType'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BlazeDataSourceTypeLabelsImplToJson(
        _$BlazeDataSourceTypeLabelsImpl instance) =>
    <String, dynamic>{
      'labels': instance.labels.toJson(),
      'orderType': _$BlazeOrderTypeEnumMap[instance.orderType],
      'labelsPriority':
          instance.labelsPriority?.map((e) => e.toJson()).toList(),
      'maxItems': instance.maxItems,
      'advancedOrderType':
          _$BlazeAdvancedOrderTypeEnumMap[instance.advancedOrderType],
      'personalizedType': instance.personalizedType?.toJson(),
      'runtimeType': instance.$type,
    };

const _$BlazeOrderTypeEnumMap = {
  BlazeOrderType.manual: 'manual',
  BlazeOrderType.recentlyUpdatedFirst: 'recentlyUpdatedFirst',
  BlazeOrderType.recentlyUpdatedLast: 'recentlyUpdatedLast',
  BlazeOrderType.aToZ: 'aToZ',
  BlazeOrderType.zToA: 'zToA',
  BlazeOrderType.recentlyCreatedFirst: 'recentlyCreatedFirst',
  BlazeOrderType.recentlyCreatedLast: 'recentlyCreatedLast',
  BlazeOrderType.startTimeDesc: 'startTimeDesc',
  BlazeOrderType.startTimeAsc: 'startTimeAsc',
  BlazeOrderType.random: 'random',
};

const _$BlazeAdvancedOrderTypeEnumMap = {
  BlazeAdvancedOrderType.liveFirst: 'liveFirst',
};

_$BlazeDataSourceTypeIdsImpl _$$BlazeDataSourceTypeIdsImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeDataSourceTypeIdsImpl(
      ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
      orderType:
          $enumDecodeNullable(_$BlazeOrderTypeEnumMap, json['orderType']),
      advancedOrderType: $enumDecodeNullable(
          _$BlazeAdvancedOrderTypeEnumMap, json['advancedOrderType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BlazeDataSourceTypeIdsImplToJson(
        _$BlazeDataSourceTypeIdsImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'orderType': _$BlazeOrderTypeEnumMap[instance.orderType],
      'advancedOrderType':
          _$BlazeAdvancedOrderTypeEnumMap[instance.advancedOrderType],
      'runtimeType': instance.$type,
    };

_$BlazeDataSourceTypeRecommendationsImpl
    _$$BlazeDataSourceTypeRecommendationsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeDataSourceTypeRecommendationsImpl(
          recommendationsType: BlazeRecommendationsType.fromJson(
              json['recommendationsType'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$BlazeDataSourceTypeRecommendationsImplToJson(
        _$BlazeDataSourceTypeRecommendationsImpl instance) =>
    <String, dynamic>{
      'recommendationsType': instance.recommendationsType.toJson(),
      'runtimeType': instance.$type,
    };

_$BlazeDataSourceTypeSearchImpl _$$BlazeDataSourceTypeSearchImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeDataSourceTypeSearchImpl(
      searchText: json['searchText'] as String,
      maxItems: (json['maxItems'] as num?)?.toInt(),
      labels: json['labels'] == null
          ? null
          : BlazeWidgetLabel.fromJson(json['labels'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BlazeDataSourceTypeSearchImplToJson(
        _$BlazeDataSourceTypeSearchImpl instance) =>
    <String, dynamic>{
      'searchText': instance.searchText,
      'maxItems': instance.maxItems,
      'labels': instance.labels?.toJson(),
      'runtimeType': instance.$type,
    };

_$BlazeDataSourceTypeCompositeImpl _$$BlazeDataSourceTypeCompositeImplFromJson(
        Map<String, dynamic> json) =>
    _$BlazeDataSourceTypeCompositeImpl(
      dataSources: (json['dataSources'] as List<dynamic>)
          .map((e) =>
              BlazeCompositeDataSourceEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BlazeDataSourceTypeCompositeImplToJson(
        _$BlazeDataSourceTypeCompositeImpl instance) =>
    <String, dynamic>{
      'dataSources': instance.dataSources.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$BlazeCompositeDataSourceEntryImpl
    _$$BlazeCompositeDataSourceEntryImplFromJson(Map<String, dynamic> json) =>
        _$BlazeCompositeDataSourceEntryImpl(
          dataSource: BlazeDataSourceType.fromJson(
              json['dataSource'] as Map<String, dynamic>),
          config: json['config'] == null
              ? const BlazeCompositeDataSourceConfig()
              : BlazeCompositeDataSourceConfig.fromJson(
                  json['config'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BlazeCompositeDataSourceEntryImplToJson(
        _$BlazeCompositeDataSourceEntryImpl instance) =>
    <String, dynamic>{
      'dataSource': instance.dataSource.toJson(),
      'config': instance.config.toJson(),
    };

_$BlazeCompositeDataSourceConfigImpl
    _$$BlazeCompositeDataSourceConfigImplFromJson(Map<String, dynamic> json) =>
        _$BlazeCompositeDataSourceConfigImpl(
          isMandatory: json['isMandatory'] as bool? ?? false,
        );

Map<String, dynamic> _$$BlazeCompositeDataSourceConfigImplToJson(
        _$BlazeCompositeDataSourceConfigImpl instance) =>
    <String, dynamic>{
      'isMandatory': instance.isMandatory,
    };

_$BlazeDataSourcePersonalizedTypeIdsImpl
    _$$BlazeDataSourcePersonalizedTypeIdsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeDataSourcePersonalizedTypeIdsImpl(
          ids: (json['ids'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                $enumDecode(
                    _$BlazeDataSourcePersonalizedTypeContentTypeEnumMap, k),
                (e as List<dynamic>).map((e) => e as String).toList()),
          ),
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$BlazeDataSourcePersonalizedTypeIdsImplToJson(
        _$BlazeDataSourcePersonalizedTypeIdsImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids.map((k, e) =>
          MapEntry(_$BlazeDataSourcePersonalizedTypeContentTypeEnumMap[k]!, e)),
      'type': instance.$type,
    };

const _$BlazeDataSourcePersonalizedTypeContentTypeEnumMap = {
  BlazeDataSourcePersonalizedTypeContentType.players: 'players',
  BlazeDataSourcePersonalizedTypeContentType.teams: 'teams',
};

_$BlazeDataSourcePersonalizedTypeLabelsImpl
    _$$BlazeDataSourcePersonalizedTypeLabelsImplFromJson(
            Map<String, dynamic> json) =>
        _$BlazeDataSourcePersonalizedTypeLabelsImpl(
          labelsFilter: BlazeWidgetLabel.fromJson(
              json['labelsFilter'] as Map<String, dynamic>),
          labelsPriority: (json['labelsPriority'] as List<dynamic>?)
                  ?.map((e) =>
                      BlazeWidgetLabel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$BlazeDataSourcePersonalizedTypeLabelsImplToJson(
        _$BlazeDataSourcePersonalizedTypeLabelsImpl instance) =>
    <String, dynamic>{
      'labelsFilter': instance.labelsFilter.toJson(),
      'labelsPriority': instance.labelsPriority.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$ForYouImpl _$$ForYouImplFromJson(Map<String, dynamic> json) => _$ForYouImpl(
      anyLabelFilter: (json['anyLabelFilter'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      coldStartLabels: (json['coldStartLabels'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ForYouImplToJson(_$ForYouImpl instance) =>
    <String, dynamic>{
      'anyLabelFilter': instance.anyLabelFilter,
      'coldStartLabels': instance.coldStartLabels,
      'type': instance.$type,
    };

_$TrendingImpl _$$TrendingImplFromJson(Map<String, dynamic> json) =>
    _$TrendingImpl(
      anyLabelFilter: (json['anyLabelFilter'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TrendingImplToJson(_$TrendingImpl instance) =>
    <String, dynamic>{
      'anyLabelFilter': instance.anyLabelFilter,
      'type': instance.$type,
    };
