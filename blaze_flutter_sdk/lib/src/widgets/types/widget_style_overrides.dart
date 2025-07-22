import 'package:freezed_annotation/freezed_annotation.dart';
import 'widget_layout_styles.dart';

part 'widget_style_overrides.freezed.dart';
part 'widget_style_overrides.g.dart';

/// Custom mapping for identifying specific widget items for style overrides
///
/// `BlazeWidgetItemCustomMapping` is a structure designed to facilitate custom
/// key-value mappings for Blaze widget items. It enables the association of
/// specific data points with a widget item, allowing for flexible data
/// representation within the widget.
@freezed
class BlazeWidgetItemCustomMapping with _$BlazeWidgetItemCustomMapping {
  /// Initializes a new instance of `BlazeWidgetItemCustomMapping` with explicit key and value strings.
  ///
  /// - Parameters:
  ///   - key: A `String` representing the key for the mapping.
  ///   - value: A `String` representing the value associated with the key.
  const factory BlazeWidgetItemCustomMapping({
    /// The key for the custom mapping, represented as a `String`.
    /// This key identifies the type of data or attribute the value corresponds to.
    required String key,

    /// The value for the custom mapping, represented as a `String`.
    /// This value contains the specific data or attribute associated with the key.
    required String value,
  }) = _BlazeWidgetItemCustomMapping;

  /// Initializes a new instance of `BlazeWidgetItemCustomMapping` using a predefined key preset and a custom value string.
  ///
  /// - Parameters:
  ///   - keyPreset: A `BlazeKeysPresets` enum value representing a predefined key.
  ///   - value: A `String` representing the value associated with the predefined key.
  factory BlazeWidgetItemCustomMapping.fromPreset({
    required BlazeKeysPresets keyPreset,
    required String value,
  }) =>
      BlazeWidgetItemCustomMapping(
        key: keyPreset.rawValue,
        value: value,
      );

  factory BlazeWidgetItemCustomMapping.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetItemCustomMappingFromJson(json);
}

/// An enumeration defining preset keys for commonly used attributes in Blaze widget items.
/// This facilitates easier and more consistent key management across different implementations of the widget.
enum BlazeKeysPresets {
  /// Represents a game identifier.
  gameId('gameId'),

  /// Represents a team identifier.
  teamId('teamId'),

  /// Represents a player identifier.
  playerId('playerId'),

  /// Represents a round identifier.
  roundId('roundId'),

  /// Represents a season identifier.
  seasonId('seasonId'),

  /// Represents active labels.
  activeLabels('activeLabels'),

  /// Represents live status.
  isCurrentlyLive('isCurrentlyLive');

  const BlazeKeysPresets(this._rawValue);
  final String _rawValue;

  /// Gets the raw string value of the preset
  String get rawValue => _rawValue;
}

/// Style overrides that can be applied to specific widget items
@freezed
class BlazeWidgetItemStyleOverrides with _$BlazeWidgetItemStyleOverrides {
  const factory BlazeWidgetItemStyleOverrides({
    /// Status indicator style overrides (live/read/unread indicators)
    BlazeWidgetItemStatusIndicatorStyle? statusIndicator,

    /// Image border style overrides for different states
    BlazeWidgetItemImageContainerBorderStyle? imageBorder,

    /// Badge style overrides for different states
    BlazeWidgetItemBadgeStyle? badge,
  }) = _BlazeWidgetItemStyleOverrides;

  factory BlazeWidgetItemStyleOverrides.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetItemStyleOverridesFromJson(json);
}
