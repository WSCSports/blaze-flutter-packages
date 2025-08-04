import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../shared/errors/errors.dart';
import '../types/shared_types.dart';
import '../shared/blaze_logger.dart';

part 'blaze_base_player_delegate_data_classes.freezed.dart';
part 'blaze_base_player_delegate_data_classes.g.dart';

/// Shared data load started parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnDataLoadStartedParams with _$BlazeOnDataLoadStartedParams {
  const factory BlazeOnDataLoadStartedParams({
    required BlazePlayerType playerType,
    String? sourceId,
  }) = _BlazeOnDataLoadStartedParams;

  factory BlazeOnDataLoadStartedParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnDataLoadStartedParamsFromJson(json);
}

/// Shared data load complete parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnDataLoadCompleteParams with _$BlazeOnDataLoadCompleteParams {
  const factory BlazeOnDataLoadCompleteParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required int itemsCount,
    BlazeError? error,
  }) = _BlazeOnDataLoadCompleteParams;

  factory BlazeOnDataLoadCompleteParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnDataLoadCompleteParamsFromJson(json);
}

/// Shared player did appear parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnPlayerDidAppearParams with _$BlazeOnPlayerDidAppearParams {
  const factory BlazeOnPlayerDidAppearParams({
    required BlazePlayerType playerType,
    String? sourceId,
  }) = _BlazeOnPlayerDidAppearParams;

  factory BlazeOnPlayerDidAppearParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnPlayerDidAppearParamsFromJson(json);
}

/// Shared player did dismiss parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnPlayerDidDismissParams with _$BlazeOnPlayerDidDismissParams {
  const factory BlazeOnPlayerDidDismissParams({
    required BlazePlayerType playerType,
    String? sourceId,
  }) = _BlazeOnPlayerDidDismissParams;

  factory BlazeOnPlayerDidDismissParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnPlayerDidDismissParamsFromJson(json);
}

/// Shared trigger CTA parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnTriggerCTAParams with _$BlazeOnTriggerCTAParams {
  const factory BlazeOnTriggerCTAParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required BlazeCTAActionType actionType,
    required String actionParam,
  }) = _BlazeOnTriggerCTAParams;

  factory BlazeOnTriggerCTAParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnTriggerCTAParamsFromJson(json);
}

/// Shared trigger player body text link parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnTriggerPlayerBodyTextLinkParams
    with _$BlazeOnTriggerPlayerBodyTextLinkParams {
  const factory BlazeOnTriggerPlayerBodyTextLinkParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required String actionParam,
  }) = _BlazeOnTriggerPlayerBodyTextLinkParams;

  factory BlazeOnTriggerPlayerBodyTextLinkParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeOnTriggerPlayerBodyTextLinkParamsFromJson(json);
}

/// Shared player event triggered parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnPlayerEventTriggeredParams
    with _$BlazeOnPlayerEventTriggeredParams {
  const factory BlazeOnPlayerEventTriggeredParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required BlazePlayerEvent event,
  }) = _BlazeOnPlayerEventTriggeredParams;

  factory BlazeOnPlayerEventTriggeredParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeOnPlayerEventTriggeredParamsFromJson(json);
}

/// Player event type enum
@JsonEnum()
enum BlazePlayerEventType {
  @JsonValue('OnMomentStart')
  onMomentStart,
  @JsonValue('OnStoryStart')
  onStoryStart,
  @JsonValue('OnVideoStart')
  onVideoStart,
}

/// Player event sealed union type - represents different types of player events
@freezed
sealed class BlazePlayerEvent with _$BlazePlayerEvent {
  /// Moment start event
  const factory BlazePlayerEvent.onMomentStart({
    required String momentId,
  }) = BlazePlayerEventOnMomentStart;

  /// Story start event
  const factory BlazePlayerEvent.onStoryStart({
    required String storyId,
  }) = BlazePlayerEventOnStoryStart;

  /// Video start event
  const factory BlazePlayerEvent.onVideoStart({
    required String videoId,
  }) = BlazePlayerEventOnVideoStart;

  factory BlazePlayerEvent.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerEventFromJson(json);
}

/// Internal data class for parsing player event data from native side
@freezed
class BlazePlayerEventInternalData with _$BlazePlayerEventInternalData {
  const factory BlazePlayerEventInternalData({
    required BlazePlayerType playerType,
    String? sourceId,
    required BlazePlayerEventData eventData,
  }) = _BlazePlayerEventInternalData;

  factory BlazePlayerEventInternalData.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerEventInternalDataFromJson(json);
}

/// Internal data class for parsing BlazePlayerEvent from native platforms
/// This centralizes the parsing logic and can be reused across the SDK
@freezed
class BlazePlayerEventData with _$BlazePlayerEventData {
  const factory BlazePlayerEventData({
    required String playerEventType,
    required Map<String, dynamic> playerEventParams,
  }) = _BlazePlayerEventData;

  factory BlazePlayerEventData.fromJson(Map<String, dynamic> json) =>
      _$BlazePlayerEventDataFromJson(json);
}

extension BlazePlayerEventDataParser on BlazePlayerEventData {
  /// Convert to BlazePlayerEvent with centralized parsing logic
  /// This can be reused anywhere in the SDK that needs to parse player events
  BlazePlayerEvent? get asPlayerEvent {
    try {
      // playerEventParams is already a Map from native platforms
      final Map<String, dynamic> paramsMap = playerEventParams;

      switch (playerEventType) {
        case "OnMomentStart":
          final momentId = paramsMap['momentId'] as String?;
          if (momentId != null) {
            return BlazePlayerEvent.onMomentStart(momentId: momentId);
          }
          break;
        case "OnStoryStart":
          final storyId = paramsMap['storyId'] as String?;
          if (storyId != null) {
            return BlazePlayerEvent.onStoryStart(storyId: storyId);
          }
          break;
        case "OnVideoStart":
          final videoId = paramsMap['videoId'] as String?;
          if (videoId != null) {
            return BlazePlayerEvent.onVideoStart(videoId: videoId);
          }
          break;
      }
    } catch (e, stackTrace) {
      BlazeLogger.blazeDebugPrintException(
        e,
        stackTrace,
        context: 'parsing BlazePlayerEvent',
      );
    }

    return null;
  }
}
