import '../shared/blaze_logger.dart';
import 'blaze_base_player_delegate_data_classes.dart';

/// Base player delegate handler - eliminates duplicate code between Widget and EntryPoint delegates
/// Simple approach: takes dynamic args and a callback function for each delegate method
class BlazeBasePlayerDelegateHandler {
  static void handleDataLoadStarted(
    Map<String, dynamic> args,
    void Function(BlazeOnDataLoadStartedParams)? callback,
  ) {
    if (callback == null) return;

    try {
      final params = BlazeOnDataLoadStartedParams.fromJson(
        args,
      );
      callback(params);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onDataLoadStarted',
      );
    }
  }

  static void handleDataLoadComplete(
    Map<String, dynamic> args,
    void Function(BlazeOnDataLoadCompleteParams)? callback,
  ) {
    if (callback == null) return;

    try {
      final params = BlazeOnDataLoadCompleteParams.fromJson(
        args,
      );
      callback(params);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onDataLoadComplete',
      );
    }
  }

  static void handlePlayerDidAppear(
    Map<String, dynamic> args,
    void Function(BlazeOnPlayerDidAppearParams)? callback,
  ) {
    if (callback == null) return;

    try {
      final params = BlazeOnPlayerDidAppearParams.fromJson(
        args,
      );
      callback(params);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onPlayerDidAppear',
      );
    }
  }

  static void handlePlayerDidDismiss(
    Map<String, dynamic> args,
    void Function(BlazeOnPlayerDidDismissParams)? callback,
  ) {
    if (callback == null) return;

    try {
      final params = BlazeOnPlayerDidDismissParams.fromJson(
        args,
      );
      callback(params);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onPlayerDidDismiss',
      );
    }
  }

  static void handleTriggerCTA(
    Map<String, dynamic> args,
    void Function(BlazeOnTriggerCTAParams)? callback,
  ) {
    if (callback == null) return;

    try {
      final params = BlazeOnTriggerCTAParams.fromJson(
        args,
      );
      callback(params);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onTriggerCTA',
      );
    }
  }

  static void handleTriggerPlayerBodyTextLink(
    Map<String, dynamic> args,
    void Function(BlazeOnTriggerPlayerBodyTextLinkParams)? callback,
  ) {
    if (callback == null) return;

    try {
      final params = BlazeOnTriggerPlayerBodyTextLinkParams.fromJson(
        args,
      );
      callback(params);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onTriggerPlayerBodyTextLink',
      );
    }
  }

  static void handlePlayerEventTriggered(
    Map<String, dynamic> args,
    void Function(BlazeOnPlayerEventTriggeredParams)? callback,
  ) {
    if (callback == null) return;

    try {
      // Parse using internal data class with centralized parsing
      final internalData = BlazePlayerEventInternalData.fromJson(
        args,
      );

      // Use centralized parser to convert to BlazePlayerEvent
      final playerEvent = internalData.eventData.asPlayerEvent;
      if (playerEvent != null) {
        final params = BlazeOnPlayerEventTriggeredParams(
          playerType: internalData.playerType,
          sourceId: internalData.sourceId,
          event: playerEvent,
        );
        callback(params);
      }
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onPlayerEventTriggered',
      );
    }
  }
}
