//
//  BlazeReactVideosPlayerStyleMerger.swift
//  blaze_flutter_sdk
//
//

import BlazeSDK
import Foundation

extension BlazeVideosPlayerStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.headingText = merged.headingText.mergedWith(customization.headingText)
        merged.buttons = merged.buttons.mergedWith(customization.buttons)
        merged.cta = merged.cta.mergedWith(customization.cta)
        merged.backgroundColor =
            UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.seekBar = merged.seekBar.mergedWith(customization.seekBar)
        return merged
    }
}

extension BlazeVideosPlayerSeekBarStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerSeekBarStyle?) -> Self {
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

extension BlazeVideosPlayerCtaStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerCtaStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.height = customization.height ?? merged.height
        merged.width = customization.width ?? merged.width
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        merged.icon = UIImage.imageWith(customization.icon?.iconImage)
        return merged
    }
}

extension BlazeVideosPlayerButtonsStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerButtonsStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.exit = merged.exit.mergedWith(customization.exit)
        merged.like = merged.like.mergedWith(customization.like)
        merged.mute = merged.mute.mergedWith(customization.mute)
        merged.playPause = merged.playPause.mergedWith(customization.playPause)
        merged.share = merged.share.mergedWith(customization.share)
        merged.previous = merged.previous.mergedWith(customization.previous)
        merged.next = merged.next.mergedWith(customization.next)
        return merged
    }
}

extension BlazeVideosPlayerButtonStyle {
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

extension BlazeVideosPlayerHeadingTextStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerHeadingTextStyle?) -> Self {
        guard let customization else { return self }

        var merged = self

        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.font = merged.font.fontWith(customization.font, textSize: customization.textSize)
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.contentSource = merged.contentSource.mergedWith(customization.contentSource)
        merged.numberOfLines = customization.numberOfLines ?? merged.numberOfLines

        return merged
    }
}

extension BlazeVideosPlayerHeadingTextStyle.ContentSource {

    func mergedWith(_ customization: BlazeReactVideosPlayerHeadingTextStyle.ContentSource?) -> Self
    {
        guard let customization else { return self }

        switch customization {
        case .title:
            return .title
        }
    }

}

extension BlazeSDK.BlazeVideosPlayerButtonCustomImageStates? {

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
