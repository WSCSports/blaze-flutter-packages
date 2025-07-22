import '../shared/blaze_async_bridge.dart';
import '../shared/blaze_analytics_event.dart';
import '../shared/blaze_logger.dart';
import 'blaze_global_delegate_data_classes.dart';
import 'dart:convert';

/// Global Delegate interface - matches React Native BlazeGlobalDelegate exactly
class BlazeGlobalDelegate {
  /// This function will be triggered every time an analytics event is triggered.
  ///
  /// [params] The analytics event data.
  final void Function(BlazeOnEventTriggeredParams params)? onEventTriggered;

  /// Called when an error occurs in the SDK.
  ///
  /// [params] The error data.
  final void Function(BlazeOnErrorThrownParams params)? onErrorThrown;

  /// Constructor with optional function parameters - matches React Native pattern exactly!
  const BlazeGlobalDelegate({
    this.onEventTriggered,
    this.onErrorThrown,
  });
}

/// Helper class for registering global delegate
class BlazeGlobalDelegateHelper {
  static void registerDelegate(BlazeGlobalDelegate? delegate) {
    // Register event listeners
    _onEventTriggered(delegate?.onEventTriggered);
    _onErrorThrown(delegate?.onErrorThrown);
  }

  static void _onEventTriggered(
    void Function(BlazeOnEventTriggeredParams params)? callback,
  ) {
    const methodName = 'Blaze.onEventTriggered';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            // Parse using freezed object - matches React Native logic
            final eventData =
                BlazeOnEventTriggeredInternalData.fromJson(args.params);

            // Parse the JSON string from eventData field
            final Map<String, dynamic> parsedEvent =
                jsonDecode(eventData.eventData);
            final analyticsEvent = BlazeAnalyticsEvent.fromJson(parsedEvent);

            final eventParams =
                BlazeOnEventTriggeredParams(event: analyticsEvent);
            callback(eventParams);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onEventTriggered',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }

  static void _onErrorThrown(
    void Function(BlazeOnErrorThrownParams params)? callback,
  ) {
    const methodName = 'Blaze.onErrorThrown';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            // Parse using freezed object - matches React Native logic
            final errorData = BlazeError.fromJson(args.params);
            final errorParams = BlazeOnErrorThrownParams(error: errorData);
            callback(errorParams);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onErrorThrown',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }
}
