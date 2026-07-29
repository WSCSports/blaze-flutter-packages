import 'dart:async';

import '../shared/blaze_async_bridge.dart';
import '../shared/blaze_analytics_event.dart';
import '../shared/blaze_logger.dart';
import '../shared/errors/errors.dart';
import 'blaze_global_delegate_data_classes.dart';
import 'dart:convert';

/// Global Delegate interface
class BlazeGlobalDelegate {
  /// This function will be triggered every time an analytics event is triggered.
  ///
  /// [params] The analytics event data.
  final void Function(BlazeOnEventTriggeredParams params)? onEventTriggered;

  /// Called when an error occurs in the SDK.
  ///
  /// [params] The error data.
  final void Function(BlazeOnErrorThrownParams params)? onErrorThrown;

  /// Called before playing HLS or MP4 content to allow playback modification
  /// (e.g., URL tokenization).
  ///
  /// If not implemented, the original content will be used without
  /// modification. If the handler throws, the SDK falls back to the original
  /// URL.
  ///
  /// [request] Contains the original URL.
  /// Returns the modified playback response, synchronously or asynchronously.
  final FutureOr<BlazePlaybackModificationResponse> Function(
      BlazePlaybackModificationRequest request)? playbackModificationHandler;

  /// Constructor with optional function parameters
  const BlazeGlobalDelegate({
    this.onEventTriggered,
    this.onErrorThrown,
    this.playbackModificationHandler,
  });
}

/// Helper class for registering global delegate
class BlazeGlobalDelegateHelper {
  static void registerDelegate(BlazeGlobalDelegate? delegate) {
    // Register event listeners
    _onEventTriggered(delegate?.onEventTriggered);
    _onErrorThrown(delegate?.onErrorThrown);
    _playbackModificationHandler(delegate?.playbackModificationHandler);
  }

  static void _playbackModificationHandler(
    FutureOr<BlazePlaybackModificationResponse> Function(
            BlazePlaybackModificationRequest request)?
        callback,
  ) {
    const methodName = 'Blaze.GlobalDelegate.playbackModificationHandler';
    if (callback != null) {
      // Request/response callback (not fire-and-forget): the native side awaits
      // the returned value through the async bridge before starting playback.
      BlazeAsyncBridge.registerDartMethod(
        methodName,
        (args) async {
          final request = BlazePlaybackModificationRequest.fromJson(args.params);
          try {
            final response = await callback(request);
            return response.toJson();
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'playbackModificationHandler',
            );
            // Fall back to the original URL so playback still proceeds.
            return BlazePlaybackModificationResponse(
              modifiedURL: request.originalURL,
            ).toJson();
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartMethod(methodName);
    }
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
            // Parse using freezed object
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
            // Parse using freezed object
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
