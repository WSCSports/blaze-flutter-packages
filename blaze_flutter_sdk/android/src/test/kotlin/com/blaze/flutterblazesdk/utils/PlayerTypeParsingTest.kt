package com.blaze.flutterblazesdk.utils

import com.blaze.blazesdk.delegates.models.BlazePlayerType
import com.blaze.flutterblazesdk.sdk_module.toFlutterValue
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class PlayerTypeParsingTest {
    @Test
    fun parsesDartPlayerTypes() {
        assertEquals(BlazePlayerType.MOMENTS, "moments".toBlazePlayerType())
        assertEquals(BlazePlayerType.STORIES, "stories".toBlazePlayerType())
        assertEquals(BlazePlayerType.VIDEOS, "videos".toBlazePlayerType())
    }

    @Test
    fun rejectsUnknownValues() {
        assertNull("bogus".toBlazePlayerType())
        assertNull("Moments".toBlazePlayerType())
        assertNull(null.toBlazePlayerType())
    }

    @Test
    fun isTheInverseOfToFlutterValue() {
        BlazePlayerType.entries.forEach {
            assertEquals(it, it.toFlutterValue().toBlazePlayerType())
        }
    }
}
