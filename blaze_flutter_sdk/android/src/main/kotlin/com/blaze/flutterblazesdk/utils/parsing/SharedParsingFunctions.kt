package com.blaze.flutterblazesdk.utils.parsing

import android.content.Context
import android.graphics.Color
import com.blaze.blazesdk.style.shared.models.BlazeInsets
import com.blaze.blazesdk.style.shared.models.blazeDp
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactMargins
import androidx.core.graphics.toColorInt

fun String?.toColorResId(context: Context): Int? {
    this ?: return null

    val colorResId = try {
        val fontFileNameExcludingExtension = this.split(".")[0]
        val colorID = context.resources.getIdentifier(
            fontFileNameExcludingExtension,
            "color",
            context.applicationContext.packageName)

        if (colorID != 0) {
            colorID
        } else {
            null
        }
    } catch (e: Exception) {
        //NO OP
        null
    }

    return colorResId
}

fun BlazeReactImage.toImageResId(context: Context): Int? {
    imageName ?: return null

    var imageResId = try {
        val imageFileNameExcludingExtension = imageName.split(".")[0]
        val imageID = context.resources.getIdentifier(
            imageFileNameExcludingExtension,
            "drawable",
            context.applicationContext.packageName
        )

        if (imageID != 0) {
            imageID
        } else {
            null
        }
    } catch (e: Exception) {
        //NO OP
        null
    }

    return imageResId
}

fun safeParseColor(colorString: String?): Int? {
    return try {
        colorString?.toColorInt()
    } catch (e: Exception) {
        null
    }
}

fun BlazeInsets.mergedWith(customization: BlazeReactMargins?): BlazeInsets {
    customization ?: return this

    val merged = this

    merged.top = customization.top?.blazeDp ?: this.top
    merged.bottom = customization.bottom?.blazeDp ?: this.bottom
    merged.start = customization.leading?.blazeDp ?: this.start
    merged.end = customization.trailing?.blazeDp ?: this.end

    return merged
}

fun Int.gravityMergedWith(customization: BlazeReactTextAlign?): Int {
    customization ?: return this

    return customization.mapToBlazeEnumClass()
}

fun BlazeReactTitleFont.toFontResId(context: Context): Int? {
    fontFileName ?: return null

    var fontResId =
        try {
            val fontFileNameExcludingExtension = fontFileName.split(".")[0]
            val fontID =
                context.resources.getIdentifier(
                    fontFileNameExcludingExtension,
                    "font",
                    context.applicationContext.packageName
                )

            if (fontID != 0) {
                fontID
            } else {
                null
            }
        } catch (e: Exception) {
            // NO OP
            null
        }

    return fontResId
}