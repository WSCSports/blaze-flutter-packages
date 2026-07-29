//
//  MomentsWidgetTabsConfigurationParser.swift
//  blaze_flutter_sdk
//
//  Parses the `tabsConfiguration` creation param into a native `BlazeMomentsPlayerContainerTabs`.
//

import Foundation
import UIKit
import BlazeSDK

// MARK: - Tabs configuration

extension Optional where Wrapped == [String: AnyHashable] {

    /// Builds a `BlazeMomentsPlayerContainerTabs` from the `tabsConfiguration` creation param.
    /// Returns `nil` (so the caller falls back to the standard single-moment widget init) when the
    /// configuration is missing, malformed, or has no valid tabs.
    func extractMomentsWidgetTabsConfiguration(
        containerTabsDelegate: BlazePlayerContainerTabsDelegate,
        playbackConfiguration: BlazeMomentsPlaybackConfiguration?
    ) -> BlazeMomentsPlayerContainerTabs? {
        guard let dict = self else { return nil }

        guard let containerSourceId = dict["containerSourceId"] as? String else {
            print("tabsConfiguration: missing containerSourceId; falling back to non-tabs widget init.")
            return nil
        }

        guard let tabsArray = dict["tabs"] as? [[String: AnyHashable]] else {
            print("tabsConfiguration: missing tabs array; falling back to non-tabs widget init.")
            return nil
        }

        let tabs = tabsArray.compactMap { $0.extractMomentsContainerTabItem() }
        guard !tabs.isEmpty else {
            print("tabsConfiguration: empty/invalid tabs; falling back to non-tabs widget init.")
            return nil
        }

        let playerStyle = (dict["playerStyle"] as? [String: AnyHashable]).extractPlayerMomentsStyle()
        let tabsStyle = (dict["tabsStyle"] as? [String: AnyHashable]).extractTabsStyle()

        return BlazeMomentsPlayerContainerTabs(
            tabs: tabs,
            playerStyle: playerStyle,
            playbackConfiguration: playbackConfiguration,
            tabsStyle: tabsStyle,
            containerTabsDelegate: containerTabsDelegate,
            containerSourceId: containerSourceId
        )
    }

    /// Builds the tabs strip style from the native `.base()` preset merged with the Dart
    /// customization.
    ///
    /// The style contains only nested primitives, so it is decoded via JSON
    /// (`toReactPlayerTabsStyle`) and merged by `BlazePlayerTabsStyle.mergedWith` — the same
    /// approach used for the player styles, instead of parsing the dictionary field-by-field.
    /// Returns `nil` when no style dict is provided (native applies `.base()`).
    func extractTabsStyle() -> BlazePlayerTabsStyle? {
        guard let dict = self else { return nil }
        return BlazePlayerTabsStyle.base().mergedWith(dict.toReactPlayerTabsStyle)
    }
}

// MARK: - Per-tab item

extension [String: AnyHashable] {

    func extractMomentsContainerTabItem() -> BlazeMomentsContainerTabItem? {
        guard let containerId = self["containerId"] as? String,
              let title = self["title"] as? String,
              let dataSourceDict = self["dataSource"] as? [String: AnyHashable],
              let dataSource = dataSourceDict.toBlazeDataSourceType else {
            return nil
        }

        let isVisible = self["isVisible"] as? Bool ?? true
        let shouldOrderMomentsByReadStatus = self["shouldOrderMomentsByReadStatus"] as? Bool ?? true
        let cachePolicyLevel = (self["cachePolicyLevel"] as? String)?.asCachingLevel
        let icon = (self["icon"] as? [String: AnyHashable]).extractTabItemIcon()

        // `momentsAdsConfigType` is intentionally left at the native default
        // (.firstAvailableAdsConfig); the ads-config surface is not bridged yet.
        return BlazeMomentsContainerTabItem(
            containerId: containerId,
            title: title,
            isVisible: isVisible,
            dataSource: dataSource,
            icon: icon,
            shouldOrderMomentsByReadStatus: shouldOrderMomentsByReadStatus,
            cachePolicyLevel: cachePolicyLevel
        )
    }

    var toReactPlayerTabsStyle: BlazeReactPlayerTabsStyle? {
        var result: BlazeReactPlayerTabsStyle?

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactPlayerTabsStyle.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactPlayerTabsStyle: \(error)")
        }

        return result
    }

    var toReactPlayerButtonCustomImageStates: BlazeReactPlayerButtonCustomImageStates? {
        var result: BlazeReactPlayerButtonCustomImageStates?

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactPlayerButtonCustomImageStates.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactPlayerButtonCustomImageStates: \(error)")
        }

        return result
    }
}

// MARK: - Per-tab icon

extension Optional where Wrapped == [String: AnyHashable] {

    func extractTabItemIcon() -> BlazePlayerTabItemCustomImageStates? {
        guard let dict = self else { return nil }
        let base: BlazePlayerTabItemCustomImageStates? = nil
        return base.mergedWith(dict.toReactPlayerButtonCustomImageStates)
    }
}
