import Foundation
import BlazeSDK

extension BlazeWidgetLayout {
    func mergedWith(_ customization: BlazeReactWidgetLayout?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.horizontalItemsSpacing = customization.horizontalItemsSpacing ?? merged.horizontalItemsSpacing
        merged.verticalItemsSpacing = customization.verticalItemsSpacing ?? merged.verticalItemsSpacing
        merged.itemRatio = customization.itemRatio ?? merged.itemRatio
        merged.columns = customization.columns ?? merged.columns
        merged.maxDisplayItemsCount = customization.maxDisplayItemsCount ?? merged.maxDisplayItemsCount
        merged.widgetItemStyle = merged.widgetItemStyle.mergedWith(customization.widgetItemStyle)
        merged.margins = merged.margins.mergedWith(customization.margins)
        return merged
    }
}

extension BlazeWidgetItemStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.title = merged.title.mergedWith(customization.title)
        merged.image = merged.image.mergedWith(customization.image)
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?? merged.cornerRadiusRatio
        merged.insets = merged.insets.mergedWith(customization.margins)
        merged.statusIndicator = merged.statusIndicator.mergedWith(customization.statusIndicator)
        merged.badge = merged.badge.mergedWith(customization.badge)
        merged.durationElement = merged.durationElement.mergedWith(customization.durationElement)
        
        return merged
    }
}

extension BlazeWidgetItemTitleStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemTitleStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.readState = merged.readState.mergedWith(customization.readState)
        merged.unreadState = merged.unreadState.mergedWith(customization.unreadState)
        merged.position = merged.position.mergedWith(customization.position)
        merged.insets = merged.insets.mergedWith(customization.margins)
        return merged
    }
}

extension BlazeObjectPositioning {
    func mergedWith(_ customization: BlazeReactObjectPositioning?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.xPosition = merged.xPosition.mergedWith(customization.xPosition)
        merged.yPosition = merged.yPosition.mergedWith(customization.yPosition)

        return merged
    }
}

extension BlazeObjectXPosition {
    func mergedWith(_ customization: BlazeReactObjectXPosition?) -> Self {
        guard let customization else { return self }
        var results = BlazeSDK.BlazeObjectXPosition.centerX(offset: 0)
        
        switch customization {
        case .leadingToLeading:
            results = BlazeSDK.BlazeObjectXPosition.leadingToLeading(offset: 0)
        case .leadingToTrailing:
            results = BlazeSDK.BlazeObjectXPosition.leadingToTrailing(offset: 0)
        case .trailingToLeading:
            results = BlazeSDK.BlazeObjectXPosition.trailingToLeading(offset: 0)
        case .trailingToTrailing:
            results = BlazeSDK.BlazeObjectXPosition.trailingToTrailing(offset: 0)
        case .centerX:
            results = BlazeSDK.BlazeObjectXPosition.centerX(offset: 0)
        case .centerToLeading:
            results = BlazeSDK.BlazeObjectXPosition.centerToLeading(offset: 0)
        case .centerToTrailing:
            results = BlazeSDK.BlazeObjectXPosition.centerToTrailing(offset: 0)
        }
        
        return results
    }
}


extension BlazeObjectYPosition {
    func mergedWith(_ customization: BlazeReactObjectYPosition?) -> Self {
        guard let customization else { return self }
        var results = BlazeSDK.BlazeObjectYPosition.centerY(offset: 0)
        
        switch customization {
        case .topToBottom:
            results = BlazeSDK.BlazeObjectYPosition.topToBottom(offset: 0)
        case .bottomToBottom:
            results = BlazeSDK.BlazeObjectYPosition.topToBottom(offset: 0)
        case .bottomToTop:
            results = BlazeSDK.BlazeObjectYPosition.bottomToTop(offset: 0)
        case .centerToTop:
            results = BlazeSDK.BlazeObjectYPosition.centerToTop(offset: 0)
        case .centerY:
            results = BlazeSDK.BlazeObjectYPosition.centerY(offset: 0)
        case .centerToBottom:
            results = BlazeSDK.BlazeObjectYPosition.centerToBottom(offset: 0)
        case .topToTop:
            results = BlazeSDK.BlazeObjectYPosition.topToTop(offset: 0)
        }
        
        return results
    }
}

