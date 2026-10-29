package com.blaze.flutterblazesdk.players

import com.blaze.flutterblazesdk.players.stories.BlazeReactStoryPlayerStyle
import com.blaze.flutterblazesdk.utils.parsing.gson.toObject
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

// The merge onto the native style is verified on device (D25).
internal class StorySubtitleDecodingTest {
    @Test
    fun decodesTheSubtitle() {
        val style = mapOf<String, Any>(
            "subtitle" to mapOf("textSize" to 14.0, "textColor" to "#FFFFFF", "isVisible" to true)
        ).toObject<BlazeReactStoryPlayerStyle>()

        assertEquals(14f, style?.subtitle?.textSize)
        assertEquals("#FFFFFF", style?.subtitle?.textColor)
        assertEquals(true, style?.subtitle?.isVisible)
        assertNull(style?.subtitle?.font)
    }

    @Test
    fun omittedSubtitleDecodesToNull() {
        val style = mapOf<String, Any>("backgroundColor" to "#000000")
            .toObject<BlazeReactStoryPlayerStyle>()

        assertNull(style?.subtitle)
    }
}
