package com.blaze.flutterblazesdk.widgets.customization

import android.content.Context
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemStyleOverrides

fun BlazeWidgetItemStyleOverrides.mergedWith(
        customization: BlazeReactWidgetItemStyleOverrides?,
        context: Context,
): BlazeWidgetItemStyleOverrides {
    customization ?: return this

    val merged = this

    merged.imageBorder = this.imageBorder?.mergedWith(customization.imageBorder)

    merged.statusIndicator =
            this.statusIndicator?.mergedWith(
                    customization = customization.statusIndicator,
                    context = context
            )

    merged.badge = this.badge?.mergedWith(customization = customization.badge, context = context)

    return merged
}
