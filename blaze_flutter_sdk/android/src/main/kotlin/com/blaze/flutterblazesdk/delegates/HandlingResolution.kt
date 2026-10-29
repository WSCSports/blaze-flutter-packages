package com.blaze.flutterblazesdk.delegates

import com.blaze.blazesdk.delegates.models.BlazeInteractionLinkHandleType

/// Parses a Dart `BlazeInteractionLinkHandleType` wire value
fun String?.toInteractionLinkHandleType(): BlazeInteractionLinkHandleType? {
    return when (this) {
        "deeplink" -> BlazeInteractionLinkHandleType.DEEPLINK
        "web" -> BlazeInteractionLinkHandleType.WEB
        "handled" -> BlazeInteractionLinkHandleType.HANDLED
        else -> null
    }
}

/// The value returned to native `onTriggerInteractionLink`: the widget's value, then the
/// global value from `initSDK`, then the native default
fun resolveLinkHandling(
    widget: String?,
    global: BlazeInteractionLinkHandleType?
): BlazeInteractionLinkHandleType {
    return widget.toInteractionLinkHandleType()
        ?: global
        ?: BlazeInteractionLinkHandleType.DEEPLINK
}
