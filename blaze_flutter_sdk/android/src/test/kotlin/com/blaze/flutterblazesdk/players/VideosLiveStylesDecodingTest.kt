package com.blaze.flutterblazesdk.players

import com.blaze.flutterblazesdk.players.videos.BlazeReactVideosPlayerStyle
import com.blaze.flutterblazesdk.utils.parsing.gson.toObject
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

// The merge onto the native style is verified on device (D25).
internal class VideosLiveStylesDecodingTest {
    @Test
    fun decodesTheStatusIndicator() {
        val style = mapOf<String, Any>(
            "statusIndicator" to mapOf(
                "isVisible" to true,
                "padding" to mapOf("leading" to 6.0),
                "streamStates" to mapOf(
                    "liveStreamState" to mapOf(
                        "text" to "LIVE",
                        "textStyle" to mapOf("textSize" to 12.0, "textColor" to "#FFFFFF"),
                        "backgroundColor" to "#FF0000",
                        "cornerRadius" to 4.0,
                        "borderWidth" to 1.0
                    )
                )
            )
        ).toObject<BlazeReactVideosPlayerStyle>()

        val indicator = style?.statusIndicator
        assertEquals(true, indicator?.isVisible)
        assertEquals(6f, indicator?.padding?.leading)
        val live = indicator?.streamStates?.liveStreamState
        assertEquals("LIVE", live?.text)
        assertEquals(12f, live?.textStyle?.textSize)
        assertEquals("#FFFFFF", live?.textStyle?.textColor)
        assertEquals(4f, live?.cornerRadius)
        assertEquals(1f, live?.borderWidth)
        assertNull(indicator?.streamStates?.endedStreamState)
    }

    @Test
    fun decodesTheBackToLiveButton() {
        val style = mapOf<String, Any>(
            "backToLiveButton" to mapOf(
                "margins" to mapOf("bottom" to 8.0),
                "playbackStates" to mapOf(
                    "behindLiveState" to mapOf("text" to "GO LIVE", "backgroundColor" to "#00FF00")
                )
            )
        ).toObject<BlazeReactVideosPlayerStyle>()

        val button = style?.backToLiveButton
        assertEquals(8f, button?.margins?.bottom)
        assertEquals("GO LIVE", button?.playbackStates?.behindLiveState?.text)
        assertEquals("#00FF00", button?.playbackStates?.behindLiveState?.backgroundColor)
        assertNull(button?.playbackStates?.atLiveEdgeState)
    }

    @Test
    fun decodesFractionalPaddingInsteadOfDroppingTheStyle() {
        val style = mapOf<String, Any>(
            "statusIndicator" to mapOf("padding" to mapOf("leading" to 4.5)),
            "backToLiveButton" to mapOf("margins" to mapOf("bottom" to 8.0))
        ).toObject<BlazeReactVideosPlayerStyle>()

        assertEquals(4.5f, style?.statusIndicator?.padding?.leading)
        assertEquals(8f, style?.backToLiveButton?.margins?.bottom)
    }
}
