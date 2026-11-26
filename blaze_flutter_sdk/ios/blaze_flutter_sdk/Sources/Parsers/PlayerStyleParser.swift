//
//  PlayerStyleParser.swift
//  blaze_flutter_sdk
//
//  Clean parsing utilities - imports from organized folder structure
//

import BlazeSDK
import Foundation

/**
 * Player style extraction utilities
 */

extension [String: AnyHashable]? {

    // Each function merges the Dart-supplied style onto `startingStyle`. The default is the
    // app's default style (set through `initSDK`), so a per-call, per-widget or tabs style only
    // overrides the fields it sets. `initSDK` passes the native `.base()` preset, so a second
    // init does not stack on the previous default.

    func extractPlayerStoryStyle(
        startingFrom startingStyle: BlazeStoryPlayerStyle = Blaze.shared.getDefaultStoryPlayerStyle()
    ) -> BlazeStoryPlayerStyle? {
        guard let self = self,
            let customization = self.toReactStoryPlayerStyle
        else {
            return nil
        }

        return startingStyle.mergedWith(customization)
    }

    func extractPlayerMomentsStyle(
        startingFrom startingStyle: BlazeMomentsPlayerStyle = Blaze.shared.getDefaultMomentsPlayerStyle()
    ) -> BlazeMomentsPlayerStyle? {
        guard let self = self,
            let customization = self.toReactMomentsPlayerStyle
        else {
            return nil
        }

        return startingStyle.mergedWith(customization)
    }

    func extractPlayerVideosStyle(
        startingFrom startingStyle: BlazeVideosPlayerStyle = Blaze.shared.getDefaultVideosPlayerStyle()
    ) -> BlazeVideosPlayerStyle? {
        guard let self = self,
            let customization = self.toReactVideosPlayerStyle
        else {
            return nil
        }

        return startingStyle.mergedWith(customization)
    }
}

// =================================
// JSON DECODING EXTENSIONS
// =================================

extension [String: AnyHashable] {

    var toReactStoryPlayerStyle: BlazeReactStoryPlayerStyle? {
        var result: BlazeReactStoryPlayerStyle?

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactStoryPlayerStyle.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactStoryPlayerStyle: \(error)")
        }

        return result
    }

    var toReactMomentsPlayerStyle: BlazeReactMomentsPlayerStyle? {
        var result: BlazeReactMomentsPlayerStyle?

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactMomentsPlayerStyle.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactMomentsPlayerStyle: \(error)")
        }

        return result
    }

    var toReactVideosPlayerStyle: BlazeReactVideosPlayerStyle? {
        var result: BlazeReactVideosPlayerStyle?

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactVideosPlayerStyle.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactVideosPlayerStyle: \(error)")
        }

        return result
    }
}
