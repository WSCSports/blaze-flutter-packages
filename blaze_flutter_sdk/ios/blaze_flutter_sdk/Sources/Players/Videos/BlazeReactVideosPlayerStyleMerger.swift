//
//  BlazeReactVideosPlayerStyleMerger.swift
//  blaze_flutter_sdk
//
//

import BlazeSDK
import Foundation
import UIKit

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
        if let overlayVisibilityThresholdMs = customization.overlayVisibilityThresholdMs {
            merged.overlayVisibilityThreshold = TimeInterval(overlayVisibilityThresholdMs) / 1000
        }
        merged.captions = merged.captions.mergedWith(customization.captions)
        merged.statusIndicator = merged.statusIndicator.mergedWith(customization.statusIndicator)
        merged.backToLiveButton = merged.backToLiveButton.mergedWith(customization.backToLiveButton)
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
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.borderColor = UIColor(hexString: customization.borderColor) ?? merged.borderColor
        merged.borderWidth = customization.borderWidth ?? merged.borderWidth
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
        merged.captions = merged.captions.mergedWith(customization.captions)
        merged.forceRotation = merged.forceRotation.mergedWith(customization.forceRotation)
        merged.airPlay = merged.airPlay.mergedWith(customization.casting)
        merged.pictureInPicture = merged.pictureInPicture.mergedWith(customization.pictureInPicture)
        merged.seekForward = merged.seekForward.mergedWith(customization.seekForward)
        merged.seekBackward = merged.seekBackward.mergedWith(customization.seekBackward)
        merged.audio = merged.audio.mergedWith(customization.audio)
        merged.liveCatchup = merged.liveCatchup.mergedWith(customization.liveCatchup)
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

        merged.glassBackground = customization.glassBackground?.asNative ?? merged.glassBackground
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

/// The native font after a Dart font and/or size change, so a size-only change still resizes a
/// preset font. Unchanged when neither is set; nil stays nil unless a font name is given.
private func mergedFont(_ font: UIFont?,
                        size: CGFloat,
                        with customization: BlazeReactVideosPlayerTextStyle) -> UIFont? {
    guard customization.font != nil || customization.textSize != nil else { return font }
    if let font {
        return font.fontWith(customization.font, textSize: customization.textSize)
    }
    return customization.font?.fontName.flatMap { UIFont(name: $0, size: size) }
}

extension BlazeVideosPlayerTextStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerTextStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.textSize = customization.textSize ?? merged.textSize
        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.font = mergedFont(merged.font, size: merged.textSize, with: customization)
        return merged
    }
}

extension BlazeVideosPlayerStatusIndicatorStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerStatusIndicatorStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.padding = merged.padding.mergedWith(customization.padding)
        if let states = customization.streamStates {
            merged.streamStates.liveStreamState =
                merged.streamStates.liveStreamState.mergedWith(states.liveStreamState)
            merged.streamStates.upcomingStreamState =
                merged.streamStates.upcomingStreamState.mergedWith(states.upcomingStreamState)
            merged.streamStates.endedStreamState =
                merged.streamStates.endedStreamState.mergedWith(states.endedStreamState)
        }
        return merged
    }
}

extension BlazeVideosPlayerStatusIndicatorStateStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerStatusIndicatorStateStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.textStyle = merged.textStyle.mergedWith(customization.textStyle)
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.text = customization.text ?? merged.text
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.backgroundImage = UIImage.imageWith(customization.backgroundImage) ?? merged.backgroundImage
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?? merged.cornerRadiusRatio
        merged.borderColor = UIColor(hexString: customization.borderColor) ?? merged.borderColor
        merged.borderWidth = customization.borderWidth ?? merged.borderWidth
        return merged
    }
}

extension BlazeVideosPlayerBackToLiveButtonStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerBackToLiveButtonStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        merged.margins = merged.margins.mergedWith(customization.margins)
        merged.padding = merged.padding.mergedWith(customization.padding)
        if let states = customization.playbackStates {
            merged.playbackStates.atLiveEdgeState =
                merged.playbackStates.atLiveEdgeState.mergedWith(states.atLiveEdgeState)
            merged.playbackStates.behindLiveState =
                merged.playbackStates.behindLiveState.mergedWith(states.behindLiveState)
        }
        return merged
    }
}

extension BlazeVideosPlayerBackToLiveButtonStateStyle {
    func mergedWith(_ customization: BlazeReactVideosPlayerBackToLiveButtonStateStyle?) -> Self {
        guard let customization else { return self }

        var merged = self
        if let textStyle = customization.textStyle {
            merged.textStyle.textSize = textStyle.textSize ?? merged.textStyle.textSize
            merged.textStyle.textColor = UIColor(hexString: textStyle.textColor) ?? merged.textStyle.textColor
            merged.textStyle.font = mergedFont(merged.textStyle.font, size: merged.textStyle.textSize, with: textStyle)
        }
        merged.text = customization.text ?? merged.text
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?? merged.cornerRadiusRatio
        merged.glassBackground = customization.glassBackground?.asNative ?? merged.glassBackground
        return merged
    }
}
