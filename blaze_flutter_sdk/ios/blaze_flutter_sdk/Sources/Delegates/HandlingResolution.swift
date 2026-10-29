//
//  HandlingResolution.swift
//  blaze_flutter_sdk
//

import Foundation
import BlazeSDK

extension String {
    /// Parses a Dart `BlazeInteractionLinkHandleType` wire value.
    var asInteractionLinkHandleType: BlazeInteractionLinkHandleType? {
        switch self {
        case "deeplink":
            return .deeplink
        case "web":
            return .web
        case "handled":
            return .handled
        default:
            return nil
        }
    }
}

/// The value returned to native `onTriggerInteractionLink`: the widget's value, then the
/// global value from `initSDK`, then the native default.
func resolveLinkHandling(
    widget: String?,
    global: BlazeInteractionLinkHandleType?
) -> BlazeInteractionLinkHandleType {
    return widget?.asInteractionLinkHandleType ?? global ?? .deeplink
}

extension BlazeContentRestrictionReason {
    /// The PascalCase wire value Dart decodes, the same as Android's `BlazeContentRestrictionReason.value`.
    func toFlutterValue() -> String {
        switch self {
        case .subscriptionRequired:
            return "SubscriptionRequired"
        case .geoBlocked:
            return "GeoBlocked"
        case .vpnBlocked:
            return "VpnBlocked"
        case .deviceLimitReached:
            return "DeviceLimitReached"
        case .contentNotAvailable:
            return "ContentNotAvailable"
        case .externalUserTokenMissing:
            return "ExternalUserTokenMissing"
        case .externalUserTokenInvalid:
            return "ExternalUserTokenInvalid"
        case .externalUserTokenExpired:
            return "ExternalUserTokenExpired"
        case .rateLimited:
            return "RateLimited"
        case .temporarilyUnavailable:
            return "TemporarilyUnavailable"
        case .unknown:
            return "Unknown"
        @unknown default:
            return "Unknown"
        }
    }
}
