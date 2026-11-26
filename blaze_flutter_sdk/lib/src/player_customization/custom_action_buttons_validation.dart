import '../types/custom_action_button.dart';

const _maxCustomActionButtons = 2;

/// Throws an [ArgumentError] when [buttons] breaks the native limit: at most
/// two buttons, each with a unique `customParams.id`.
void validateCustomActionButtons(List<BlazeCustomActionButton>? buttons) {
  if (buttons == null) return;
  final ids = buttons.map((b) => b.customParams.id).toList();
  if (buttons.length > _maxCustomActionButtons) {
    throw ArgumentError.value(buttons.length, 'customActionButtons',
        'At most $_maxCustomActionButtons custom action buttons are allowed');
  }
  final seen = <String>{};
  for (final id in ids) {
    if (!seen.add(id)) {
      throw ArgumentError.value(id, 'customActionButtons',
          'Each button needs a unique customParams.id');
    }
  }
}
