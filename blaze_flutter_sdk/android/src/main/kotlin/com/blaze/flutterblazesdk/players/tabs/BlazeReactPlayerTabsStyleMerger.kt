package com.blaze.flutterblazesdk.players.tabs

import android.content.Context
import com.blaze.blazesdk.style.players.tabs.BlazePlayerTabItemStyle
import com.blaze.blazesdk.style.players.tabs.BlazePlayerTabsStyle
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.flutterblazesdk.utils.parsing.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.safeParseColor
import com.blaze.flutterblazesdk.utils.parsing.toFontResId

/**
 * Merges the Dart-supplied [BlazeReactPlayerTabsStyle] onto a native [BlazePlayerTabsStyle]
 * (typically `BlazePlayerTabsStyle.base()`). Every field is optional; omitted fields keep their
 * native default. Mirrors the player-style mergers in this package.
 */
fun BlazePlayerTabsStyle.mergedWith(
    customization: BlazeReactPlayerTabsStyle?,
    context: Context
): BlazePlayerTabsStyle {
    customization ?: return this

    val merged = this

    merged.padding.mergedWith(customization.padding)

    customization.gradient?.let { gradient ->
        gradient.isVisible?.let { merged.gradient.isVisible = it }
        safeParseColor(gradient.startColor)?.let { merged.gradient.startColor = it }
        safeParseColor(gradient.middleColor)?.let { merged.gradient.middleColor = it }
        safeParseColor(gradient.endColor)?.let { merged.gradient.endColor = it }
    }

    customization.icon?.let { icon ->
        merged.icon?.let { iconStyle ->
            safeParseColor(icon.iconTint)?.let { iconStyle.iconTint = it }
            icon.padding?.let { iconStyle.padding = it.toInt().blazeDp }
        }
    }

    merged.selectedTabState.mergedWith(customization.selectedTabState, context)
    merged.unselectedTabState.mergedWith(customization.unselectedTabState, context)

    return merged
}

private fun BlazePlayerTabItemStyle.mergedWith(
    customization: BlazeReactPlayerTabItemStyle?,
    context: Context
): BlazePlayerTabItemStyle {
    customization ?: return this

    val merged = this

    customization.font?.toFontResId(context)?.let { merged.fontResId = it }
    safeParseColor(customization.textColor)?.let { merged.textColor = it }
    customization.textSize?.let { merged.textSize = it }
    // Dart letterSpacing is in points (like iOS); Android's TextView expects em, so divide by textSize.
    customization.letterSpacing?.let { letterSpacingPt ->
        merged.letterSpacing = if (merged.textSize > 0f) letterSpacingPt / merged.textSize else letterSpacingPt
    }
    customization.lineHeight?.let { merged.lineHeight = it.toInt().blazeDp }

    return merged
}
