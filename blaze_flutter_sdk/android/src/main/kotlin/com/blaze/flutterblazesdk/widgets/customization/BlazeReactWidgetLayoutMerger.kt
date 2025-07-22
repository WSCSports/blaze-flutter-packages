package com.blaze.flutterblazesdk.widgets.customization

import android.content.Context
import com.blaze.blazesdk.style.shared.models.BlazeObjectPositioning
import com.blaze.blazesdk.style.shared.models.BlazeObjectXPosition
import com.blaze.blazesdk.style.shared.models.BlazeObjectYPosition
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemBadgeStateStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemBadgeStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemImageAnimatedThumbnailStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemImageContainerBorderStateStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemImageContainerBorderStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemImageGradientOverlayStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemImageStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemStatusIndicatorStateStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemStatusIndicatorStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemTextStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemTitleStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout
import com.blaze.flutterblazesdk.utils.parsing.gravityMergedWith
import com.blaze.flutterblazesdk.utils.parsing.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.safeParseColor
import com.blaze.flutterblazesdk.utils.parsing.toFontResId
import com.blaze.flutterblazesdk.utils.parsing.toImageResId

fun BlazeWidgetLayout.mergedWith(
        customization: BlazeReactWidgetLayout?,
        context: Context
): BlazeWidgetLayout {
        customization ?: return this

        val merged = this

        merged.horizontalItemsSpacing =
                customization.horizontalItemsSpacing?.blazeDp ?: merged.horizontalItemsSpacing
        merged.verticalItemsSpacing =
                customization.verticalItemsSpacing?.blazeDp ?: merged.verticalItemsSpacing
        merged.itemRatio = customization.itemRatio ?: merged.itemRatio
        merged.columns = customization.columns ?: merged.columns
        merged.maxDisplayItemsCount =
                customization.maxDisplayItemsCount ?: merged.maxDisplayItemsCount
        merged.widgetItemStyle =
                this.widgetItemStyle.mergedWith(customization.widgetItemStyle, context)
        merged.margins = this.margins.mergedWith(customization.margins)
        return merged
}

fun BlazeWidgetItemStyle.mergedWith(
        customization: BlazeReactWidgetItemStyle?,
        context: Context
): BlazeWidgetItemStyle {
        customization ?: return this

        val merged = this

        merged.title = this.title.mergedWith(customization.title, context)
        merged.image = this.image.mergedWith(customization.image)
        merged.backgroundColor =
                safeParseColor(customization.backgroundColor) ?: this.backgroundColor
        merged.cornerRadius = customization.cornerRadius?.toInt()?.blazeDp ?: this.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?: this.cornerRadiusRatio
        merged.padding = this.padding.mergedWith(customization.margins)
        merged.statusIndicator =
                this.statusIndicator.mergedWith(customization.statusIndicator, context = context)
        merged.badge = this.badge.mergedWith(customization = customization.badge, context = context)

        return merged
}

fun BlazeWidgetItemStatusIndicatorStyle.mergedWith(
        customization: BlazeReactWidgetItemStatusIndicatorStyle?,
        context: Context
): BlazeWidgetItemStatusIndicatorStyle {
        customization ?: return this

        val merged = this

        merged.isVisible = customization.isVisible ?: this.isVisible
        merged.position = this.position.mergedWith(customization.position)
        merged.margins = this.margins.mergedWith(customization.margins)
        merged.padding = this.padding.mergedWith(customization.statusTitlePadding)
        merged.liveUnreadState =
                this.liveUnreadState.mergedWith(customization.liveUnreadState, context = context)
        merged.liveReadState =
                this.liveReadState.mergedWith(customization.liveReadState, context = context)
        merged.unreadState =
                this.unreadState.mergedWith(customization.unreadState, context = context)
        merged.readState = this.readState.mergedWith(customization.readState, context = context)

        return merged
}

