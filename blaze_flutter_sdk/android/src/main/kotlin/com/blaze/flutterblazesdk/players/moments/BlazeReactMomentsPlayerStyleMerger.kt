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
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerCustomActionButton
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFollowEntityStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFollowEntityStateStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFollowEntityAvatarStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFollowEntityChipStyle
import com.blaze.blazesdk.follow.models.BlazeFollowEntityType
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.flutterblazesdk.players.shared.BlazeReactCustomActionButton
import com.blaze.flutterblazesdk.players.shared.mergeButtonThemes
import com.blaze.flutterblazesdk.players.shared.mergedWith
import com.blaze.flutterblazesdk.players.shared.toNativeParams
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
    merged.followEntity = this.followEntity.mergedWith(customization.followEntity)
    return merged
}

fun BlazeMomentsPlayerFollowEntityStyle.mergedWith(
    customization: BlazeReactMomentsPlayerFollowEntityStyle?,
): BlazeMomentsPlayerFollowEntityStyle {
    customization ?: return this

    val merged = this
    merged.isVisible = customization.isVisible ?: this.isVisible
    merged.followState = this.followState.mergedWith(customization.followState)
    merged.unfollowState = this.unfollowState.mergedWith(customization.unfollowState)
    merged.entityType = mergeEntityType(customization.entityType) ?: this.entityType
    return merged
}

fun BlazeMomentsPlayerFollowEntityStateStyle.mergedWith(
    customization: BlazeReactMomentsPlayerFollowEntityStateStyle?,
): BlazeMomentsPlayerFollowEntityStateStyle {
    customization ?: return this

    val merged = this
    merged.avatar = this.avatar.mergedWith(customization.avatar)
    merged.chip = this.chip.mergedWith(customization.chip)
    return merged
}

fun BlazeMomentsPlayerFollowEntityAvatarStyle.mergedWith(
    customization: BlazeReactMomentsPlayerFollowEntityAvatarStyle?,
): BlazeMomentsPlayerFollowEntityAvatarStyle {
    customization ?: return this

    val merged = this
    merged.borderWidth = customization.borderWidth?.toInt()?.blazeDp ?: this.borderWidth
    merged.borderColor = safeParseColor(customization.borderColor) ?: this.borderColor
    return merged
}

fun BlazeMomentsPlayerFollowEntityChipStyle.mergedWith(
    customization: BlazeReactMomentsPlayerFollowEntityChipStyle?,
): BlazeMomentsPlayerFollowEntityChipStyle {
    customization ?: return this

    val merged = this
    merged.backgroundColor = safeParseColor(customization.backgroundColor) ?: this.backgroundColor
    merged.iconColor = safeParseColor(customization.iconColor) ?: this.iconColor
    customization.contentSource?.let { merged.contentSource = it.mapToBlazeEnumClass() }
    return merged
}

private fun mergeEntityType(react: BlazeReactFollowEntityType?): BlazeFollowEntityType? {
    react ?: return null
    val fallback = react.fallbackType?.let { mergeEntityType(it) }

    return when (react.type) {
        "FirstAvailable" -> BlazeFollowEntityType.FirstAvailable
        "Player" -> BlazeFollowEntityType.Player(fallbackType = fallback)
        "Team" -> BlazeFollowEntityType.Team(fallbackType = fallback)
        "Property" -> BlazeFollowEntityType.Property(fallbackType = fallback)
        else -> null
    }
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
    merged.seekForward = merged.seekForward.mergeButtonThemes(customization.seekForward, context)
    merged.seekBackward = merged.seekBackward.mergeButtonThemes(customization.seekBackward, context)
    merged.search = merged.search.mergeButtonThemes(customization.search, context)

    mergeCustomActionButtons(customization.customActionButtons, context)?.let {
        merged.setBottomStackCustomActionButtons(it)
    }

    return merged
}

private fun mergeCustomActionButtons(
    reactButtons: List<BlazeReactCustomActionButton>?,
    context: Context
): List<BlazeMomentsPlayerCustomActionButton>? {
    reactButtons ?: return null
    val nativeButtons = reactButtons.mapNotNull { reactButton ->
        val params = reactButton.customParams?.toNativeParams() ?: return@mapNotNull null
        val button = BlazeMomentsPlayerCustomActionButton(customParams = params)
        button.style = button.style.mergeButtonThemes(reactButton.style, context)
        button
    }
    return nativeButtons.ifEmpty { return null }
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
    merged.isVisible = customization.isVisible ?: this.isVisible
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
