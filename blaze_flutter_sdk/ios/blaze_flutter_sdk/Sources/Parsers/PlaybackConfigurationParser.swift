import Foundation
import BlazeSDK

extension [String: AnyHashable]? {
    /// Builds a `BlazeVideosPlaybackConfiguration` from a Flutter-provided map, starting from the
    /// current SDK default and overriding only the keys that are present (mirroring the RN bridge).
    func extractVideosPlaybackConfiguration() -> BlazeVideosPlaybackConfiguration? {
        guard let dict = self else { return nil }

        var config = Blaze.shared.getDefaultVideosPlaybackConfiguration()

        if let multiAspectRatio = dict["multiAspectRatio"] as? Bool {
            config.multiAspectRatio = multiAspectRatio
        }
        if let shouldOpenInLandscape = dict["shouldOpenInLandscape"] as? Bool {
            config.shouldOpenInLandscape = shouldOpenInLandscape
        }

        if let pipDict = dict["pipConfiguration"] as? [String: AnyHashable] {
            if let enterOnBackground = pipDict["enterPipOnAppBackground"] as? Bool {
                config.pipConfiguration.enterPipOnAppBackground = enterOnBackground
            }
        }

        if let delaySeconds = dict.bufferingSpinnerDelaySecondsFromMs() {
            config.bufferingSpinnerDelay = delaySeconds
        }

        return config
    }

    /// Builds a `BlazeMomentsPlaybackConfiguration` from a Flutter-provided map, starting from the
    /// SDK base configuration and overriding only the keys that are present (mirroring the RN bridge).
    func extractMomentsPlaybackConfiguration() -> BlazeMomentsPlaybackConfiguration? {
        guard let dict = self else { return nil }

        var config = BlazeMomentsPlaybackConfiguration.base()

        if let loopBehaviorDict = dict["loopBehavior"] as? [String: AnyHashable],
           let type = loopBehaviorDict["type"] as? String {
            switch type {
            case "infiniteLoop":
                config.loopBehavior = .infiniteLoop
            case "loopAndAdvance":
                let numberOfPlays = loopBehaviorDict["numberOfPlays"] as? Int ?? 1
                config.loopBehavior = .loopAndAdvance(numberOfPlays: max(1, numberOfPlays))
            default:
                break
            }
        }

        if let delaySeconds = dict.bufferingSpinnerDelaySecondsFromMs() {
            config.bufferingSpinnerDelay = delaySeconds
        }

        return config
    }

    /// Builds a `BlazeStoriesPlaybackConfiguration` from a Flutter-provided map, starting from the
    /// SDK base configuration and overriding only the keys that are present (mirroring the RN bridge).
    func extractStoriesPlaybackConfiguration() -> BlazeStoriesPlaybackConfiguration? {
        guard let dict = self else { return nil }

        var config = BlazeStoriesPlaybackConfiguration.base()

        if let delaySeconds = dict.bufferingSpinnerDelaySecondsFromMs() {
            config.bufferingSpinnerDelay = delaySeconds
        }

        return config
    }
}

private extension [String: AnyHashable] {
    /// Reads the `bufferingSpinnerDelayMs` key (the Dart contract is milliseconds) and converts it
    /// to the `TimeInterval` (seconds) that the native iOS configuration uses.
    func bufferingSpinnerDelaySecondsFromMs() -> TimeInterval? {
        guard let delayMs = (self["bufferingSpinnerDelayMs"] as? NSNumber)?.doubleValue else {
            return nil
        }
        // `Swift.max` is required here: inside a `[String: AnyHashable]` (Sequence) extension a bare
        // `max` resolves to `Sequence.max()` (the instance method), not the global function.
        return Swift.max(0, delayMs / 1000.0)
    }
}
