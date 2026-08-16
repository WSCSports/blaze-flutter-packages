import 'dart:convert';

import 'package:flutter/services.dart';
import '../player_customization/stories_player_style.dart';
import '../player_customization/moments_player_style.dart';
import '../player_customization/videos_player_style.dart';
import '../types/blaze_data_source_type.dart';
import '../types/blaze_videos_filter_params.dart';
import '../types/shared_types.dart';
import '../types/playback/videos_playback_configuration.dart';
import '../types/playback/moments_playback_configuration.dart';
import '../types/playback/stories_playback_configuration.dart';
import '../types/search_screen_options.dart';
import '../delegates/blaze_global_delegate.dart';
import '../delegates/blaze_player_entry_point_delegate.dart';
import '../delegates/blaze_follow_entities_delegate.dart';
import '../delegates/blaze_casting_delegate.dart';
import '../delegates/blaze_pip_delegate.dart';
import '../shared/errors/errors.dart';

class BlazeSDK {
  static final _BlazeSDKInternal _sdk = _BlazeSDKInternal._instance;

  // SDK Initialization with flat parameters
  static Future<void> initSDK({
    required String apiKey,
    String? externalUserId,
    int? cachingSize,
    BlazeCachingLevel? cachingLevel,
    String? geoLocation,
    bool? appOverridesCTAHandling,
    BlazeStoryPlayerStyle? defaultStoryPlayerStyle,
    BlazeMomentsPlayerStyle? defaultMomentsPlayerStyle,
    BlazeVideosPlayerStyle? defaultVideosPlayerStyle,
    BlazeGlobalDelegate? globalDelegate,
    BlazePlayerEntryPointDelegate? playerEntryPointDelegate,
    BlazeLayoutDirection? forceLayoutDirection,
  }) =>
      _sdk.initSDK(
        apiKey: apiKey,
        externalUserId: externalUserId,
        cachingSize: cachingSize,
        cachingLevel: cachingLevel,
        geoLocation: geoLocation,
        appOverridesCTAHandling: appOverridesCTAHandling,
        defaultStoryPlayerStyle: defaultStoryPlayerStyle,
        defaultMomentsPlayerStyle: defaultMomentsPlayerStyle,
        defaultVideosPlayerStyle: defaultVideosPlayerStyle,
        globalDelegate: globalDelegate,
        playerEntryPointDelegate: playerEntryPointDelegate,
        forceLayoutDirection: forceLayoutDirection,
      );

  // Stories API
  static Future<void> playStory({
    required String storyId,
    String? pageId,
    BlazeStoryPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeStoriesPlaybackConfiguration? playbackConfiguration,
    String? eventId,
    String? sourceId,
  }) =>
      _sdk.playStory(
        storyId: storyId,
        pageId: pageId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
        eventId: eventId,
        sourceId: sourceId,
      );

  static Future<void> prepareStories({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    String? sourceId,
  }) =>
      _sdk.prepareStories(
        dataSource: dataSource,
        entryContentId: entryContentId,
        sourceId: sourceId,
      );

  static Future<void> playStories({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeStoryPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeStoriesPlaybackConfiguration? playbackConfiguration,
    String? sourceId,
  }) =>
      _sdk.playStories(
        dataSource: dataSource,
        entryContentId: entryContentId,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
        sourceId: sourceId,
      );

  /// Sets the default stories playback configuration applied to stories players
  /// that don't specify their own configuration.
  static Future<void> setDefaultStoriesPlaybackConfiguration(
    BlazeStoriesPlaybackConfiguration configuration,
  ) =>
      _sdk.setDefaultStoriesPlaybackConfiguration(configuration);

  /// Returns the current default stories playback configuration.
  static Future<BlazeStoriesPlaybackConfiguration>
      getDefaultStoriesPlaybackConfiguration() =>
          _sdk.getDefaultStoriesPlaybackConfiguration();

  // Moments API
  static Future<void> playMoment({
    required String momentId,
    BlazeMomentsPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
    String? sourceId,
  }) =>
      _sdk.playMoment(
        momentId: momentId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
        sourceId: sourceId,
      );

