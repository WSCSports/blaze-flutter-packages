//
//  BlazeReactMomentsPlayerStyleMerger.swift
//  blaze_flutter_sdk
//
//

import BlazeSDK
import Foundation
import UIKit

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
        merged.followEntity = merged.followEntity.mergedWith(customization.followEntity)
        merged.captions = merged.captions.mergedWith(customization.captions)
        return merged
    }
}

extension BlazeMomentsPlayerFollowEntityStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFollowEntityStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.followState = merged.followState.mergedWith(customization.followState)
        merged.unfollowState = merged.unfollowState.mergedWith(customization.unfollowState)
        merged.entityType = merged.entityType.mergedWith(customization.entityType)
        return merged
    }
}

extension BlazeMomentsPlayerFollowEntityStateStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFollowEntityStateStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.avatar = merged.avatar.mergedWith(customization.avatar)
        merged.chip = merged.chip.mergedWith(customization.chip)
        return merged
    }
}

extension BlazeMomentsPlayerFollowEntityAvatarStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFollowEntityAvatarStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.borderWidth = customization.borderWidth ?? merged.borderWidth
        merged.borderColor = UIColor(hexString: customization.borderColor) ?? merged.borderColor
        return merged
    }
}

extension BlazeMomentsPlayerFollowEntityChipStyle {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFollowEntityChipStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.backgroundColor =
            UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.iconColor = UIColor(hexString: customization.iconColor) ?? merged.iconColor
        merged.contentSource = merged.contentSource.mergedWith(customization.contentSource)
        return merged
    }
}

extension BlazeMomentsPlayerFollowEntityChipContentSource {
    func mergedWith(_ customization: BlazeReactMomentsPlayerFollowEntityChipStyle.ContentSource?)
        -> Self
    {
        guard let customization else { return self }

        switch customization {
        case .icon:
            return .icon
        case .text:
            return .text
        }
    }
}

extension BlazeFollowEntityType {
    func mergedWith(_ customization: BlazeReactFollowEntityType?) -> Self {
        guard let customization, customization.type != nil else { return self }
        return Self.fromReact(customization) ?? self
    }

    private static func fromReact(_ react: BlazeReactFollowEntityType) -> Self? {
        guard let type = react.type else { return nil }
        let fallback = react.fallbackType.flatMap { fromReact($0) }

        switch type {
        case .firstAvailable:
            return .firstAvailable
        case .player:
            return .player(fallbackType: fallback)
        case .team:
            return .team(fallbackType: fallback)
        case .property:
            return .property(fallbackType: fallback)
        }
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
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.borderColor = UIColor(hexString: customization.borderColor) ?? merged.borderColor
        merged.borderWidth = customization.borderWidth ?? merged.borderWidth
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
        merged.captions = merged.captions.mergedWith(customization.captions)
        merged.seekForward = merged.seekForward.mergedWith(customization.seekForward)
        merged.seekBackward = merged.seekBackward.mergedWith(customization.seekBackward)
        merged.search = merged.search.mergedWith(customization.search)

        if let customActionButtons = customization.customActionButtons, !customActionButtons.isEmpty {
            let nativeButtons = customActionButtons.compactMap { $0.toNativeMomentsCustomActionButton() }
            if !nativeButtons.isEmpty {
                merged.setBottomStackCustomActionButtons(nativeButtons)
            }
        }

        merged.shouldPreserveLikesCountBelowThreshold =
            customization.shouldPreserveLikesCountBelowThreshold
            ?? merged.shouldPreserveLikesCountBelowThreshold

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
