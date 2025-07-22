import '../shared/blaze_async_bridge.dart';
import 'blaze_base_player_delegate.dart';
import 'blaze_base_player_delegate_data_classes.dart';
import 'blaze_base_player_delegate_handler.dart';

/// Player Entry Point Delegate class that extends the shared BlazeBasePlayerDelegate
/// This is used for players displayed from entry points like handleUniversalLink, directPlaying, etc.
class BlazePlayerEntryPointDelegate extends BlazeBasePlayerDelegate {
  /// Constructor with optional function parameters - matches iOS BlazePlayerEntryPointDelegate pattern exactly!
  const BlazePlayerEntryPointDelegate({
    // Shared delegate methods from BlazeBasePlayerDelegate
    super.onDataLoadStarted,
    super.onDataLoadComplete,
    super.onPlayerDidAppear,
    super.onPlayerDidDismiss,
    super.onTriggerCTA,
    super.onTriggerPlayerBodyTextLink,
    super.onPlayerEventTriggered,
  });
}

/// Helper class for registering player entry point delegate
class BlazePlayerEntryPointDelegateHelper {
  static void registerDelegate(BlazePlayerEntryPointDelegate? delegate) {
    // Register event listeners
    _onDataLoadStarted(delegate?.onDataLoadStarted);
    _onDataLoadComplete(delegate?.onDataLoadComplete);
    _onPlayerDidAppear(delegate?.onPlayerDidAppear);
    _onPlayerDidDismiss(delegate?.onPlayerDidDismiss);
    _onTriggerCTA(delegate?.onTriggerCTA);
    _onTriggerPlayerBodyTextLink(delegate?.onTriggerPlayerBodyTextLink);
    _onPlayerEventTriggered(delegate?.onPlayerEventTriggered);
  }

  static void _onDataLoadStarted(
    void Function(BlazeOnDataLoadStartedParams params)? callback,
  ) {
    const methodName = 'Blaze.onDataLoadStarted';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          BlazeBasePlayerDelegateHandler.handleDataLoadStarted(
              args.params, callback);
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onDataLoadComplete(
    void Function(BlazeOnDataLoadCompleteParams params)? callback,
  ) {
    const methodName = 'Blaze.onDataLoadComplete';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          BlazeBasePlayerDelegateHandler.handleDataLoadComplete(
              args.params, callback);
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onPlayerDidAppear(
    void Function(BlazeOnPlayerDidAppearParams params)? callback,
  ) {
    const methodName = 'Blaze.onPlayerDidAppear';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          BlazeBasePlayerDelegateHandler.handlePlayerDidAppear(
              args.params, callback);
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onPlayerDidDismiss(
    void Function(BlazeOnPlayerDidDismissParams params)? callback,
  ) {
    const methodName = 'Blaze.onPlayerDidDismiss';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          BlazeBasePlayerDelegateHandler.handlePlayerDidDismiss(
              args.params, callback);
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onTriggerCTA(
    void Function(BlazeOnTriggerCTAParams params)? callback,
  ) {
    const methodName = 'Blaze.onTriggerCTA';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          BlazeBasePlayerDelegateHandler.handleTriggerCTA(
              args.params, callback);
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onTriggerPlayerBodyTextLink(
    void Function(BlazeOnTriggerPlayerBodyTextLinkParams params)? callback,
  ) {
    const methodName = 'Blaze.onTriggerPlayerBodyTextLink';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          BlazeBasePlayerDelegateHandler.handleTriggerPlayerBodyTextLink(
              args.params, callback);
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onPlayerEventTriggered(
    void Function(BlazeOnPlayerEventTriggeredParams params)? callback,
  ) {
    const methodName = 'Blaze.onPlayerEventTriggered';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          BlazeBasePlayerDelegateHandler.handlePlayerEventTriggered(
              args.params, callback);
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }
}
