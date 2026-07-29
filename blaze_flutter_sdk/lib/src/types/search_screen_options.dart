import 'package:freezed_annotation/freezed_annotation.dart';

import 'blaze_data_source_type.dart';

part 'search_screen_options.freezed.dart';
part 'search_screen_options.g.dart';

/// Options for presenting the standalone search screen.
@freezed
class BlazeSearchScreenOptions with _$BlazeSearchScreenOptions {
  const factory BlazeSearchScreenOptions({
    /// Optional data source used to populate suggestions on the search screen.
    BlazeDataSourceType? suggestionsDataSource,
  }) = _BlazeSearchScreenOptions;

  factory BlazeSearchScreenOptions.fromJson(Map<String, dynamic> json) =>
      _$BlazeSearchScreenOptionsFromJson(json);
}