fun BlazeWidgetItemStatusIndicatorStateStyle.mergedWith(
        customization: BlazeReactWidgetItemStatusIndicatorStateStyle?,
        context: Context
): BlazeWidgetItemStatusIndicatorStateStyle {
        customization ?: return this

        val merged = this

        merged.isVisible = customization.isVisible ?: merged.isVisible
        merged.backgroundColor =
                safeParseColor(customization.backgroundColor) ?: merged.backgroundColor
        merged.backgroundImageResId = customization.backgroundImage?.toImageResId(context)
        merged.textStyle = this.textStyle.mergedWith(customization.textStyle, context)
        merged.text = customization.text ?: merged.text
        merged.cornerRadius = customization.cornerRadius?.toInt()?.blazeDp ?: merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?: merged.cornerRadiusRatio
        merged.borderColor = safeParseColor(customization.borderColor) ?: merged.borderColor
        merged.borderWidth = customization.borderWidth?.blazeDp ?: merged.borderWidth

        return merged
}

fun BlazeWidgetItemTitleStyle.mergedWith(
        customization: BlazeReactWidgetItemTitleStyle?,
        context: Context
): BlazeWidgetItemTitleStyle {
        customization ?: return this

        val merged = this

        merged.isVisible = customization.isVisible ?: this.isVisible
        merged.readState = this.readState.mergedWith(customization.readState, context)
        merged.unreadState = this.unreadState.mergedWith(customization.unreadState, context)
        merged.margins = this.margins.mergedWith(customization.margins)
        merged.position = this.position.mergedWith(customization.position)

        return merged
}

fun BlazeWidgetItemBadgeStyle.mergedWith(
        customization: BlazeReactWidgetItemBadgeStyle?,
        context: Context
): BlazeWidgetItemBadgeStyle {

        customization ?: return this

        val merged = this

        merged.isVisible = customization.isVisible ?: this.isVisible
        merged.position = this.position.mergedWith(customization.position)
        merged.margins = this.margins.mergedWith(customization.margins)
        merged.padding = this.padding.mergedWith(customization.titlePadding)
        merged.liveUnreadState =
                this.liveUnreadState.mergedWith(customization.liveUnreadState, context = context)
        merged.liveReadState =
                this.liveReadState.mergedWith(customization.liveReadState, context = context)
        merged.unreadState =
                this.unreadState.mergedWith(customization.unreadState, context = context)
        merged.readState = this.readState.mergedWith(customization.readState, context = context)

        return merged
}

fun BlazeWidgetItemBadgeStateStyle.mergedWith(
        customization: BlazeReactWidgetItemBadgeStateStyle?,
        context: Context
): BlazeWidgetItemBadgeStateStyle {
        customization ?: return this

        val merged = this

        merged.isVisible = customization.isVisible ?: merged.isVisible
        merged.width = customization.width?.blazeDp ?: this.width
        merged.height = customization.height?.blazeDp ?: this.height
        merged.backgroundColor =
                safeParseColor(customization.backgroundColor) ?: merged.backgroundColor
        merged.backgroundImageResId = customization.backgroundImage?.toImageResId(context)
        merged.textStyle = this.textStyle.mergedWith(customization.textStyle, context)
        merged.text = customization.text ?: merged.text
        merged.cornerRadius = customization.cornerRadius?.toInt()?.blazeDp ?: merged.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?: merged.cornerRadiusRatio
        merged.borderColor = safeParseColor(customization.borderColor) ?: merged.borderColor
        merged.borderWidth = customization.borderWidth?.blazeDp ?: merged.borderWidth

        return merged
}

fun BlazeObjectPositioning.mergedWith(
        customization: BlazeReactObjectPositioning?
): BlazeObjectPositioning {
        customization ?: return this
        val merged = this

        merged.xPosition = this.xPosition.mergedWith(customization.xPosition)
        merged.yPosition = this.yPosition.mergedWith(customization.yPosition)
        return merged
}

fun BlazeObjectXPosition.mergedWith(
        customization: BlazeReactObjectXPosition?
): BlazeObjectXPosition {
        customization ?: return this

        return customization.mapToBlazeEnumClass()
}

fun BlazeObjectYPosition.mergedWith(
        customization: BlazeReactObjectYPosition?
): BlazeObjectYPosition {
        customization ?: return this

        return customization.mapToBlazeEnumClass()
}

fun BlazeWidgetItemTextStyle.mergedWith(
        customization: BlazeReactTitleStyle?,
        context: Context
): BlazeWidgetItemTextStyle {
        customization ?: return this

        val merged = this
        merged.fontResId = customization.font?.toFontResId(context)
        merged.textSize = customization.textSize ?: this.textSize
        merged.letterSpacing = customization.letterSpacing ?: this.letterSpacing
        merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
        merged.lineHeight = customization.lineHeight?.blazeDp ?: this.lineHeight
        merged.maxLines = customization.maxLines ?: this.maxLines
        merged.gravity = this.gravity.gravityMergedWith(customization.textAlign)

        return merged
}

