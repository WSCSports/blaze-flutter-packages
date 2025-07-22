import 'blaze_widget_base.dart';
import '../player_customization/stories_player_style.dart';

class BlazeStoriesGridView extends BlazeWidgetBase {
  const BlazeStoriesGridView({
    super.key,
    required super.widgetId,
    required super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeStoryPlayerStyle? super.playerStyle,
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
