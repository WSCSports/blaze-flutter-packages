import '../player_customization/videos_player_style.dart';
import 'blaze_widget_base.dart';

class BlazeVideosRowView extends BlazeWidgetBase {
  const BlazeVideosRowView({
    super.key,
    required super.widgetId,
    required super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeVideosPlayerStyle? super.playerStyle,
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
