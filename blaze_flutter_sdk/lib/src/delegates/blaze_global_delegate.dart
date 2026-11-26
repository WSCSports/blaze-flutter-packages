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
  /// An event this SDK version cannot decode is not delivered here. It is
  /// reported once through [onErrorThrown] with reason
  /// `failedToParseAnalyticsEvent`.
  ///
  /// [params] The analytics event data.
  final void Function(BlazeOnEventTriggeredParams params)? onEventTriggered;

  /// Called when an error occurs in the SDK.
  ///
  /// Also called with domain `general` and reason
  /// `failedToParseAnalyticsEvent` when an analytics event cannot be decoded.
  /// The error's `metadata` then carries the event's `event_category` and
  /// `event_action` when they could be read.
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
    _onEventTriggered(delegate?.onEventTriggered, delegate?.onErrorThrown);
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

  /// The `reason` of the error reported when an analytics event cannot be
  /// decoded.
  static const _failedToParseAnalyticsEventReason = 'failedToParseAnalyticsEvent';

  static void _onEventTriggered(
    void Function(BlazeOnEventTriggeredParams params)? callback,
    void Function(BlazeOnErrorThrownParams params)? onErrorThrown,
  ) {
    const methodName = 'Blaze.onEventTriggered';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          final BlazeAnalyticsEvent analyticsEvent;
          Map<String, dynamic>? parsedEvent;
          try {
            // Parse using freezed object
            final eventData =
                BlazeOnEventTriggeredInternalData.fromJson(args.params);

            // Parse the JSON string from eventData field
            parsedEvent = jsonDecode(eventData.eventData);
            analyticsEvent = BlazeAnalyticsEvent.fromJson(parsedEvent!);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onEventTriggered',
            );
            // The event is lost, so tell the app instead of dropping it
            // silently.
            _reportUnparsedEvent(e, parsedEvent, onErrorThrown);
            return;
          }

          try {
            callback(BlazeOnEventTriggeredParams(event: analyticsEvent));
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

  static void _reportUnparsedEvent(
    Object error,
    Map<String, dynamic>? parsedEvent,
    void Function(BlazeOnErrorThrownParams params)? onErrorThrown,
  ) {
    if (onErrorThrown == null) return;

    // Names the event when the payload was readable JSON.
    final metadata = <String, String>{};
    for (final key in const ['event_category', 'event_action']) {
      final value = parsedEvent?[key];
      if (value is String) metadata[key] = value;
    }

    try {
      onErrorThrown(BlazeOnErrorThrownParams(
        error: BlazeError(
          domain: 'general',
          reason: _failedToParseAnalyticsEventReason,
          message: 'An analytics event could not be decoded: $error',
          metadata: metadata,
        ),
      ));
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'onErrorThrown',
      );
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
