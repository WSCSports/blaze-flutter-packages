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

/**
 * Each function merges the Dart-supplied style onto [startingStyle]. The default is the app's
 * default style (set through `initSDK`), so a per-call, per-widget or tabs style only overrides
 * the fields it sets. `initSDK` passes the native `base()` preset, so a second init does not
 * stack on the previous default.
 */
fun Map<String, Any>?.extractStoriesPlayerStyle(
    context: Context,
    startingStyle: BlazeStoryPlayerStyle = BlazeSDK.getDefaultStoryPlayerStyle(),
): BlazeStoryPlayerStyle {
    val reactTheme = this ?: return startingStyle

    val customization = reactTheme.toObject<BlazeReactStoryPlayerStyle>()

    return startingStyle.mergedWith(customization = customization, context)
}

fun Map<String, Any>?.extractMomentsPlayerStyle(
    context: Context,
    startingStyle: BlazeMomentsPlayerStyle = BlazeSDK.getDefaultMomentsPlayerStyle(),
): BlazeMomentsPlayerStyle {
    val reactTheme = this ?: return startingStyle

    val customization = reactTheme.toObject<BlazeReactMomentsPlayerStyle>()

    return startingStyle.mergedWith(customization = customization, context)
}

fun Map<String, Any>?.extractVideosPlayerStyle(
    context: Context,
    startingStyle: BlazeVideosPlayerStyle = BlazeSDK.getDefaultVideosPlayerStyle(),
): BlazeVideosPlayerStyle {
    val reactTheme = this ?: return startingStyle

    val customization = reactTheme.toObject<BlazeReactVideosPlayerStyle>()

    return startingStyle.mergedWith(customization = customization, context)
}
