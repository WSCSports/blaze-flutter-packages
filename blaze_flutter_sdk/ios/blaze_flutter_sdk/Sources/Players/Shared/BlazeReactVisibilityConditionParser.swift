//
//  BlazeReactVisibilityConditionParser.swift
//  blaze_flutter_sdk
//
//

import Foundation
import BlazeSDK

extension BlazePlayerCustomActionButtonParams.VisibilityCondition {
    static func from(dictionary: [String: AnyHashable]) -> Self? {
        guard let type = dictionary["type"] as? String else { return nil }

        switch type {
        case "always":
            return .always

        case "never":
            return .never

        case "keyExists":
            guard let key = dictionary["key"] as? String else { return nil }
            return .keyExists(key)

        case "keyNotExists":
            guard let key = dictionary["key"] as? String else { return nil }
            return .keyNotExists(key)

        case "keyEquals":
            guard let key = dictionary["key"] as? String,
                  let value = dictionary["value"] else { return nil }
            return .keyEquals(key, value)

        case "keyNotEquals":
            guard let key = dictionary["key"] as? String,
                  let value = dictionary["value"] else { return nil }
            return .keyNotEquals(key, value)

        case "keyIn":
            guard let key = dictionary["key"] as? String,
                  let values = dictionary["values"] as? [AnyHashable] else { return nil }
            return .keyIn(key, values)

        case "keyNotIn":
            guard let key = dictionary["key"] as? String,
                  let values = dictionary["values"] as? [AnyHashable] else { return nil }
            return .keyNotIn(key, values)

        case "keyGreaterThan":
            guard let key = dictionary["key"] as? String,
                  let threshold = (dictionary["threshold"] as? NSNumber)?.doubleValue else { return nil }
            return .keyGreaterThan(key, threshold)

        case "keyLessThan":
            guard let key = dictionary["key"] as? String,
                  let threshold = (dictionary["threshold"] as? NSNumber)?.doubleValue else { return nil }
            return .keyLessThan(key, threshold)

        case "keyBetween":
            guard let key = dictionary["key"] as? String,
                  let min = (dictionary["min"] as? NSNumber)?.doubleValue,
                  let max = (dictionary["max"] as? NSNumber)?.doubleValue else { return nil }
            return .keyBetween(key, min, max)

        case "keyContains":
            guard let key = dictionary["key"] as? String,
                  let substring = dictionary["substring"] as? String else { return nil }
            return .keyContains(key, substring)

        case "and":
            guard let conditionDicts = dictionary["conditions"] as? [[String: AnyHashable]] else { return nil }
            let conditions = conditionDicts.compactMap { Self.from(dictionary: $0) }
            guard !conditions.isEmpty else { return nil }
            return .and(conditions)

        case "or":
            guard let conditionDicts = dictionary["conditions"] as? [[String: AnyHashable]] else { return nil }
            let conditions = conditionDicts.compactMap { Self.from(dictionary: $0) }
            guard !conditions.isEmpty else { return nil }
            return .or(conditions)

        case "not":
            guard let conditionDict = dictionary["condition"] as? [String: AnyHashable],
                  let condition = Self.from(dictionary: conditionDict) else { return nil }
            return .not(condition)

        default:
            return nil
        }
    }
}
