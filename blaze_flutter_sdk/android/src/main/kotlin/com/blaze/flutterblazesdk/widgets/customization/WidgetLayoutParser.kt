package com.blaze.flutterblazesdk.widgets.customization

import android.content.Context
import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout
import com.blaze.flutterblazesdk.utils.parsing.gson.fromJsonString
import com.blaze.flutterblazesdk.utils.parsing.gson.toObject

/**
 * Extension function to convert a Map to BlazeReactWidgetLayout using custom Gson with adapters
 */
fun Map<String, Any?>.toBlazeReactWidgetLayout(): BlazeReactWidgetLayout? {
    return this.toObject<BlazeReactWidgetLayout>()
}

/**
 * Extension function to apply widget layout customization over a preset layout
 */
fun applyWidgetLayoutCustomization(
        reactWidgetLayout: Map<String, Any?>?,
        widgetLayout: BlazeWidgetLayout,
        context: Context
): BlazeWidgetLayout {
    val rawLayout = reactWidgetLayout ?: return widgetLayout

    val customization = rawLayout.toBlazeReactWidgetLayout()

    return widgetLayout.mergedWith(customization = customization, context)
}

/**
 * Transforms the map into a Map of BlazeReactWidgetItemCustomMapping to
 * BlazeReactWidgetItemStyleOverrides
 */
fun Map<String, Any>.toReactWidgetStylesOverridesMap():
        Map<BlazeReactWidgetItemCustomMapping, BlazeReactWidgetItemStyleOverrides>? {
    val resultMap =
            mutableMapOf<BlazeReactWidgetItemCustomMapping, BlazeReactWidgetItemStyleOverrides>()

    // Iterate through each key-value pair in the map
    for ((key, value) in this) {
        // Attempt to decode the key into BlazeReactWidgetItemCustomMapping
        val keyValue = key.fromJsonString<BlazeReactWidgetItemCustomMapping>() ?: continue

        // Attempt to convert the value to BlazeReactWidgetItemStyleOverrides
        val valueValue =
                (value as? Map<String, Any>)?.toObject<BlazeReactWidgetItemStyleOverrides>()
                        ?: continue

        // Add to the result map
        resultMap[keyValue] = valueValue
    }

    return if (resultMap.isEmpty()) null else resultMap
}
