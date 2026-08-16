package com.blaze.flutterblazesdk.players.shared

import androidx.annotation.Keep
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactColor
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactImage
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTitleFont

@Keep
data class BlazeReactFirstTimeSlideCTAStyle(
    val title: String?,
    val backgroundColor: BlazeReactColor?,
    val textColor: BlazeReactColor?,
    val font: BlazeReactTitleFont?,
    val textSize: Float?,
    val cornerRadius: Int?
)

@Keep
data class BlazeReactPlayerButtonCustomImageStates(
    val selectedImage: BlazeReactImage?,
    val unselectedImage: BlazeReactImage?
)

@Keep
data class BlazeReactCaptionsStyle(
    val font: BlazeReactTitleFont?,
    val textSize: Float?,
    val positioning: BlazeReactCaptionsPositioning?
)

@Keep
data class BlazeReactCaptionsPositioning(
    val xPosition: Map<String, Any?>?,
    val yPosition: Map<String, Any?>?
)

@Keep
data class BlazeReactFirstTimeSlideInstructionStyle(
    val headerText: BlazeReactFirstTimeSlideTextStyle?,
    val descriptionText: BlazeReactFirstTimeSlideTextStyle?
)

@Keep
data class BlazeReactFirstTimeSlideTextStyle(
    val text: String?,
    val font: BlazeReactTitleFont?,
    val textSize: Float?,
    val textColor: BlazeReactColor?
)

@Keep
data class BlazeReactPlayerButtonStyle(
    val width: Int?,
    val height: Int?,
    val color: String?,
    val isVisible: Boolean?,
    val scaleType: String?,
    val isVisibleForAds: Boolean?,
    val customImage: BlazeReactPlayerButtonCustomImageStates?
)

@Keep
data class BlazeReactSeekBarStyle(
    val isVisible: Boolean?,
    val backgroundColor: String?,
    val progressColor: String?,
    val height: Int?,
    val cornerRadius: Float?,
    val thumbColor: String?,
    val thumbImage: BlazeReactImage?,
    val thumbSize: Int?,
    val isThumbVisible: Boolean?
)

@Keep
data class BlazeReactCustomActionButtonParams(
    val id: String?,
    val name: String?,
    val appMetadata: Map<String, Any>?,
    val visibilityCondition: Map<String, Any?>?
)

@Keep
data class BlazeReactCustomActionButton(
    val customParams: BlazeReactCustomActionButtonParams?,
    val style: BlazeReactPlayerButtonStyle?
)
