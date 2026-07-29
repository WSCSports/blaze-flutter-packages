import 'package:freezed_annotation/freezed_annotation.dart';

import 'shared_types.dart';

part 'custom_action_button.freezed.dart';
part 'custom_action_button.g.dart';

/// Declarative condition controlling whether a custom action button is visible,
/// evaluated against a content item's metadata.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class VisibilityCondition with _$VisibilityCondition {
  /// Always visible.
  const factory VisibilityCondition.always() = VisibilityConditionAlways;

  /// Never visible.
  const factory VisibilityCondition.never() = VisibilityConditionNever;

  /// Visible when [key] exists in the metadata.
  const factory VisibilityCondition.keyExists({
    required String key,
  }) = VisibilityConditionKeyExists;

  /// Visible when [key] does not exist in the metadata.
  const factory VisibilityCondition.keyNotExists({
    required String key,
  }) = VisibilityConditionKeyNotExists;

  /// Visible when the value at [key] equals [value].
  const factory VisibilityCondition.keyEquals({
    required String key,
    required BlazePrimitive value,
  }) = VisibilityConditionKeyEquals;

  /// Visible when the value at [key] does not equal [value].
  const factory VisibilityCondition.keyNotEquals({
    required String key,
    required BlazePrimitive value,
  }) = VisibilityConditionKeyNotEquals;

  /// Visible when the value at [key] is contained in [values].
  const factory VisibilityCondition.keyIn({
    required String key,
    required List<BlazePrimitive> values,
  }) = VisibilityConditionKeyIn;

  /// Visible when the value at [key] is not contained in [values].
  const factory VisibilityCondition.keyNotIn({
    required String key,
    required List<BlazePrimitive> values,
  }) = VisibilityConditionKeyNotIn;

  /// Visible when the numeric value at [key] is greater than [threshold].
  const factory VisibilityCondition.keyGreaterThan({
    required String key,
    required num threshold,
  }) = VisibilityConditionKeyGreaterThan;

  /// Visible when the numeric value at [key] is less than [threshold].
  const factory VisibilityCondition.keyLessThan({
    required String key,
    required num threshold,
  }) = VisibilityConditionKeyLessThan;

  /// Visible when the numeric value at [key] is between [min] and [max].
  const factory VisibilityCondition.keyBetween({
    required String key,
    required num min,
    required num max,
  }) = VisibilityConditionKeyBetween;

  /// Visible when the string value at [key] contains [substring].
  const factory VisibilityCondition.keyContains({
    required String key,
    required String substring,
  }) = VisibilityConditionKeyContains;

  /// Visible when all [conditions] are satisfied.
  const factory VisibilityCondition.and({
    required List<VisibilityCondition> conditions,
  }) = VisibilityConditionAnd;

  /// Visible when any of [conditions] is satisfied.
  const factory VisibilityCondition.or({
    required List<VisibilityCondition> conditions,
  }) = VisibilityConditionOr;

  /// Visible when [condition] is not satisfied.
  const factory VisibilityCondition.not({
    required VisibilityCondition condition,
  }) = VisibilityConditionNot;

  factory VisibilityCondition.fromJson(Map<String, dynamic> json) =>
      _$VisibilityConditionFromJson(json);
}

/// Parameters describing a custom action button.
@freezed
class BlazeCustomActionButtonParams with _$BlazeCustomActionButtonParams {
  const factory BlazeCustomActionButtonParams({
    /// Unique identifier for the button.
    required String id,

    /// Display name for the button.
    required String name,

    /// Optional app-defined metadata keyed by string.
    Map<String, BlazePrimitive>? appMetadata,

    /// Optional condition controlling the button's visibility.
    VisibilityCondition? visibilityCondition,
  }) = _BlazeCustomActionButtonParams;

  factory BlazeCustomActionButtonParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeCustomActionButtonParamsFromJson(json);
}

/// A custom action button that can be added to a player.
@freezed
class BlazeCustomActionButton with _$BlazeCustomActionButton {
  const factory BlazeCustomActionButton({
    /// The button parameters (id, name, metadata, visibility).
    required BlazeCustomActionButtonParams customParams,

    /// Optional style overrides for the button.
    BlazePlayerButtonStyle? style,
  }) = _BlazeCustomActionButton;

  factory BlazeCustomActionButton.fromJson(Map<String, dynamic> json) =>
      _$BlazeCustomActionButtonFromJson(json);
}
