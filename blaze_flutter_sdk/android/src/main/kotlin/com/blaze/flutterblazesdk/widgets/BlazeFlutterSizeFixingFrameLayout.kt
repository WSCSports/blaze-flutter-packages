package com.blaze.flutterblazesdk.widgets;

import android.content.Context
import android.util.AttributeSet
import android.widget.FrameLayout
import androidx.core.view.doOnLayout

class BlazeFlutterSizeFixingFrameLayout @JvmOverloads constructor(
        context: Context,
        attrs: AttributeSet? = null,
        defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr) {

    var isEmbeddedInScrollView = false
    var onHeightChangedListener: ((height: Int) -> Unit)? = null

    override fun requestLayout() {
        super.requestLayout()

        if (isEmbeddedInScrollView) {
            doOnLayout {
                measureAndLayoutDynamicSize.run()
            }
        }
    }

    private var currentHeight: Int = 0

    private val measureAndLayoutDynamicSize = Runnable {
        // Measure the widget
        measure(
            MeasureSpec.makeMeasureSpec(width, MeasureSpec.EXACTLY),
            MeasureSpec.makeMeasureSpec(0, MeasureSpec.UNSPECIFIED))

        // Bail out if widget's height didn't change.
        if (currentHeight == measuredHeight) return@Runnable

        currentHeight = measuredHeight

        updateHeight(height = measuredHeight)
    }

    private fun updateHeight(height: Int) {
        onHeightChangedListener?.invoke(height)
    }

}