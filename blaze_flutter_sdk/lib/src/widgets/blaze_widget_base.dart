import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../types/blaze_data_source_type.dart';
import '../types/shared_types.dart';
import '../types/widget_presets.dart';
import '../types/moments_widget_tabs_configuration.dart';
import '../player_customization/stories_player_style.dart';
import '../player_customization/moments_player_style.dart';
import '../player_customization/videos_player_style.dart';
import '../types/playback/videos_playback_configuration.dart';
import '../types/playback/moments_playback_configuration.dart';
import '../types/playback/stories_playback_configuration.dart';
import '../delegates/blaze_widget_delegate.dart';
import '../delegates/blaze_base_player_delegate_handler.dart';
import '../delegates/blaze_widget_delegate_handler.dart';
import '../delegates/blaze_player_container_tabs_delegate.dart';
import '../delegates/blaze_player_container_tabs_delegate_handler.dart';
import 'types/widget_layout.dart';
import 'types/widget_style_overrides.dart';
import 'blaze_widget_controller.dart';

class BlazeWidgetBase<T extends StatefulWidget> extends StatefulWidget {
  final String widgetId;
  final String _viewType;
  final bool _isVerticalScroll;
  final bool _isEmbeddedInScrollView;

  /// The data source that backs the widget. Optional for Moments widgets that
  /// provide a [tabsConfiguration] instead (the widget's thumbnails are then
  /// driven by the first tab's data source).
  final BlazeDataSourceType? dataSource;
  final BlazeCachingLevel? cachingLevel;
  final BlazeWidgetLayoutPreset presetWidgetLayout;
  final BlazeWidgetLayout? blazeWidgetLayout;
  final bool? shouldOrderWidgetByReadStatus;
  final dynamic playerStyle; // Dynamic to support different player style types
  final dynamic
      playbackConfiguration; // Dynamic to support different playback configuration types
  final Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>?
      perItemStyleOverrides;
  final BlazeWidgetDelegate? widgetDelegate;
  final bool? appOverridesCTAHandling;
  final BlazeWidgetController? controller;

  /// Moments-only: when set, tapping a widget item opens a fullscreen tabs
  /// player built from this configuration. Ignored by Stories/Videos widgets.
  final BlazeMomentsWidgetTabsConfiguration? tabsConfiguration;

  /// Moments-only: per-widget delegate for the fullscreen tabs player opened
  /// through [tabsConfiguration]. Ignored by Stories/Videos widgets.
  final BlazePlayerContainerTabsDelegate? momentsContainerTabsDelegate;

  const BlazeWidgetBase({
    super.key,
    required this.widgetId,
    required String viewType,
    required bool isVerticalScroll,
    this.dataSource,
    required this.presetWidgetLayout,
    this.cachingLevel,
    this.blazeWidgetLayout,
    this.shouldOrderWidgetByReadStatus,
    this.playerStyle,
    this.playbackConfiguration,
    this.perItemStyleOverrides,
    this.widgetDelegate,
    this.appOverridesCTAHandling,
    this.controller,
    this.tabsConfiguration,
    this.momentsContainerTabsDelegate,
    bool isEmbeddedInScrollView = false,
  })  : _viewType = viewType,
        _isVerticalScroll = isVerticalScroll,
        _isEmbeddedInScrollView = isEmbeddedInScrollView;

  @override
  BlazeWidgetBaseState createState() => BlazeWidgetBaseState();
}

