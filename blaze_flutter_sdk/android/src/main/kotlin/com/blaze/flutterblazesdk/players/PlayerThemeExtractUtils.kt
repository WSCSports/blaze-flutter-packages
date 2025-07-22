package com.blaze.flutterblazesdk.players

import android.content.Context
import com.blaze.blazesdk.shared.BlazeSDK
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerStyle
import com.blaze.blazesdk.style.players.stories.BlazeStoryPlayerStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerStyle
import com.blaze.flutterblazesdk.players.moments.BlazeReactMomentsPlayerStyle
import com.blaze.flutterblazesdk.players.moments.mergedWith
import com.blaze.flutterblazesdk.players.stories.BlazeReactStoryPlayerStyle
import com.blaze.flutterblazesdk.players.stories.mergedWith
import com.blaze.flutterblazesdk.players.videos.BlazeReactVideosPlayerStyle
import com.blaze.flutterblazesdk.players.videos.mergedWith
import com.blaze.flutterblazesdk.utils.parsing.gson.toObject

fun Map<String, Any>?.extractStoriesPlayerStyle(context: Context): BlazeStoryPlayerStyle {
    val reactTheme = this ?: return BlazeSDK.getDefaultStoryPlayerStyle()

    val customization = reactTheme.toObject<BlazeReactStoryPlayerStyle>()

    return BlazeStoryPlayerStyle.base().mergedWith(customization = customization, context)
}

fun Map<String, Any>?.extractMomentsPlayerStyle(context: Context): BlazeMomentsPlayerStyle {
    val reactTheme = this ?: return BlazeSDK.getDefaultMomentsPlayerStyle()

    val customization = reactTheme.toObject<BlazeReactMomentsPlayerStyle>()

    return BlazeMomentsPlayerStyle.base().mergedWith(customization = customization, context)
}

fun Map<String, Any>?.extractVideosPlayerStyle(context: Context): BlazeVideosPlayerStyle {
    val reactTheme = this ?: return BlazeSDK.getDefaultVideosPlayerStyle()

    val customization = reactTheme.toObject<BlazeReactVideosPlayerStyle>()

    return BlazeVideosPlayerStyle.base().mergedWith(customization = customization, context)
}
