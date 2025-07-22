import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../types/blaze_data_source_type.dart';
import '../types/shared_types.dart';
import '../types/widget_presets.dart';
import '../player_customization/stories_player_style.dart';
import '../player_customization/moments_player_style.dart';
import '../player_customization/videos_player_style.dart';
import '../delegates/blaze_widget_delegate.dart';
import '../delegates/blaze_base_player_delegate_handler.dart';
import '../delegates/blaze_widget_delegate_handler.dart';
import 'types/widget_layout.dart';
import 'types/widget_style_overrides.dart';
import 'blaze_widget_controller.dart';

class BlazeWidgetBase<T extends StatefulWidget> extends StatefulWidget {
  final String widgetId;
  final String _viewType;
  final bool _isVerticalScroll;
  final bool _isEmbeddedInScrollView;
  final BlazeDataSourceType dataSource;
  final BlazeCachingLevel? cachingLevel;
  final BlazeWidgetLayoutPreset presetWidgetLayout;
  final BlazeWidgetLayout? blazeWidgetLayout;
  final bool? shouldOrderWidgetByReadStatus;
  final dynamic playerStyle; // Dynamic to support different player style types
  final Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>?
      perItemStyleOverrides;
  final BlazeWidgetDelegate? widgetDelegate;
  final bool? appOverridesCTAHandling;
  final BlazeWidgetController? controller;

  const BlazeWidgetBase({
    super.key,
    required this.widgetId,
    required String viewType,
    required bool isVerticalScroll,
    required this.dataSource,
    required this.presetWidgetLayout,
    this.cachingLevel,
    this.blazeWidgetLayout,
    this.shouldOrderWidgetByReadStatus,
    this.playerStyle,
    this.perItemStyleOverrides,
    this.widgetDelegate,
    this.appOverridesCTAHandling,
    this.controller,
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

  /// Creates the appropriate Android platform view based on dynamic height requirements
  PlatformViewController _createAndroidPlatformView(
    PlatformViewCreationParams params,
    Map<String, dynamic> creationParams,
    TextDirection textDirection,
  ) {
    void onPlatformViewCreated(int id) {
      params.onPlatformViewCreated(id);
      _onPlatformViewCreated(id);
    }

    void onFocus() => params.onFocusChanged(true);

// Right now we are testing the Android's implementation with the SurfaceView rather than the expensive because it it
//much better integrated into the Flutter app. But if any issues are found consider changing it back.

    // if (widget._isEmbeddedInScrollView) {
    //   // Dynamic height widgets need expensive composition for height update communication
    //   return PlatformViewsService.initExpensiveAndroidView(
    //     id: params.id,
    //     viewType: widget._viewType,
    //     layoutDirection: textDirection,
    //     creationParams: creationParams,
    //     creationParamsCodec: const StandardMessageCodec(),
    //     onFocus: onFocus,
    //   )
    //     ..addOnPlatformViewCreatedListener(onPlatformViewCreated)
    //     ..create();
    // } else {
    // Fixed height widgets can use hybrid composition for better animation performance
    return PlatformViewsService.initSurfaceAndroidView(
      id: params.id,
      viewType: widget._viewType,
      layoutDirection: textDirection,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
      onFocus: onFocus,
    )
      ..addOnPlatformViewCreatedListener(onPlatformViewCreated)
      ..create();
    // }
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
      case 'onWidgetItemClicked':
        BlazeWidgetDelegateHandler.handleWidgetItemClicked(
          json.decode(call.arguments),
          widget.widgetDelegate?.onWidgetItemClicked,
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
  /// Following React Native's exact pattern where keys are JSON-serialized mapping objects
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

  Widget _createPlatformView(BuildContext context) {
    // This is used in the platform side to register the view.
    // Pass parameters to the platform side.
    Map<String, dynamic> creationParams = <String, dynamic>{
      "widgetId": widget.widgetId,
      "isEmbeddedInScrollView": widget._isEmbeddedInScrollView,
      "dataSource": widget.dataSource.toJson(),
      "cachingLevel": widget.cachingLevel?.name,
      "presetWidgetLayout": widget.presetWidgetLayout.name,
      "blazeWidgetLayout": widget.blazeWidgetLayout?.toJson(),
      "shouldOrderWidgetByReadStatus": widget.shouldOrderWidgetByReadStatus,
      "appOverridesCTAHandling": widget.appOverridesCTAHandling
    };

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

    // Add per-item style overrides to creation params if provided
    if (widget.perItemStyleOverrides != null &&
        widget.perItemStyleOverrides!.isNotEmpty) {
      creationParams["perItemStyleOverrides"] =
          _convertPerItemStyleOverridesToJson(widget.perItemStyleOverrides!);
    }

    var textDirection = Directionality.of(context);

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return PlatformViewLink(
          viewType: widget._viewType,
          surfaceFactory: (context, controller) {
            return AndroidViewSurface(
              controller: controller as AndroidViewController,
              gestureRecognizers: _createGestureRecognizers(),
              hitTestBehavior: PlatformViewHitTestBehavior.opaque,
            );
          },
          onCreatePlatformView: (params) {
            // Use hybrid composition for better animations when dynamic height is not needed
            // Use expensive composition only when dynamic height updates are required
            return _createAndroidPlatformView(
                params, creationParams, textDirection);
          },
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
    if (widget._isVerticalScroll) {
      return const <Factory<OneSequenceGestureRecognizer>>{};
    } else {
      return <Factory<OneSequenceGestureRecognizer>>{
        Factory<HorizontalDragGestureRecognizer>(
          () => HorizontalDragGestureRecognizer(),
        ),
      };
    }
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
