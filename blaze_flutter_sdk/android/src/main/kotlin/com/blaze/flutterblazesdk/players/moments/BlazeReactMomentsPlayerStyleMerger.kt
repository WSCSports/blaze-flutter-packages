package com.blaze.flutterblazesdk.players.moments

import android.content.Context
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerBodyTextStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerButtonsStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerChipStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerChipsStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerCtaIconStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerCtaStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFirstTimeSlideInstructionsStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFirstTimeSlideStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFooterGradientStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerHeaderGradientStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerHeadingTextStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerSeekBarStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerStyle
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.flutterblazesdk.players.shared.mergeButtonThemes
import com.blaze.flutterblazesdk.players.shared.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.safeParseColor
import com.blaze.flutterblazesdk.utils.parsing.toColorResId
import com.blaze.flutterblazesdk.utils.parsing.toFontResId
import com.blaze.flutterblazesdk.utils.parsing.toImageResId

fun BlazeMomentsPlayerStyle.mergedWith(
    customization: BlazeReactMomentsPlayerStyle?,
    context: Context
): BlazeMomentsPlayerStyle {
    customization ?: return this

    val merged = this

    merged.headingText = this.headingText.mergedWith(customization.headingText, context)
    merged.bodyText = this.bodyText.mergedWith(customization.bodyText, context)
    merged.buttons = this.buttons.mergedWith(customization.buttons, context)
    merged.chips = this.chips.mergedWith(customization.chips)
    merged.cta = this.cta.mergedWith(customization.cta, context)
    safeParseColor(customization.backgroundColor)?.let { merged.backgroundColor = it }
    merged.headerGradient = this.headerGradient.mergedWith(customization.headerGradient)
    merged.footerGradient = this.footerGradient.mergedWith(customization.footerGradient)
    merged.seekBar = this.seekBar.mergedWith(customization.seekBar, context)
    merged.firstTimeSlide = this.firstTimeSlide.mergedWith(customization.firstTimeSlide, context)
    customization.bottomComponentsAlignment?.let {
        merged.bottomComponentsAlignment = it.mapToBlazeEnumClass()
    }
    customization.playerDisplayMode?.let { merged.playerDisplayMode = it.mapToBlazeEnumClass() }
    return merged
}

fun BlazeMomentsPlayerFirstTimeSlideStyle.mergedWith(
    customization: BlazeReactMomentsPlayerFirstTimeSlideStyle?,
    context: Context
): BlazeMomentsPlayerFirstTimeSlideStyle {
    customization ?: return this

    val merged = this
    merged.show = customization.show ?: this.show
    customization.backgroundColor?.colorFileName?.toColorResId(context)?.let {
        merged.backgroundColorResId = it
    }
    merged.cta = this.cta.mergedWith(customization.cta, context)
    merged.mainTitle = this.mainTitle.mergedWith(customization.mainTitle, context)
    merged.subtitle = this.subtitle.mergedWith(customization.subtitle, context)
    merged.instructions = this.instructions.mergedWith(customization.instructions, context)

    return merged
}

fun BlazeMomentsPlayerHeadingTextStyle.mergedWith(
    customization: BlazeReactMomentsPlayerHeadingTextStyle?,
    context: Context
): BlazeMomentsPlayerHeadingTextStyle {
    customization ?: return this

    val merged = this

    merged.textSize = customization.textSize ?: this.textSize
    merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
    merged.fontResId = customization.font?.toFontResId(context)
    merged.contentSource = customization.contentSource?.mapToBlazeEnumClass() ?: this.contentSource
    merged.isVisible = customization.isVisible ?: this.isVisible

    return merged
}

fun BlazeMomentsPlayerBodyTextStyle.mergedWith(
    customization: BlazeReactMomentsPlayerBodyTextStyle?,
    context: Context
): BlazeMomentsPlayerBodyTextStyle {
    customization ?: return this

    val merged = this

    merged.textSize = customization.textSize ?: this.textSize
    merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
    merged.fontResId = customization.font?.toFontResId(context)
    merged.contentSource = customization.contentSource?.mapToBlazeEnumClass() ?: this.contentSource
    merged.isVisible = customization.isVisible ?: this.isVisible

    return merged
}

fun BlazeMomentsPlayerButtonsStyle.mergedWith(
    customization: BlazeReactMomentsPlayerButtonsStyle?,
    context: Context
): BlazeMomentsPlayerButtonsStyle {
    customization ?: return this

    val merged = this
    merged.mute = merged.mute.mergeButtonThemes(customization.mute, context)
    merged.exit = merged.exit.mergeButtonThemes(customization.exit, context)
    merged.share = merged.share.mergeButtonThemes(customization.share, context)
    merged.like = merged.like.mergeButtonThemes(customization.like, context)
    merged.play = merged.play.mergeButtonThemes(customization.play, context)
    return merged
}

