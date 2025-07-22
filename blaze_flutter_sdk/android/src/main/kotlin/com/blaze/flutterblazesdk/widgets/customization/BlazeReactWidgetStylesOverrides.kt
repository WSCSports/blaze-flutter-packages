package com.blaze.flutterblazesdk.widgets.customization

import androidx.annotation.Keep

@Keep data class BlazeReactWidgetItemCustomMapping(val key: String, val value: String)

@Keep
data class BlazeReactWidgetItemStyleOverrides(
        val statusIndicator: BlazeReactWidgetItemStatusIndicatorStyle? = null,
        val imageBorder: BlazeReactWidgetItemImageContainerBorderStyle? = null,
        val badge: BlazeReactWidgetItemBadgeStyle? = null
)
