package com.blaze.flutterblazesdk.utils

import com.blaze.blazesdk.shared.results.BlazeResult
import com.blaze.blazesdk.shared.results.ErrorDomain
import com.blaze.blazesdk.shared.results.ErrorReason
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class BlazeFlutterErrorTest {
    @Test
    fun reasonAndDomainUseTheNativeDeclaredValue() {
        val flutterError = BlazeFlutterError.fromBlazeError(
            BlazeResult.Error(
                domain = ErrorDomain.USER_MANAGEMENT,
                reason = ErrorReason.FAILED_TO_SET_EXTERNAL_USER_ID,
                message = "boom"
            )
        )

        assertEquals("userManagement", flutterError.domain)
        assertEquals("failedToSetExternalUserId", flutterError.reason)
        assertEquals("boom", flutterError.message)
    }

    @Test
    fun everyReasonCrossesAsItsDeclaredValue() {
        for (reason in ErrorReason.values()) {
            val flutterError = BlazeFlutterError.fromBlazeError(BlazeResult.Error(reason = reason))
            assertEquals(reason.value, flutterError.reason)
        }
        assertEquals(
            "applicationNotInitialised",
            BlazeFlutterError.fromBlazeError(
                BlazeResult.Error(reason = ErrorReason.APPLICATION_NOT_INITIALIZED)
            ).reason
        )
    }

    @Test
    fun aMissingDomainOrReasonStaysNull() {
        val flutterError = BlazeFlutterError.fromBlazeError(BlazeResult.Error(message = "boom"))

        assertNull(flutterError.domain)
        assertNull(flutterError.reason)
    }
}
