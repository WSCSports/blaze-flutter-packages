import '../shared/blaze_logger.dart';
import 'blaze_player_container_tabs_delegate_data_classes.dart';

/// Container tabs delegate handler - handles the tabs-specific delegate
/// method (the 8 shared callbacks go through [BlazeBasePlayerDelegateHandler]).
class BlazePlayerContainerTabsDelegateHandler {
  static void handleTabSelected(
    Map<String, dynamic> args,
    void Function(BlazeOnTabSelectedParams)? callback,
  ) {
    if (callback == null) return;

    try {
      final params = BlazeOnTabSelectedParams.fromJson(args);
      callback(params);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onTabSelected',
      );
    }
  }
}
