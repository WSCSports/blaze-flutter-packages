import 'package:freezed_annotation/freezed_annotation.dart';

/// What the SDK does with already-fetched content when the external user
/// token changes.
enum BlazeFetchedContentPolicy {
  /// Keep the content already fetched for the previous token.
  keep,

  /// Discard the content already fetched, so widgets and players refetch it
  /// with the new token.
  evict,
}

/// Why the SDK withheld a content item.
///
/// Unrecognized native values decode to [unknown], so a reason added by a
/// future native release still reaches `onContentRestricted`.
enum BlazeContentRestrictionReason {
  @JsonValue('SubscriptionRequired')
  subscriptionRequired,
  @JsonValue('GeoBlocked')
  geoBlocked,
  @JsonValue('VpnBlocked')
  vpnBlocked,
  @JsonValue('DeviceLimitReached')
  deviceLimitReached,
  @JsonValue('ContentNotAvailable')
  contentNotAvailable,
  @JsonValue('ExternalUserTokenMissing')
  externalUserTokenMissing,
  @JsonValue('ExternalUserTokenInvalid')
  externalUserTokenInvalid,
  @JsonValue('ExternalUserTokenExpired')
  externalUserTokenExpired,
  @JsonValue('RateLimited')
  rateLimited,
  @JsonValue('TemporarilyUnavailable')
  temporarilyUnavailable,
  @JsonValue('Unknown')
  unknown;

  /// Whether retrying later may succeed.
  bool get isRetriable => this == rateLimited || this == temporarilyUnavailable;
}

/// How the SDK opens a link from an interaction (for example a poll or quiz
/// in the Engagement Layer), declared up front because native asks
/// synchronously.
enum BlazeInteractionLinkHandleType {
  /// Open the link outside the app. The native default.
  deeplink,

  /// Open the link in the SDK web view.
  web,

  /// Open nothing: the app handles the link from `onTriggerInteractionLink`.
  handled,
}
