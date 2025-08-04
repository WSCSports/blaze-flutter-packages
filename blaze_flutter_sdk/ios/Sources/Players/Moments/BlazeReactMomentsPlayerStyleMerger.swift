//
//  BlazeReactMomentsPlayerStyleMerger.swift
//  blaze_flutter_sdk
//
//

import BlazeSDK
import Foundation

extension BlazeMomentsPlayerStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.headingText = merged.headingText.mergedWith(customization.headingText)
        merged.bodyText = merged.bodyText.mergedWith(customization.bodyText)
        merged.buttons = merged.buttons.mergedWith(customization.buttons)
        merged.chips = merged.chips.mergedWith(customization.chips)
        merged.cta = merged.cta.mergedWith(customization.cta)
        merged.headerGradient = merged.headerGradient.mergedWith(customization.headerGradient)
        merged.footerGradient = merged.footerGradient.mergedWith(customization.footerGradient)
        merged.backgroundColor =
            UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.firstTimeSlide = merged.firstTimeSlide.mergedWith(customization.firstTimeSlide)
        merged.seekBar = merged.seekBar.mergedWith(customization.seekBar)
        merged.bottomComponentsAlignment = merged.bottomComponentsAlignment.mergedWith(
            customization.bottomComponentsAlignment)
        merged.playerDisplayMode = merged.playerDisplayMode.mergedWith(
            customization.playerDisplayMode)
        return merged
    }
}

extension BlazeMomentsPlayerSeekBarStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerSeekBarStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.playingState = merged.playingState.mergedWith(customization.playingState)
        merged.pausedState = merged.pausedState.mergedWith(customization.pausedState)
        merged.horizontalSpacing = customization.horizontalSpacing ?? merged.horizontalSpacing
        merged.bottomSpacing = customization.bottomSpacing ?? merged.bottomSpacing
        return merged
    }
}

extension BlazeMomentsPlayerFirstTimeSlideInstructionsStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFirstTimeSlideInstructionsStyle?)
        -> Self
    {
        guard let customization else { return self }

        var merged = self
        merged.next = merged.next.mergedWith(customization.next)
        merged.pause = merged.pause.mergedWith(customization.pause)
        merged.play = merged.play.mergedWith(customization.play)
        merged.previous = merged.previous.mergedWith(customization.previous)
        return merged
    }
}

extension BlazeMomentsPlayerFirstTimeSlideStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFirstTimeSlideStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.backgroundColor =
            UIColor(hexString: customization.backgroundColor?.colorName) ?? merged.backgroundColor
        merged.show = customization.show ?? merged.show
        merged.mainTitle = merged.mainTitle.mergedWith(customization.mainTitle)
        merged.cta = merged.cta.mergedWith(customization.cta)
        merged.subtitle = merged.subtitle.mergedWith(customization.subtitle)
        merged.instructions = merged.instructions.mergedWith(customization.instructions)
        return merged
    }
}

extension BlazeMomentsPlayerHeaderGradientStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerHeaderGradientStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.startColor = UIColor(hexString: customization.startColor) ?? merged.startColor
        merged.endColor = UIColor(hexString: customization.endColor) ?? merged.endColor
        return merged
    }
}

extension BlazeMomentsPlayerFooterGradientStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFooterGradientStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.startColor = UIColor(hexString: customization.startColor) ?? merged.startColor
        merged.endColor = UIColor(hexString: customization.endColor) ?? merged.endColor
        merged.endPositioning = merged.endPositioning.mergedWith(customization.endPositioning)
        return merged
    }
}

extension BlazeMomentsPlayerFooterGradientStyle.EndPositioning {

    func mergedWith(_ customization: BlazeReactMomentsPlayerFooterGradientStyle.EndPositioning?)
        -> Self
    {
        guard let customization else { return self }

        switch customization {
        case .bottomToContainer:
            return .bottomToContainer
        case .bottomToPlayer:
            return .bottomToPlayer
        }
    }

}

extension BlazeMomentsPlayerCtaStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerCtaStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.height = customization.height ?? merged.height
        merged.width = customization.width ?? merged.width
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        merged.layoutPositioning = merged.layoutPositioning.mergedWith(
            customization.layoutPositioning)
        merged.horizontalAlignment = merged.horizontalAlignment.mergedWith(
            customization.horizontalAlignment)
        merged.icon = UIImage.imageWith(customization.icon?.iconImage)
        return merged
    }
}

