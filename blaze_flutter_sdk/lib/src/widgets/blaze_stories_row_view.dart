import 'blaze_widget_base.dart';
import '../player_customization/stories_player_style.dart';
import '../types/blaze_data_source_type.dart';
import '../types/playback/stories_playback_configuration.dart';

class BlazeStoriesRowView extends BlazeWidgetBase {
  const BlazeStoriesRowView({
    super.key,
    required super.widgetId,
    required BlazeDataSourceType super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeStoryPlayerStyle? super.playerStyle,
    BlazeStoriesPlaybackConfiguration? super.playbackConfiguration,
    super.perItemStyleOverrides,
    super.widgetDelegate,
    super.appOverridesCTAHandling,
    super.controller,
  }) : super(
          viewType: 'blaze_stories_row_view',
          isVerticalScroll: false,
        );

  @override
  BlazeStoriesRowViewState createState() => BlazeStoriesRowViewState();
}

class BlazeStoriesRowViewState
    extends BlazeWidgetBaseState<BlazeStoriesRowView> {
  BlazeStoriesRowViewState() : super();
}
