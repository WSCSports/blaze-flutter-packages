package com.blaze.flutterblazesdk.utils.parsing.gson

import android.util.Log
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import com.google.gson.ToNumberStrategy
import com.google.gson.stream.JsonReader
import java.io.IOException

@PublishedApi internal const val BLAZE_GSON_UTILS_TAG = "GsonUtils"

/**
 * Custom number strategy that intelligently chooses Int for whole numbers and Double for decimals.
 * It only takes place when the type of the field in the object is not specified (For example when
 * you parse a number into a Map<String, Any>).
 */
private object SmartNumberStrategy : ToNumberStrategy {
    @Throws(IOException::class)
    override fun readNumber(reader: JsonReader): Number {
        val numberString = reader.nextString()
        return try {
            val doubleValue = numberString.toDouble()
            // Check if it's a whole number (no fractional part)
            if (doubleValue % 1.0 == 0.0 &&
                            doubleValue >= Int.MIN_VALUE &&
                            doubleValue <= Int.MAX_VALUE
            ) {
                doubleValue.toInt() // Return as Int for whole numbers
            } else {
                doubleValue // Return as Double for decimals or numbers outside Int range
            }
        } catch (e: NumberFormatException) {
            throw IOException("Invalid number: $numberString", e)
        }
    }
}

/**
 * Creates a GsonBuilder with registered custom type adapters.
 *
 * @return A GsonBuilder instance with custom type adapters registered.
 */
private fun createCustomGsonBuilder(): GsonBuilder =
        GsonBuilder()
                .setObjectToNumberStrategy(SmartNumberStrategy) // Use smart number parsing
                .registerBlazeEnumMapperAdapterFactory()
                .registerTypeAdapterFactory(
                        NullableTypeAdapterFactory()
                ) // Has to be last because it's very wide.

/**
 * Creates a customized Gson instance.
 *
 * @return A Gson instance with custom type adapters registered.
 */
@PublishedApi
internal fun createCustomGson(): Gson {
    return createCustomGsonBuilder().setPrettyPrinting().create()
}

/**
 * Extension function to convert a Map to a object of type T using a custom Gson instance with
 * registered custom adapters - matches React Native ReadableMap.toObject<T>()
 *
 * @return An instance of type T deserialized from the Map, or null if deserialization fails.
 */
@PublishedApi
internal inline fun <reified T> Map<String, Any>.toObject(): T? {
    return try {
        // Convert Map to JSON string
        val jsonString = this.toJsonString()
        // Deserialize JSON string to data class of type T
        jsonString.fromJsonString<T>()
    } catch (e: Exception) {
        Log.e(BLAZE_GSON_UTILS_TAG, "toObject: $e")
        null
    }
}

/**
 * Extension function to convert a Map to a JSON string.
 *
 * @return The JSON string representation of the Map.
 */
@PublishedApi
internal fun Map<String, Any>.toJsonString(): String {
    return createCustomGson().toJson(this)
}

/**
 * Generic extension function to deserialize a JSON string into a data class of type T using a
 * custom Gson instance with registered custom adapters.
 *
 * @return An instance of type T deserialized from the JSON string, or null if deserialization
 * fails.
 */
@PublishedApi
internal inline fun <reified T> String.fromJsonString(): T? {
    return try {
        createCustomGson().fromJson(this, T::class.java)
    } catch (e: Exception) {
        Log.e(BLAZE_GSON_UTILS_TAG, "fromJsonString: $e")
        null
    }
}

/**
 * Generic extension function to serialize any data class to a JSON string using Gson with
 * registered custom adapters.
 *
 * @return The JSON string representation of the data class, or null if serialization fails.
 */
@PublishedApi
internal fun Any.toJsonString(): String? {
    return try {
        createCustomGson().toJson(this)
    } catch (e: Exception) {
        null
    }
}

