package com.blaze.flutterblazesdk.players.videos

import android.content.Context
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerButtonsStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerCtaIconStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerCtaStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerHeadingTextStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerSeekBarStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerStyle
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.flutterblazesdk.players.shared.mergeButtonThemes
import com.blaze.flutterblazesdk.players.shared.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.safeParseColor
import com.blaze.flutterblazesdk.utils.parsing.toFontResId
import com.blaze.flutterblazesdk.utils.parsing.toImageResId

fun BlazeVideosPlayerStyle.mergedWith(
    customization: BlazeReactVideosPlayerStyle?,
    context: Context
): BlazeVideosPlayerStyle {
    customization ?: return this

    val merged = this

    merged.headingText = this.headingText.mergedWith(customization.headingText, context)
    merged.buttons = this.buttons.mergedWith(customization.buttons, context)
    merged.cta = this.cta.mergedWith(customization.cta, context)
    safeParseColor(customization.backgroundColor)?.let { merged.backgroundColor = it }
    merged.seekBar = this.seekBar.mergedWith(customization.seekBar, context)
    return merged
}

fun BlazeVideosPlayerHeadingTextStyle.mergedWith(
    customization: BlazeReactVideosPlayerHeadingTextStyle?,
    context: Context
): BlazeVideosPlayerHeadingTextStyle {
    customization ?: return this

    val merged = this

    merged.textSize = customization.textSize ?: this.textSize
    merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
    merged.fontResId = customization.font?.toFontResId(context)
    merged.contentSource = customization.contentSource?.mapToBlazeEnumClass() ?: this.contentSource
    merged.isVisible = customization.isVisible ?: this.isVisible
    merged.maxLines = customization.numberOfLines ?: this.maxLines

    return merged
}

fun BlazeVideosPlayerButtonsStyle.mergedWith(
    customization: BlazeReactVideosPlayerButtonsStyle?,
    context: Context
): BlazeVideosPlayerButtonsStyle {
    customization ?: return this

    val merged = this
    merged.mute = merged.mute.mergeButtonThemes(customization.mute, context)
    merged.exit = merged.exit.mergeButtonThemes(customization.exit, context)
    merged.share = merged.share.mergeButtonThemes(customization.share, context)
    merged.like = merged.like.mergeButtonThemes(customization.like, context)
    merged.playPause = merged.playPause.mergeButtonThemes(customization.playPause, context)
    merged.previous = merged.previous.mergeButtonThemes(customization.previous, context)
    merged.next = merged.next.mergeButtonThemes(customization.next, context)
    return merged
}

fun BlazeVideosPlayerCtaStyle.mergedWith(
    customization: BlazeReactVideosPlayerCtaStyle?,
    context: Context
): BlazeVideosPlayerCtaStyle {
    customization ?: return this

    val merged = this
    merged.cornerRadius = customization.cornerRadius?.blazeDp ?: this.cornerRadius
    merged.textSize = customization.textSize ?: this.textSize
    merged.fontResId = customization.font?.toFontResId(context = context)
    merged.width = customization.width?.blazeDp ?: this.width
    merged.height = customization.height?.blazeDp ?: this.height
    customization.icon?.let { this.icon = this.icon.mergeWith(it, context) }
    merged.visibility = this.visibility.mergedWith(customization.ctaVisibility)
    return merged
}

fun BlazeVideosPlayerCtaStyle.BlazeCTAVisibility.mergedWith(
    customization: Map<String, Any>?
): BlazeVideosPlayerCtaStyle.BlazeCTAVisibility {
    customization ?: return this

    val type = customization["type"] as? String ?: return this
    when (type) {
        "alwaysVisible" -> return BlazeVideosPlayerCtaStyle.BlazeCTAVisibility.AlwaysVisible
        "visibleAfterOverlayHidden" -> {
            val seconds = customization["duration"] as? Double ?: return this
            return BlazeVideosPlayerCtaStyle.BlazeCTAVisibility.VisibleAfterOverlayHidden(seconds)
        }
        else -> return this
    }
}

fun BlazeVideosPlayerCtaIconStyle?.mergeWith(
    customization: BlazeReactVideosPlayerCtaIconStyle?,
    context: Context
): BlazeVideosPlayerCtaIconStyle? {
    customization ?: return this
    val imageResId = customization.iconImage?.toImageResId(context)

    val iconPositioning = customization.iconPositioning?.mapToBlazeEnumClass()

    val merged = this

    merged?.let { iconStyle ->
        merged.iconTint = safeParseColor(customization.iconTint) ?: iconStyle.iconTint
        merged.iconPositioning = iconPositioning ?: iconStyle.iconPositioning
        merged.iconResId = imageResId ?: iconStyle.iconResId
    }
        ?: run {
            imageResId ?: return null
            iconPositioning ?: return null

            BlazeVideosPlayerCtaIconStyle(
                iconResId = imageResId,
                iconPositioning = iconPositioning,
                iconTint = safeParseColor(customization.iconTint) ?: this?.iconTint
            )
        }

    return merged
}

fun BlazeVideosPlayerSeekBarStyle.mergedWith(
    customization: BlazeReactVideosPlayerSeekBarStyle?,
    context: Context
): BlazeVideosPlayerSeekBarStyle {
    customization ?: return this

    val merged = this

    merged.isVisible = customization.isVisible ?: this.isVisible
    merged.playingState = merged.playingState.mergedWith(customization.playingState, context)
    merged.pausedState = merged.pausedState.mergedWith(customization.pausedState, context)
    merged.horizontalMargin = customization.horizontalSpacing?.blazeDp ?: merged.horizontalMargin
    merged.bottomMargin = customization.bottomSpacing?.blazeDp ?: this.bottomMargin

    return merged
}
