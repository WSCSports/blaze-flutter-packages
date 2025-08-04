package com.blaze.flutterblazesdk.utils

import android.view.View
import android.view.ViewGroup
import androidx.core.view.children
import kotlin.sequences.forEach


// Function to recursively disable nested scrolling for all nested RecyclerViews to prevent
// conflicts with Flutter Platform View
internal fun View.disableNestedScrolling() {
    isNestedScrollingEnabled = false // ✅ Disable nested scrolling to prevent conflicts
    if (this is ViewGroup) {
        children.forEach { it.disableNestedScrolling() }
    }
}