class BlazeWidgetBaseState<T extends BlazeWidgetBase> extends State<T>
    with AutomaticKeepAliveClientMixin {
  late final MethodChannel _channel;

  // Initial height for dynamic height widgets (embedded inline Grids for example).
  // It has to be >0 otherwise Android's SurfaceView won't work and we will have to use the expensive version.
  double _dynamicHeight = 1;

  @override
  void initState() {
    super.initState();

    _channel = MethodChannel('blaze-widget-${widget.widgetId}');
    _channel.setMethodCallHandler(_handleMethodCall);
  }

  void _onPlatformViewCreated(int id) {
    // Attach controller callbacks to widget methods after platform view is ready
    widget.controller?.attach(
      reload: _reloadData,
      updateDataSource: _updateDataSource,
      play: _play,
      updateWidgetsUi: _updateWidgetsUi,
      updateOverrideStyles: _updateOverrideStyles,
    );
  }

  Future<dynamic> _handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'onDataLoadStarted':
        BlazeBasePlayerDelegateHandler.handleDataLoadStarted(
          json.decode(call.arguments),
          widget.widgetDelegate?.onDataLoadStarted,
        );
        break;
      case 'onDataLoadComplete':
        BlazeBasePlayerDelegateHandler.handleDataLoadComplete(
          json.decode(call.arguments),
          widget.widgetDelegate?.onDataLoadComplete,
        );
        break;
      case 'onPlayerDidAppear':
        BlazeBasePlayerDelegateHandler.handlePlayerDidAppear(
          json.decode(call.arguments),
          widget.widgetDelegate?.onPlayerDidAppear,
        );
        break;
      case 'onPlayerDidDismiss':
        BlazeBasePlayerDelegateHandler.handlePlayerDidDismiss(
          json.decode(call.arguments),
          widget.widgetDelegate?.onPlayerDidDismiss,
        );
        break;
      case 'onTriggerCTA':
        BlazeBasePlayerDelegateHandler.handleTriggerCTA(
          json.decode(call.arguments),
          widget.widgetDelegate?.onTriggerCTA,
        );
        break;
      case 'onTriggerPlayerBodyTextLink':
        BlazeBasePlayerDelegateHandler.handleTriggerPlayerBodyTextLink(
          json.decode(call.arguments),
          widget.widgetDelegate?.onTriggerPlayerBodyTextLink,
        );
        break;
      case 'onPlayerEventTriggered':
        BlazeBasePlayerDelegateHandler.handlePlayerEventTriggered(
          json.decode(call.arguments),
          widget.widgetDelegate?.onPlayerEventTriggered,
        );
        break;
      case 'onTriggerCustomActionButton':
        BlazeBasePlayerDelegateHandler.handleTriggerCustomActionButton(
          json.decode(call.arguments),
          widget.widgetDelegate?.onTriggerCustomActionButton,
        );
        break;
      case 'onWidgetItemClicked':
        BlazeWidgetDelegateHandler.handleWidgetItemClicked(
          json.decode(call.arguments),
          widget.widgetDelegate?.onWidgetItemClicked,
        );
        break;
      // Moments "widget to tabs" fullscreen player callbacks - forwarded to the
      // per-widget momentsContainerTabsDelegate (Moments-only).
      case 'onMomentsContainerTabsDataLoadStarted':
        BlazeBasePlayerDelegateHandler.handleDataLoadStarted(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onDataLoadStarted,
        );
        break;
      case 'onMomentsContainerTabsDataLoadComplete':
        BlazeBasePlayerDelegateHandler.handleDataLoadComplete(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onDataLoadComplete,
        );
        break;
      case 'onMomentsContainerTabsPlayerDidAppear':
        BlazeBasePlayerDelegateHandler.handlePlayerDidAppear(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onPlayerDidAppear,
        );
        break;
      case 'onMomentsContainerTabsPlayerDidDismiss':
        BlazeBasePlayerDelegateHandler.handlePlayerDidDismiss(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onPlayerDidDismiss,
        );
        break;
      case 'onMomentsContainerTabsTriggerCTA':
        BlazeBasePlayerDelegateHandler.handleTriggerCTA(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onTriggerCTA,
        );
        break;
      case 'onMomentsContainerTabsTriggerPlayerBodyTextLink':
        BlazeBasePlayerDelegateHandler.handleTriggerPlayerBodyTextLink(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onTriggerPlayerBodyTextLink,
        );
        break;
      case 'onMomentsContainerTabsPlayerEventTriggered':
        BlazeBasePlayerDelegateHandler.handlePlayerEventTriggered(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onPlayerEventTriggered,
        );
        break;
      case 'onMomentsContainerTabsTriggerCustomActionButton':
        BlazeBasePlayerDelegateHandler.handleTriggerCustomActionButton(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onTriggerCustomActionButton,
        );
        break;
      case 'onMomentsContainerTabsTabSelected':
        BlazePlayerContainerTabsDelegateHandler.handleTabSelected(
          json.decode(call.arguments),
          widget.momentsContainerTabsDelegate?.onTabSelected,
        );
        break;
      case 'updateHeight':
        var height = call.arguments['height'] as double;
        setState(() {
          _dynamicHeight = height;
        });
        break;
      default:
        log('Method ${call.method} not implemented.');
    }
  }

  @override
  Widget build(BuildContext context) {
    // This call is needed for AutomaticKeepAliveClientMixin.
    super.build(context);

    var platformView = _createPlatformView(context);
    return widget._isEmbeddedInScrollView
        ?
        // We wrap dynamic height widgets in a container that will update it's height according to native side notifying Flutter.
        SizedBox(
            height: _dynamicHeight, // Dynamically adjusted height
            child: platformView,
          )
        : platformView;
  }

  /// Converts per-item style overrides map to JSON format for native consumption
  Map<String, dynamic> _convertPerItemStyleOverridesToJson(
    Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>
        perItemStyleOverrides,
  ) {
    final Map<String, dynamic> perItemStyleOverridesJson = {};
    perItemStyleOverrides.forEach((mapping, overrides) {
      // React Native expects the key to be a JSON string of the mapping object
      final keyJson = jsonEncode(mapping.toJson());
      perItemStyleOverridesJson[keyJson] = overrides.toJson();
    });
    return perItemStyleOverridesJson;
  }

  /// The data source sent to the native side. Falls back to the first tab's
  /// data source when only a tabs configuration is provided, so the native
  /// "data source required" init gate is satisfied either way (the native SDK
  /// derives the same data source for tabs-backed widgets).
  BlazeDataSourceType? get _effectiveDataSource {
    if (widget.dataSource != null) return widget.dataSource;

    final tabs = widget.tabsConfiguration?.tabs;
    return (tabs != null && tabs.isNotEmpty) ? tabs.first.dataSource : null;
  }

  Widget _createPlatformView(BuildContext context) {
    // This is used in the platform side to register the view.
    // Pass parameters to the platform side.
    Map<String, dynamic> creationParams = <String, dynamic>{
      "widgetId": widget.widgetId,
      "isEmbeddedInScrollView": widget._isEmbeddedInScrollView,
      "dataSource": _effectiveDataSource?.toJson(),
      "cachingLevel": widget.cachingLevel?.name,
      "presetWidgetLayout": widget.presetWidgetLayout.name,
      "blazeWidgetLayout": widget.blazeWidgetLayout?.toJson(),
      "shouldOrderWidgetByReadStatus": widget.shouldOrderWidgetByReadStatus,
      "appOverridesCTAHandling": widget.appOverridesCTAHandling
    };

    // Moments-only: turn the widget into a fullscreen tabs player entry point.
    if (widget.tabsConfiguration != null) {
      creationParams["tabsConfiguration"] = widget.tabsConfiguration!.toJson();
    }

    // Add player style to creation params if provided
    if (widget.playerStyle != null) {
      if (widget.playerStyle is BlazeStoryPlayerStyle) {
        creationParams["playerStyle"] =
            (widget.playerStyle as BlazeStoryPlayerStyle).toJson();
      } else if (widget.playerStyle is BlazeMomentsPlayerStyle) {
        creationParams["playerStyle"] =
            (widget.playerStyle as BlazeMomentsPlayerStyle).toJson();
      } else if (widget.playerStyle is BlazeVideosPlayerStyle) {
        creationParams["playerStyle"] =
            (widget.playerStyle as BlazeVideosPlayerStyle).toJson();
      }
    }

    // Add playback configuration to creation params if provided
    if (widget.playbackConfiguration != null) {
      if (widget.playbackConfiguration is BlazeVideosPlaybackConfiguration) {
        creationParams["playbackConfiguration"] =
            (widget.playbackConfiguration as BlazeVideosPlaybackConfiguration)
                .toJson();
      } else if (widget.playbackConfiguration
          is BlazeMomentsPlaybackConfiguration) {
        creationParams["playbackConfiguration"] =
            (widget.playbackConfiguration as BlazeMomentsPlaybackConfiguration)
                .toJson();
      } else if (widget.playbackConfiguration
          is BlazeStoriesPlaybackConfiguration) {
        creationParams["playbackConfiguration"] =
            (widget.playbackConfiguration as BlazeStoriesPlaybackConfiguration)
                .toJson();
      }
    }

    // Add per-item style overrides to creation params if provided
    if (widget.perItemStyleOverrides != null &&
        widget.perItemStyleOverrides!.isNotEmpty) {
      creationParams["perItemStyleOverrides"] =
          _convertPerItemStyleOverridesToJson(widget.perItemStyleOverrides!);
    }

    var textDirection = Directionality.of(context);

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return AndroidView(
          viewType: widget._viewType,
          layoutDirection: textDirection,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec(),
          gestureRecognizers: _createGestureRecognizers(),
          onPlatformViewCreated: _onPlatformViewCreated,
        );
      case TargetPlatform.iOS:
        return UiKitView(
          viewType: widget._viewType,
          layoutDirection: textDirection,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec(),
          gestureRecognizers: _createGestureRecognizers(),
          onPlatformViewCreated: _onPlatformViewCreated,
        );
      default:
        return Text(
            '$defaultTargetPlatform is not supported by the blaze plugin');
    }
  }

  Set<Factory<OneSequenceGestureRecognizer>> _createGestureRecognizers() {
    final result = <Factory<OneSequenceGestureRecognizer>>{
      // All widgets take care of taps on the native side.
      Factory<TapGestureRecognizer>(() => TapGestureRecognizer()),
      Factory<LongPressGestureRecognizer>(() => LongPressGestureRecognizer()),
    };

    if (widget._isVerticalScroll) {
      if (widget._isEmbeddedInScrollView) {
        // If the grid is embeded in a scroll than native side has no scroll and we allow Flutter to handle it alone.
      } else {
        // If the grid is not embeded in a scroll than we allow native side to handle the vertical scroll alone.
        result.add(
          Factory<VerticalDragGestureRecognizer>(
            () => VerticalDragGestureRecognizer(),
          ),
        );
      }
    } else {
      // This is a row - we only allow native to take over horizontal scroll.
      result.add(
        Factory<HorizontalDragGestureRecognizer>(
          () => HorizontalDragGestureRecognizer(),
        ),
      );
    }

    return result;
  }

  @override
  bool get wantKeepAlive => true;

  /// Reloads the data of the widget
  ///
  /// [isSilentRefresh] - Whether to refresh silently without showing loading indicators
  void _reloadData({bool isSilentRefresh = false}) {
    _channel.invokeMethod('reloadData', {'isSilentRefresh': isSilentRefresh});
  }

  /// Updates the data source for the widget
  ///
  /// [dataSource] - The new data source to set
  /// [isSilentRefresh] - Whether to refresh silently without showing loading indicators
  void _updateDataSource({
    required BlazeDataSourceType dataSource,
    bool isSilentRefresh = false,
  }) {
    _channel.invokeMethod('updateDataSource', {
      'dataSource': dataSource.toJson(),
      'isSilentRefresh': isSilentRefresh,
    });
  }

  /// Plays the widget's first item
  void _play() {
    _channel.invokeMethod('play');
  }

  /// Updates the widgets UI
  void _updateWidgetsUi() {
    _channel.invokeMethod('updateWidgetsUi');
  }

  /// Updates the per-item style overrides at runtime
  ///
  /// [perItemStyleOverrides] - Map of custom mappings to style overrides
  /// [shouldUpdateUi] - Whether to immediately update the UI after applying changes
  void _updateOverrideStyles({
    required Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>
        perItemStyleOverrides,
    bool shouldUpdateUi = true,
  }) {
    _channel.invokeMethod('updateOverrideStyles', {
      'perItemStyleOverrides':
          _convertPerItemStyleOverridesToJson(perItemStyleOverrides),
      'shouldUpdateUi': shouldUpdateUi,
    });
  }

  @override
  void dispose() {
    _channel.setMethodCallHandler(null);
    widget.controller?.detach();
    super.dispose();
  }
}
