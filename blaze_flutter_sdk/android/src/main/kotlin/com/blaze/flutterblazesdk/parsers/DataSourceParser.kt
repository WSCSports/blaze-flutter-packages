package com.blaze.flutterblazesdk.parsers

import com.blaze.blazesdk.data_source.BlazeAdvancedOrderType
import com.blaze.blazesdk.data_source.BlazeDataSourcePersonalizedType
import com.blaze.blazesdk.data_source.BlazeDataSourceType
import com.blaze.blazesdk.data_source.BlazeOrderType
import com.blaze.blazesdk.data_source.BlazeRecommendationsType
import com.blaze.blazesdk.data_source.BlazeWidgetLabel
import com.blaze.blazesdk.prefetch.models.BlazeCachingLevel

/** Extension functions to parse BlazeDataSourceType from Flutter's Map representation */
fun Map<String, Any?>.toBlazeDataSourceType(): BlazeDataSourceType? {
    return when {
        containsKey("labels") -> parseLabelsDataSource()
        containsKey("ids") -> parseIdsDataSource()
        containsKey("recommendationsType") -> parseRecommendationsDataSource()
        else -> null
    }
}

private fun Map<String, Any?>.parseLabelsDataSource(): BlazeDataSourceType.Labels? {
    val blazeWidgetLabel =
        (get("labels") as? Map<String, Any?>)?.toBlazeWidgetLabel() ?: return null

    return BlazeDataSourceType.Labels(
        blazeWidgetLabel = blazeWidgetLabel,
        orderType = (get("orderType") as? String)?.toBlazeOrderType(),
        advancedOrderType = (get("advancedOrderType") as? String)?.toBlazeAdvancedOrderType(),
        labelsPriority = parseLabelsPriority(),
        maxItems = (get("maxItems") as? Number)?.toInt(),
        personalizedType =
            (get("personalizedType") as? Map<String, Any?>)?.toBlazePersonalizedType()
    )
}

private fun Map<String, Any?>.parseIdsDataSource(): BlazeDataSourceType.Ids? {
    val ids = get("ids") as? List<*> ?: return null
    val stringIds = ids.filterIsInstance<String>()

    return BlazeDataSourceType.Ids(
        ids = stringIds,
        orderType = (get("orderType") as? String)?.toBlazeOrderType(),
        advancedOrderType = (get("advancedOrderType") as? String)?.toBlazeAdvancedOrderType()
    )
}

private fun Map<String, Any?>.parseRecommendationsDataSource():
        BlazeDataSourceType.Recommendations? {
    val recommendationsMap = get("recommendationsType") as? Map<String, Any?> ?: return null
    val type = recommendationsMap["type"] as? String ?: return null
    val anyLabelFilter =
        (recommendationsMap["anyLabelFilter"] as? List<*>)?.filterIsInstance<String>()
            ?: emptyList()

    val recommendationsType =
        when (type) {
            "ForYou" -> BlazeRecommendationsType.ForYou(anyLabelFilter = anyLabelFilter)
            "Trending" -> BlazeRecommendationsType.Trending(anyLabelFilter = anyLabelFilter)
            else -> return null
        }

    return BlazeDataSourceType.Recommendations(type = recommendationsType)
}

private fun Map<String, Any?>.parseLabelsPriority(): List<BlazeWidgetLabel>? {
    val labelsPriorityList = get("labelsPriority") as? List<*> ?: return null
    val labels = labelsPriorityList.toBlazeWidgetLabelArray()
    return labels.ifEmpty { null }
}

private fun Map<String, Any?>.toBlazeWidgetLabel(): BlazeWidgetLabel? {
    val value = get("value") as? String ?: return null
    return BlazeWidgetLabel.singleLabel(value)
}

private fun String.toBlazeOrderType(): BlazeOrderType? {
    return when (this) {
        "manual" -> BlazeOrderType.MANUAL
        "recentlyUpdatedFirst" -> BlazeOrderType.RECENTLY_UPDATED_FIRST
        "recentlyUpdatedLast" -> BlazeOrderType.RECENTLY_UPDATED_LAST
        "aToZ" -> BlazeOrderType.A_TO_Z
        "zToA" -> BlazeOrderType.Z_TO_A
        "recentlyCreatedFirst" -> BlazeOrderType.RECENTLY_CREATED_FIRST
        "recentlyCreatedLast" -> BlazeOrderType.RECENTLY_CREATED_LAST
        "random" -> BlazeOrderType.RANDOM
        else -> null
    }
}

private fun String.toBlazeAdvancedOrderType(): BlazeAdvancedOrderType? {
    return when (this) {
        "liveFirst" -> BlazeAdvancedOrderType.LiveFirst
        else -> null
    }
}

private fun Map<String, Any?>.toBlazePersonalizedType(): BlazeDataSourcePersonalizedType? {
    val type = get("type") as? String ?: return null

    return when (type) {
        "Ids" -> parsePersonalizedTypeIds()
        "Labels" -> parsePersonalizedTypeLabels()
        else -> null
    }
}

private fun Map<String, Any?>.parsePersonalizedTypeIds(): BlazeDataSourcePersonalizedType.Ids? {
    val idsMap = get("ids") as? Map<String, Any?> ?: return null
    val convertedMap = mutableMapOf<BlazeDataSourcePersonalizedType.Ids.ContentType, List<String>>()

    idsMap.forEach { (key, value) ->
        val contentType = key.toPersonalizedContentType() ?: return@forEach
        val ids = (value as? List<*>)?.filterIsInstance<String>() ?: return@forEach
        convertedMap[contentType] = ids
    }

    return BlazeDataSourcePersonalizedType.Ids(idsMap = convertedMap)
}

private fun Map<String, Any?>.parsePersonalizedTypeLabels():
        BlazeDataSourcePersonalizedType.Labels? {
    val labelsFilter =
        (get("labelsFilter") as? Map<String, Any?>)?.toBlazeWidgetLabel() ?: return null

    val labelsPriorityList = get("labelsPriority") as? List<*> ?: return null
    val labelsPriority = labelsPriorityList.toBlazeWidgetLabelArray()

    return BlazeDataSourcePersonalizedType.Labels(
        labelsFilter = labelsFilter,
        labelsPriority = labelsPriority
    )
}

private fun String.toPersonalizedContentType(): BlazeDataSourcePersonalizedType.Ids.ContentType? {
    return when (this) {
        "players" -> BlazeDataSourcePersonalizedType.Ids.ContentType.PLAYERS
        "teams" -> BlazeDataSourcePersonalizedType.Ids.ContentType.TEAMS
        else -> null
    }
}

/** Extension function to convert a List<*> to List<BlazeWidgetLabel> */
private fun List<*>.toBlazeWidgetLabelArray(): List<BlazeWidgetLabel> {
    return this.mapNotNull { item -> (item as? Map<String, Any?>)?.toBlazeWidgetLabel() }
}

/** Extension function to convert Flutter enum name to BlazeCachingLevel */
fun String?.asCachingLevel(): BlazeCachingLevel {
    return when (this) {
        "low" -> BlazeCachingLevel.LOW
        "defaultLevel" -> BlazeCachingLevel.DEFAULT
        "high" -> BlazeCachingLevel.HIGH
        "extreme" -> BlazeCachingLevel.EXTREME
        else -> BlazeCachingLevel.DEFAULT
    }
}
