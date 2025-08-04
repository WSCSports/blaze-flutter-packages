import 'package:flutter/services.dart';
import '../player_customization/stories_player_style.dart';
import '../player_customization/moments_player_style.dart';
import '../player_customization/videos_player_style.dart';
import '../types/blaze_data_source_type.dart';
import '../types/shared_types.dart';
import '../delegates/blaze_global_delegate.dart';
import '../delegates/blaze_player_entry_point_delegate.dart';
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
  }) =>
      _sdk.playStory(
        storyId: storyId,
        pageId: pageId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
      );

  static Future<void> prepareStories({
    required BlazeDataSourceType dataSource,
  }) =>
      _sdk.prepareStories(dataSource: dataSource);

  static Future<void> playStories({
    required BlazeDataSourceType dataSource,
    BlazeStoryPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
  }) =>
      _sdk.playStories(
        dataSource: dataSource,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
      );

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
  }) =>
      _sdk.prepareMoments(dataSource: dataSource);

  static Future<void> playMoments({
    required BlazeDataSourceType dataSource,
    BlazeMomentsPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
  }) =>
      _sdk.playMoments(
        dataSource: dataSource,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
      );

  // Videos API
  static Future<void> playVideo({
    required String videoId,
    BlazeVideosPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
  }) =>
      _sdk.playVideo(
        videoId: videoId,
        playerStyle: playerStyle,
        triggerSource: triggerSource,
      );

  static Future<void> prepareVideos({
    required BlazeDataSourceType dataSource,
  }) =>
      _sdk.prepareVideos(dataSource: dataSource);

  static Future<void> playVideos({
    required BlazeDataSourceType dataSource,
    BlazeVideosPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
  }) =>
      _sdk.playVideos(
        dataSource: dataSource,
        playerStyle: playerStyle,
        shouldOrderContentByReadStatus: shouldOrderContentByReadStatus,
        triggerSource: triggerSource,
      );

  // NEW: Missing core methods
  static Future<void> dismissPlayer() => _sdk.dismissPlayer();

  static Future<bool> isInitialized() => _sdk.isInitialized();

  static Future<void> setDoNotTrack(bool doNotTrackUser) =>
      _sdk.setDoNotTrack(doNotTrackUser);

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

    try {
      await _channel.invokeMethod('playStory', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Prepare stories
  Future<void> prepareStories({
    required BlazeDataSourceType dataSource,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    try {
      await _channel.invokeMethod('prepareStories', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Play stories
  Future<void> playStories({
    required BlazeDataSourceType dataSource,
    BlazeStoryPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

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
      await _channel.invokeMethod('playStories', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
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
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    try {
      await _channel.invokeMethod('prepareMoments', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Play moments
  Future<void> playMoments({
    required BlazeDataSourceType dataSource,
    BlazeMomentsPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

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

  // Play a video
  Future<void> playVideo({
    required String videoId,
    BlazeVideosPlayerStyle? playerStyle,
    BlazeEntryPointTriggerSource? triggerSource,
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

    try {
      await _channel.invokeMethod('playVideo', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Prepare videos
  Future<void> prepareVideos({
    required BlazeDataSourceType dataSource,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

    try {
      await _channel.invokeMethod('prepareVideos', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
    }
  }

  // Play videos
  Future<void> playVideos({
    required BlazeDataSourceType dataSource,
    BlazeVideosPlayerStyle? playerStyle,
    bool? shouldOrderContentByReadStatus,
    BlazeEntryPointTriggerSource? triggerSource,
  }) async {
    Map<String, dynamic> params = {
      'dataSource': dataSource.toJson(),
    };

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
      await _channel.invokeMethod('playVideos', params);
    } catch (e) {
      mapToBlazeErrorOrRethrow(e);
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
}
