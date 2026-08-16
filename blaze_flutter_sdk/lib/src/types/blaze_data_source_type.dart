import 'package:freezed_annotation/freezed_annotation.dart';
import 'blaze_widget_label.dart';

part 'blaze_data_source_type.freezed.dart';
part 'blaze_data_source_type.g.dart';

// BlazeDataSourceType as a union type using Freezed
@freezed
class BlazeDataSourceType with _$BlazeDataSourceType {
  const factory BlazeDataSourceType.labels({
    required BlazeWidgetLabel labels,
    BlazeOrderType? orderType,
    List<BlazeWidgetLabel>? labelsPriority,
    int? maxItems,
    BlazeAdvancedOrderType? advancedOrderType,
    BlazeDataSourcePersonalizedType? personalizedType,
  }) = BlazeDataSourceTypeLabels;

  const factory BlazeDataSourceType.ids({
    required List<String> ids,
    BlazeOrderType? orderType,
    BlazeAdvancedOrderType? advancedOrderType,
  }) = BlazeDataSourceTypeIds;

  const factory BlazeDataSourceType.recommendations({
    required BlazeRecommendationsType recommendationsType,
  }) = BlazeDataSourceTypeRecommendations;

  /// Data source backed by a free-text search query.
  const factory BlazeDataSourceType.search({
    /// The text to search content for.
    required String searchText,

    /// Optional maximum number of items to return.
    int? maxItems,

    /// Optional label expression to scope the search to.
    BlazeWidgetLabel? labels,
  }) = BlazeDataSourceTypeSearch;

  /// Combines multiple independent data sources into a single deduplicated feed.
  ///
  /// Entries are fetched in parallel, merged in declaration order, and
  /// deduplicated by item ID with first-occurrence-wins.
  ///
  /// Validation (enforced natively): [dataSources] must not be empty, and no
  /// entry's data source may itself be a composite data source - nesting is
  /// rejected.
  const factory BlazeDataSourceType.composite({
    /// Ordered list of entries; declaration order determines merge priority.
    required List<BlazeCompositeDataSourceEntry> dataSources,
  }) = BlazeDataSourceTypeComposite;

  factory BlazeDataSourceType.fromJson(Map<String, dynamic> json) =>
      _$BlazeDataSourceTypeFromJson(json);
}

/// A single entry within a [BlazeDataSourceType.composite] data source.
@freezed
class BlazeCompositeDataSourceEntry with _$BlazeCompositeDataSourceEntry {
  const factory BlazeCompositeDataSourceEntry({
    /// The data source for this entry. Must not itself be a composite data
    /// source - nesting composite data sources is rejected natively.
    required BlazeDataSourceType dataSource,

    /// Fetch-behavior configuration for this entry within the composite.
    @Default(BlazeCompositeDataSourceConfig())
    BlazeCompositeDataSourceConfig config,
  }) = _BlazeCompositeDataSourceEntry;

  factory BlazeCompositeDataSourceEntry.fromJson(Map<String, dynamic> json) =>
      _$BlazeCompositeDataSourceEntryFromJson(json);
}

/// Fetch-behavior configuration for a [BlazeCompositeDataSourceEntry].
@freezed
class BlazeCompositeDataSourceConfig with _$BlazeCompositeDataSourceConfig {
  const factory BlazeCompositeDataSourceConfig({
    /// When `true`, a fetch failure for this entry fails the entire composite
    /// fetch. When `false` (default), a failing entry is dropped as long as
    /// at least one other entry in the composite succeeds.
    @Default(false) bool isMandatory,
  }) = _BlazeCompositeDataSourceConfig;

  factory BlazeCompositeDataSourceConfig.fromJson(Map<String, dynamic> json) =>
      _$BlazeCompositeDataSourceConfigFromJson(json);
}

