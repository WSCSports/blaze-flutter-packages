//
//  BlazeFlutterContentExtraInfo.swift
//  Pods
//
//  Created by Reuven Levitsky on 17/06/2025.
//

import BlazeSDK

public struct BlazeFlutterContentExtraInfo: Encodable {
    let previous: [String: String]?
    let current: [String: String]?
    let next: [String: String]?
}

public extension BlazeContentExtraInfo {
    
    var toFlutterModel: BlazeFlutterContentExtraInfo {
        return .init(
            previous: previous,
            current: current,
            next: next
        )
    }
    
}