fun BlazeMomentsPlayerCtaStyle.mergedWith(
    customization: BlazeReactMomentsPlayerCtaStyle?,
    context: Context
): BlazeMomentsPlayerCtaStyle {
    customization ?: return this

    val merged = this
    merged.cornerRadius = customization.cornerRadius?.blazeDp ?: this.cornerRadius
    merged.textSize = customization.textSize ?: this.textSize
    merged.fontResId = customization.font?.toFontResId(context = context)
    merged.width = customization.width?.blazeDp ?: this.width
    merged.height = customization.height?.blazeDp ?: this.height
    customization.layoutPositioning?.let { merged.layoutPositioning = it.mapToBlazeEnumClass() }
    customization.horizontalAlignment?.let { merged.horizontalAlignment = it.mapToBlazeEnumClass() }
    customization.icon?.let { this.icon = this.icon.mergeWith(it, context) }
    return merged
}

fun BlazeMomentsPlayerCtaIconStyle?.mergeWith(
    customization: BlazeReactMomentsPlayerCtaIconStyle?,
    context: Context
): BlazeMomentsPlayerCtaIconStyle? {
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

            BlazeMomentsPlayerCtaIconStyle(
                iconResId = imageResId,
                iconPositioning = iconPositioning,
                iconTint = safeParseColor(customization.iconTint) ?: this?.iconTint
            )
        }

    return merged
}

fun BlazeMomentsPlayerChipsStyle.mergedWith(
    customization: BlazeReactMomentsPlayerChipsStyle?,
): BlazeMomentsPlayerChipsStyle {
    customization ?: return this

    val merged = this
    merged.ad = this.ad.mergedWith(customization.ad)
    return merged
}

fun BlazeMomentsPlayerFirstTimeSlideInstructionsStyle.mergedWith(
    customization: BlazeReactMomentsPlayerFirstTimeSlideInstructionsStyle?,
    context: Context
): BlazeMomentsPlayerFirstTimeSlideInstructionsStyle {
    customization ?: return this

    val merged = this
    merged.next = this.next.mergedWith(customization.next, context)
    merged.pause = this.pause.mergedWith(customization.pause, context)
    merged.play = this.play.mergedWith(customization.play, context)
    merged.previous = this.previous.mergedWith(customization.previous, context)
    return merged
}

fun BlazeMomentsPlayerSeekBarStyle.mergedWith(
    customization: BlazeReactMomentsPlayerSeekBarStyle?,
    context: Context
): BlazeMomentsPlayerSeekBarStyle {
    customization ?: return this

    val merged = this

    merged.isVisible = customization.isVisible ?: this.isVisible
    merged.playingState = merged.playingState.mergedWith(customization.playingState, context)
    merged.pausedState = merged.pausedState.mergedWith(customization.pausedState, context)
    merged.horizontalMargin = customization.horizontalSpacing?.blazeDp ?: merged.horizontalMargin
    merged.bottomMargin = customization.bottomSpacing?.blazeDp ?: this.bottomMargin

    return merged
}

fun BlazeMomentsPlayerChipStyle.mergedWith(
    customization: BlazeReactMomentsPlayerChipStyle?,
): BlazeMomentsPlayerChipStyle {
    customization ?: return this

    val merged = this
    merged.padding = this.padding.mergedWith(customization.titlePadding)
    merged.text = customization.text ?: this.text
    merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
    merged.backgroundColor = safeParseColor(customization.backgroundColor) ?: this.backgroundColor
    merged.isVisible = customization.isVisible ?: this.isVisible

    return merged
}

fun BlazeMomentsPlayerHeaderGradientStyle.mergedWith(
    customization: BlazeReactMomentsPlayerHeaderGradientStyle?,
): BlazeMomentsPlayerHeaderGradientStyle {
    customization ?: return this

    val merged = this
    merged.isVisible = customization.isVisible ?: this.isVisible
    merged.startColor = safeParseColor(customization.startColor) ?: this.startColor
    merged.endColor = safeParseColor(customization.endColor) ?: this.endColor

    return merged
}

fun BlazeMomentsPlayerFooterGradientStyle.mergedWith(
    customization: BlazeReactMomentsPlayerFooterGradientStyle?,
): BlazeMomentsPlayerFooterGradientStyle {
    customization ?: return this

    val merged = this
    customization.isVisible?.let { merged.isVisible = it }
    safeParseColor(customization.startColor)?.let { merged.startColor = it }
    safeParseColor(customization.endColor)?.let { merged.endColor = it }
    customization.endPositioning?.mapToBlazeEnumClass()?.let { merged.endPositioning = it }
    return merged
}
