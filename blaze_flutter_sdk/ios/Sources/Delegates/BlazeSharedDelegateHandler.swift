//
//  BlazeSharedDelegateHandler.swift
//  blaze_flutter_sdk
//
//  Created by Reuven Levitsky.
//

import Foundation
import BlazeSDK
import Flutter

/// Shared delegate handler that eliminates code duplication between Widget and EntryPoint delegates
/// Uses the same data preparation logic but allows different communication methods
class BlazeSharedDelegateHandler {
    
    // MARK: - Shared Delegate Methods
    
    func onDataLoadStarted(
        playerType: BlazePlayerType,
        sourceId: String?,
        completion: (Encodable) -> Void
    ) {
        struct Params: Codable {
            let playerType: String
            let sourceId: String?
        }

        let params = Params(
            playerType: playerType.toFlutterValue(),
            sourceId: sourceId
        )

        completion(params)
    }
    
    func onDataLoadComplete(
        playerType: BlazePlayerType,
        sourceId: String?,
        itemsCount: Int,
        result: BlazeResult,
        completion: (Encodable) -> Void
    ) {
        let flutterError: BlazeFlutterError? = {
            switch result {
            case .failure(let error):
                return BlazeFlutterError.fromBlazeError(error)
            case .success:
                return nil
            }
        }()

        struct Params: Codable {
            let playerType: String
            let sourceId: String?
            let itemsCount: Int
            let error: BlazeFlutterError?
        }

        let params = Params(
            playerType: playerType.toFlutterValue(),
            sourceId: sourceId,
            itemsCount: itemsCount,
            error: flutterError
        )

        completion(params)
    }
    
    func onPlayerDidAppear(
        playerType: BlazePlayerType,
        sourceId: String?,
        completion: (Encodable) -> Void
    ) {
        struct Params: Codable {
            let playerType: String
            let sourceId: String?
        }

        let params = Params(
            playerType: playerType.toFlutterValue(),
            sourceId: sourceId
        )

        completion(params)
    }
    
    func onPlayerDidDismiss(
        playerType: BlazePlayerType,
        sourceId: String?,
        completion: (Encodable) -> Void
    ) {
        struct Params: Codable {
            let playerType: String
            let sourceId: String?
        }

        let params = Params(
            playerType: playerType.toFlutterValue(),
            sourceId: sourceId
        )

        completion(params)
    }
    
    func onTriggerCTA(
        playerType: BlazePlayerType,
        sourceId: String?,
        actionType: BlazeCTAActionType,
        actionParam: String,
        appOverridesCTAHandling: Bool,
        completion: (Encodable) -> Void
    ) -> Bool {
        struct Params: Codable {
            let playerType: String
            let sourceId: String?
            let actionType: String
            let actionParam: String
        }

        let params = Params(
            playerType: playerType.toFlutterValue(),
            sourceId: sourceId,
            actionType: actionType.toFlutterValue(),
            actionParam: actionParam
        )

        completion(params)

        return appOverridesCTAHandling
    }
    
    func onTriggerPlayerBodyTextLink(
        playerType: BlazePlayerType,
        sourceId: String?,
        actionParam: String,
        completion: (Encodable) -> Void
    ) -> BlazeLinkActionHandleType {
        struct Params: Codable {
            let playerType: String
            let sourceId: String?
            let actionParam: String
        }

        let params = Params(
            playerType: playerType.toFlutterValue(),
            sourceId: sourceId,
            actionParam: actionParam
        )

        completion(params)

        return .deeplink
    }
    
    func onPlayerEventTriggered(
        playerType: BlazePlayerType,
        sourceId: String?,
        event: BlazePlayerEvent,
        completion: (Encodable) -> Void
    ) {
        struct PlayerEventData: Encodable {
            let playerType: String
            let sourceId: String?
            let eventData: BlazePlayerEventData
        }

        // Use centralized data struct for reusability across the SDK
        let eventData = BlazePlayerEventData.from(event)

        let params = PlayerEventData(
            playerType: playerType.toFlutterValue(),
            sourceId: sourceId,
            eventData: eventData
        )

        completion(params)
    }
    
    // MARK: - Widget-Specific Methods
    
    func onWidgetItemClicked(
        widgetId: String,
        widgetItemId: String,
        widgetItemTitle: String?,
        completion: (Encodable) -> Void
    ) {
        struct Params: Codable {
            let widgetId: String
            let widgetItemId: String
            let widgetItemTitle: String?
        }

        let params = Params(
            widgetId: widgetId,
            widgetItemId: widgetItemId,
            widgetItemTitle: widgetItemTitle
        )

        completion(params)
    }
} 
