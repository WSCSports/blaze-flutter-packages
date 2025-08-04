//
//  SharedPlayerMerger.swift
//  blaze_flutter_sdk
//
//

import BlazeSDK
import Foundation

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
