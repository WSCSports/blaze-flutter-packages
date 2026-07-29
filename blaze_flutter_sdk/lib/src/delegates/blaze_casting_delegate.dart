import 'package:freezed_annotation/freezed_annotation.dart';
import '../shared/blaze_async_bridge.dart';
import '../shared/blaze_logger.dart';
import '../types/shared_types.dart';

part 'blaze_casting_delegate.freezed.dart';
part 'blaze_casting_delegate.g.dart';

/// The current casting state reported by the native casting manager.
enum BlazeCastingState {
  @JsonValue('on')
  on,
  @JsonValue('off')
  off,
}

/// Parameters delivered when the casting state changes.
@freezed
class BlazeCastingStateChangedParams with _$BlazeCastingStateChangedParams {
  const factory BlazeCastingStateChangedParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required BlazeCastingState state,
  }) = _BlazeCastingStateChangedParams;

  factory BlazeCastingStateChangedParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeCastingStateChangedParamsFromJson(json);
}

/// Casting delegate interface.
class BlazeCastingDelegate {
  /// Called when the casting state changes (e.g. a cast session starts or ends).
  ///
  /// [params] The casting state data, including the affected player type and
  /// the new [BlazeCastingState].
  final void Function(BlazeCastingStateChangedParams params)?
      onCastingStateChanged;

  /// Constructor with optional function parameters
  const BlazeCastingDelegate({
    this.onCastingStateChanged,
  });
}

/// Helper class for registering the casting delegate.
class BlazeCastingDelegateHelper {
  static void registerDelegate(BlazeCastingDelegate? delegate) {
    _onCastingStateChanged(delegate?.onCastingStateChanged);
  }

  static void _onCastingStateChanged(
    void Function(BlazeCastingStateChangedParams params)? callback,
  ) {
    const methodName = 'Blaze.onCastingStateChanged';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            callback(BlazeCastingStateChangedParams.fromJson(args.params));
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onCastingStateChanged',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }
}
