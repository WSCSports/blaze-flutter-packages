package com.blaze.flutterblazesdk.follow

import com.blaze.blazesdk.follow.models.BlazeFollowEntity
import com.blaze.blazesdk.follow.models.BlazeFollowedEntityCategory
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class FollowEntityParsingTest {
    @Test
    fun parsesAnEntityWithMetadata() {
        val entity = mapOf("id" to "1", "providerName" to "opta", "entityType" to "player")
            .toBlazeFollowEntity()

        // Native equality uses the id only, so check every field.
        assertEquals("1", entity?.entityId)
        assertEquals("opta", entity?.providerName)
        assertEquals(BlazeFollowedEntityCategory.PLAYER, entity?.entityType)
    }

    @Test
    fun metadataIsOptionalAndUnknownCategoriesAreDropped() {
        val idOnly = mapOf("id" to "1", "providerName" to null, "entityType" to null)
            .toBlazeFollowEntity()
        assertEquals("1", idOnly?.entityId)
        assertNull(idOnly?.providerName)
        assertNull(idOnly?.entityType)

        assertNull(mapOf("id" to "1", "entityType" to "galaxy").toBlazeFollowEntity()?.entityType)
    }

    @Test
    fun anEntityWithoutAnIdIsSkipped() {
        assertNull(mapOf("providerName" to "opta").toBlazeFollowEntity())
        assertNull(mapOf("id" to 7).toBlazeFollowEntity())
    }

    @Test
    fun parsesEveryDartCategory() {
        assertEquals(BlazeFollowedEntityCategory.TEAM, "team".toFollowedEntityCategory())
        assertEquals(BlazeFollowedEntityCategory.PLAYER, "player".toFollowedEntityCategory())
        assertEquals(BlazeFollowedEntityCategory.PROPERTY, "property".toFollowedEntityCategory())
        assertNull("Team".toFollowedEntityCategory())
    }

    @Test
    fun convertsBackToTheDartMap() {
        val entity = BlazeFollowEntity("1", "opta", BlazeFollowedEntityCategory.TEAM)

        assertEquals(
            mapOf("id" to "1", "providerName" to "opta", "entityType" to "team"),
            entity.toFlutterMap()
        )
        assertEquals(
            mapOf("id" to "2", "providerName" to null, "entityType" to null),
            BlazeFollowEntity("2").toFlutterMap()
        )
    }
}