  static Future<void> prepareMoments({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    String? sourceId,
  }) =>
      _sdk.prepareMoments(
        dataSource: dataSource,
        entryContentId: entryContentId,
        sourceId: sourceId,
      );

  static Future<void> playMoments({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeMomentsPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    String? sourceId,
  }) =>
      _sdk.playMoments(
        dataSource: dataSource,
        entryContentId: entryContentId,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
        sourceId: sourceId,
      );

  /// Appends moments to the currently presented moments player.
  ///
  /// [sourceId] - The source id of the moments player to append content to.
  /// [dataSource] - The data source describing the moments to append.
  /// [shouldOrderContentByReadStatus] - Whether the appended content should be
  /// ordered by read status.
  static Future<void> appendMomentsToPlayer({
    required String sourceId,
    required BlazeDataSourceType dataSource,
    bool? shouldOrderContentByReadStatus,
  }) =>
      _sdk.appendMomentsToPlayer(
        sourceId: sourceId,
        dataSource: dataSource,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
      );

  /// Sets the default moments playback configuration applied to moments players
  /// that don't specify their own configuration.
  static Future<void> setDefaultMomentsPlaybackConfiguration(
    BlazeMomentsPlaybackConfiguration configuration,
  ) =>
      _sdk.setDefaultMomentsPlaybackConfiguration(configuration);

  /// Returns the current default moments playback configuration.
  static Future<BlazeMomentsPlaybackConfiguration>
      getDefaultMomentsPlaybackConfiguration() =>
          _sdk.getDefaultMomentsPlaybackConfiguration();

  // Videos API
  static Future<void> playVideo({
    required String videoId,
    BlazeVideosPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeVideosPlaybackConfiguration? playbackConfiguration,
    String? sourceId,
  }) =>
      _sdk.playVideo(
        videoId: videoId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
        sourceId: sourceId,
      );

  static Future<void> prepareVideos({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeVideosFilterParams? videosFilterParams,
    String? sourceId,
  }) =>
      _sdk.prepareVideos(
        dataSource: dataSource,
        entryContentId: entryContentId,
        videosFilterParams: videosFilterParams,
        sourceId: sourceId,
      );

  static Future<void> playVideos({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeVideosPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeVideosPlaybackConfiguration? playbackConfiguration,
    BlazeVideosFilterParams? videosFilterParams,
    String? sourceId,
  }) =>
      _sdk.playVideos(
        dataSource: dataSource,
        entryContentId: entryContentId,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
        videosFilterParams: videosFilterParams,
        sourceId: sourceId,
      );

  /// Sets the default videos playback configuration applied to videos players
  /// that don't specify their own configuration.
  static Future<void> setDefaultVideosPlaybackConfiguration(
    BlazeVideosPlaybackConfiguration configuration,
  ) =>
      _sdk.setDefaultVideosPlaybackConfiguration(configuration);

  /// Returns the current default videos playback configuration.
  static Future<BlazeVideosPlaybackConfiguration>
      getDefaultVideosPlaybackConfiguration() =>
          _sdk.getDefaultVideosPlaybackConfiguration();

  // NEW: Missing core methods
  static Future<void> dismissPlayer() => _sdk.dismissPlayer();

  /// Pauses the currently presented player, if any.
  static Future<void> pauseCurrentPlayer() => _sdk.pauseCurrentPlayer();

  /// Resumes the currently presented player, if any.
  static Future<void> resumeCurrentPlayer() => _sdk.resumeCurrentPlayer();

  static Future<bool> isInitialized() => _sdk.isInitialized();

  static Future<void> setDoNotTrack(bool doNotTrackUser) =>
      _sdk.setDoNotTrack(doNotTrackUser);

  static Future<void> setDisableAnalytics(bool disableAnalytics) =>
      _sdk.setDisableAnalytics(disableAnalytics);

