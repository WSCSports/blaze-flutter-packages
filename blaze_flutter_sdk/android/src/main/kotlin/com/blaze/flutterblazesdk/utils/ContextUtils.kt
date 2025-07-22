package com.blaze.flutterblazesdk.utils

import android.content.Context
import android.content.ContextWrapper
import android.view.ContextThemeWrapper
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager

fun Context?.getFragmentManager(): FragmentManager? {
    return when (this) {
        is AppCompatActivity -> this.supportFragmentManager
        is FragmentActivity -> this.supportFragmentManager
        is ContextThemeWrapper -> this.baseContext.getFragmentManager()
        is ContextWrapper -> this.baseContext.getFragmentManager()
        else -> null
    }
}

fun Context.convertPixelsToDp(pixels: Int): Float {
    val screenPixelDensity = resources.displayMetrics.density
    return (pixels / screenPixelDensity)
}