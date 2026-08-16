package com.blaze.flutterblazesdk.utils

import android.content.Context
import com.blaze.blazesdk.delegates.BlazePlayerContainerTabsDelegate
import com.blaze.blazesdk.features.moments.container.tabs.models.BlazeMomentsContainerTabItem
import com.blaze.blazesdk.features.moments.widgets.tabs.BlazeMomentsWidgetTabsConfiguration
import com.blaze.blazesdk.features.moments.widgets.tabs.BlazeMomentsWidgetTabsController
import com.blaze.blazesdk.style.players.BlazePlayerButtonCustomImageStates
import com.blaze.blazesdk.style.players.tabs.BlazePlayerTabsStyle
import com.blaze.flutterblazesdk.parsers.asCachingLevel
import com.blaze.flutterblazesdk.parsers.toBlazeDataSourceType
import com.blaze.flutterblazesdk.players.extractMomentsPlayerStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactPlayerButtonCustomImageStates
import com.blaze.flutterblazesdk.players.shared.mergedWith
import com.blaze.flutterblazesdk.players.tabs.BlazeReactPlayerTabsStyle
import com.blaze.flutterblazesdk.players.tabs.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.gson.toObject

/**
 * Parses the `tabsConfiguration` creation param into a native
 * [BlazeMomentsWidgetTabsConfiguration].
 *
 * Returns `null` (so the caller falls back to the standard single-moment widget init) when the
 * configuration is missing, malformed, or has no valid tab.
 */
fun Map<String, Any>?.extractMomentsWidgetTabsConfiguration(
    containerTabsDelegate: BlazePlayerContainerTabsDelegate,
    context: Context,
    controller: BlazeMomentsWidgetTabsController = BlazeMomentsWidgetTabsController(),
): BlazeMomentsWidgetTabsConfiguration? {
    val dict = this ?: return null

    val containerSourceId = dict["containerSourceId"] as? String ?: return null

    val tabsList = dict["tabs"] as? List<*> ?: return null
    val tabs = tabsList.mapNotNull { tab ->
        (tab as? Map<String, Any?>)?.extractMomentsContainerTabItem(context)
    }
    if (tabs.isEmpty()) return null

    // Only override the native player style when Dart actually supplies one.
    val playerStyle =
        (dict["playerStyle"] as? Map<String, Any>)?.extractMomentsPlayerStyle(context)
    val tabsStyle = (dict["tabsStyle"] as? Map<String, Any>).extractTabsStyle(context)

    return BlazeMomentsWidgetTabsConfiguration(
        containerSourceId = containerSourceId,
        tabs = tabs,
        containerTabsDelegate = containerTabsDelegate,
        playerStyle = playerStyle,
        tabsStyle = tabsStyle,
        controller = controller,
    )
}

private fun Map<String, Any?>.extractMomentsContainerTabItem(
    context: Context
): BlazeMomentsContainerTabItem? {
    val containerId = get("containerId") as? String ?: return null
    val title = get("title") as? String ?: return null
    val dataSource =
        (get("dataSource") as? Map<String, Any?>)?.toBlazeDataSourceType() ?: return null

    val shouldOrderByReadStatus = get("shouldOrderMomentsByReadStatus") as? Boolean ?: true
    val isVisible = get("isVisible") as? Boolean ?: true
    val cachingLevel = (get("cachePolicyLevel") as? String)?.asCachingLevel()
    val icon = (get("icon") as? Map<String, Any>)?.extractTabItemIcon(context)

    // `momentsAdsConfigType` is intentionally left at the native default
    // (FIRST_AVAILABLE_ADS_CONFIG); the ads-config surface is not bridged yet.
    return BlazeMomentsContainerTabItem(
        containerId = containerId,
        title = title,
        dataSource = dataSource,
        shouldOrderMomentsByReadStatus = shouldOrderByReadStatus,
        isVisible = isVisible,
        icon = icon,
    ).also { item ->
        cachingLevel?.let { item.cachePolicyLevel = it }
    }
}

private fun Map<String, Any>.extractTabItemIcon(
    context: Context
): BlazePlayerButtonCustomImageStates? {
    val reactIcon = toObject<BlazeReactPlayerButtonCustomImageStates>() ?: return null
    val base: BlazePlayerButtonCustomImageStates? = null
    return base.mergedWith(reactIcon, context)
}

/**
 * Builds the tabs strip style from the native `.base()` preset merged with the Dart customization.
 *
 * The style contains only nested primitives, so it is deserialized via JSON (`toObject`) and merged
 * by [BlazePlayerTabsStyle.mergedWith] — the same approach used for the player styles, instead of
 * parsing the map field-by-field.
 */
private fun Map<String, Any>?.extractTabsStyle(context: Context): BlazePlayerTabsStyle {
    val customization = this?.toObject<BlazeReactPlayerTabsStyle>()
    return BlazePlayerTabsStyle.base().mergedWith(customization, context)
}