extension BlazeWidgetItemTextStyle {
    func mergedWith(_ customization: BlazeReactTitleStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.font = merged.font.fontWith(customization.font,
                                           textSize: customization.textSize)
        merged.letterSpacing = customization.letterSpacing ?? merged.letterSpacing
        merged.textColor = UIColor(hexString: customization.textColor) ?? merged.textColor
        merged.lineHeight = customization.lineHeight ?? merged.lineHeight
        merged.numberOfLines = customization.maxLines ?? merged.numberOfLines
        merged.alignment = merged.alignment.mergedWith(customization.textAlign)
        
        return merged
    }
}

extension BlazeWidgetItemImageStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemImageStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.position = merged.position.mergedWith(customization.position)
        merged.width = customization.width ?? merged.width
        merged.height = customization.height ?? merged.height
        merged.ratio = customization.ratio ?? merged.ratio
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?? merged.cornerRadiusRatio
        merged.border = merged.border.mergedWith(customization.border)
        merged.thumbnailType = merged.thumbnailType.mergedWith(customization.thumbnailType)
        merged.insets = merged.insets.mergedWith(customization.margins)
        merged.animatedThumbnail = merged.animatedThumbnail.mergedWith(customization.animatedThumbnail)
        merged.gradientOverlay = merged.gradientOverlay.mergedWith(customization.gradientOverlay)
        
        return merged
    }
}

extension BlazeSDK.BlazeWidgetItemImageGradientOverlayStyle {
    
    func mergedWith(_ customization: BlazeReactWidgetItemImageGradientOverlayStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.position = merged.position.mergedWith(customization.position)
        merged.startColor = UIColor(hexString: customization.startColor) ?? merged.startColor
        merged.endColor = UIColor(hexString: customization.endColor) ?? merged.endColor
        
        return merged
    }
}

extension BlazeSDK.BlazeWidgetItemImageGradientOverlayStyle.Position {
    func mergedWith(_ customization: BlazeReactWidgetItemImageGradientOverlayStyle.Position?) -> Self {
        guard let customization else { return self }
        
        let result: Self
        switch customization {
        case .top:
            result = .top
        case .center:
            result = .center
        case .bottom:
            result = .bottom
        }
        
        return result
    }
}

extension BlazeWidgetItemImageAnimatedThumbnailStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemAnimatedThumbnailStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.horizontalAnimationTriggerPercentage = customization.horizontalAnimationTriggerPercentage ?? merged.horizontalAnimationTriggerPercentage
        merged.isEnabled = customization.isEnabled ?? merged.isEnabled
        
        return merged
    }
}

extension BlazeWidgetItemImageStyle.Position {
    func mergedWith(_ customization: BlazeReactWidgetItemImagePosition?) -> Self {
        guard let customization else { return self }
        
        let result: Self
        switch customization {
        case .topStart:
            result = .topLeading
        case .topCenter:
            result = .topCenter
        case .topEnd:
            result = .topTrailing
        case .centerStart:
            result = .centerLeading
        case .center:
            result = .center
        case .centerEnd:
            result = .centerTrailing
        case .bottomStart:
            result = .bottomLeading
        case .bottomCenter:
            result = .bottomCenter
        case .bottomEnd:
            result = .bottomTrailing
        }
        
        return result
    }
}

extension BlazeWidgetItemImageContainerBorderStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemImageContainerBorderStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.liveReadState = merged.liveReadState.mergedWith(customization.liveReadState)
        merged.liveUnreadState = merged.liveUnreadState.mergedWith(customization.liveUnreadState)
        merged.readState = merged.readState.mergedWith(customization.readState)
        merged.unreadState = merged.unreadState.mergedWith(customization.unreadState)
        
        return merged
    }
}

extension BlazeWidgetItemBadgeStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemBadgeStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.position = merged.position.mergedWith(customization.position)
        merged.insets = merged.insets.mergedWith(customization.margins)
        merged.liveUnreadState = merged.liveUnreadState.mergedWith(customization.liveUnreadState)
        merged.liveReadState = merged.liveReadState.mergedWith(customization.liveReadState)
        merged.unreadState = merged.unreadState.mergedWith(customization.unreadState)
        merged.readState = merged.readState.mergedWith(customization.readState)
        
        return merged
    }
}

extension BlazeWidgetItemBadgeStateStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemBadgeStateStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.backgroundImage = UIImage.imageWith(customization.backgroundImage) ?? merged.backgroundImage
        merged.textStyle = merged.textStyle.mergedWith(customization.textStyle)
        merged.text = customization.text ?? merged.text
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?? merged.cornerRadiusRatio
        merged.borderColor = UIColor(hexString: customization.borderColor) ?? merged.borderColor
        merged.borderWidth = customization.borderWidth ?? merged.borderWidth
        merged.width = customization.width ?? merged.width
        merged.height = customization.height ?? merged.height
        
        return merged
    }
}

extension BlazeWidgetItemStatusIndicatorStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemStatusIndicatorStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.position = merged.position.mergedWith(customization.position)
        merged.insets = merged.insets.mergedWith(customization.margins)
        merged.statusTitlePadding = merged.statusTitlePadding.mergedWith(customization.statusTitlePadding)
        merged.liveUnreadState = merged.liveUnreadState.mergedWith(customization.liveUnreadState)
        merged.liveReadState = merged.liveReadState.mergedWith(customization.liveReadState)
        merged.unreadState = merged.unreadState.mergedWith(customization.unreadState)
        merged.readState = merged.readState.mergedWith(customization.readState)
        
        return merged
    }
}

extension BlazeWidgetItemStatusIndicatorStateStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemStatusIndicatorStateStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.backgroundImage = UIImage.imageWith(customization.backgroundImage) ?? merged.backgroundImage
        merged.textStyle = merged.textStyle.mergedWith(customization.textStyle)
        merged.text = customization.text ?? merged.text
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?? merged.cornerRadiusRatio
        merged.borderColor = UIColor(hexString: customization.borderColor) ?? merged.borderColor
        merged.borderWidth = customization.borderWidth ?? merged.borderWidth
        
        return merged
    }
}

extension BlazeWidgetItemImageContainerBorderStateStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemImageContainerBorderStateStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.color = UIColor(hexString: customization.color) ?? merged.color
        merged.insets = customization.margin ?? merged.insets
        merged.width = customization.width ?? merged.width
        
        return merged
    }
}

extension BlazeWidgetItemImageStyle.ThumbnailType {
    func mergedWith(_ customization: BlazeReactThumbnailType?) -> Self {
        guard let customization else { return self }
        
        let result: BlazeWidgetItemImageStyle.ThumbnailType
        switch customization {
        case .squareIcon:
            result = .squareIcon
        case .verticalTwoByThree:
            result = .verticalTwoByThree
        case .custom:
            result = .custom
        }
        
        return result
    }
}

extension BlazeWidgetItemStyleOverrides {
    func mergedWith(_ customization: BlazeReactWidgetStylesOverrides?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.statusIndicator = merged.statusIndicator?.mergedWith(customization.statusIndicator)
        merged.imageBorder = merged.imageBorder?.mergedWith(customization.imageBorder)
        merged.badge = merged.badge?.mergedWith(customization.badge)
        
        return merged
    }
}

extension BlazeWidgetItemDurationElementStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemDurationElementStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.position = merged.position.mergedWith(customization.position)
        merged.insets = merged.insets.mergedWith(customization.insets)
        merged.contentPadding = merged.contentPadding.mergedWith(customization.contentPadding)
        merged.icon = UIImage.imageWith(customization.icon) ?? merged.icon
        merged.liveUnreadState = merged.liveUnreadState.mergedWith(customization.liveUnreadState)
        merged.liveReadState = merged.liveReadState.mergedWith(customization.liveReadState)
        merged.unreadState = merged.unreadState.mergedWith(customization.unreadState)
        merged.readState = merged.readState.mergedWith(customization.readState)
        
        return merged
    }
}

extension BlazeWidgetItemDurationElementStateStyle {
    func mergedWith(_ customization: BlazeReactWidgetItemDurationElementStyle.BlazeReactWidgetItemDurationElementStateStyle?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        
        merged.isVisible = customization.isVisible ?? merged.isVisible
        merged.backgroundColor = UIColor(hexString: customization.backgroundColor) ?? merged.backgroundColor
        merged.backgroundImage = UIImage.imageWith(customization.backgroundImage) ?? merged.backgroundImage
        merged.textStyle = merged.textStyle.mergedWith(customization.textStyle)
        merged.cornerRadius = customization.cornerRadius ?? merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?? merged.cornerRadiusRatio
        merged.borderColor = UIColor(hexString: customization.borderColor) ?? merged.borderColor
        merged.borderWidth = customization.borderWidth ?? merged.borderWidth
        
        return merged
    }
} 