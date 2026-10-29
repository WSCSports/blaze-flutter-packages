import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

const MethodChannel sdkModuleChannel = MethodChannel('blaze-sdk-module');
const MethodChannel asyncBridgeChannel = MethodChannel('blaze-async-bridge');

TestDefaultBinaryMessenger get _messenger =>
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

/// Installs a mock handler on the `blaze-sdk-module` channel that answers each
/// method with the value in [replies] (missing methods answer `null`) and
/// returns the calls it receives. The handler is removed after the test.
List<MethodCall> mockSdkModule(Map<String, Object?> replies) {
  TestWidgetsFlutterBinding.ensureInitialized();
  final calls = <MethodCall>[];
  _messenger.setMockMethodCallHandler(sdkModuleChannel, (call) async {
    calls.add(call);
    return replies[call.method];
  });
  addTearDown(() => _messenger.setMockMethodCallHandler(sdkModuleChannel, null));
  return calls;
}

/// Delivers a native async-bridge event (as `BlazeAsyncBridge.sendEvent` does)
/// to the Dart handler registered for [methodName].
Future<void> sendAsyncBridgeEvent(
    String methodName, Map<String, Object?> params) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  // Swallow the bridge's `resolveDartResponse` reply.
  _messenger.setMockMethodCallHandler(asyncBridgeChannel, (call) async => null);
  addTearDown(
      () => _messenger.setMockMethodCallHandler(asyncBridgeChannel, null));
  await _messenger.handlePlatformMessage(
    asyncBridgeChannel.name,
    const StandardMethodCodec().encodeMethodCall(MethodCall(
      'BlazeAsyncBridge.dartRequest',
      {
        'methodName': methodName,
        'params': json.encode(params),
        'callbackId': 'test',
      },
    )),
    (_) {},
  );
}

/// Delivers a native widget event on the `blaze-widget-<widgetId>` channel,
/// with the JSON-string payload the bridges send.
Future<void> sendWidgetEvent(
    String widgetId, String method, Map<String, Object?> params) async {
  await _messenger.handlePlatformMessage(
    'blaze-widget-$widgetId',
    const StandardMethodCodec()
        .encodeMethodCall(MethodCall(method, json.encode(params))),
    (_) {},
  );
}

/// Mocks the platform-views channel so Blaze widgets can be pumped in tests,
/// and returns the decoded creation params of every view created.
List<Map<Object?, Object?>> capturePlatformViewCreationParams() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final created = <Map<Object?, Object?>>[];
  _messenger.setMockMethodCallHandler(SystemChannels.platform_views,
      (call) async {
    if (call.method == 'create') {
      final args = call.arguments as Map;
      final bytes = args['params'] as Uint8List;
      created.add(const StandardMessageCodec()
          .decodeMessage(ByteData.sublistView(bytes)) as Map<Object?, Object?>);
      return 0;
    }
    return null;
  });
  addTearDown(() =>
      _messenger.setMockMethodCallHandler(SystemChannels.platform_views, null));
  return created;
}
