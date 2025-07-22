import '../player_customization/moments_player_style.dart';
import 'blaze_widget_base.dart';

class BlazeMomentsRowView extends BlazeWidgetBase {
  const BlazeMomentsRowView({
    super.key,
    required super.widgetId,
    required super.dataSource,
    required super.presetWidgetLayout,
    super.cachingLevel,
    super.blazeWidgetLayout,
    super.shouldOrderWidgetByReadStatus,
    BlazeMomentsPlayerStyle? super.playerStyle,
    super.perItemStyleOverrides,
    super.widgetDelegate,
    super.appOverridesCTAHandling,
    super.controller,
  }) : super(
          viewType: 'blaze_moments_row_view',
          isVerticalScroll: false,
        );

  @override
  BlazeMomentsRowViewState createState() => BlazeMomentsRowViewState();
}

class BlazeMomentsRowViewState
    extends BlazeWidgetBaseState<BlazeMomentsRowView> {
  BlazeMomentsRowViewState() : super();
}
