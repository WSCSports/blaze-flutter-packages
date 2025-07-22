import 'package:freezed_annotation/freezed_annotation.dart';

part 'blaze_widget_label.freezed.dart';
part 'blaze_widget_label.g.dart';

/// Represents a label expression for filtering content in Blaze widgets.
///
/// This class allows creating complex label expressions using logical operators.
/// Labels can be combined using AND, OR, and NOT operations to create sophisticated
/// filtering criteria.
///
/// Use the static factory methods to create instances:
/// - [BlazeWidgetLabel.singleLabel] for a single label
/// - [BlazeWidgetLabel.mustInclude] for AND operations
/// - [BlazeWidgetLabel.atLeastOneOf] for OR operations
@freezed
class BlazeWidgetLabel with _$BlazeWidgetLabel {
  const BlazeWidgetLabel._();

  const factory BlazeWidgetLabel({
    required String value,
  }) = _BlazeWidgetLabel;

  static BlazeWidgetLabel singleLabel(String label) {
    return BlazeWidgetLabel(value: label);
  }

  static BlazeWidgetLabel mustInclude(List<dynamic> labels) {
    final labelStrings = labels
        .map((v) => v is BlazeWidgetLabel ? v.toString() : v.toString())
        .toList();
    return BlazeWidgetLabel(value: '[and,${labelStrings.join(',')}]');
  }

  static BlazeWidgetLabel atLeastOneOf(List<dynamic> labels) {
    final labelStrings = labels
        .map((v) => v is BlazeWidgetLabel ? v.toString() : v.toString())
        .toList();
    return BlazeWidgetLabel(value: '[or,${labelStrings.join(',')}]');
  }

  @override
  String toString() {
    return value;
  }

  factory BlazeWidgetLabel.fromJson(Map<String, dynamic> json) =>
      _$BlazeWidgetLabelFromJson(json);
}
