import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'blaze_logger.dart';

part 'blaze_async_bridge.freezed.dart';
part 'blaze_async_bridge.g.dart';

/// Handler for Dart method calls - matches React Native pattern
typedef BlazeDartMethodHandler = Future<dynamic> Function(
    BlazeDartMethodHandlerArguments args);

/// Handler for Dart event listeners (fire-and-forget operations)
typedef BlazeDartEventHandler = Future<void> Function(
    BlazeDartMethodHandlerArguments args);

class BlazeDartMethodHandlerArguments {
  /// The params retreived from the native side.
  final dynamic params;

  const BlazeDartMethodHandlerArguments._({
    required this.params,
  });
}

/// Interface for AsyncBridge - matches React Native interface
class BlazeAsyncBridge {
  static final _BlazeAsyncBridgeInternal _sdk =
      _BlazeAsyncBridgeInternal._getInstance();

  /// Register a handler for a JavaScript method that can be called from native
  /// @param methodName The name of the method to register
  /// @param handler A function that handles the method call and returns a Promise
  static registerDartMethod(
          String methodName, BlazeDartMethodHandler handler) =>
      _sdk.registerDartMethod(methodName, handler);

  /// Register a handler for a JavaScript event (fire-and-forget operation)
  /// @param eventName The name of the event to register
  /// @param handler A function that handles the event (returns void)
  static registerDartEventHandler(
          String eventName, BlazeDartEventHandler handler) =>
      _sdk.registerDartEventHandler(eventName, handler);

  /// Unregister a JavaScript method handler
  /// @param methodName The name of the method to unregister
  static unregisterDartMethod(String methodName) =>
      _sdk.unregisterDartMethod(methodName);

  /// Unregister a JavaScript event handler
  /// @param eventName The name of the event to unregister
  static unregisterDartEventHandler(String eventName) =>
      _sdk.unregisterDartEventHandler(eventName);
}

/// Request structure for native calls
@freezed
class _AsyncBridgeRequest with _$AsyncBridgeRequest {
  const factory _AsyncBridgeRequest({
    required String methodName,
    required String params,
    required String callbackId,
  }) = __AsyncBridgeRequest;

  factory _AsyncBridgeRequest.fromJson(Map<String, dynamic> json) =>
      _$AsyncBridgeRequestFromJson(json);
}

/// Response structure for native calls
@freezed
class _AsyncBridgeResponse with _$AsyncBridgeResponse {
  const factory _AsyncBridgeResponse({
    required String callbackId,
    required bool success,
    String? data,
    String? errorMessage,
  }) = __AsyncBridgeResponse;

  // ignore: unused_element
  factory _AsyncBridgeResponse.fromJson(Map<String, dynamic> json) =>
      _$AsyncBridgeResponseFromJson(json);
}

class _BlazeAsyncBridgeInternal {
  final Map<String, BlazeDartMethodHandler> _methodHandlers = {};
  static const String _bridgeAsyncFunctionName = 'BlazeAsyncBridge.dartRequest';
  late final MethodChannel _methodChannel;

  // Singleton instance
  static _BlazeAsyncBridgeInternal? _instance;

  // Private constructor for singleton
  _BlazeAsyncBridgeInternal._() {
    _methodChannel = const MethodChannel('blaze-async-bridge');

    // Subscribe to events from the native module
    _methodChannel.setMethodCallHandler(_handleMethodCall);
  }

  // Method to get singleton instance
  static _BlazeAsyncBridgeInternal _getInstance() {
    _instance ??= _BlazeAsyncBridgeInternal._();
    return _instance!;
  }

  void registerDartMethod(String methodName, BlazeDartMethodHandler handler) {
    _methodHandlers[methodName] = handler;
  }

  void registerDartEventHandler(
      String eventName, BlazeDartEventHandler handler) {
    // Wrap the event handler to return null for fire-and-forget operations
    registerDartMethod(eventName, (args) async {
      await handler(args);
      return null; // Always return null for events
    });
  }

  void unregisterDartMethod(String methodName) {
    _methodHandlers.remove(methodName);
  }

  void unregisterDartEventHandler(String eventName) {
    // Same implementation as unregisterDartMethod since they use the same map
    unregisterDartMethod(eventName);
  }

  /// Clear all registered handlers - useful for hot reload (internal use only)
  void clearHandlers() {
    _methodHandlers.clear();
  }

  /// Handle method calls from native
  Future<dynamic> _handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case _bridgeAsyncFunctionName:
        await _handleDartRequest(call.arguments);
        return null;
      default:
        return null;
    }
  }

  /// Handle a JS method request from native
  /// @param event The event data containing method name, parameters, and callback ID
  Future<void> _handleDartRequest(dynamic arguments) async {
    _AsyncBridgeRequest? event;
    try {
      // Cast Map<Object?, Object?> to Map<String, dynamic> for fromJson
      Map<String, dynamic> jsonMap;
      if (arguments is Map) {
        jsonMap = Map<String, dynamic>.from(arguments);
      } else {
        debugPrint(
            "ERROR: arguments is not a Map, it's ${arguments.runtimeType}");
        return;
      }

      event = _AsyncBridgeRequest.fromJson(jsonMap);
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'parsing _AsyncBridgeRequest',
      );
    }

    if (event == null) {
      return;
    }

    final methodName = event.methodName;
    final params = event.params;
    final callbackId = event.callbackId;

    final handler = _methodHandlers[event.methodName];

    if (handler == null) {
      _resolveJSResponse(_AsyncBridgeResponse(
        callbackId: event.callbackId,
        success: false,
        errorMessage: 'No handler registered for method: $methodName',
      ));
      return;
    }

    try {
      // Parse JSON string to get the typed object
      dynamic parsedParams;
      try {
        parsedParams = json.decode(params);
      } catch (parseError, parseStackTrace) {
        BlazeLogger.blazeDebugPrintException(
          parseError,
          parseStackTrace,
          context: 'parsing JSON params',
        );
        _resolveJSResponse(_AsyncBridgeResponse(
          callbackId: callbackId,
          success: false,
          errorMessage: 'Failed to parse JSON params: $parseError',
        ));
        return;
      }

      // Call the handler with the parsed typed parameters
      final args = BlazeDartMethodHandlerArguments._(params: parsedParams);
      final result = await handler(args);
      // Serialize result to JSON string for consistent cross-platform handling
      final String? jsonData = result != null ? json.encode(result) : null;
      _resolveJSResponse(_AsyncBridgeResponse(
        callbackId: callbackId,
        success: true,
        data: jsonData,
      ));
    } catch (error, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        error,
        stackTrace,
        context: 'handling method call: $methodName',
      );
      _resolveJSResponse(_AsyncBridgeResponse(
        callbackId: callbackId,
        success: false,
        errorMessage: error.toString(),
      ));
    }
  }

  /// Send a response back to native code
  /// @param response The response data
  void _resolveJSResponse(_AsyncBridgeResponse response) {
    _methodChannel.invokeMethod('resolveDartResponse', response.toJson());
  }
}
