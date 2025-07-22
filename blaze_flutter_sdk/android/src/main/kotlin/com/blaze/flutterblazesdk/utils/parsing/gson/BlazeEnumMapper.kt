package com.blaze.flutterblazesdk.utils.parsing.gson

import androidx.annotation.Keep

@Keep
interface BlazeEnumMapper<T> {
    val rawValue: String
    fun mapToBlazeEnumClass(): T
}
