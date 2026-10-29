package com.blaze.flutterblazesdk.parsers

import com.blaze.blazesdk.data_source.BlazeAdvancedOrderType
import com.blaze.blazesdk.data_source.BlazeDataSourceType
import com.blaze.blazesdk.data_source.BlazeOrderType
import com.blaze.blazesdk.follow.models.BlazeFollowedEntityCategory
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertIs
import kotlin.test.assertNull

internal class DataSourceParserTest {
    @Test
    fun parsesFollowedEntities() {
        val source = mapOf<String, Any?>(
            "entityTypes" to listOf("team", "player"),
            "orderType" to "aToZ",
            "advancedOrderType" to "liveFirst",
            "maxItems" to 5
        ).toBlazeDataSourceType()

        assertIs<BlazeDataSourceType.FollowedEntities>(source)
        assertEquals(
            setOf(BlazeFollowedEntityCategory.TEAM, BlazeFollowedEntityCategory.PLAYER),
            source.entityTypes
        )
        assertEquals(BlazeOrderType.A_TO_Z, source.orderType)
        assertEquals(BlazeAdvancedOrderType.LiveFirst, source.advancedOrderType)
        assertEquals(5, source.maxItems)
    }

    @Test
    fun emptyEntityTypesMeanAllCategoriesAndUnknownOnesAreDropped() {
        val all = mapOf<String, Any?>("entityTypes" to emptyList<String>()).toBlazeDataSourceType()
        assertIs<BlazeDataSourceType.FollowedEntities>(all)
        assertEquals(emptySet(), all.entityTypes)
        assertNull(all.maxItems)

        val partial = mapOf<String, Any?>("entityTypes" to listOf("team", "galaxy"))
            .toBlazeDataSourceType()
        assertIs<BlazeDataSourceType.FollowedEntities>(partial)
        assertEquals(setOf(BlazeFollowedEntityCategory.TEAM), partial.entityTypes)
    }

    @Test
    fun existingVariantsStillParse() {
        assertIs<BlazeDataSourceType.Ids>(mapOf<String, Any?>("ids" to listOf("1")).toBlazeDataSourceType())
        assertIs<BlazeDataSourceType.Search>(
            mapOf<String, Any?>("searchText" to "nba").toBlazeDataSourceType()
        )
        assertNull(mapOf<String, Any?>("bogus" to 1).toBlazeDataSourceType())
    }
}
