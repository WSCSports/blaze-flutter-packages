import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_shared.g.dart';

/// This model holds extra information about the content being displayed before/during/after ads, if available.
///
/// For Ads between Moments (IMA/Custom Native):
///
///     - [previous] - Previous moment extra info.
///     - [current] - `null`.
///     - [next] - Next moment extra info.
///
/// For Ads between Stories (IMA/Custom Native):
///
///     - [previous] - Previous story extra info.
///     - [current] - `null`.
///     - [next] - Next story extra info.
///
/// For Banner Ads on Stories:
///
///     - [previous] - Previous story extra info.
///     - [current] - Current story extra info.
///     - [next] - Next story extra info.
///
/// For Ads between Stories Pages (IMA/Custom Native):
///
///     - [previous] - Previous page extra info.
///     - [current] - Current story extra info.
///     - [next] - Next page extra info.
///
/// For Videos (IMA):
///
///    - [previous] - `null`.
///    - [current] - Current video extra info.
///    - [next] - `null`.
@JsonSerializable()
class BlazeContentExtraInfo {
  final Map<String, dynamic>? previous;
  final Map<String, dynamic>? current;
  final Map<String, dynamic>? next;

  const BlazeContentExtraInfo({
    this.previous,
    this.current,
    this.next,
  });

  factory BlazeContentExtraInfo.fromJson(Map<String, dynamic> json) =>
      _$BlazeContentExtraInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BlazeContentExtraInfoToJson(this);
}
