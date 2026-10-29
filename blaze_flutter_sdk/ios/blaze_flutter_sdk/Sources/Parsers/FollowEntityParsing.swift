//
//  FollowEntityParsing.swift
//  blaze_flutter_sdk
//

import Foundation
import BlazeSDK

extension String {
    /// Parses a Dart `BlazeFollowedEntityCategory` wire value.
    var asFollowedEntityCategory: BlazeFollowedEntityCategory? {
        switch self {
        case "team":
            return .team
        case "player":
            return .player
        case "property":
            return .property
        default:
            return nil
        }
    }
}

extension BlazeFollowedEntityCategory {
    /// The Dart `BlazeFollowedEntityCategory` wire value; nil for a category Dart doesn't know.
    func toFlutterValue() -> String? {
        switch self {
        case .team:
            return "team"
        case .player:
            return "player"
        case .property:
            return "property"
        @unknown default:
            return nil
        }
    }
}

extension BlazeFollowEntity {
    /// Parses a Dart `BlazeFollowEntity` map; nil when it has no string `id`.
    static func fromFlutterMap(_ map: [String: Any]) -> BlazeFollowEntity? {
        guard let id = map["id"] as? String else { return nil }
        return BlazeFollowEntity(
            id: id,
            providerName: map["providerName"] as? String,
            entityType: (map["entityType"] as? String)?.asFollowedEntityCategory
        )
    }

    /// The Dart `BlazeFollowEntity` map.
    var flutterMap: [String: Any] {
        return [
            "id": id,
            "providerName": providerName ?? NSNull(),
            "entityType": entityType?.toFlutterValue() ?? NSNull(),
        ]
    }
}
