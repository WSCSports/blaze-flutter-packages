package com.blaze.flutterblazesdk.players

import com.blaze.flutterblazesdk.players.videos.BlazeReactVideosPlayerButtonsStyle
import com.blaze.flutterblazesdk.utils.parsing.gson.toObject
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

// The merge onto the native style is verified on device (D25).
internal class VideosLiveButtonsDecodingTest {
    @Test
    fun decodesAudioAndLiveCatchup() {
        val buttons = mapOf<String, Any>(
            "audio" to mapOf("isVisible" to false),
            "liveCatchup" to mapOf("color" to "#FF0000")
        ).toObject<BlazeReactVideosPlayerButtonsStyle>()

        assertEquals(false, buttons?.audio?.isVisible)
        assertEquals("#FF0000", buttons?.liveCatchup?.color)
    }

    @Test
    fun omittedButtonsDecodeToNull() {
        val buttons = mapOf<String, Any>("mute" to mapOf("isVisible" to true))
            .toObject<BlazeReactVideosPlayerButtonsStyle>()

        assertNull(buttons?.audio)
        assertNull(buttons?.liveCatchup)
    }
}
