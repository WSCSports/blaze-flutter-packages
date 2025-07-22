package com.blaze.flutterblazesdk.players.stories

import android.content.Context
import com.blaze.blazesdk.style.players.BlazeTextCase
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerButtonsStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerChipStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerChipsStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerCtaStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerFirstTimeSlideInstructionsStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerFirstTimeSlideStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerHeaderGradientStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerLastUpdateTextStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerProgressBarStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerTitleTextStyle
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.flutterblazesdk.players.shared.mergeButtonThemes
import com.blaze.flutterblazesdk.players.shared.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.safeParseColor
import com.blaze.flutterblazesdk.utils.parsing.toColorResId
import com.blaze.flutterblazesdk.utils.parsing.toFontResId

fun BlazeStoryPlayerStyle.mergedWith(
    customization: BlazeReactStoryPlayerStyle?,
    context: Context
): BlazeStoryPlayerStyle {
    customization ?: return this

    val merged = this

    merged.title = this.title.mergedWith(customization.title, context)
    merged.lastUpdate = this.lastUpdate.mergedWith(customization.lastUpdate, context)
    merged.buttons = this.buttons.mergedWith(customization.buttons, context)
    merged.chips = this.chips.mergedWith(customization.chips)
    merged.backgroundColor = safeParseColor(customization.backgroundColor) ?: this.backgroundColor
    merged.cta = this.cta.mergedWith(customization.cta, context)
    merged.headerGradient = this.headerGradient.mergedWith(customization.headerGradient)
    merged.firstTimeSlide = this.firstTimeSlide.mergedWith(customization.firstTimeSlide, context)
    merged.progressBar = this.progressBar.mergedWith(customization.progressBar)
    return merged
}

fun BlazeStoryPlayerFirstTimeSlideStyle.mergedWith(
    customization: BlazeReactStoryPlayerFirstTimeSlideStyle?,
    context: Context
): BlazeStoryPlayerFirstTimeSlideStyle {
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

fun BlazeStoryPlayerFirstTimeSlideInstructionsStyle.mergedWith(
    customization: BlazeReactStoryPlayerFirstTimeSlideInstructionsStyle?,
    context: Context
): BlazeStoryPlayerFirstTimeSlideInstructionsStyle {
    customization ?: return this

    val merged = this
    merged.forward = this.forward.mergedWith(customization.forward, context)
    merged.pause = this.pause.mergedWith(customization.pause, context)
    merged.backward = this.backward.mergedWith(customization.backward, context)
    merged.transition = this.transition.mergedWith(customization.transition, context)
    return merged
}

fun BlazeStoryPlayerTitleTextStyle.mergedWith(
    customization: BlazeReactStoryPlayerTitleTextStyle?,
    context: Context
): BlazeStoryPlayerTitleTextStyle {
    customization ?: return this

    val merged = this
    merged.fontResId = customization.font?.toFontResId(context)
    merged.textSize = customization.textSize ?: merged.textSize
    merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
    merged.isVisible = customization.isVisible ?: this.isVisible

    return merged
}

fun BlazeStoryPlayerLastUpdateTextStyle.mergedWith(
    customization: BlazeReactStoryPlayerLastUpdateTextStyle?,
    context: Context
): BlazeStoryPlayerLastUpdateTextStyle {
    customization ?: return this

    val merged = this
    merged.fontResId = customization.font?.toFontResId(context)
    merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
    merged.textSize = customization.textSize ?: merged.textSize
    merged.textCase = merged.textCase.mergeWith(customization.textCase)
    merged.isVisible = customization.isVisible ?: this.isVisible

    return merged
}

fun BlazeTextCase.mergeWith(customization: BlazeReactTextCase?): BlazeTextCase {
    customization ?: return this

    return customization.mapToBlazeEnumClass()
}

fun BlazeStoryPlayerButtonsStyle.mergedWith(
    customization: BlazeReactStoryPlayerButtonsStyle?,
    context: Context
): BlazeStoryPlayerButtonsStyle {
    customization ?: return this

    val merged = this
    merged.mute = merged.mute.mergeButtonThemes(customization.mute, context)
    merged.exit = merged.exit.mergeButtonThemes(customization.exit, context)
    merged.share = merged.share.mergeButtonThemes(customization.share, context)

    return merged
}

fun BlazeStoryPlayerCtaStyle.mergedWith(
    customization: BlazeReactStoryPlayerCtaStyle?,
    context: Context
): BlazeStoryPlayerCtaStyle {
    customization ?: return this

    val merged = this
    merged.cornerRadius = customization.cornerRadius?.blazeDp ?: this.cornerRadius
    merged.textSize = customization.textSize ?: this.textSize
    merged.fontResId = customization.font?.toFontResId(context)

    return merged
}

fun BlazeStoryPlayerChipsStyle.mergedWith(
    customization: BlazeReactStoryPlayerChipsStyle?,
): BlazeStoryPlayerChipsStyle {
    customization ?: return this

    val merged = this
    merged.live = this.live.mergedWith(customization.live)
    merged.ad = this.ad.mergedWith(customization.ad)
    return merged
}

fun BlazeStoryPlayerChipStyle.mergedWith(
    customization: BlazeReactStoryPlayerChipStyle?,
): BlazeStoryPlayerChipStyle {
    customization ?: return this

    val merged = this
    merged.padding = this.padding.mergedWith(customization.titlePadding)
    merged.text = customization.text ?: this.text
    merged.textColor = safeParseColor(customization.textColor) ?: this.textColor
    merged.backgroundColor = safeParseColor(customization.backgroundColor) ?: this.backgroundColor
    merged.isVisible = customization.isVisible ?: this.isVisible

    return merged
}

fun BlazeStoryPlayerProgressBarStyle.mergedWith(
    customization: BlazeReactStoryPlayerProgressBarStyle?,
): BlazeStoryPlayerProgressBarStyle {
    customization ?: return this

    val merged = this
    merged.backgroundColor = safeParseColor(customization.backgroundColor) ?: this.backgroundColor
    merged.progressColor = safeParseColor(customization.progressColor) ?: this.progressColor

    return merged
}

fun BlazeStoryPlayerHeaderGradientStyle.mergedWith(
    customization: BlazeReactStoryPlayerHeaderGradientStyle?,
): BlazeStoryPlayerHeaderGradientStyle {
    customization ?: return this

    val merged = this
    merged.isVisible = customization.isVisible ?: this.isVisible
    merged.startColor = safeParseColor(customization.startColor) ?: this.startColor
    merged.endColor = safeParseColor(customization.endColor) ?: this.endColor

    return merged
}
