package com.blaze.flutterblazesdk.utils.parsing.gson

import com.google.gson.Gson
import com.google.gson.GsonBuilder
import com.google.gson.JsonParseException
import com.google.gson.TypeAdapter
import com.google.gson.TypeAdapterFactory
import com.google.gson.reflect.TypeToken
import com.google.gson.stream.JsonReader
import com.google.gson.stream.JsonToken
import com.google.gson.stream.JsonWriter

/** TypeAdapterFactory for enums implementing BlazeEnumMapper. */
internal class BlazeEnumMapperAdapterFactory : TypeAdapterFactory {
    /**
     * Creates a type adapter for the given type if it is an enum that implements BlazeEnumMapper.
     *
     * @param gson The Gson instance.
     * @param type The type token representing the type to adapt.
     * @return A type adapter for the specified type, or null if the type does not match.
     */
    override fun <T> create(gson: Gson, type: TypeToken<T>): TypeAdapter<T>? {
        return try {
            val rawType = type.rawType
            // Check if the raw type is an enum and implements BlazeEnumMapper
            if (rawType.isEnum && BlazeEnumMapper::class.java.isAssignableFrom(rawType)) {
                @Suppress("UNCHECKED_CAST")
                return BlazeEnumMapperAdapter(rawType as Class<BlazeEnumMapper<*>>) as
                        TypeAdapter<T>
            }
            null
        } catch (e: Exception) {
            throw JsonParseException("Error creating type adapter: ${e.message}", e)
        }
    }
}

/**
 * TypeAdapter for deserializing enums implementing BlazeEnumMapper.
 *
 * @param T The enum type that implements BlazeEnumMapper.
 * @property enumType The class of the enum type.
 */
internal class BlazeEnumMapperAdapter<T : BlazeEnumMapper<*>>(private val enumType: Class<T>) :
        TypeAdapter<T>() {
    /**
     * Serializes the given enum value to its raw value.
     *
     * @param out The JSON writer.
     * @param value The enum value to serialize.
     */
    override fun write(out: JsonWriter, value: T?) {
        try {
            if (value == null) {
                out.nullValue()
            } else {
                out.value(value.rawValue)
            }
        } catch (e: Exception) {
            throw JsonParseException("Error writing JSON: ${e.message}", e)
        }
    }

    /**
     * Deserializes the JSON element to the corresponding enum value.
     *
     * @param reader The JSON reader.
     * @return The deserialized enum value.
     * @throws JsonParseException If no matching enum constant is found or an error occurs during
     * deserialization.
     */
    override fun read(reader: JsonReader): T? {
        return try {
            if (reader.peek() == JsonToken.NULL) {
                reader.nextNull()
                null
            } else {
                val rawValue = reader.nextString()
                val enumConstants =
                        enumType.enumConstants
                                ?: throw JsonParseException(
                                        "No enum constants found for type: $enumType"
                                )
                enumConstants.firstOrNull { it.rawValue == rawValue }
                        ?: throw JsonParseException(
                                "No matching enum constant found for value: $rawValue"
                        )
            }
        } catch (e: Exception) {
            throw JsonParseException("Error during deserialization: ${e.message}", e)
        }
    }
}

/**
 * Extension function to register the BlazeEnumMapper adapter factory with GsonBuilder.
 *
 * @return The GsonBuilder instance.
 */
internal fun GsonBuilder.registerBlazeEnumMapperAdapterFactory(): GsonBuilder {
    return this.registerTypeAdapterFactory(BlazeEnumMapperAdapterFactory())
}
