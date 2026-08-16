//
//  BlazeReactPlayerTabsStyle.swift
//  blaze_flutter_sdk
//
//  Codable mirror of the Dart `BlazePlayerTabsStyle` (see
//  `moments_widget_tabs_configuration.dart`). Decoded with `toReactPlayerTabsStyle` and merged onto
//  the native `BlazePlayerTabsStyle.base()` — the same approach as the player-style customization,
//  so the dictionary is not parsed field-by-field.
//

import Foundation
import UIKit

struct BlazeReactPlayerTabsStyle: Codable {
    var padding: BlazeReactMargins?
    var gradient: BlazeReactPlayerTabsGradientStyle?
    var icon: BlazeReactPlayerTabItemIconStyle?
    var selectedTabState: BlazeReactPlayerTabItemStyle?
    var unselectedTabState: BlazeReactPlayerTabItemStyle?
    var activeTabIndicator: BlazeReactPlayerActiveTabIndicatorStyle?
    var isTabTitleVisibleWhenSingleTab: Bool?
    var isTabVisibleWhenEmpty: Bool?
}

struct BlazeReactPlayerActiveTabIndicatorStyle: Codable {
    var isVisible: Bool?
    var height: CGFloat?
}

struct BlazeReactPlayerTabsGradientStyle: Codable {
    var isVisible: Bool?
    var startColor: String? // Hex
    var middleColor: String? // Hex
    var endColor: String? // Hex
}

struct BlazeReactPlayerTabItemIconStyle: Codable {
    var iconTint: String? // Hex
    var padding: CGFloat?
}

struct BlazeReactPlayerTabItemStyle: Codable {
    var font: BlazeReactTitleFont?
    var textColor: String? // Hex
    var textSize: CGFloat?
    var letterSpacing: CGFloat?
    /// Android-only (API 29+). Ignored on iOS.
    var lineHeight: CGFloat?
}
