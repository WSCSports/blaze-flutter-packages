import '../shared/blaze_logger.dart';
import 'blaze_widget_delegate_data_classes.dart';

/// Widget delegate handler - handles widget-specific delegate methods
class BlazeWidgetDelegateHandler {
  static void handleWidgetItemClicked(
    Map<String, dynamic> args,
    void Function(BlazeOnWidgetItemClickedEvent)? callback,
  ) {
    if (callback == null) return;

    try {
      final event = BlazeOnWidgetItemClickedEvent.fromJson(args);
      callback(event);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onWidgetItemClicked',
      );
    }
  }
}
