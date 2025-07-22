//
//  Encodable+Extensions.swift
//  blaze-flutter-sdk
//
//  Created by Reuven Levitsky on 09/06/2025.
//

import Foundation

struct AnyEncodable: Encodable {
    private let encodeFunc: (Encoder) throws -> Void

    init<T: Encodable>(_ wrapped: T) {
        self.encodeFunc = wrapped.encode
    }

    func encode(to encoder: Encoder) throws {
        try encodeFunc(encoder)
    }
}

extension Encodable {
    /// This will return a Json String representing this object, or `nil` if it failed parsing it.
    public var asJsonString: String? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        guard let jsonData = try? encoder.encode(self) else {
            return nil
        }
        let jsonString = String(data: jsonData, encoding: .utf8)
        return jsonString
    }
} 

public enum BlazeCodableValue: Codable, Equatable {
    case string(String)
    case number(Double)
    case bool(Bool)
    case object([String: BlazeCodableValue])
    case array([BlazeCodableValue])
    case null

    // Custom decoding
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        if container.decodeNil() {
            self = .null
        } else if let string = try? container.decode(String.self) {
            self = .string(string)
        } else if let number = try? container.decode(Double.self) {
            self = .number(number)
        } else if let bool = try? container.decode(Bool.self) {
            self = .bool(bool)
        } else if let object = try? container.decode([String: BlazeCodableValue].self) {
            self = .object(object)
        } else if let array = try? container.decode([BlazeCodableValue].self) {
            self = .array(array)
        } else {
            throw DecodingError.typeMismatch(
                BlazeCodableValue.self,
                DecodingError.Context(codingPath: container.codingPath, debugDescription: "Unsupported type")
            )
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .string(let str):
            try container.encode(str)
        case .number(let num):
            try container.encode(num)
        case .bool(let b):
            try container.encode(b)
        case .object(let obj):
            try container.encode(obj)
        case .array(let arr):
            try container.encode(arr)
        case .null:
            try container.encodeNil()
        }
    }
    
    // MARK: - AnyHashable Conversion
    
    /// Convert CodableValue to AnyHashable
    public var anyHashableValue: AnyHashable {
        switch self {
        case .string(let str):
            return str
        case .number(let num):
            // Return Int if the number is a whole number, Double otherwise
            if num.truncatingRemainder(dividingBy: 1) == 0 {
                return Int(num)
            } else {
                return num
            }
        case .bool(let b):
            return b
        case .object(let obj):
            return obj.mapValues { $0.anyHashableValue }
        case .array(let arr):
            return arr.map { $0.anyHashableValue }
        case .null:
            return NSNull()
        }
    }
    
    /// Create CodableValue from AnyHashable
    public static func from(_ value: AnyHashable) -> BlazeCodableValue {
        switch value {
        case let str as String:
            return .string(str)
        case let num as Double:
            return .number(num)
        case let num as Int:
            return .number(Double(num))
        case let num as Float:
            return .number(Double(num))
        case let b as Bool:
            return .bool(b)
        case let dict as [String: AnyHashable]:
            return .object(dict.mapValues { BlazeCodableValue.from($0) })
        case let arr as [AnyHashable]:
            return .array(arr.map { BlazeCodableValue.from($0) })
        case is NSNull:
            return .null
        default:
            // Fallback: convert to string
            return .string(String(describing: value))
        }
    }
}

// MARK: - Dictionary Conversion Extensions

public extension Dictionary where Key == String, Value == BlazeCodableValue {
    /// Convert [String: CodableValue] to [String: AnyHashable]
    var anyHashableDict: [String: AnyHashable] {
        return self.mapValues { $0.anyHashableValue }
    }
}

internal extension Dictionary where Key == String, Value == AnyHashable {
    /// Convert [String: AnyHashable] to [String: CodableValue]
    var blazeCodableValueDict: [String: BlazeCodableValue] {
        return self.mapValues { BlazeCodableValue.from($0) }
    }
}
