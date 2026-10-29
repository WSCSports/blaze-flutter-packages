package com.blaze.flutterblazesdk.follow

import com.blaze.blazesdk.follow.models.BlazeFollowEntity
import com.blaze.blazesdk.follow.models.BlazeFollowedEntityCategory

/// Parses a Dart `BlazeFollowedEntityCategory` wire value
fun String?.toFollowedEntityCategory(): BlazeFollowedEntityCategory? {
    return when (this) {
        "team" -> BlazeFollowedEntityCategory.TEAM
        "player" -> BlazeFollowedEntityCategory.PLAYER
        "property" -> BlazeFollowedEntityCategory.PROPERTY
        else -> null
    }
}

/// Converts a native category to its Dart `BlazeFollowedEntityCategory` wire value
fun BlazeFollowedEntityCategory.toFlutterValue(): String {
    return when (this) {
        BlazeFollowedEntityCategory.TEAM -> "team"
        BlazeFollowedEntityCategory.PLAYER -> "player"
        BlazeFollowedEntityCategory.PROPERTY -> "property"
    }
}

/// Parses a Dart `BlazeFollowEntity` map; `null` when it has no string `id`
fun Map<*, *>.toBlazeFollowEntity(): BlazeFollowEntity? {
    val id = this["id"] as? String ?: return null
    return BlazeFollowEntity(
        id,
        this["providerName"] as? String,
        (this["entityType"] as? String).toFollowedEntityCategory()
    )
}

/// Converts a native entity to the Dart `BlazeFollowEntity` map
fun BlazeFollowEntity.toFlutterMap(): Map<String, Any?> {
    return mapOf(
        "id" to entityId,
        "providerName" to providerName,
        "entityType" to entityType?.toFlutterValue()
    )
}