  /// Enables or disables the periodic user-activity sync.
  ///
  /// User activity backs read/liked state and personalized recommendations.
  /// Disabling stops the sync tasks; re-enabling restarts them.
  static Future<void> setDisableUserActivity(bool disableUserActivity) =>
      _sdk.setDisableUserActivity(disableUserActivity);

  /// Clears locally cached user-activity data (liked/viewed content and
  /// interaction answers) and refreshes widgets so the reset is reflected.
  static Future<void> clearLocalUserActivity() => _sdk.clearLocalUserActivity();

  /// A key-value store the hosting app can populate for the SDK to read.
  ///
  /// Values set here are surfaced to SDK features that consume host-app
  /// context, such as in-player interactions.
  static const BlazeHostingAppContext hostingAppContext =
      BlazeHostingAppContext._();

  static Future<void> setPreferredLanguage(String? language) =>
      _sdk.setPreferredLanguage(language);

  /// Sets the players' sound state (mute / unmute).
  ///
  /// The native default is muted and the state is not persisted across app
  /// launches, so call this on each launch to keep players unmuted.
  static Future<void> setPlayerSoundState(BlazePlayerSoundState state) =>
      _sdk.setPlayerSoundState(state);

  /// Returns whether the players' sound is currently muted.
  static Future<bool> isMuted() => _sdk.isMuted();

  /// Presents the standalone search screen.
  ///
  /// [options] - Optional search screen options (e.g. a suggestions data
  /// source). Note: on Android a `suggestionsDataSource` is required; on iOS it
  /// is optional.
  static Future<void> showSearchScreen({BlazeSearchScreenOptions? options}) =>
      _sdk.showSearchScreen(options: options);

  // ======================================
  // FOLLOW ENTITIES
  // ======================================

  /// Replaces the set of followed entities with [entityIds].
  static Future<void> setFollowedEntities(List<String> entityIds) =>
      _sdk.setFollowedEntities(entityIds);

  /// Inserts [entityIds] into the set of followed entities.
  static Future<void> insertFollowedEntities(List<String> entityIds) =>
      _sdk.insertFollowedEntities(entityIds);

  /// Removes [entityIds] from the set of followed entities.
  static Future<void> removeFollowedEntities(List<String> entityIds) =>
      _sdk.removeFollowedEntities(entityIds);

  /// Returns the ids of the currently followed entities.
  static Future<List<String>> getFollowedEntities() =>
      _sdk.getFollowedEntities();

  // ======================================
  // CASTING
  // ======================================

  /// Stops the currently active casting session, if any.
  static Future<void> stopActiveCastingSession() =>
      _sdk.stopActiveCastingSession();

  // ======================================
  // PICTURE IN PICTURE
  // ======================================

  /// Stops the currently active picture-in-picture session, if any.
  static Future<void> stopActivePiPSession() => _sdk.stopActivePiPSession();

  /// Returns whether a picture-in-picture session is currently active.
  static Future<bool> isPiPActive() => _sdk.isPiPActive();

  static Future<bool> canHandleUniversalLink({required String link}) =>
      _sdk.canHandleUniversalLink(link: link);

  static Future<void> updateGeoRestriction(String? geoLocation) =>
      _sdk.updateGeoRestriction(geoLocation);

  static Future<bool> canHandlePushNotification(Map<String, dynamic> payload) =>
      _sdk.canHandlePushNotification(payload);

  /// Handles a Blaze push-notification payload.
  ///
  /// [sourceId] - Optional entry point identifier for delegate context. It is
  /// surfaced in the `sourceId` field of delegate callbacks triggered by the
  /// playback this notification starts.
  static Future<void> handleNotificationPayload({
    required Map<String, dynamic> payload,
    String? sourceId,
  }) =>
      _sdk.handleNotificationPayload(payload: payload, sourceId: sourceId);

  // Utility methods
  static Future<void> setExternalUserId(String? externalUserId) =>
      _sdk.setExternalUserId(externalUserId);

