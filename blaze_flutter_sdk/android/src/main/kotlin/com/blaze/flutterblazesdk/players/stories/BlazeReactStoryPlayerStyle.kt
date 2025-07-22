package com.blaze.flutterblazesdk.players.stories

import androidx.annotation.Keep
import com.blaze.blazesdk.style.players.BlazeTextCase
import com.blaze.flutterblazesdk.players.shared.BlazeReactFirstTimeSlideCTAStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactFirstTimeSlideInstructionStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactFirstTimeSlideTextStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactPlayerButtonStyle
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactColor
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTitleFont
import com.blaze.flutterblazesdk.utils.parsing.gson.BlazeEnumMapper
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactMargins

@Keep
data class BlazeReactStoryPlayerStyle(
        val title: BlazeReactStoryPlayerTitleTextStyle?,
        val lastUpdate: BlazeReactStoryPlayerLastUpdateTextStyle?,
        val buttons: BlazeReactStoryPlayerButtonsStyle?,
        val chips: BlazeReactStoryPlayerChipsStyle?,
        val backgroundColor: String?,
        val cta: BlazeReactStoryPlayerCtaStyle?,
        val headerGradient: BlazeReactStoryPlayerHeaderGradientStyle?,
        val progressBar: BlazeReactStoryPlayerProgressBarStyle?,
        val firstTimeSlide: BlazeReactStoryPlayerFirstTimeSlideStyle?
)

@Keep
data class BlazeReactStoryPlayerTitleTextStyle(
        val font: BlazeReactTitleFont?,
        val textSize: Float?,
        val textColor: String?,
        var isVisible: Boolean?
)

@Keep
data class BlazeReactStoryPlayerLastUpdateTextStyle(
        val font: BlazeReactTitleFont?,
        val textColor: String?,
        val textSize: Float?,
        val textCase: BlazeReactTextCase?,
        var isVisible: Boolean?
)

@Keep
data class BlazeReactStoryPlayerButtonsStyle(
        val mute: BlazeReactPlayerButtonStyle?,
        val exit: BlazeReactPlayerButtonStyle?,
        val share: BlazeReactPlayerButtonStyle?
)

@Keep
data class BlazeReactStoryPlayerChipsStyle(
        val live: BlazeReactStoryPlayerChipStyle?,
        val ad: BlazeReactStoryPlayerChipStyle?
)

@Keep
data class BlazeReactStoryPlayerChipStyle(
        val titlePadding: BlazeReactMargins?,
        val text: String?,
        val textColor: String?,
        val backgroundColor: String?,
        var isVisible: Boolean?
)

@Keep
data class BlazeReactStoryPlayerCtaStyle(
        val cornerRadius: Int?,
        val textSize: Float?,
        val font: BlazeReactTitleFont?,
)

@Keep
data class BlazeReactStoryPlayerHeaderGradientStyle(
        val isVisible: Boolean?,
        val startColor: String?,
        val endColor: String?
)

@Keep
data class BlazeReactStoryPlayerFirstTimeSlideStyle(
        val show: Boolean?,
        val cta: BlazeReactFirstTimeSlideCTAStyle?,
        val backgroundColor: BlazeReactColor?,
        val mainTitle: BlazeReactFirstTimeSlideTextStyle?,
        val subtitle: BlazeReactFirstTimeSlideTextStyle?,
        val instructions: BlazeReactStoryPlayerFirstTimeSlideInstructionsStyle?
)

@Keep
data class BlazeReactStoryPlayerProgressBarStyle(
        val backgroundColor: String?,
        val progressColor: String?
)

@Keep
data class BlazeReactStoryPlayerFirstTimeSlideInstructionsStyle(
        val forward: BlazeReactFirstTimeSlideInstructionStyle?,
        val pause: BlazeReactFirstTimeSlideInstructionStyle?,
        val backward: BlazeReactFirstTimeSlideInstructionStyle?,
        val transition: BlazeReactFirstTimeSlideInstructionStyle?
)

@Keep
enum class BlazeReactTextCase(override val rawValue: String) : BlazeEnumMapper<BlazeTextCase> {
        UPPERCASE("Uppercase") {
                override fun mapToBlazeEnumClass() = BlazeTextCase.UPPERCASE
        },
        LOWERCASE("Lowercase") {
                override fun mapToBlazeEnumClass() = BlazeTextCase.LOWERCASE
        },
}
