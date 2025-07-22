package com.blaze.flutterblazesdk.ads

import androidx.annotation.Keep
import com.blaze.blazesdk.ads.models.ui.BlazeContentExtraInfo

@Keep
data class BlazeFlutterContentExtraInfo(
        val previous: Map<String, String>?,
        val current: Map<String, String>?,
        val next: Map<String, String>?,
)

@Keep
fun BlazeContentExtraInfo.toFlutterModel(): BlazeFlutterContentExtraInfo {
        return BlazeFlutterContentExtraInfo(
                previous = this.previous,
                current = this.current,
                next = this.next
        )
}
