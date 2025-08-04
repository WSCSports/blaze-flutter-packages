//
//  BlazePlayerEventData.swift
//  blaze_flutter_sdk
//
//  Created by Created by Reuven Levitsky.
//

import Foundation
import BlazeSDK

/**
 * Codable struct that wraps BlazePlayerEvent data for native-to-Flutter communication
 * This centralizes the player event data structure and can be reused across the SDK
 *
 * Usage example:
 * ```swift
 * let eventData = BlazePlayerEventData.from(playerEvent)
 * // Use eventData for Flutter communication
 * ```
 */
struct BlazePlayerEventData: Encodable {
    let playerEventType: String
    let playerEventParams: AnyEncodable

    static func from(_ event: BlazePlayerEvent) -> BlazePlayerEventData {
        let eventType = event.toFlutterEventType
        let eventParams = event.toFlutterEventParams

        return BlazePlayerEventData(
            playerEventType: eventType,
            playerEventParams: AnyEncodable(eventParams)
        )
    }
}

extension BlazePlayerEvent {
    
    /// Convert BlazePlayerEvent to Flutter event type string
    var toFlutterEventType: String {
        switch self {
        case .onMomentStart:
            return "OnMomentStart"
        case .onStoryStart:
            return "OnStoryStart"
        case .onVideoStart:
            return "OnVideoStart"
        }
    }
    
    /// Convert BlazePlayerEvent parameters to JSON string
    var toFlutterEventParams: Encodable {
        switch self {
        case .onMomentStart(let params):
            struct Params: Codable {
                let momentId: String
            }
            return Params(momentId: params.momentId)
        case .onStoryStart(let params):
            struct Params: Codable {
                let storyId: String
            }
            return Params(storyId: params.storyId)
        case .onVideoStart(let params):
            struct Params: Codable {
                let videoId: String
            }
            return Params(videoId: params.videoId)
        }
    }
}