  /// Handles a Blaze universal link.
  ///
  /// [sourceId] - Optional entry point identifier for delegate context. It is
  /// surfaced in the `sourceId` field of delegate callbacks triggered by the
  /// playback this link starts.
  static Future<void> handleUniversalLink({
    required String link,
    String? sourceId,
  }) =>
      _sdk.handleUniversalLink(link: link, sourceId: sourceId);

  // ======================================
  // DELEGATE METHODS
  // ======================================

  /// Set the global delegate for receiving analytics events and errors
  ///
  /// [delegate] The global delegate to register, or null to unregister
  static void setGlobalDelegate(BlazeGlobalDelegate? delegate) =>
      _sdk.setGlobalDelegate(delegate);

  /// Set the player entry point delegate for receiving player lifecycle events
  ///
  /// [delegate] The player entry point delegate to register, or null to unregister
  static void setPlayerEntryPointDelegate(
          BlazePlayerEntryPointDelegate? delegate) =>
      _sdk.setPlayerEntryPointDelegate(delegate);

  /// Set the follow entities delegate for receiving follow-entity events
  ///
  /// [delegate] The follow entities delegate to register, or null to unregister
  static void setFollowEntitiesDelegate(
          BlazeFollowEntitiesDelegate? delegate) =>
      _sdk.setFollowEntitiesDelegate(delegate);

  /// Set the casting delegate for receiving casting-state-change events
  ///
  /// [delegate] The casting delegate to register, or null to unregister
  static void setCastingDelegate(BlazeCastingDelegate? delegate) =>
      _sdk.setCastingDelegate(delegate);

  /// Set the pip delegate for receiving picture-in-picture-state-change events
  ///
  /// [delegate] The pip delegate to register, or null to unregister
  static void setPipDelegate(BlazePipDelegate? delegate) =>
      _sdk.setPipDelegate(delegate);
}

/// A key-value store the hosting app populates for the SDK to consume.
///
/// Reached via [BlazeSDK.hostingAppContext]. Values must be JSON-encodable
/// primitives, lists, or maps, since they cross the platform channel.
class BlazeHostingAppContext {
  const BlazeHostingAppContext._();

  _BlazeSDKInternal get _sdk => _BlazeSDKInternal._instance;

  /// Returns the value stored for [key], or `null` if the key is not set.
  Future<Object?> getValue(String key) => _sdk.hostingAppContextGetValue(key);

  /// Returns the full context map.
  Future<Map<String, dynamic>> getContext() =>
      _sdk.hostingAppContextGetContext();

  /// Stores [value] under [key]. Passing a `null` value clears the key.
  ///
  /// Prefer this over [setContext] for incremental updates: each call is a
  /// single atomic operation natively, so it cannot clobber concurrent writes
  /// to other keys.
  Future<void> setValue(String key, Object? value) =>
      _sdk.hostingAppContextSetValue(key, value);

  /// Replaces the entire context with [context].
  ///
  /// **This clears every existing key first**, including values written by
  /// in-player interactions (which can push values back through the SDK's
  /// JavaScript bridge). Those writes are not reported to Dart, so this call
  /// can discard state this app never observed.
  ///
  /// Use [setValue] / [deleteValue] for incremental updates. Reserve
  /// [setContext] for deliberately resetting the whole store, and avoid the
  /// read-modify-write pattern (`getContext` → mutate → `setContext`) — the two
  /// round-trips are not atomic, so a concurrent interaction write landing
  /// between them will be lost.
  Future<void> setContext(Map<String, dynamic> context) =>
      _sdk.hostingAppContextSetContext(context);

  /// Removes the value stored for [key].
  Future<void> deleteValue(String key) =>
      _sdk.hostingAppContextDeleteValue(key);
}

class _BlazeSDKInternal {
  // Private instance variable to hold the singleton instance.
  static final _BlazeSDKInternal _instance = _BlazeSDKInternal._();

  final MethodChannel _channel = const MethodChannel('blaze-sdk-module');

  // Private constructor to prevent instantiation.
  _BlazeSDKInternal._();

