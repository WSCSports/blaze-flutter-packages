import 'dart:async';
import 'dart:developer' as developer;
import '../types/blaze_data_source_type.dart';
import 'types/widget_style_overrides.dart';

/// Simple callback-based controller for Blaze widgets
///
/// This controller provides a clean API for controlling Blaze widgets
/// using callback functions instead of complex MethodChannel management.
class BlazeWidgetController {
  static const Duration _attachmentTimeout = Duration(seconds: 2);
  static const String _loggerName = 'BlazeWidgetController';

  // State
  Completer<void> _attachmentCompleter = Completer<void>();

  // Callbacks
  void Function({bool isSilentRefresh})? _onReload;
  void Function(
      {required BlazeDataSourceType dataSource,
      bool isSilentRefresh})? _onUpdateDataSource;
  void Function()? _onPlay;
  void Function()? _onUpdateWidgetsUi;
  void Function({
    required Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>
        perItemStyleOverrides,
    bool shouldUpdateUi,
  })? _onUpdateOverrideStyles;

  /// Whether the controller is currently attached to a widget
  bool get isAttached => _attachmentCompleter.isCompleted;

  /// Reloads the data of the widget
  ///
  /// [isSilentRefresh] - Whether to refresh silently without showing loading indicators
  void reloadData({bool isSilentRefresh = false}) {
    _executeWhenReady(() => _onReload?.call(isSilentRefresh: isSilentRefresh));
  }

  /// Updates the data source for the widget
  ///
  /// [dataSource] - The new data source to set
  /// [isSilentRefresh] - Whether to refresh silently without showing loading indicators
  void updateDataSource(
      {required BlazeDataSourceType dataSource, bool isSilentRefresh = false}) {
    _executeWhenReady(() => _onUpdateDataSource?.call(
          dataSource: dataSource,
          isSilentRefresh: isSilentRefresh,
        ));
  }

  /// Plays the widget's first item
  void play() {
    _executeWhenReady(() => _onPlay?.call());
  }

  /// Updates the widgets UI
  void updateWidgetsUi() {
    _executeWhenReady(() => _onUpdateWidgetsUi?.call());
  }

  /// Updates the per-item style overrides at runtime
  ///
  /// [perItemStyleOverrides] - Map of custom mappings to style overrides
  /// [shouldUpdateUi] - Whether to immediately update the UI after applying changes
  void updateOverrideStyles({
    required Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>
        perItemStyleOverrides,
    bool shouldUpdateUi = true,
  }) {
    _executeWhenReady(() => _onUpdateOverrideStyles?.call(
          perItemStyleOverrides: perItemStyleOverrides,
          shouldUpdateUi: shouldUpdateUi,
        ));
  }

  // Internal package methods - DO NOT USE outside of blaze_flutter_sdk package

  /// **INTERNAL PACKAGE USE ONLY** - Attaches callback functions to the controller
  ///
  /// ⚠️ This method should ONLY be called from BlazeWidgetBase within the blaze_flutter_sdk package.
  /// External users should NOT call this method directly.
  ///
  /// Called by the widget when it's mounted to provide the actual implementation of the controller methods.
  void attach({
    void Function({bool isSilentRefresh})? reload,
    void Function(
            {required BlazeDataSourceType dataSource, bool isSilentRefresh})?
        updateDataSource,
    void Function()? play,
    void Function()? updateWidgetsUi,
    void Function({
      required Map<BlazeWidgetItemCustomMapping, BlazeWidgetItemStyleOverrides>
          perItemStyleOverrides,
      bool shouldUpdateUi,
    })? updateOverrideStyles,
  }) {
    _onReload = reload;
    _onUpdateDataSource = updateDataSource;
    _onPlay = play;
    _onUpdateWidgetsUi = updateWidgetsUi;
    _onUpdateOverrideStyles = updateOverrideStyles;

    // Only complete if not already completed
    if (!_attachmentCompleter.isCompleted) {
      _attachmentCompleter.complete();
    }
  }

  /// **INTERNAL PACKAGE USE ONLY** - Detaches all callbacks from the controller
  ///
  /// ⚠️ This method should ONLY be called from BlazeWidgetBase within the blaze_flutter_sdk package.
  /// External users should NOT call this method directly.
  ///
  /// Called by the widget when it's unmounted to clean up.
  void detach() {
    _clearCallbacks();
    _attachmentCompleter = Completer<void>();
  }

