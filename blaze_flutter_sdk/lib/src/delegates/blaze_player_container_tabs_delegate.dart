import 'blaze_base_player_delegate.dart';
import 'blaze_player_container_tabs_delegate_data_classes.dart';

/// Player Container Tabs Delegate class that extends the shared
/// BlazeBasePlayerDelegate.
///
/// This is the delegate for the Moments "widget to tabs" fullscreen container.
/// It is assigned through the `momentsContainerTabsDelegate` parameter on
/// `BlazeMomentsRowView` / `BlazeMomentsGridView` (one delegate per widget
/// instance, like the per-instance widget delegate).
class BlazePlayerContainerTabsDelegate extends BlazeBasePlayerDelegate {
  /// Called when a tab is selected in the tabs container.
  ///
  /// [params] The tab selected parameters.
  final void Function(BlazeOnTabSelectedParams params)? onTabSelected;

  /// Constructor that includes all shared delegate functions plus the
  /// tabs-specific one.
  const BlazePlayerContainerTabsDelegate({
    // Shared delegate methods from BlazeBasePlayerDelegate
    super.onDataLoadStarted,
    super.onDataLoadComplete,
    super.onPlayerDidAppear,
    super.onPlayerDidDismiss,
    super.onTriggerCTA,
    super.onTriggerPlayerBodyTextLink,
    super.onPlayerEventTriggered,
    super.onTriggerCustomActionButton,
    super.onShareClicked,
    // Tabs-specific method
    this.onTabSelected,
  });
}
