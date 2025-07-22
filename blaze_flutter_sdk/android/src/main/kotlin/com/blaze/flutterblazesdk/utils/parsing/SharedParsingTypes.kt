package com.blaze.flutterblazesdk.utils.parsing

import android.view.Gravity
import androidx.annotation.Keep
import com.blaze.flutterblazesdk.utils.parsing.gson.BlazeEnumMapper

@Keep data class BlazeReactColor(val colorName: String?, val colorFileName: String?)

@Keep data class BlazeReactImage(val imageName: String?)

@Keep data class BlazeReactTitleFont(val fontFileName: String?)

@Keep
enum class BlazeReactTextAlign(override val rawValue: String) : BlazeEnumMapper<Int> {
    START("Start") {
        override fun mapToBlazeEnumClass() = Gravity.START
    },
    CENTER("Center") {
        override fun mapToBlazeEnumClass() = Gravity.CENTER
    },
    END("End") {
        override fun mapToBlazeEnumClass() = Gravity.END
    },
}