  // Initialize the Blaze SDK
  Future<void> initSDK({
    required String apiKey,
    String? externalUserId,
    int? cachingSize,
    BlazeCachingLevel? cachingLevel,
    String? geoLocation,
    bool? appOverridesCTAHandling,
    BlazeStoryPlayerStyle? defaultStoryPlayerStyle,
    BlazeMomentsPlayerStyle? defaultMomentsPlayerStyle,
    BlazeVideosPlayerStyle? defaultVideosPlayerStyle,
    BlazeGlobalDelegate? globalDelegate,
    BlazePlayerEntryPointDelegate? playerEntryPointDelegate,
    BlazeLayoutDirection? forceLayoutDirection,
  }) async {
    Map<String, dynamic> params = {
      'apiKey': apiKey,
    };

    if (externalUserId != null) {
      params['externalUserId'] = externalUserId;
    }
    if (cachingSize != null) {
      params['cachingSize'] = cachingSize;
    }
    if (cachingLevel != null) {
      params['cachingLevel'] = cachingLevel.name;
    }
    if (geoLocation != null) {
      params['geoLocation'] = geoLocation;
    }
    if (appOverridesCTAHandling != null) {
      params['appOverridesCTAHandling'] = appOverridesCTAHandling;
    }
    if (defaultStoryPlayerStyle != null) {
      params['defaultStoryPlayerStyle'] = defaultStoryPlayerStyle.toJson();
    }
    if (defaultMomentsPlayerStyle != null) {
      params['defaultMomentsPlayerStyle'] = defaultMomentsPlayerStyle.toJson();
    }
    if (defaultVideosPlayerStyle != null) {
      params['defaultVideosPlayerStyle'] = defaultVideosPlayerStyle.toJson();
    }
    if (forceLayoutDirection != null) {
      params['forceLayoutDirection'] = forceLayoutDirection.name;
    }

    // Register delegates if provided during init
    setGlobalDelegate(globalDelegate);
    setPlayerEntryPointDelegate(playerEntryPointDelegate);

    try {
      await _channel.invokeMethod('initSDK', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Play a story
  Future<void> playStory({
    required String storyId,
    String? pageId,
    BlazeStoryPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeStoriesPlaybackConfiguration? playbackConfiguration,
    String? eventId,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'storyId': storyId,
    };

    if (pageId != null) {
      params['pageId'] = pageId;
    }
    if (playerStyle != null) {
      params['playerStyle'] = playerStyle.toJson();
    }
    if (triggerSource != null) {
      params['triggerSource'] = triggerSource.name;
    }
    if (playbackConfiguration != null) {
      params['playbackConfiguration'] = playbackConfiguration.toJson();
    }
    if (eventId != null) {
      params['eventId'] = eventId;
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('playStory', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Prepare stories
  Future<void> prepareStories({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('prepareStories', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Play stories
  Future<void> playStories({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeStoryPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeStoriesPlaybackConfiguration? playbackConfiguration,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
    }
    if (playerStyle != null) {
      params['playerStyle'] = playerStyle.toJson();
    }
    if (shouldOrderContentByReadStatus != null) {
      params['shouldOrderContentByReadStatus'] = shouldOrderContentByReadStatus;
    }
    if (triggerSource != null) {
      params['triggerSource'] = triggerSource.name;
    }
    if (playbackConfiguration != null) {
      params['playbackConfiguration'] = playbackConfiguration.toJson();
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('playStories', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Set the default stories playback configuration
  Future<void> setDefaultStoriesPlaybackConfiguration(
    BlazeStoriesPlaybackConfiguration configuration,
  ) async {
    try {
      await _channel.invokeMethod(
        'setDefaultStoriesPlaybackConfiguration',
        {'playbackConfiguration': configuration.toJson()},
      );
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Get the default stories playback configuration
  Future<BlazeStoriesPlaybackConfiguration>
      getDefaultStoriesPlaybackConfiguration() async {
    try {
      final result =
          await _channel.invokeMethod('getDefaultStoriesPlaybackConfiguration');
      // Method channel returns Map<Object?, Object?>; normalize to
      // Map<String, dynamic> (including nested maps) for freezed's fromJson.
      final jsonMap = json.decode(json.encode(result)) as Map<String, dynamic>;
      return BlazeStoriesPlaybackConfiguration.fromJson(jsonMap);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      rethrow;
    }
  }

  // Play a moment
  Future<void> playMoment({
    required String momentId,
    BlazeMomentsPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'momentId': momentId,
    };

    if (playerStyle != null) {
      params['playerStyle'] = playerStyle.toJson();
    }
    if (triggerSource != null) {
      params['triggerSource'] = triggerSource.name;
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('playMoment', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Prepare moments
  Future<void> prepareMoments({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('prepareMoments', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Play moments
  Future<void> playMoments({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeMomentsPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
    }
    if (playerStyle != null) {
      params['playerStyle'] = playerStyle.toJson();
    }
    if (shouldOrderContentByReadStatus != null) {
      params['shouldOrderContentByReadStatus'] = shouldOrderContentByReadStatus;
    }
    if (triggerSource != null) {
      params['triggerSource'] = triggerSource.name;
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('playMoments', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Append moments to the currently presented moments player
  Future<void> appendMomentsToPlayer({
    required String sourceId,
    required BlazeDataSourceType dataSource,
    bool? shouldOrderContentByReadStatus,
  }) async {
    Map<String, dynamic> params = {
      'sourceId': sourceId,
      'dataSource': dataSource.toJson(),
    };

    if (shouldOrderContentByReadStatus != null) {
      params['shouldOrderContentByReadStatus'] = shouldOrderContentByReadStatus;
    }

    try {
      await _channel.invokeMethod('appendMomentsToPlayer', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Set the default moments playback configuration
  Future<void> setDefaultMomentsPlaybackConfiguration(
    BlazeMomentsPlaybackConfiguration configuration,
  ) async {
    try {
      await _channel.invokeMethod(
        'setDefaultMomentsPlaybackConfiguration',
        {'playbackConfiguration': configuration.toJson()},
      );
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Get the default moments playback configuration
  Future<BlazeMomentsPlaybackConfiguration>
      getDefaultMomentsPlaybackConfiguration() async {
    try {
      final result =
          await _channel.invokeMethod('getDefaultMomentsPlaybackConfiguration');
      // Method channel returns Map<Object?, Object?>; normalize to
      // Map<String, dynamic> (including nested maps) for freezed's fromJson.
      final jsonMap = json.decode(json.encode(result)) as Map<String, dynamic>;
      return BlazeMomentsPlaybackConfiguration.fromJson(jsonMap);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      rethrow;
    }
  }

  // Play a video
  Future<void> playVideo({
    required String videoId,
    BlazeVideosPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeVideosPlaybackConfiguration? playbackConfiguration,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'videoId': videoId,
    };

    if (playerStyle != null) {
      params['playerStyle'] = playerStyle.toJson();
    }
    if (triggerSource != null) {
      params['triggerSource'] = triggerSource.name;
    }
    if (playbackConfiguration != null) {
      params['playbackConfiguration'] = playbackConfiguration.toJson();
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('playVideo', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Prepare videos
  Future<void> prepareVideos({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeVideosFilterParams? videosFilterParams,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
    }
    if (videosFilterParams != null) {
      params['videosFilterParams'] = videosFilterParams.toJson();
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('prepareVideos', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Play videos
  Future<void> playVideos({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeVideosPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeVideosPlaybackConfiguration? playbackConfiguration,
    BlazeVideosFilterParams? videosFilterParams,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
    }
    if (playerStyle != null) {
      params['playerStyle'] = playerStyle.toJson();
    }
    if (shouldOrderContentByReadStatus != null) {
      params['shouldOrderContentByReadStatus'] = shouldOrderContentByReadStatus;
    }
    if (triggerSource != null) {
      params['triggerSource'] = triggerSource.name;
    }
    if (playbackConfiguration != null) {
      params['playbackConfiguration'] = playbackConfiguration.toJson();
    }
    if (videosFilterParams != null) {
      params['videosFilterParams'] = videosFilterParams.toJson();
    }
    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('playVideos', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Set the default videos playback configuration
  Future<void> setDefaultVideosPlaybackConfiguration(
    BlazeVideosPlaybackConfiguration configuration,
  ) async {
    try {
      await _channel.invokeMethod(
        'setDefaultVideosPlaybackConfiguration',
        {'playbackConfiguration': configuration.toJson()},
      );
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Get the default videos playback configuration
  Future<BlazeVideosPlaybackConfiguration>
      getDefaultVideosPlaybackConfiguration() async {
    try {
      final result =
          await _channel.invokeMethod('getDefaultVideosPlaybackConfiguration');
      // Method channel returns Map<Object?, Object?>; normalize to
      // Map<String, dynamic> (including nested maps) for freezed's fromJson.
      final jsonMap = json.decode(json.encode(result)) as Map<String, dynamic>;
      return BlazeVideosPlaybackConfiguration.fromJson(jsonMap);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      rethrow;
    }
  }

  // NEW: Missing core methods implementation
  Future<void> dismissPlayer() {
    return _channel.invokeMethod('dismissPlayer');
  }

  Future<bool> isInitialized() async {
    final result = await _channel.invokeMethod('isInitialized');
    return result as bool;
  }

  Future<void> setDoNotTrack(bool doNotTrackUser) {
    return _channel
        .invokeMethod('setDoNotTrack', {'doNotTrackUser': doNotTrackUser});
  }

  Future<void> setDisableAnalytics(bool disableAnalytics) async {
    try {
      await _channel.invokeMethod(
          'setDisableAnalytics', {'disableAnalytics': disableAnalytics});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> pauseCurrentPlayer() async {
    try {
      await _channel.invokeMethod('pauseCurrentPlayer');
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> resumeCurrentPlayer() async {
    try {
      await _channel.invokeMethod('resumeCurrentPlayer');
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> setDisableUserActivity(bool disableUserActivity) async {
    try {
      await _channel.invokeMethod('setDisableUserActivity',
          {'disableUserActivity': disableUserActivity});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> clearLocalUserActivity() async {
    try {
      await _channel.invokeMethod('clearLocalUserActivity');
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Hosting app context store
  Future<Object?> hostingAppContextGetValue(String key) async {
    try {
      return await _channel
          .invokeMethod('hostingAppContextGetValue', {'key': key});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      return null;
    }
  }

  Future<Map<String, dynamic>> hostingAppContextGetContext() async {
    try {
      final result = await _channel.invokeMethod('hostingAppContextGetContext');
      // Method channel returns Map<Object?, Object?>; normalize to
      // Map<String, dynamic> (including nested maps).
      return json.decode(json.encode(result)) as Map<String, dynamic>;
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      rethrow;
    }
  }

  Future<void> hostingAppContextSetValue(String key, Object? value) async {
    try {
      await _channel.invokeMethod(
          'hostingAppContextSetValue', {'key': key, 'value': value});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> hostingAppContextSetContext(Map<String, dynamic> context) async {
    try {
      await _channel
          .invokeMethod('hostingAppContextSetContext', {'context': context});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> hostingAppContextDeleteValue(String key) async {
    try {
      await _channel.invokeMethod('hostingAppContextDeleteValue', {'key': key});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> setPreferredLanguage(String? language) async {
    try {
      await _channel
          .invokeMethod('setPreferredLanguage', {'language': language});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<void> setPlayerSoundState(BlazePlayerSoundState state) async {
    try {
      await _channel.invokeMethod('setPlayerSoundState', {'state': state.name});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<bool> isMuted() async {
    try {
      final result = await _channel.invokeMethod('isMuted');
      return result as bool;
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      rethrow;
    }
  }

  // Show the standalone search screen
  Future<void> showSearchScreen({BlazeSearchScreenOptions? options}) async {
    Map<String, dynamic> params = {};

    final suggestionsDataSource = options?.suggestionsDataSource;
    if (suggestionsDataSource != null) {
      params['suggestionsDataSource'] = suggestionsDataSource.toJson();
    }

    try {
      await _channel.invokeMethod('showSearchScreen', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Replace the set of followed entities
  Future<void> setFollowedEntities(List<String> entityIds) async {
    try {
      await _channel
          .invokeMethod('setFollowedEntities', {'entityIds': entityIds});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Insert entities into the set of followed entities
  Future<void> insertFollowedEntities(List<String> entityIds) async {
    try {
      await _channel
          .invokeMethod('insertFollowedEntities', {'entityIds': entityIds});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Remove entities from the set of followed entities
  Future<void> removeFollowedEntities(List<String> entityIds) async {
    try {
      await _channel
          .invokeMethod('removeFollowedEntities', {'entityIds': entityIds});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Stop the currently active casting session
  Future<void> stopActiveCastingSession() async {
    try {
      await _channel.invokeMethod('stopActiveCastingSession');
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Stop the currently active picture-in-picture session
  Future<void> stopActivePiPSession() async {
    try {
      await _channel.invokeMethod('stopActivePiPSession');
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Returns whether a picture-in-picture session is currently active
  Future<bool> isPiPActive() async {
    try {
      final result = await _channel.invokeMethod('isPiPActive');
      return result as bool;
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      rethrow;
    }
  }

  // Get the ids of the currently followed entities
  Future<List<String>> getFollowedEntities() async {
    try {
      final result = await _channel.invokeMethod('getFollowedEntities');
      return (result as List).map((e) => e as String).toList();
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
      rethrow;
    }
  }

  Future<bool> canHandleUniversalLink({required String link}) async {
    final result =
        await _channel.invokeMethod('canHandleUniversalLink', {'link': link});
    return result as bool;
  }

  Future<void> updateGeoRestriction(String? geoLocation) async {
    try {
      return await _channel
          .invokeMethod('updateGeoRestriction', {'geoLocation': geoLocation});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  Future<bool> canHandlePushNotification(Map<String, dynamic> payload) async {
    final result = await _channel
        .invokeMethod('canHandlePushNotification', {'payload': payload});
    return result as bool;
  }

  Future<void> handleNotificationPayload({
    required Map<String, dynamic> payload,
    String? sourceId,
  }) async {
    Map<String, dynamic> params = {'payload': payload};

    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      return await _channel.invokeMethod('handleNotificationPayload', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Sets the external user ID.
  Future<void> setExternalUserId(String? externalUserId) async {
    try {
      await _channel.invokeMethod(
          'setExternalUserId', {'externalUserId': externalUserId});
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Handles universal link.
  Future<void> handleUniversalLink(
      {required String link, String? sourceId}) async {
    Map<String, dynamic> params = {'link': link};

    if (sourceId != null) {
      params['sourceId'] = sourceId;
    }

    try {
      await _channel.invokeMethod('handleUniversalLink', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // ======================================
  // DELEGATE METHODS IMPLEMENTATION
  // ======================================

  /// Set the global delegate for receiving analytics events and errors
  void setGlobalDelegate(BlazeGlobalDelegate? delegate) {
    BlazeGlobalDelegateHelper.registerDelegate(delegate);
  }

  /// Set the player entry point delegate for receiving player lifecycle events
  void setPlayerEntryPointDelegate(BlazePlayerEntryPointDelegate? delegate) {
    BlazePlayerEntryPointDelegateHelper.registerDelegate(delegate);
  }

  /// Set the follow entities delegate for receiving follow-entity events
  void setFollowEntitiesDelegate(BlazeFollowEntitiesDelegate? delegate) {
    BlazeFollowEntitiesDelegateHelper.registerDelegate(delegate);
  }

  /// Set the casting delegate for receiving casting-state-change events
  void setCastingDelegate(BlazeCastingDelegate? delegate) {
    BlazeCastingDelegateHelper.registerDelegate(delegate);
  }

  /// Set the pip delegate for receiving picture-in-picture-state-change events
  void setPipDelegate(BlazePipDelegate? delegate) {
    BlazePipDelegateHelper.registerDelegate(delegate);
  }
}
