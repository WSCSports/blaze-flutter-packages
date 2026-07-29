//
//  BlazeReactPlayerTabsStyleMerger.swift
//  blaze_flutter_sdk
//
//  Merges a Dart-supplied `BlazeReactPlayerTabsStyle` onto a native `BlazePlayerTabsStyle`
//  (typically `.base()`). Every field is optional; omitted fields keep their native default.
//  Mirrors the player-style mergers.
//

import BlazeSDK
import Foundation
import UIKit

extension BlazePlayerTabsStyle {

    func mergedWith(_ customization: BlazeReactPlayerTabsStyle?) -> BlazePlayerTabsStyle {
        guard let customization else { return self }

        var merged = self

        merged.padding = merged.padding.mergedWith(customization.padding)

        if let gradient = customization.gradient {
            merged.gradient.isVisible = gradient.isVisible ?? merged.gradient.isVisible
            merged.gradient.startColor = UIColor(hexString: gradient.startColor) ?? merged.gradient.startColor
            merged.gradient.middleColor = UIColor(hexString: gradient.middleColor) ?? merged.gradient.middleColor
            merged.gradient.endColor = UIColor(hexString: gradient.endColor) ?? merged.gradient.endColor
        }

        if let icon = customization.icon, var iconStyle = merged.icon {
            iconStyle.iconTint = UIColor(hexString: icon.iconTint) ?? iconStyle.iconTint
            iconStyle.padding = icon.padding ?? iconStyle.padding
            merged.icon = iconStyle
        }

        merged.selectedTabState = merged.selectedTabState.mergedWith(customization.selectedTabState)
        merged.unselectedTabState = merged.unselectedTabState.mergedWith(customization.unselectedTabState)

        return merged
    }
}

extension BlazePlayerTabItemStyle {

    func mergedWith(_ customization: BlazeReactPlayerTabItemStyle?) -> BlazePlayerTabItemStyle {
        guard let customization else { return self }

        var merged = self

        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.letterSpacing = customization.letterSpacing ?? merged.letterSpacing
        // iOS embeds the size inside `UIFont` (no standalone `textSize`, unlike Android), handled by `fontWith`.
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)

        return merged
    }
}

extension BlazeSDK.BlazePlayerTabItemCustomImageStates? {

    func mergedWith(_ customization: BlazeReactPlayerButtonCustomImageStates?) -> Self {
        guard let customization else { return self }

        let selectedImage = UIImage.imageWith(customization.selectedImage) ?? self?.selectedImage
        let unselectedImage = UIImage.imageWith(customization.unselectedImage) ?? self?.unselectedImage

        guard selectedImage != nil || unselectedImage != nil else { return self }

        return .init(selectedImage: selectedImage, unselectedImage: unselectedImage)
    }
}