/**
 * Generic extension function to serialize any data class to a JSON string using Gson with
 * registered custom adapters.
 *
 * @return The JSON string representation of the data class, or null if serialization fails.
 */
@PublishedApi
internal fun Any.toJsonStringWithException(): String {
    return createCustomGson().toJson(this)
}

/**
 * Extension function to deserialize any object assumed to be representable as a JSON string into a
 * data class of type T. Requires that the Any object can be transformed into a JSON string
 * representation directly or indirectly.
 *
 * @return An instance of type T deserialized from the JSON representation of the object, or null if
 * deserialization fails.
 */
@PublishedApi
internal inline fun <reified T> Any.toObject(): T? {
    return try {
        val jsonString =
                when (this) {
                    is String -> this
                    else -> this.toJsonString() // This calls toJsonString if available
                }
        createCustomGson().fromJson(jsonString, T::class.java)
    } catch (e: Exception) {
        Log.e(BLAZE_GSON_UTILS_TAG, "Error deserializing object to type ${T::class.java}: $e")
        null
    }
}

/**
 * Sealed class representing different types of JSON parsing errors Provides detailed information
 * about what went wrong during deserialization
 */
sealed class BlazeFlutterJsonParsingError(message: String, cause: Throwable? = null) :
        Exception(message, cause) {

    class InvalidJsonFormat(jsonString: String, cause: Throwable) :
            BlazeFlutterJsonParsingError("Invalid JSON format: '$jsonString'", cause)

    class TypeMismatch(expectedType: String, jsonString: String, cause: Throwable) :
            BlazeFlutterJsonParsingError(
                    "Cannot deserialize JSON to $expectedType. JSON: '$jsonString'",
                    cause
            )

    class NullResult(expectedType: String, jsonString: String) :
            BlazeFlutterJsonParsingError(
                    "Deserialization returned null for non-nullable type $expectedType. JSON: '$jsonString'"
            )

    class EmptyOrBlankJson(expectedType: String) :
            BlazeFlutterJsonParsingError("Cannot deserialize empty or blank JSON to $expectedType")
}

/**
 * Extension function for robust JSON parsing with detailed error information Designed for use cases
 * where you need informative exceptions about parsing failures
 *
 * @param methodName Optional method name for context in error messages
 * @return Deserialized object of type T
 * @throws BlazeFlutterJsonParsingError with specific details about what went wrong
 */
inline fun <reified T> String?.parseJsonWithDetailedErrors(methodName: String? = null): T {
    val typeName = T::class.simpleName ?: "Unknown"
    val contextPrefix = methodName?.let { "Method '$it': " } ?: ""

    // Handle null or empty JSON
    if (this.isNullOrBlank()) {
        // Check if T is nullable
        if (null is T) {
            return null as T
        } else {
            throw BlazeFlutterJsonParsingError.EmptyOrBlankJson(
                    "${contextPrefix}Expected $typeName but JSON was null/empty"
            )
        }
    }

    return try {
        val result = createCustomGson().fromJson(this, T::class.java)

        // Handle case where Gson returns null for non-nullable types
        if (result == null && null !is T) {
            throw BlazeFlutterJsonParsingError.NullResult("${contextPrefix}$typeName", this)
        }

        result as T
    } catch (e: BlazeFlutterJsonParsingError) {
        // Re-throw our custom errors
        throw e
    } catch (e: com.google.gson.JsonSyntaxException) {
        // Gson syntax errors
        throw BlazeFlutterJsonParsingError.InvalidJsonFormat("${contextPrefix}$this", e)
    } catch (e: com.google.gson.JsonParseException) {
        // Other Gson parsing errors
        throw BlazeFlutterJsonParsingError.TypeMismatch("${contextPrefix}$typeName", this, e)
    } catch (e: Exception) {
        // Any other unexpected errors
        throw BlazeFlutterJsonParsingError.TypeMismatch("${contextPrefix}$typeName", this, e)
    }
}
