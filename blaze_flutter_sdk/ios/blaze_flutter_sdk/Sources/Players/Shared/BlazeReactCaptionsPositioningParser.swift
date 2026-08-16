//
//  BlazeReactCaptionsPositioningParser.swift
//  blaze_flutter_sdk
//
//

import Foundation
import BlazeSDK

extension BlazeCaptionsXPosition {
    static func from(dictionary: [String: AnyHashable]) -> Self? {
        guard let type = dictionary["type"] as? String else { return nil }

        switch type {
        case "start":
            return .start

        case "center":
            return .center

        case "custom":
            guard let offsetPercent = dictionary["offsetPercent"] as? Int else { return nil }
            return .custom(offsetPercent: offsetPercent)

        default:
            return nil
        }
    }
}

extension BlazeCaptionsYPosition {
    static func from(dictionary: [String: AnyHashable]) -> Self? {
        guard let type = dictionary["type"] as? String else { return nil }

        switch type {
        case "top":
            return .top

        case "center":
            return .center

        case "bottom":
            return .bottom

        case "custom":
            guard let offsetPercent = dictionary["offsetPercent"] as? Int else { return nil }
            return .custom(offsetPercent: offsetPercent)

        default:
            return nil
        }
    }
}
