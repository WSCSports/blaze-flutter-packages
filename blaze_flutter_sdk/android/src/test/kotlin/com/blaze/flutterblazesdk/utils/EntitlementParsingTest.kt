package com.blaze.flutterblazesdk.utils

import com.blaze.blazesdk.entitlements.models.BlazeFetchedContentPolicy
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class EntitlementParsingTest {
    @Test
    fun parsesDartFetchedContentPolicies() {
        assertEquals(BlazeFetchedContentPolicy.Keep, "keep".toFetchedContentPolicy())
        assertEquals(BlazeFetchedContentPolicy.Evict, "evict".toFetchedContentPolicy())
    }

    @Test
    fun rejectsUnknownValues() {
        assertNull("Keep".toFetchedContentPolicy())
        assertNull("bogus".toFetchedContentPolicy())
        assertNull(null.toFetchedContentPolicy())
    }
}
