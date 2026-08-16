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

/// Shared trigger custom action button parameters - used by both Widget and EntryPoint delegates
@freezed
class BlazeOnTriggerCustomActionButtonParams
    with _$BlazeOnTriggerCustomActionButtonParams {
  const factory BlazeOnTriggerCustomActionButtonParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required String buttonId,
    required String buttonName,

    /// Metadata the app attached to the button via
    /// [BlazeCustomActionButtonParams.appMetadata].
    Map<String, dynamic>? appMetadata,

    /// Metadata populated by the SDK, reflecting the content's extra info at
    /// the moment the button was clicked.
    ///
    /// Read-only: there is no corresponding "set" path — the SDK manages this
    /// and the app cannot supply it when constructing a button. `null` when the
    /// SDK attached no metadata.
    Map<String, dynamic>? sdkMetadata,
  }) = _BlazeOnTriggerCustomActionButtonParams;

  factory BlazeOnTriggerCustomActionButtonParams.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeOnTriggerCustomActionButtonParamsFromJson(json);
}

/// The type of content being shared, delivered as part of
/// [BlazeOnShareClickedParams.contentType].
@freezed
sealed class BlazeShareContentType with _$BlazeShareContentType {
  /// Story content, sharing a specific page within the story.
  const factory BlazeShareContentType.story({
    required String pageId,
  }) = BlazeShareContentTypeStory;

  /// Moment content.
  const factory BlazeShareContentType.moment() = BlazeShareContentTypeMoment;

  /// Video content.
  const factory BlazeShareContentType.video() = BlazeShareContentTypeVideo;

  factory BlazeShareContentType.fromJson(Map<String, dynamic> json) =>
      _$BlazeShareContentTypeFromJson(json);
}

/// Share clicked parameters - used by both Widget and EntryPoint delegates.
///
/// See [BlazeBasePlayerDelegate.onShareClicked] for the observer-only
/// constraint on this callback.
@freezed
class BlazeOnShareClickedParams with _$BlazeOnShareClickedParams {
  const factory BlazeOnShareClickedParams({
    required BlazePlayerType playerType,
    String? sourceId,

    /// The unique identifier of the content being shared.
    required String id,
    required BlazeShareContentType contentType,
    String? title,
    String? description,

    /// The link the SDK shares by default, generated by its own universal
    /// links mechanism. This callback cannot override it — see
    /// [BlazeBasePlayerDelegate.onShareClicked].
    required String sdkGeneratedLink,

    /// Content-level extra info metadata for the shared item. For Stories this
    /// is the story's extra info; for Moments/Videos, the item's own. Empty
    /// when the content has no extra info.
    required Map<String, String> extraInfo,
  }) = _BlazeOnShareClickedParams;

  factory BlazeOnShareClickedParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnShareClickedParamsFromJson(json);
}

/// Read status changed parameters - used by the EntryPoint delegate only.
@freezed
class BlazeOnReadStatusChangedParams with _$BlazeOnReadStatusChangedParams {
  const factory BlazeOnReadStatusChangedParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required String dataSourceStringRepresentation,
    required bool isEntireContentRead,
    required Map<String, bool> itemReadStatus,
  }) = _BlazeOnReadStatusChangedParams;

  factory BlazeOnReadStatusChangedParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnReadStatusChangedParamsFromJson(json);
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
