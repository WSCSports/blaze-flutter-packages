import 'package:freezed_annotation/freezed_annotation.dart';

import '../types/shared_types.dart';

part 'blaze_player_container_tabs_delegate_data_classes.freezed.dart';
part 'blaze_player_container_tabs_delegate_data_classes.g.dart';

/// Tab selected parameters - used by the Moments container tabs delegate only.
@freezed
class BlazeOnTabSelectedParams with _$BlazeOnTabSelectedParams {
  const factory BlazeOnTabSelectedParams({
    required BlazePlayerType playerType,
    String? sourceId,
    required int tabIndex,
  }) = _BlazeOnTabSelectedParams;

  factory BlazeOnTabSelectedParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeOnTabSelectedParamsFromJson(json);
}
