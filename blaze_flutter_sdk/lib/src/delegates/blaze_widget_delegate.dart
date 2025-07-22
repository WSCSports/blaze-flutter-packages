import 'blaze_base_player_delegate.dart';
import 'blaze_widget_delegate_data_classes.dart';

/// Widget Delegate class that extends the shared BlazeBasePlayerDelegate
/// Adds widget-specific functionality like onWidgetItemClicked
class BlazeWidgetDelegate extends BlazeBasePlayerDelegate {
  /// Called when an item within a widget is clicked.
  ///
  /// [event] The widget item clicked event.
  final void Function(BlazeOnWidgetItemClickedEvent event)? onWidgetItemClicked;

  /// Constructor that includes all shared delegate functions plus widget-specific ones
  const BlazeWidgetDelegate({
    // Shared delegate methods from BlazeBasePlayerDelegate
    super.onDataLoadStarted,
    super.onDataLoadComplete,
    super.onPlayerDidAppear,
    super.onPlayerDidDismiss,
    super.onTriggerCTA,
    super.onTriggerPlayerBodyTextLink,
    super.onPlayerEventTriggered,
    // Widget-specific methods
    this.onWidgetItemClicked,
  });
}
