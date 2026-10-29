package com.blaze.flutterblazesdk.widgets

import com.blaze.flutterblazesdk.utils.parsing.gson.toObject
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactObjectXPosition
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactObjectYPosition
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactWidgetItemStyle
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

// Native style objects can't be built on the JVM (internal constructors, Parcel-based preset
// copies), so the merge onto them is verified on device. These tests cover the Dart -> mirror
// decoding the merge reads from.
internal class WidgetItemTextElementsDecodingTest {
    @Test
    fun decodesSubtitleDescriptionAndPlayIcon() {
        val style = mapOf<String, Any>(
            "subtitle" to mapOf(
                "isVisible" to true,
                "topSpacing" to 4.0,
                "unreadState" to mapOf("maxLines" to 1, "textColor" to "#FF0000")
            ),
            "description" to mapOf("isVisible" to false, "topSpacing" to 2.0),
            "playIconElement" to mapOf("isVisible" to true)
        ).toObject<BlazeReactWidgetItemStyle>()

        assertEquals(true, style?.subtitle?.isVisible)
        assertEquals(4f, style?.subtitle?.topSpacing)
        assertEquals(1, style?.subtitle?.unreadState?.maxLines)
        assertEquals("#FF0000", style?.subtitle?.unreadState?.textColor)
        assertNull(style?.subtitle?.readState)
        assertEquals(false, style?.description?.isVisible)
        assertEquals(2f, style?.description?.topSpacing)
        assertEquals(true, style?.playIconElement?.isVisible)
    }

    @Test
    fun decodesDurationElement() {
        val style = mapOf<String, Any>(
            "durationElement" to mapOf(
                "isVisible" to false,
                "position" to mapOf("xPosition" to "TrailingToTrailing", "yPosition" to "BottomToBottom"),
                "insets" to mapOf("top" to 1, "leading" to 2, "bottom" to 3, "trailing" to 4),
                "contentPadding" to mapOf("top" to 5),
                "unreadState" to mapOf(
                    "backgroundColor" to "#80000000",
                    "textStyle" to mapOf("textSize" to 12.0, "textColor" to "#FFFFFF"),
                    "cornerRadius" to 6.0,
                    "borderWidth" to 1.5,
                    "glassBackground" to "on"
                )
            )
        ).toObject<BlazeReactWidgetItemStyle>()

        val duration = style?.durationElement
        assertEquals(false, duration?.isVisible)
        assertEquals(BlazeReactObjectXPosition.END_TO_END, duration?.position?.xPosition)
        assertEquals(BlazeReactObjectYPosition.BOTTOM_TO_BOTTOM, duration?.position?.yPosition)
        assertEquals(4f, duration?.insets?.trailing)
        assertEquals(5f, duration?.contentPadding?.top)
        assertEquals("#80000000", duration?.unreadState?.backgroundColor)
        assertEquals(12f, duration?.unreadState?.textStyle?.textSize)
        assertEquals(6f, duration?.unreadState?.cornerRadius)
        assertEquals(1.5f, duration?.unreadState?.borderWidth)
        assertNull(duration?.readState)
        assertNull(duration?.icon)
    }

    @Test
    fun omittedElementsDecodeToNull() {
        val style = mapOf<String, Any>("backgroundColor" to "#000000")
            .toObject<BlazeReactWidgetItemStyle>()

        assertNull(style?.subtitle)
        assertNull(style?.description)
        assertNull(style?.playIconElement)
        assertNull(style?.durationElement)
    }
}