// BlazeOrderType enum
enum BlazeOrderType {
  manual, // Manual order. Items are arranged manually according to a custom-defined order.
  recentlyUpdatedFirst, // Recently updated items appear first. Items are ordered based on their most recent update timestamp, with the most recently updated items appearing at the beginning.
  recentlyUpdatedLast, // Recently updated items appear last. Items are ordered based on their most recent update timestamp, with the most recently updated items appearing at the end.
  aToZ, // Items are arranged in alphabetical order from A to Z based on their titles.
  zToA, // Items are arranged in alphabetical order from Z to A based on their titles.
  recentlyCreatedFirst, // Recently created items appear first. Sorts the items by their last creation time in descending order, meaning the most recently created items will be displayed first.
  recentlyCreatedLast, // Recently created items appear last. Sorts the items by their last creation time in ascending order, meaning the least recently created items will be displayed first.
  startTimeDesc, // Live/upcoming content ordered by start time, most recent first.
  startTimeAsc, // Live/upcoming content ordered by start time, least recent first.
  random; // Items are ordered randomly.
}

// BlazeAdvancedOrderType enum
enum BlazeAdvancedOrderType {
  liveFirst; // Live content is displayed first.
}

// BlazeDataSourcePersonalizedType as union type
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class BlazeDataSourcePersonalizedType with _$BlazeDataSourcePersonalizedType {
  /// Personalized content based on specific content type IDs.
  const factory BlazeDataSourcePersonalizedType.ids({
    required Map<BlazeDataSourcePersonalizedTypeContentType, List<String>> ids,
  }) = BlazeDataSourcePersonalizedTypeIds;

  /// Personalized content based on label filtering and priority.
  const factory BlazeDataSourcePersonalizedType.labels({
    /// Mandatory filter expression that defines which content is considered.
    required BlazeWidgetLabel labelsFilter,

    /// Array of BlazeWidgetLabel to define the sorting priority for the labels.
    @Default([]) List<BlazeWidgetLabel> labelsPriority,
  }) = BlazeDataSourcePersonalizedTypeLabels;

  factory BlazeDataSourcePersonalizedType.fromJson(Map<String, dynamic> json) =>
      _$BlazeDataSourcePersonalizedTypeFromJson(json);

  /// Convenience constructor for personalized content based on player and/or
  /// team IDs, matching the native `Ids(playerIds:, teamIds:)` constructor.
  factory BlazeDataSourcePersonalizedType.playerAndTeamIds({
    List<String> playerIds = const [],
    List<String> teamIds = const [],
  }) {
    return BlazeDataSourcePersonalizedType.ids(ids: {
      BlazeDataSourcePersonalizedTypeContentType.players: playerIds,
      BlazeDataSourcePersonalizedTypeContentType.teams: teamIds,
    });
  }
}

// BlazeDataSourcePersonalizedTypeContentType enum
enum BlazeDataSourcePersonalizedTypeContentType {
  players, // Use player IDs for personalization.
  teams; // Use team IDs for personalization.
}

// BlazeRecommendationsType as union type
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class BlazeRecommendationsType with _$BlazeRecommendationsType {
  /// Represents personalized recommendations for the user.
  /// Use this case to fetch content recommendations that are tailored specifically for the current user, based on their preferences and past interactions.
  const factory BlazeRecommendationsType.forYou({
    /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
    /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
    @Default([]) List<String> anyLabelFilter,

    /// [coldStartLabels] is an array of strings used to fetch cold-start content for users below the
    /// interaction threshold. Content associated with these labels is returned (OR'd, ordered by
    /// recency) while the user has too little interaction history for personalized recommendations.
    @Default([]) List<String> coldStartLabels,
  }) = ForYou;

  /// Represents recommendations for content that is currently trending.
  /// Use this case to fetch recommendations for content that is popular and trending across the Blaze platform.
  /// This allows users to discover what is currently popular and engaging to a broader audience.
  const factory BlazeRecommendationsType.trending({
    /// [anyLabelFilter] is an array of strings, allowing you to filter the content received from a recommendation system.
    /// This parameter ensures that your app only displays the most relevant and personalized suggestions to users.
    List<String>? anyLabelFilter,
  }) = Trending;

  factory BlazeRecommendationsType.fromJson(Map<String, dynamic> json) =>
      _$BlazeRecommendationsTypeFromJson(json);
}
