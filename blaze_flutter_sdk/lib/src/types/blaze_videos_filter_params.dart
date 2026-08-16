import 'package:freezed_annotation/freezed_annotation.dart';

part 'blaze_videos_filter_params.freezed.dart';
part 'blaze_videos_filter_params.g.dart';

/// Filters which video content types and live-stream statuses a videos
/// player/widget shows.
///
/// Both fields default to `null`, meaning no filtering is applied on that
/// dimension (all values are shown) - matching the native default.
@freezed
class BlazeVideosFilterParams with _$BlazeVideosFilterParams {
  const factory BlazeVideosFilterParams({
    /// Which content types to include. `null` means no filtering by content type.
    List<BlazeVideoContentType>? contentTypes,

    /// Which live-stream statuses to include. `null` means no filtering by stream status.
    List<BlazeLiveStreamStatus>? streamStates,
  }) = _BlazeVideosFilterParams;

  factory BlazeVideosFilterParams.fromJson(Map<String, dynamic> json) =>
      _$BlazeVideosFilterParamsFromJson(json);
}

/// The type of video content.
enum BlazeVideoContentType {
  video,
  stream;
}

/// The live status of a stream.
enum BlazeLiveStreamStatus {
  live,
  upcoming,
  ended;
}