fun BlazeWidgetItemImageStyle.mergedWith(
        customization: BlazeReactWidgetItemImageStyle?
): BlazeWidgetItemImageStyle {
        customization ?: return this

        val merged = this

        merged.position = this.position.mergedWith(customization.position)
        merged.width = customization.width?.blazeDp ?: this.width
        merged.height = customization.height?.blazeDp ?: this.height
        merged.ratio = customization.ratio ?: this.ratio
        merged.cornerRadius = customization.cornerRadius?.blazeDp ?: this.cornerRadius
        merged.cornerRadiusRatio = customization.cornerRadiusRatio ?: this.cornerRadiusRatio
        merged.border = this.border.mergedWith(customization.border)
        customization.thumbnailType?.let { merged.thumbnailType = it.mapToBlazeEnumClass() }
        merged.margins = this.margins.mergedWith(customization.margins)
        merged.animatedThumbnail =
                this.animatedThumbnail.mergedWith(customization.animatedThumbnail)
        merged.gradientOverlay = this.gradientOverlay.mergedWith(customization.gradientOverlay)

        return merged
}

fun BlazeWidgetItemImageGradientOverlayStyle.mergedWith(
        customization: BlazeReactWidgetItemImageGradientOverlayStyle?
): BlazeWidgetItemImageGradientOverlayStyle {
        customization ?: return this

        val merged = this
        merged.isVisible = customization.isVisible ?: merged.isVisible
        merged.position = merged.position.mergedWith(customization.position)

        // We switch between startColor and endColor to match the iOS implementation.
        // If this is aligned on future Android version we must switch them back!
        merged.startColor = safeParseColor(customization.endColor) ?: merged.startColor
        merged.endColor = safeParseColor(customization.startColor) ?: merged.endColor

        return merged
}

fun BlazeWidgetItemImageGradientOverlayStyle.BlazeGradientPosition.mergedWith(
        customization: BlazeReactWidgetItemImageGradientOverlayStyle.Position?
): BlazeWidgetItemImageGradientOverlayStyle.BlazeGradientPosition {
        customization ?: return this

        return customization.mapToBlazeEnumClass()
}

fun BlazeWidgetItemImageAnimatedThumbnailStyle.mergedWith(
        customization: BlazeReactWidgetItemImageAnimatedThumbnailStyle?
): BlazeWidgetItemImageAnimatedThumbnailStyle {
        customization ?: return this

        val merged = this
        merged.horizontalAnimationTriggerPercentage =
                customization.horizontalAnimationTriggerPercentage
                        ?: merged.horizontalAnimationTriggerPercentage
        merged.isEnabled = customization.isEnabled ?: merged.isEnabled

        return merged
}

fun BlazeWidgetItemImageStyle.BlazeImagePosition.mergedWith(
        customization: BlazeReactWidgetItemImagePosition?
): BlazeWidgetItemImageStyle.BlazeImagePosition {
        customization ?: return this

        return customization.mapToBlazeEnumClass()
}

fun BlazeWidgetItemImageContainerBorderStyle.mergedWith(
        customization: BlazeReactWidgetItemImageContainerBorderStyle?
): BlazeWidgetItemImageContainerBorderStyle {
        customization ?: return this

        val merged = this

        merged.isVisible = customization.isVisible ?: merged.isVisible
        merged.liveReadState = merged.liveReadState.mergedWith(customization.liveReadState)
        merged.liveUnreadState = merged.liveUnreadState.mergedWith(customization.liveUnreadState)
        merged.readState = merged.readState.mergedWith(customization.readState)
        merged.unreadState = merged.unreadState.mergedWith(customization.unreadState)
        return merged
}

fun BlazeWidgetItemImageContainerBorderStateStyle.mergedWith(
        customization: BlazeReactWidgetItemImageContainerBorderStateStyle?
): BlazeWidgetItemImageContainerBorderStateStyle {
        customization ?: return this

        val merged = this

        merged.isVisible = customization.isVisible ?: merged.isVisible
        merged.color = safeParseColor(customization.color) ?: merged.color
        merged.margin = customization.margin?.blazeDp ?: merged.margin
        merged.width = customization.width?.blazeDp ?: merged.width

        return merged
}
