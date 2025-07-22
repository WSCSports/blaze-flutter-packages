import 'blaze_widget_base.dart';
import '../player_customization/videos_player_style.dart';

class BlazeVideosGridView extends BlazeWidgetBase {
  const BlazeVideosGridView({
    super.key,
    required super.widgetId,
    required super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeVideosPlayerStyle? super.playerStyle,
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
