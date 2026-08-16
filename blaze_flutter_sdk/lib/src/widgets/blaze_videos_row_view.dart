import '../player_customization/videos_player_style.dart';
import '../types/blaze_data_source_type.dart';
import '../types/playback/videos_playback_configuration.dart';
import 'blaze_widget_base.dart';

class BlazeVideosRowView extends BlazeWidgetBase {
  const BlazeVideosRowView({
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
    super.perItemStyleOverrides,
    super.widgetDelegate,
    super.appOverridesCTAHandling,
    super.controller,
  }) : super(
          viewType: 'blaze_videos_row_view',
          isVerticalScroll: false,
        );

  @override
  BlazeVideosRowViewState createState() => BlazeVideosRowViewState();
}

class BlazeVideosRowViewState extends BlazeWidgetBaseState<BlazeVideosRowView> {
  BlazeVideosRowViewState() : super();
}