extension BlazeMomentsPlayerCtaStyle.CTAPositioning {
    func mergedWith(_ customization: BlazeReactMomentsPlayerCtaStyle.CTAPositioning?) -> Self {
        guard let customization else { return self }

        switch customization {
        case .bellowBottomButtonsBox:
            return .ctaBellowBottomButtonsBox
        case .nextToBottomButtonsBox:
            return .ctaNextToBottomButtonsBox
        }

    }
}

extension BlazeMomentsPlayerCtaStyle.CTAHorizontalAlignment {
    func mergedWith(_ customization: BlazeReactMomentsPlayerCtaStyle.CTAHorizontalAlignment?)
        -> Self
    {
        guard let customization else { return self }

        switch customization {
        case .start:
            return .leading
        case .center:
            return .center
        case .end:
            return .trailing
        case .fullAvailableWidth:
            return .fullAvailableWidth
        }
    }
}

extension BlazeMomentsPlayerChipsStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerChipsStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.ad = merged.ad.mergedWith(customization.ad)
        return merged
    }
}

extension BlazeMomentsPlayerChipStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerChipStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.backgroundColor =
            UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.text = customization.text ?? merged.text
        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.titlePadding = merged.titlePadding.mergedWith(customization.titlePadding)
        merged.isVisible = customization.isVisible ?? merged.isVisible
        return merged
    }
}

extension BlazeMomentsPlayerButtonsStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerButtonsStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.exit = merged.exit.mergedWith(customization.exit)
        merged.like = merged.like.mergedWith(customization.like)
        merged.mute = merged.mute.mergedWith(customization.mute)
        merged.play = merged.play.mergedWith(customization.play)
        merged.share = merged.share.mergedWith(customization.share)
        return merged
    }
}

extension BlazeMomentsPlayerButtonStyle {
    func mergedWith(_ customization: BlazeReactPlayerButtonStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.color = UIColor(hexString: customization.color) ?? merged.color
        merged.height = customization.height ?? merged.height
        merged.width = customization.width ?? merged.width
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.isVisibleForAds = customization.isVisibleForAds ?? merged.isVisibleForAds
        merged.customImage = merged.customImage.mergedWith(customization.customImage)
        merged.contentHorizontalAlignment = .center
        merged.contentVerticalAlignment = .center

        return merged
    }
}

extension BlazeMomentsPlayerHeadingTextStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerHeadingTextStyle?) -> Self {
        guard let customization else { return self }

        var merged = self

        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.contentSource = merged.contentSource.mergedWith(customization.contentSource)

        return merged
    }
}

extension BlazeMomentsPlayerBodyTextStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerBodyTextStyle?) -> Self {
        guard let customization else { return self }

        var merged = self

        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.contentSource = merged.contentSource.mergedWith(customization.contentSource)

        return merged
    }
}

extension BlazeMomentsPlayerHeadingTextStyle.ContentSource {

    func mergedWith(_ customization: BlazeReactMomentsPlayerHeadingTextStyle.ContentSource?) -> Self
    {
        guard let customization else { return self }

        switch customization {
        case .title:
            return .title
        case .subtitle:
            return .subtitle
        }
    }

}

extension BlazeMomentsPlayerBodyTextStyle.ContentSource {

    func mergedWith(_ customization: BlazeReactMomentsPlayerBodyTextStyle.ContentSource?) -> Self {
        guard let customization else { return self }

        switch customization {
        case .title:
            return .title
        case .subtitle:
            return .subtitle
        case .description:
            return .description
        }
    }

}
extension BlazeMomentsPlayerStyle.BottomComponentsAlignment {

    func mergedWith(_ customization: BlazeReactBottomComponentsAlignment?) -> Self {
        guard let customization else { return self }

        switch customization {
        case .relativeToContainer:
            return .relativeToContainer
        case .relativeToPlayer:
            return .relativeToPlayer
        case .fitCtaBelowPlayer:
            return .fitCTABelowPlayer
        }
    }

}

extension BlazePlayerDisplayMode {

    func mergedWith(_ customization: BlazeReactPlayerDisplayMode?) -> Self {
        guard let customization else { return self }

        switch customization {
        case .fixedRatio9x16:
            return .fixedRatio_9_16
        case .resizeAspectFillCenterCrop:
            return .resizeAspectFillCenterCrop
        }
    }
}

extension BlazeSDK.BlazeMomentsPlayerButtonCustomImageStates? {

    func mergedWith(_ customization: BlazeReactPlayerButtonCustomImageStates?) -> Self {
        guard let customization else { return self }

        guard let defaultImage = UIImage.imageWith(customization.unselectedImage) else {
            return self
        }

        return .init(
            default: defaultImage,
            selected: UIImage.imageWith(customization.selectedImage))
    }

}
