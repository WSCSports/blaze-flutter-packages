import 'blaze_widget_base.dart';
import '../player_customization/stories_player_style.dart';
import '../types/blaze_data_source_type.dart';
import '../types/playback/stories_playback_configuration.dart';

class BlazeStoriesGridView extends BlazeWidgetBase {
  const BlazeStoriesGridView({
    super.key,
    required super.widgetId,
    required BlazeDataSourceType super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeStoryPlayerStyle? super.playerStyle,
    BlazeStoriesPlaybackConfiguration? super.playbackConfiguration,
    super.widgetRemoteIdentifier,
    super.isEmbeddedInScrollView = false,
    super.perItemStyleOverrides,
    super.widgetDelegate,
    super.appOverridesCTAHandling,
    super.controller,
  }) : super(viewType: 'blaze_stories_grid_view', isVerticalScroll: true);

  @override
  BlazeStoriesGridViewState createState() => BlazeStoriesGridViewState();
}

class BlazeStoriesGridViewState
    extends BlazeWidgetBaseState<BlazeStoriesGridView> {
  BlazeStoriesGridViewState() : super();
}
