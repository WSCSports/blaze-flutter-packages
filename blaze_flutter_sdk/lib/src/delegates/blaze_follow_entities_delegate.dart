import 'package:freezed_annotation/freezed_annotation.dart';
import '../shared/blaze_async_bridge.dart';
import '../shared/blaze_logger.dart';
import '../types/shared_types.dart';

part 'blaze_follow_entities_delegate.freezed.dart';
part 'blaze_follow_entities_delegate.g.dart';

/// Represents a followable entity (e.g. a player, team or property).
@freezed
class BlazeFollowEntity with _$BlazeFollowEntity {
  const factory BlazeFollowEntity({
    required String id,
  }) = _BlazeFollowEntity;

  factory BlazeFollowEntity.fromJson(Map<String, dynamic> json) =>
      _$BlazeFollowEntityFromJson(json);
}

/// Parameters delivered when a follow entity is clicked inside a player.
@freezed
class BlazeOnFollowEntityClickedParams with _$BlazeOnFollowEntityClickedParams {
  const factory BlazeOnFollowEntityClickedParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required bool newFollowingState,
    required BlazeFollowEntity followEntity,
  }) = _BlazeOnFollowEntityClickedParams;

  factory BlazeOnFollowEntityClickedParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeOnFollowEntityClickedParamsFromJson(json);
}

/// Internal data class for parsing the flat follow-entity-clicked payload sent
/// by the native side (`{ playerType, sourceId, newFollowingState,
/// followEntityId }`).
@freezed
class BlazeOnFollowEntityClickedInternalData
    with _$BlazeOnFollowEntityClickedInternalData {
  const factory BlazeOnFollowEntityClickedInternalData({
    required BlazePlayerType playerType,
    String? sourceId,
    required bool newFollowingState,
    required String followEntityId,
  }) = _BlazeOnFollowEntityClickedInternalData;

  factory BlazeOnFollowEntityClickedInternalData.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeOnFollowEntityClickedInternalDataFromJson(json);
}

/// Follow entities delegate interface.
class BlazeFollowEntitiesDelegate {
  /// Called when a follow entity is clicked inside a player.
  ///
  /// [params] The follow-entity-clicked data, including the new following
  /// state and the affected entity.
  final void Function(BlazeOnFollowEntityClickedParams params)?
      onFollowEntityClicked;

  /// Constructor with optional function parameters
  const BlazeFollowEntitiesDelegate({
    this.onFollowEntityClicked,
  });
}

/// Helper class for registering the follow entities delegate.
class BlazeFollowEntitiesDelegateHelper {
  static void registerDelegate(BlazeFollowEntitiesDelegate? delegate) {
    _onFollowEntityClicked(delegate?.onFollowEntityClicked);
  }

  static void _onFollowEntityClicked(
    void Function(BlazeOnFollowEntityClickedParams params)? callback,
  ) {
    const methodName = 'Blaze.onFollowEntityClicked';
    if (callback != null) {
      BlazeAsyncBridge.registerDartEventHandler(
        methodName,
        (args) async {
          try {
            final internalData =
                BlazeOnFollowEntityClickedInternalData.fromJson(args.params);

            final params = BlazeOnFollowEntityClickedParams(
              playerType: internalData.playerType,
              sourceId: internalData.sourceId,
              newFollowingState: internalData.newFollowingState,
              followEntity:
                  BlazeFollowEntity(id: internalData.followEntityId),
            );
            callback(params);
          } catch (e, stackTrace) {
            BlazeLogger.blazeDebugPrintException(
              e,
              stackTrace,
              context: 'onFollowEntityClicked',
            );
          }
        },
      );
    } else {
      BlazeAsyncBridge.unregisterDartEventHandler(methodName);
    }
  }
}
