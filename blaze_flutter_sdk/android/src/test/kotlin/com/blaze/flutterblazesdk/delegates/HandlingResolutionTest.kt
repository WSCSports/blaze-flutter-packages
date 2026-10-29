package com.blaze.flutterblazesdk.delegates

import com.blaze.blazesdk.delegates.models.BlazeInteractionLinkHandleType.DEEPLINK
import com.blaze.blazesdk.delegates.models.BlazeInteractionLinkHandleType.HANDLED
import com.blaze.blazesdk.delegates.models.BlazeInteractionLinkHandleType.WEB
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class HandlingResolutionTest {
    @Test
    fun parsesDartInteractionLinkHandleTypes() {
        assertEquals(DEEPLINK, "deeplink".toInteractionLinkHandleType())
        assertEquals(WEB, "web".toInteractionLinkHandleType())
        assertEquals(HANDLED, "handled".toInteractionLinkHandleType())
        assertNull("DEEPLINK".toInteractionLinkHandleType())
        assertNull(null.toInteractionLinkHandleType())
    }

    @Test
    fun linkHandlingResolvesWidgetThenGlobalThenDeeplink() {
        assertEquals(WEB, resolveLinkHandling(widget = "web", global = HANDLED))
        assertEquals(HANDLED, resolveLinkHandling(widget = null, global = HANDLED))
        assertEquals(DEEPLINK, resolveLinkHandling(widget = null, global = null))
        assertEquals(DEEPLINK, resolveLinkHandling(widget = "bogus", global = null))
        assertEquals(WEB, resolveLinkHandling(widget = "bogus", global = WEB))
    }
}