  // Private methods

  void _executeWhenReady(void Function() callback) {
    _waitForAttachment().then((_) => callback()).catchError(_handleError);
  }

  /// Waits for the widget to be attached with timeout
  ///
  /// Returns a Future that completes when the widget is attached or times out
  Future<void> _waitForAttachment() async {
    if (_attachmentCompleter.isCompleted) return;

    return _attachmentCompleter.future.timeout(
      _attachmentTimeout,
      onTimeout: () => throw TimeoutException(
          'Widget not ready within ${_attachmentTimeout.inSeconds} seconds'),
    );
  }

  void _clearCallbacks() {
    _onReload = null;
    _onUpdateDataSource = null;
    _onPlay = null;
    _onUpdateWidgetsUi = null;
    _onUpdateOverrideStyles = null;
  }

  void _handleError(Object error) {
    developer.log('Controller method failed: $error', name: _loggerName);
  }
}

/// Controller for [BlazeMomentsGridView]/[BlazeMomentsRowView], adding the
/// fullscreen "widget to tabs" reload commands on top of the base
/// [BlazeWidgetController] capabilities.
///
/// Not usable with Stories/Videos widgets - their platform views don't
/// register these commands, matching how the native SDK scopes them to the
/// Moments widget-to-tabs flow.
class BlazeMomentsWidgetController extends BlazeWidgetController {
  void Function()? _onReloadAllTabs;
  void Function()? _onReloadNonActiveTabs;
  void Function({required int at})? _onReloadTab;
  void Function({required String containerId})? _onReloadTabByContainerId;

  /// Reloads content for every tab in the fullscreen Moments tabs player.
  ///
  /// Only meaningful when this controller is attached to a Moments widget
  /// built with `.tabs()`, and only while the fullscreen tabs player is
  /// visible - a no-op otherwise. A tab whose data source fails during reload
  /// keeps its previous content; other tabs are unaffected.
  void reloadAllTabs() {
    _executeWhenReady(() => _onReloadAllTabs?.call());
  }

  /// Reloads content for every tab except the currently active one, leaving
  /// active playback undisturbed.
  ///
  /// Same applicability constraints as [reloadAllTabs].
  void reloadNonActiveTabs() {
    _executeWhenReady(() => _onReloadNonActiveTabs?.call());
  }

  /// Reloads a single tab by its position.
  ///
  /// **iOS only** - a documented no-op on Android, where the widget-driven
  /// tabs flow has no native per-tab reload hook (confirmed absent through
  /// `publicSDK/v1.20.4`; only whole-container reload is available there via
  /// [reloadAllTabs] / [reloadNonActiveTabs]). Same applicability constraints
  /// as [reloadAllTabs] otherwise. An out-of-range [at] is a no-op.
  void reloadTab({required int at}) {
    _executeWhenReady(() => _onReloadTab?.call(at: at));
  }

  /// Reloads a single tab by its `containerId`.
  ///
  /// **iOS only** - see [reloadTab] for the Android constraint. An unmatched
  /// [containerId] is a no-op.
  void reloadTabByContainerId({required String containerId}) {
    _executeWhenReady(
        () => _onReloadTabByContainerId?.call(containerId: containerId));
  }

  /// **INTERNAL PACKAGE USE ONLY** - Attaches the Moments-tabs-specific
  /// reload callbacks, in addition to the base callbacks attached via
  /// [attach].
  ///
  /// ⚠️ This method should ONLY be called from BlazeWidgetBase within the
  /// blaze_flutter_sdk package. External users should NOT call this method
  /// directly.
  void attachMomentsTabs({
    void Function()? reloadAllTabs,
    void Function()? reloadNonActiveTabs,
    void Function({required int at})? reloadTab,
    void Function({required String containerId})? reloadTabByContainerId,
  }) {
    _onReloadAllTabs = reloadAllTabs;
    _onReloadNonActiveTabs = reloadNonActiveTabs;
    _onReloadTab = reloadTab;
    _onReloadTabByContainerId = reloadTabByContainerId;
  }

  @override
  void detach() {
    _onReloadAllTabs = null;
    _onReloadNonActiveTabs = null;
    _onReloadTab = null;
    _onReloadTabByContainerId = null;
    super.detach();
  }
}
