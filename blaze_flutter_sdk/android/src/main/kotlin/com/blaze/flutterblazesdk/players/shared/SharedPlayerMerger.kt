package com.blaze.flutterblazesdk.players.shared

import android.content.Context
import com.blaze.blazesdk.style.players.BlazeFirstTimeSlideCTAStyle
import com.blaze.blazesdk.style.players.BlazeFirstTimeSlideInstructionStyle
import com.blaze.blazesdk.style.players.BlazeFirstTimeSlideTextStyle
import com.blaze.blazesdk.style.players.BlazePlayerButtonCustomImageStates
import com.blaze.blazesdk.style.players.BlazeSeekBarStyle
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.flutterblazesdk.utils.parsing.safeParseColor
import com.blaze.flutterblazesdk.utils.parsing.toColorResId
import com.blaze.flutterblazesdk.utils.parsing.toFontResId
import com.blaze.flutterblazesdk.utils.parsing.toImageResId

fun BlazeFirstTimeSlideInstructionStyle.mergedWith(
        customization: BlazeReactFirstTimeSlideInstructionStyle?,
        context: Context
): BlazeFirstTimeSlideInstructionStyle {
    customization ?: return this

    val merged = this
    merged.headerText = this.headerText.mergedWith(customization.headerText, context)
    merged.descriptionText = this.descriptionText.mergedWith(customization.descriptionText, context)
    return merged
}

fun BlazeFirstTimeSlideTextStyle.mergedWith(
        customization: BlazeReactFirstTimeSlideTextStyle?,
        context: Context
): BlazeFirstTimeSlideTextStyle {
    customization ?: return this

    val merged = this
    merged.text = customization.text ?: this.text
    customization.textColor?.colorFileName?.toColorResId(context)?.let {
        merged.textColorResId = it
    }
    merged.fontResId = customization.font?.toFontResId(context)
    merged.textSize = customization.textSize ?: this.textSize

    return merged
}

fun BlazeFirstTimeSlideCTAStyle.mergedWith(
        customization: BlazeReactFirstTimeSlideCTAStyle?,
        context: Context
): BlazeFirstTimeSlideCTAStyle {
    customization ?: return this

    val merged = this
    merged.title = customization.title ?: this.title
    merged.cornerRadius = customization.cornerRadius?.blazeDp ?: this.cornerRadius
    customization.backgroundColor?.colorFileName?.toColorResId(context)?.let {
        merged.backgroundColor = it
    }
    customization.textColor?.colorFileName?.toColorResId(context)?.let {
        merged.textColorResId = it
    }

    merged.fontResId = customization.font?.toFontResId(context)
    merged.textSize = customization.textSize ?: this.textSize
    return merged
}

fun BlazeSeekBarStyle.mergedWith(
        customization: BlazeReactSeekBarStyle?,
        context: Context
): BlazeSeekBarStyle {
    customization ?: return this

    val merged = this

    merged.isVisible = customization.isVisible ?: this.isVisible
    merged.backgroundColor = safeParseColor(customization.backgroundColor) ?: this.backgroundColor
    merged.progressColor = safeParseColor(customization.progressColor) ?: this.progressColor
    merged.height = customization.height?.blazeDp ?: this.height
    merged.cornerRadius = customization.cornerRadius?.toInt()?.blazeDp ?: this.cornerRadius
    merged.thumbColor = safeParseColor(customization.thumbColor) ?: this.thumbColor
    merged.thumbImageResId = customization.thumbImage?.toImageResId(context)
    merged.thumbSize = customization.thumbSize?.blazeDp ?: this.thumbSize
    merged.isThumbVisible = customization.isThumbVisible ?: this.isThumbVisible

    return merged
}

fun <T : com.blaze.blazesdk.style.players.IPlayerItemButtonStyle> T.mergeButtonThemes(
    customization: BlazeReactPlayerButtonStyle?,
    context: Context
): T {
    customization ?: return this

    customization.width?.let { this.width = it.blazeDp }
    customization.height?.let { this.height = it.blazeDp }
    safeParseColor(customization.color)?.let { this.color = it }
    customization.isVisible?.let { this.isVisible = it }
    customization.scaleType?.let {
        this.scaleType = android.widget.ImageView.ScaleType.valueOf(it)
    }
    customization.isVisibleForAds?.let { this.isVisibleForAds = it }
    customization.customImage?.let {
        this.customImage = this.customImage.mergedWith(it, context)
    }

    return this
}

fun BlazePlayerButtonCustomImageStates?.mergedWith(
    customization: BlazeReactPlayerButtonCustomImageStates,
    context: Context
): BlazePlayerButtonCustomImageStates? {
    val imageUnselectedPath =
        customization.unselectedImage?.toImageResId(context) ?: return this
    return BlazePlayerButtonCustomImageStates(
        imageUnselectedPathResId = imageUnselectedPath,
        imageSelectedPathResId = customization.selectedImage?.toImageResId(context)
    )
}

