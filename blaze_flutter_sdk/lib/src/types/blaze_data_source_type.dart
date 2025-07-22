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

  factory BlazeDataSourceType.fromJson(Map<String, dynamic> json) =>
      _$BlazeDataSourceTypeFromJson(json);
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

    /// Mandatory array of BlazeWidgetLabel to define the sorting priority for the labels.
    required List<BlazeWidgetLabel> labelsPriority,
  }) = BlazeDataSourcePersonalizedTypeLabels;

  factory BlazeDataSourcePersonalizedType.fromJson(Map<String, dynamic> json) =>
      _$BlazeDataSourcePersonalizedTypeFromJson(json);
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
    List<String>? anyLabelFilter,
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
