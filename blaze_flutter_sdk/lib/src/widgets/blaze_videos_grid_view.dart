import 'blaze_widget_base.dart';
import '../player_customization/videos_player_style.dart';
import '../types/blaze_data_source_type.dart';
import '../types/playback/videos_playback_configuration.dart';

class BlazeVideosGridView extends BlazeWidgetBase {
  const BlazeVideosGridView({
    super.key,
    required super.widgetId,
    required BlazeDataSourceType super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeVideosPlayerStyle? super.playerStyle,
    BlazeVideosPlaybackConfiguration? super.playbackConfiguration,
    super.videosFilterParams,
    super.widgetRemoteIdentifier,
    super.isEmbeddedInScrollView = false,
    super.perItemStyleOverrides,
    super.widgetDelegate,
    super.appOverridesCTAHandling,
    super.controller,
  }) : super(
          viewType: 'blaze_videos_grid_view',
          isVerticalScroll: true,
        );

  @override
  BlazeVideosGridViewState createState() => BlazeVideosGridViewState();
}

class BlazeVideosGridViewState
    extends BlazeWidgetBaseState<BlazeVideosGridView> {
  BlazeVideosGridViewState() : super();
}
