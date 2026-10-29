package com.blaze.flutterblazesdk.players

import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFollowEntityChipStyle.BlazeMomentsPlayerFollowEntityIconSource
import com.blaze.flutterblazesdk.players.moments.BlazeReactMomentsPlayerFollowEntityChipStyle
import com.blaze.flutterblazesdk.utils.parsing.gson.toObject
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class FollowChipIconDecodingTest {
    @Test
    fun mapsTheDartWireValuesToTheNativeIconSource() {
        val star = mapOf<String, Any>("iconSource" to "Star")
            .toObject<BlazeReactMomentsPlayerFollowEntityChipStyle>()
        val default = mapOf<String, Any>("iconSource" to "Default")
            .toObject<BlazeReactMomentsPlayerFollowEntityChipStyle>()

        assertEquals(BlazeMomentsPlayerFollowEntityIconSource.STAR, star?.iconSource?.mapToBlazeEnumClass())
        assertEquals(BlazeMomentsPlayerFollowEntityIconSource.DEFAULT, default?.iconSource?.mapToBlazeEnumClass())
    }

    @Test
    fun omittedIconSourceDecodesToNull() {
        val chip = mapOf<String, Any>("backgroundColor" to "#000000")
            .toObject<BlazeReactMomentsPlayerFollowEntityChipStyle>()

        assertNull(chip?.iconSource)
    }
}
