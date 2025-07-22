//
//  BlazeReactStoriesPlayerStyleMerger.swift
//  blaze_flutter_sdk
//
//  Copied exactly from React Native iOS implementation
//

import Foundation
import BlazeSDK

extension BlazeStoryPlayerStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.title = merged.title.mergedWith(customization.title)
        merged.lastUpdate = merged.lastUpdate.mergedWith(customization.lastUpdate)
        merged.buttons = merged.buttons.mergedWith(customization.buttons)
        merged.chips = merged.chips.mergedWith(customization.chips)
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.cta = merged.cta.mergedWith(customization.cta)
        merged.headerGradient = merged.headerGradient.mergedWith(customization.headerGradient)
        merged.firstTimeSlide = merged.firstTimeSlide.mergedWith(customization.firstTimeSlide)
        merged.progressBar = merged.progressBar.mergedWith(customization.progressBar)

        return merged
    }
}

extension BlazeStoryPlayerProgressBarStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerProgressBarStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.progressColor = UIColor(hexString: customization.progressColor) ?? merged.progressColor
        return merged
    }
}

extension BlazeStoryPlayerHeaderGradientStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerHeaderGradientStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.startColor = UIColor(hexString: customization.startColor) ?? merged.startColor
        merged.endColor = UIColor(hexString: customization.endColor) ?? merged.endColor
        return merged
    }
}

extension BlazeStoryPlayerCtaStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerCtaStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        return merged
    }
}

extension BlazeStoryPlayerChipsStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerChipsStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.live = merged.live.mergedWith(customization.live)
        merged.ad = merged.live.mergedWith(customization.ad)
        return merged
    }
}

extension BlazeStoryPlayerChipStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerChipStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.titlePadding = merged.titlePadding.mergedWith(customization.titlePadding)
        merged.text = customization.text ?? merged.text
        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.isVisible = customization.isVisible ?? merged.isVisible

        return merged
    }
}

extension BlazeStoryPlayerButtonsStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerButtonsStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.mute = merged.mute.mergedWith(customization.mute)
        merged.exit = merged.exit.mergedWith(customization.exit)
        merged.share = merged.share.mergedWith(customization.share)
        return merged
    }
}

extension BlazeStoryPlayerButtonStyle {
    func mergedWith(_ customization: BlazeReactPlayerButtonStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.width = customization.width ?? merged.width
        merged.height = customization.height ?? merged.height
        merged.color = UIColor(hexString: customization.color) ?? merged.color
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.isVisibleForAds = customization.isVisibleForAds ?? merged.isVisibleForAds
        merged.customImage = merged.customImage.mergedWith(customization.customImage)
        merged.contentHorizontalAlignment = .center
        merged.contentVerticalAlignment = .center

        return merged
    }
}

extension BlazeSDK.BlazeStoryPlayerButtonCustomImageStates? {
    
    func mergedWith(_ customization: BlazeReactPlayerButtonCustomImageStates?) -> Self {
        guard let customization else { return self }
        
        guard let defaultImage = UIImage.imageWith(customization.unselectedImage) else { return self }
        
        return .init(default: defaultImage,
                     selected: UIImage.imageWith(customization.selectedImage))
    }
    
}

extension BlazeStoryPlayerTitleTextStyle{
    func mergedWith(_ customization: BlazeReactStoryPlayerTitleTextStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.isVisible = customization.isVisible ?? merged.isVisible
        return merged
    }
}

extension BlazeStoryPlayerLastUpdateTextStyle{
    func mergedWith(_ customization: BlazeReactStoryPlayerLastUpdateTextStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.textCase = merged.textCase.mergedWith(customization.textCase)
        merged.isVisible = customization.isVisible ?? merged.isVisible
        return merged
    }
}

extension BlazeStoryPlayerFirstTimeSlideStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerFirstTimeSlideStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor?.colorName) ?? merged.backgroundColor
        merged.show = customization.show ?? merged.show
        merged.mainTitle = merged.mainTitle.mergedWith(customization.mainTitle)
        merged.cta = merged.cta.mergedWith(customization.cta)
        merged.subtitle = merged.subtitle.mergedWith(customization.subtitle)
        merged.instructions = merged.instructions.mergedWith(customization.instructions)
        return merged
    }
}

extension BlazeStoryPlayerFirstTimeSlideInstructionsStyle {
    func mergedWith(_ customization: BlazeReactStoryPlayerFirstTimeSlideInstructionsStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.backward = merged.backward.mergedWith(customization.backward)
        merged.forward = merged.forward.mergedWith(customization.forward)
        merged.pause = merged.pause.mergedWith(customization.pause)
        merged.transition = merged.transition.mergedWith(customization.transition)
        return merged
    }
} 