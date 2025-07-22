import 'blaze_base_player_delegate_data_classes.dart';

/// Base Player Source Delegate interface - matches iOS BlazePlayerSourceDelegate protocol
/// This is the shared interface that both Widget and EntryPoint delegates implement
abstract class BlazeBasePlayerDelegate {
  /// Called when data loading starts for a player.
  ///
  /// [params] The data load started parameters.
  final void Function(BlazeOnDataLoadStartedParams params)? onDataLoadStarted;

  /// Called when data loading completes for a player.
  ///
  /// [params] The data load complete parameters.
  final void Function(BlazeOnDataLoadCompleteParams params)? onDataLoadComplete;

  /// Called when a player appears on screen.
  ///
  /// [params] The player did appear parameters.
  final void Function(BlazeOnPlayerDidAppearParams params)? onPlayerDidAppear;

  /// Called when a player is dismissed.
  ///
  /// [params] The player did dismiss parameters.
  final void Function(BlazeOnPlayerDidDismissParams params)? onPlayerDidDismiss;

  /// Called when a CTA is triggered in the player.
  ///
  /// [params] The trigger CTA parameters.
  final void Function(BlazeOnTriggerCTAParams params)? onTriggerCTA;

  /// Called when a body text link is triggered in the player.
  ///
  /// [params] The trigger player body text link parameters.
  final void Function(BlazeOnTriggerPlayerBodyTextLinkParams params)?
      onTriggerPlayerBodyTextLink;

  /// Called when a player event is triggered.
  ///
  /// [params] The player event triggered parameters.
  final void Function(BlazeOnPlayerEventTriggeredParams params)?
      onPlayerEventTriggered;

  /// Constructor with shared function parameters - matches iOS BlazePlayerSourceDelegate pattern
  const BlazeBasePlayerDelegate({
    this.onDataLoadStarted,
    this.onDataLoadComplete,
    this.onPlayerDidAppear,
    this.onPlayerDidDismiss,
    this.onTriggerCTA,
    this.onTriggerPlayerBodyTextLink,
    this.onPlayerEventTriggered,
  });
}
