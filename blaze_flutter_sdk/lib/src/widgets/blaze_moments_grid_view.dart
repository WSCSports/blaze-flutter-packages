import '../player_customization/moments_player_style.dart';
import '../types/blaze_data_source_type.dart';
import '../types/moments_widget_tabs_configuration.dart';
import '../types/playback/moments_playback_configuration.dart';
import 'blaze_widget_base.dart';

class BlazeMomentsGridView extends BlazeWidgetBase {
  const BlazeMomentsGridView({
    super.key,
    required super.widgetId,
    required BlazeDataSourceType super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeMomentsPlayerStyle? super.playerStyle,
    BlazeMomentsPlaybackConfiguration? super.playbackConfiguration,
    super.isEmbeddedInScrollView = false,
    super.perItemStyleOverrides,
    super.widgetDelegate,
    super.appOverridesCTAHandling,
    super.controller,
  }) : super(
          viewType: 'blaze_moments_grid_view',
          isVerticalScroll: true,
        );

  /// Creates a Moments grid that acts as a fullscreen tabs-player entry point:
  /// tapping any item opens the Moments tabs player built from
  /// [tabsConfiguration]. The widget's thumbnails are driven by the first tab's
  /// data source, so no top-level `dataSource` is supplied in this mode; the
  /// player style also comes from the tabs configuration. Use the default
  /// constructor for a standard `dataSource`-backed grid.
  const BlazeMomentsGridView.tabs({
    super.key,
    required super.widgetId,
    required BlazeMomentsWidgetTabsConfiguration super.tabsConfiguration,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeMomentsPlaybackConfiguration? super.playbackConfiguration,
    super.isEmbeddedInScrollView = false,
    super.perItemStyleOverrides,
    super.widgetDelegate,
    super.momentsContainerTabsDelegate,
    super.appOverridesCTAHandling,
    super.controller,
  }) : super(
          viewType: 'blaze_moments_grid_view',
          isVerticalScroll: true,
        );

  @override
  BlazeMomentsGridViewState createState() => BlazeMomentsGridViewState();
}

class BlazeMomentsGridViewState
    extends BlazeWidgetBaseState<BlazeMomentsGridView> {
  BlazeMomentsGridViewState() : super();
}
