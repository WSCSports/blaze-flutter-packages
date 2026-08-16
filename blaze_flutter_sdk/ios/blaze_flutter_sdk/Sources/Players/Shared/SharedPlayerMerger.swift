//
//  SharedPlayerMerger.swift
//  blaze_flutter_sdk
//
//

import BlazeSDK
import Foundation
import UIKit

extension BlazeFirstTimeSlideInstructionStyle {
    func mergedWith(_ customization: BlazeReactFirstTimeSlideInstructionStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.descriptionText = merged.descriptionText.mergedWith(customization.descriptionText)
        merged.headerText = merged.headerText.mergedWith(customization.headerText)
        return merged
    }
}

extension BlazeFirstTimeSlideTextStyle {
    func mergedWith(_ customization: BlazeReactFirstTimeSlideTextStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.text = customization.text ?? merged.text
        merged.textColor =
            UIColor(hexString: customization.textColor?.colorName) ?? merged.textColor
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        return merged
    }
}

extension BlazeCaptionsStyle {
    // Styles the rendered captions text (font, size, on-screen position). Each positioning axis
    // is applied independently - a customization supplying only xPosition leaves yPosition
    // untouched. `textSize` is Android-only: on iOS the caption size is baked into `font` itself,
    // so it's intentionally dropped here (matches RN's BlazeReactCaptionsStyle merge).
    func mergedWith(_ customization: BlazeReactCaptionsStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.font = merged.font?.fontWith(customization.font, textSize: nil)

        if let xPosition = customization.positioning?.xPosition,
            let parsed = BlazeCaptionsXPosition.from(dictionary: xPosition.anyHashableDict)
        {
            merged.positioning.xPosition = parsed
        }
        if let yPosition = customization.positioning?.yPosition,
            let parsed = BlazeCaptionsYPosition.from(dictionary: yPosition.anyHashableDict)
        {
            merged.positioning.yPosition = parsed
        }

        return merged
    }
}

extension BlazeFirstTimeSlideCTAStyle {
    func mergedWith(_ customization: BlazeReactFirstTimeSlideCTAStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.backgroundColor =
            UIColor(hexString: customization.backgroundColor?.colorName) ?? merged.backgroundColor
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.title = customization.title ?? merged.title
        merged.textColor =
            UIColor(hexString: customization.textColor?.colorName) ?? merged.textColor
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        return merged
    }
}

extension BlazeReactCustomActionButton {
    func toNativeStoryCustomActionButton() -> BlazeStoryPlayerCustomActionButton? {
        guard let customParams else { return nil }

        let parsedVisibilityCondition = customParams.visibilityCondition.flatMap {
            BlazePlayerCustomActionButtonParams.VisibilityCondition.from(dictionary: $0.anyHashableDict)
        }
        let params = BlazePlayerCustomActionButtonParams(
            id: customParams.id,
            appMetadata: customParams.appMetadata?.anyHashableDict ?? [:],
            name: customParams.name,
            visibilityCondition: parsedVisibilityCondition
        )

        var button = BlazeStoryPlayerCustomActionButton(customParams: params)
        button.style = button.style.mergedWith(style)
        return button
    }

    func toNativeMomentsCustomActionButton() -> BlazeMomentsPlayerCustomActionButton? {
        guard let customParams else { return nil }

        let parsedVisibilityCondition = customParams.visibilityCondition.flatMap {
            BlazePlayerCustomActionButtonParams.VisibilityCondition.from(dictionary: $0.anyHashableDict)
        }
        let params = BlazePlayerCustomActionButtonParams(
            id: customParams.id,
            appMetadata: customParams.appMetadata?.anyHashableDict ?? [:],
            name: customParams.name,
            visibilityCondition: parsedVisibilityCondition
        )

        var button = BlazeMomentsPlayerCustomActionButton(customParams: params)
        button.style = button.style.mergedWith(style)
        return button
    }
}

extension BlazeSeekBarStyle {
    func mergedWith(_ customization: BlazeReactSeekBarStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.backgroundColor =
            UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.progressColor =
            UIColor(hexString: customization.progressColor) ?? merged.progressColor
        merged.height = customization.height ?? merged.height
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.thumbColor = UIColor(hexString: customization.thumbColor) ?? merged.thumbColor
        merged.thumbImage = UIImage.imageWith(customization.thumbImage) ?? merged.thumbImage
        merged.thumbSize = customization.thumbSize ?? merged.thumbSize
        merged.isThumbVisible = customization.isThumbVisible ?? merged.isThumbVisible
        return merged
    }
}
