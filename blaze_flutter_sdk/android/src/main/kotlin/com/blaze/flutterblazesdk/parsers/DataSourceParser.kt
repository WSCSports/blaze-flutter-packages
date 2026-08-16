package com.blaze.flutterblazesdk.parsers

import com.blaze.blazesdk.data_source.BlazeAdvancedOrderType
import com.blaze.blazesdk.data_source.BlazeCompositeDataSourceConfig
import com.blaze.blazesdk.data_source.BlazeCompositeDataSourceEntry
import com.blaze.blazesdk.data_source.BlazeDataSourcePersonalizedType
import com.blaze.blazesdk.data_source.BlazeDataSourceType
import com.blaze.blazesdk.data_source.BlazeOrderType
import com.blaze.blazesdk.data_source.BlazeRecommendationsType
import com.blaze.blazesdk.data_source.BlazeWidgetLabel
import com.blaze.blazesdk.prefetch.models.BlazeCachingLevel
import com.blaze.blazesdk.shared.models.BlazeLayoutDirection

/** Extension functions to parse BlazeDataSourceType from Flutter's Map representation */
fun Map<String, Any?>.toBlazeDataSourceType(): BlazeDataSourceType? {
    return when {
        // Search carries an optional "labels" key too, so it must be matched first.
        containsKey("searchText") -> parseSearchDataSource()
        containsKey("labels") -> parseLabelsDataSource()
        containsKey("ids") -> parseIdsDataSource()
        containsKey("recommendationsType") -> parseRecommendationsDataSource()
        containsKey("dataSources") -> parseCompositeDataSource()
        else -> null
    }
}

private fun Map<String, Any?>.parseSearchDataSource(): BlazeDataSourceType.Search? {
    val searchText = get("searchText") as? String ?: return null
    val maxItems = (get("maxItems") as? Number)?.toInt()
    val blazeWidgetLabel = (get("labels") as? Map<String, Any?>)?.toBlazeWidgetLabel()

    return BlazeDataSourceType.Search(
        searchText = searchText,
        maxItems = maxItems,
        blazeWidgetLabel = blazeWidgetLabel
    )
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
    val coldStartLabels =
        (recommendationsMap["coldStartLabels"] as? List<*>)?.filterIsInstance<String>()
            ?: emptyList()

    val recommendationsType =
        when (type) {
            "ForYou" -> BlazeRecommendationsType.ForYou(
                anyLabelFilter = anyLabelFilter,
                coldStartLabels = coldStartLabels
            )
            "Trending" -> BlazeRecommendationsType.Trending(anyLabelFilter = anyLabelFilter)
            else -> return null
        }

    return BlazeDataSourceType.Recommendations(type = recommendationsType)
}

/**
 * Parses a [BlazeDataSourceType.Composite] from the "dataSources" key. Nested entries are
 * validated natively (non-empty, no nested composite) - any structural violation surfaces as a
 * [com.blaze.blazesdk.shared.results.BlazeResult.Error] through the normal completion callback,
 * so an empty/malformed list is intentionally passed through rather than pre-validated here.
 */
private fun Map<String, Any?>.parseCompositeDataSource(): BlazeDataSourceType.Composite? {
    val dataSourcesList = get("dataSources") as? List<*> ?: return null
    val entries = dataSourcesList.map { entry ->
        (entry as? Map<String, Any?>)?.toBlazeCompositeDataSourceEntry() ?: return null
    }

    return BlazeDataSourceType.Composite(dataSources = entries)
}

private fun Map<String, Any?>.toBlazeCompositeDataSourceEntry(): BlazeCompositeDataSourceEntry? {
    val dataSourceMap = get("dataSource") as? Map<String, Any?> ?: return null
    val dataSource = dataSourceMap.toBlazeDataSourceType() ?: return null
    val isMandatory = (get("config") as? Map<String, Any?>)?.get("isMandatory") as? Boolean ?: false

    return BlazeCompositeDataSourceEntry(
        dataSource = dataSource,
        config = BlazeCompositeDataSourceConfig(isMandatory = isMandatory)
    )
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
        "startTimeDesc" -> BlazeOrderType.START_TIME_DESC
        "startTimeAsc" -> BlazeOrderType.START_TIME_ASC
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

    val labelsPriority =
        (get("labelsPriority") as? List<*>)?.toBlazeWidgetLabelArray() ?: emptyList()

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

/**
 * Extension function to convert a Flutter enum name to [BlazeLayoutDirection].
 * Returns null when absent or unrecognized, which leaves the native default
 * (follow the system layout direction) in place.
 */
fun String?.asBlazeLayoutDirection(): BlazeLayoutDirection? {
    return when (this) {
        "ltr" -> BlazeLayoutDirection.LTR
        "rtl" -> BlazeLayoutDirection.RTL
        else -> null
    }
}
