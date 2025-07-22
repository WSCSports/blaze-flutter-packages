import '../player_customization/moments_player_style.dart';
import 'blaze_widget_base.dart';

class BlazeMomentsGridView extends BlazeWidgetBase {
  const BlazeMomentsGridView({
    super.key,
    required super.widgetId,
    required super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeMomentsPlayerStyle? super.playerStyle,
    super.isEmbeddedInScrollView = false,
    super.perItemStyleOverrides,
    super.widgetDelegate,
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
