import 'package:freezed_annotation/freezed_annotation.dart';

part 'blaze_widget_delegate_data_classes.freezed.dart';
part 'blaze_widget_delegate_data_classes.g.dart';

/// Widget item clicked event - only used by Widget delegate
@freezed
class BlazeOnWidgetItemClickedEvent with _$BlazeOnWidgetItemClickedEvent {
  const factory BlazeOnWidgetItemClickedEvent({
    required String widgetId,
    required String widgetItemId,
    String? widgetItemTitle,
  }) = _BlazeOnWidgetItemClickedEvent;

  factory BlazeOnWidgetItemClickedEvent.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnWidgetItemClickedEventFromJson(json);
}
