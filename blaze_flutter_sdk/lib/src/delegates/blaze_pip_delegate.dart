import 'package:freezed_annotation/freezed_annotation.dart';
import '../shared/blaze_async_bridge.dart';
import '../shared/blaze_logger.dart';
import '../types/shared_types.dart';

part 'blaze_pip_delegate.freezed.dart';
part 'blaze_pip_delegate.g.dart';

/// The current picture-in-picture state reported by the native pip manager.
enum BlazePipState {
  @JsonValue('on')
  on,
  @JsonValue('off')
  off,
}

/// Parameters delivered when the picture-in-picture state changes.
@freezed
class BlazePipStateChangedParams with _$BlazePipStateChangedParams {
  const factory BlazePipStateChangedParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required BlazePipState state,
  }) = _BlazePipStateChangedParams;

  factory BlazePipStateChangedParams.fromJson(Map<String, dynamic> json) =>
      _$BlazePipStateChangedParamsFromJson(json);
}

/// Picture-in-picture delegate interface.
class BlazePipDelegate {
  /// Called when the picture-in-picture state changes (e.g. a PiP session
  /// starts or ends).
  ///
  /// [params] The pip state data, including the affected player type and the
  /// new [BlazePipState].
  final void Function(BlazePipStateChangedParams params)? onPiPStateChanged;

  /// Constructor with optional function parameters
  const BlazePipDelegate({
    this.onPiPStateChanged,
  });
}

/// Helper class for registering the picture-in-picture delegate.
class BlazePipDelegateHelper {
  static void registerDelegate(BlazePipDelegate? delegate) {
    _onPiPStateChanged(delegate?.onPiPStateChanged);
  }

  static void _onPiPStateChanged(
    void Function(BlazePipStateChangedParams params)? callback,
  ) {
    const methodName = 'Blaze.onPiPStateChanged';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            callback(BlazePipStateChangedParams.fromJson(args.params));
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onPiPStateChanged',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }
}
