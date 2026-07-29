package com.blaze.flutterblazesdk.players.shared

import com.blaze.blazesdk.style.shared.models.BlazePlayerCustomActionButtonParams
import com.blaze.blazesdk.style.shared.models.BlazePlayerCustomActionButtonParams.VisibilityCondition

/**
 * Parses a raw Map (deserialized from Flutter via Gson) into a native [VisibilityCondition].
 *
 * The map comes in the form: { "type": "keyExists", "key": "playerId" }
 * For recursive cases (and/or/not) the nested conditions are parsed recursively.
 */
fun Map<String, Any?>.toVisibilityCondition(): VisibilityCondition? {
    val type = this["type"] as? String ?: return null

    return when (type) {
        "always" -> VisibilityCondition.Always
        "never" -> VisibilityCondition.Never

        "keyExists" -> {
            val key = this["key"] as? String ?: return null
            VisibilityCondition.KeyExists(key)
        }

        "keyNotExists" -> {
            val key = this["key"] as? String ?: return null
            VisibilityCondition.KeyNotExists(key)
        }

        "keyEquals" -> {
            val key = this["key"] as? String ?: return null
            val value = this["value"] ?: return null
            VisibilityCondition.KeyEquals(key, value)
        }

        "keyNotEquals" -> {
            val key = this["key"] as? String ?: return null
            val value = this["value"] ?: return null
            VisibilityCondition.KeyNotEquals(key, value)
        }

        "keyIn" -> {
            val key = this["key"] as? String ?: return null
            val values = (this["values"] as? List<*>)?.filterNotNull() ?: return null
            VisibilityCondition.KeyIn(key, values)
        }

        "keyNotIn" -> {
            val key = this["key"] as? String ?: return null
            val values = (this["values"] as? List<*>)?.filterNotNull() ?: return null
            VisibilityCondition.KeyNotIn(key, values)
        }

        "keyGreaterThan" -> {
            val key = this["key"] as? String ?: return null
            val threshold = (this["threshold"] as? Number)?.toDouble() ?: return null
            VisibilityCondition.KeyGreaterThan(key, threshold)
        }

        "keyLessThan" -> {
            val key = this["key"] as? String ?: return null
            val threshold = (this["threshold"] as? Number)?.toDouble() ?: return null
            VisibilityCondition.KeyLessThan(key, threshold)
        }

        "keyBetween" -> {
            val key = this["key"] as? String ?: return null
            val min = (this["min"] as? Number)?.toDouble() ?: return null
            val max = (this["max"] as? Number)?.toDouble() ?: return null
            VisibilityCondition.KeyBetween(key, min, max)
        }

        "keyContains" -> {
            val key = this["key"] as? String ?: return null
            val substring = this["substring"] as? String ?: return null
            VisibilityCondition.KeyContains(key, substring)
        }

        "and" -> {
            val conditions = parseNestedConditions(this["conditions"]) ?: return null
            VisibilityCondition.And(conditions)
        }

        "or" -> {
            val conditions = parseNestedConditions(this["conditions"]) ?: return null
            VisibilityCondition.Or(conditions)
        }

        "not" -> {
            @Suppress("UNCHECKED_CAST")
            val conditionMap = this["condition"] as? Map<String, Any?> ?: return null
            val condition = conditionMap.toVisibilityCondition() ?: return null
            VisibilityCondition.Not(condition)
        }

        else -> null
    }
}

@Suppress("UNCHECKED_CAST")
private fun parseNestedConditions(raw: Any?): List<VisibilityCondition>? {
    val list = raw as? List<Map<String, Any?>> ?: return null
    val parsed = list.mapNotNull { it.toVisibilityCondition() }
    return parsed.ifEmpty { return null }
}

/**
 * Converts [BlazeReactCustomActionButtonParams] to native [BlazePlayerCustomActionButtonParams].
 */
fun BlazeReactCustomActionButtonParams.toNativeParams(): BlazePlayerCustomActionButtonParams? {
    val id = this.id ?: return null
    val name = this.name ?: return null

    @Suppress("UNCHECKED_CAST")
    val nativeAppMetadata = (this.appMetadata ?: emptyMap()) as Map<String, Any>
    val nativeVisibility = this.visibilityCondition?.toVisibilityCondition()

    return BlazePlayerCustomActionButtonParams(
        id = id,
        name = name,
        appMetadata = nativeAppMetadata,
        visibilityCondition = nativeVisibility
    )
}
