import 'dart:convert';

import 'package:flutter/services.dart';
import '../player_customization/stories_player_style.dart';
import '../player_customization/moments_player_style.dart';
import '../player_customization/videos_player_style.dart';
import '../types/blaze_data_source_type.dart';
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
      );

  // Stories API
  static Future<void> playStory({
    required String storyId,
    String? pageId,
    BlazeStoryPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeStoriesPlaybackConfiguration? playbackConfiguration,
  }) =>
      _sdk.playStory(
        storyId: storyId,
        pageId: pageId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
      );

  static Future<void> prepareStories({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
  }) =>
      _sdk.prepareStories(
        dataSource: dataSource,
        entryContentId: entryContentId,
      );

  static Future<void> playStories({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeStoryPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeStoriesPlaybackConfiguration? playbackConfiguration,
  }) =>
      _sdk.playStories(
        dataSource: dataSource,
        entryContentId: entryContentId,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
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
  }) =>
      _sdk.playMoment(
        momentId: momentId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
      );

  static Future<void> prepareMoments({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
  }) =>
      _sdk.prepareMoments(
        dataSource: dataSource,
        entryContentId: entryContentId,
      );

  static Future<void> playMoments({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeMomentsPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
  }) =>
      _sdk.playMoments(
        dataSource: dataSource,
        entryContentId: entryContentId,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
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
  }) =>
      _sdk.playVideo(
        videoId: videoId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
      );

  static Future<void> prepareVideos({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
  }) =>
      _sdk.prepareVideos(
        dataSource: dataSource,
        entryContentId: entryContentId,
      );

  static Future<void> playVideos({
    required BlazeDataSourceType dataSource,
    String? entryContentId,
    BlazeVideosPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
    BlazeVideosPlaybackConfiguration? playbackConfiguration,
  }) =>
      _sdk.playVideos(
        dataSource: dataSource,
        entryContentId: entryContentId,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
        playbackConfiguration: playbackConfiguration,
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

  static Future<bool> isInitialized() => _sdk.isInitialized();

  static Future<void> setDoNotTrack(bool doNotTrackUser) =>
      _sdk.setDoNotTrack(doNotTrackUser);

  static Future<void> setDisableAnalytics(bool disableAnalytics) =>
      _sdk.setDisableAnalytics(disableAnalytics);

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

  static Future<bool> canHandleUniversalLink(String link) =>
      _sdk.canHandleUniversalLink(link);

  static Future<void> updateGeoRestriction(String? geoLocation) =>
      _sdk.updateGeoRestriction(geoLocation);

  static Future<bool> canHandlePushNotification(Map<String, dynamic> payload) =>
      _sdk.canHandlePushNotification(payload);

  static Future<void> handleNotificationPayload(Map<String, dynamic> payload) =>
      _sdk.handleNotificationPayload(payload);

  // Utility methods
  static Future<void> setExternalUserId(String? externalUserId) =>
      _sdk.setExternalUserId(externalUserId);

  static Future<void> handleUniversalLink(String link) =>
      _sdk.handleUniversalLink(link);

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
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
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
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
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
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    if (entryContentId != null) {
      params['entryContentId'] = entryContentId;
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
      await _channel
          .invokeMethod('setPlayerSoundState', {'state': state.name});
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

  Future<bool> canHandleUniversalLink(String link) async {
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

  Future<void> handleNotificationPayload(Map<String, dynamic> payload) async {
    try {
      return await _channel
          .invokeMethod('handleNotificationPayload', {'payload': payload});
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
  Future<void> handleUniversalLink(String link) async {
    try {
      await _channel.invokeMethod('handleUniversalLink', {'link': link});
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
