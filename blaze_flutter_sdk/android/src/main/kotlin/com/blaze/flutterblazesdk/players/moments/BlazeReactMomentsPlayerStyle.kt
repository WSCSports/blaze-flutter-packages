package com.blaze.flutterblazesdk.players.moments

import androidx.annotation.Keep
import com.blaze.blazesdk.style.players.BlazePlayerDisplayMode
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerBodyTextStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerCtaIconStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerCtaStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerFooterGradientStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerHeadingTextStyle
import com.blaze.blazesdk.style.players.moments.BlazeMomentsPlayerStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactFirstTimeSlideCTAStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactFirstTimeSlideInstructionStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactFirstTimeSlideTextStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactPlayerButtonStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactSeekBarStyle
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactColor
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactImage
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTitleFont
import com.blaze.flutterblazesdk.utils.parsing.gson.BlazeEnumMapper
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactMargins

@Keep
data class BlazeReactMomentsPlayerStyle(
    val headingText: BlazeReactMomentsPlayerHeadingTextStyle?,
    val bodyText: BlazeReactMomentsPlayerBodyTextStyle?,
    val buttons: BlazeReactMomentsPlayerButtonsStyle?,
    val chips: BlazeReactMomentsPlayerChipsStyle?,
    val backgroundColor: String?, // Hex
    val cta: BlazeReactMomentsPlayerCtaStyle?,
    val headerGradient: BlazeReactMomentsPlayerHeaderGradientStyle?,
    val footerGradient: BlazeReactMomentsPlayerFooterGradientStyle?,
    val firstTimeSlide: BlazeReactMomentsPlayerFirstTimeSlideStyle?,
    val seekBar: BlazeReactMomentsPlayerSeekBarStyle?,
    val bottomComponentsAlignment: BlazeReactBottomComponentsAlignment?,
    var playerDisplayMode: BlazeReactPlayerDisplayMode?
)

@Keep
data class BlazeReactMomentsPlayerHeadingTextStyle(
    val textSize: Float?,
    val textColor: String?, // Hex
    val font: BlazeReactTitleFont?,
    val contentSource: ContentSource?,
    val isVisible: Boolean?
) {
    @Keep
    enum class ContentSource(override val rawValue: String) :
        BlazeEnumMapper<BlazeMomentsPlayerHeadingTextStyle.BlazeContentSource> {
        TITLE("Title") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerHeadingTextStyle.BlazeContentSource.TITLE
        },
        SUBTITLE("Subtitle") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerHeadingTextStyle.BlazeContentSource.SUBTITLE
        }
    }
}

@Keep
data class BlazeReactMomentsPlayerBodyTextStyle(
    val textSize: Float?,
    val textColor: String?, // Hex
    val font: BlazeReactTitleFont?,
    val contentSource: ContentSource?,
    val isVisible: Boolean?
) {
    @Keep
    enum class ContentSource(override val rawValue: String) :
        BlazeEnumMapper<BlazeMomentsPlayerBodyTextStyle.BlazeContentSource> {
        TITLE("Title") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerBodyTextStyle.BlazeContentSource.TITLE
        },
        SUBTITLE("Subtitle") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerBodyTextStyle.BlazeContentSource.SUBTITLE
        },
        DESCRIPTION("Description") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerBodyTextStyle.BlazeContentSource.DESCRIPTION
        }
    }
}

@Keep
data class BlazeReactMomentsPlayerButtonsStyle(
    val mute: BlazeReactPlayerButtonStyle?,
    val exit: BlazeReactPlayerButtonStyle?,
    val share: BlazeReactPlayerButtonStyle?,
    val like: BlazeReactPlayerButtonStyle?,
    val play: BlazeReactPlayerButtonStyle?
)

@Keep data class BlazeReactMomentsPlayerChipsStyle(val ad: BlazeReactMomentsPlayerChipStyle?)

@Keep
data class BlazeReactMomentsPlayerChipStyle(
    val titlePadding: BlazeReactMargins?,
    val text: String?,
    val textColor: String?,
    val backgroundColor: String?,
    var isVisible: Boolean?
)

@Keep
data class BlazeReactMomentsPlayerCtaStyle(
    val cornerRadius: Int?,
    val textSize: Float?,
    val font: BlazeReactTitleFont?,
    val width: Int?,
    val height: Int?,
    val icon: BlazeReactMomentsPlayerCtaIconStyle?,
    val layoutPositioning: CTAPositioning?,
    val horizontalAlignment: CTAHorizontalAlignment?
) {
    @Keep
    enum class CTAPositioning(override val rawValue: String) :
        BlazeEnumMapper<BlazeMomentsPlayerCtaStyle.BlazeCTAPositioning> {
        CTA_BELLOW_BOTTOM_BUTTONS_BOX("CtaBellowBottomButtonsBox") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerCtaStyle.BlazeCTAPositioning.CTA_BELLOW_BOTTOM_BUTTONS_BOX
        },
        CTA_NEXT_TO_BOTTOM_BUTTONS_BOX("CtaNextToBottomButtonsBox") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerCtaStyle.BlazeCTAPositioning.CTA_NEXT_TO_BOTTOM_BUTTONS_BOX
        }
    }

    @Keep
    enum class CTAHorizontalAlignment(override val rawValue: String) :
        BlazeEnumMapper<BlazeMomentsPlayerCtaStyle.BlazeCTAHorizontalAlignment> {
        START("Start") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerCtaStyle.BlazeCTAHorizontalAlignment.START
        },
        CENTER("Center") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerCtaStyle.BlazeCTAHorizontalAlignment.CENTER
        },
        END("End") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerCtaStyle.BlazeCTAHorizontalAlignment.END
        },
        FULL_AVAILABLE_WIDTH("FullAvailableWidth") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerCtaStyle.BlazeCTAHorizontalAlignment.FULL_AVAILABLE_WIDTH
        }
    }
}

@Keep
data class BlazeReactMomentsPlayerHeaderGradientStyle(
    val isVisible: Boolean?,
    val startColor: String?, // Hex
    val endColor: String?, // Hex
)

@Keep
data class BlazeReactMomentsPlayerFooterGradientStyle(
    val isVisible: Boolean?,
    val startColor: String?, // Hex
    val endColor: String?, // Hex
    val endPositioning: EndPositioning?
) {
    @Keep
    enum class EndPositioning(override val rawValue: String) :
        BlazeEnumMapper<BlazeMomentsPlayerFooterGradientStyle.BlazeEndPositioning> {
        BOTTOM_TO_PLAYER("BottomToPlayer") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerFooterGradientStyle.BlazeEndPositioning.BOTTOM_TO_PLAYER
        },
        BOTTOM_TO_CONTAINER("BottomToContainer") {
            override fun mapToBlazeEnumClass() =
                BlazeMomentsPlayerFooterGradientStyle.BlazeEndPositioning.BOTTOM_TO_CONTAINER
        }
    }
}

@Keep
data class BlazeReactMomentsPlayerFirstTimeSlideStyle(
    val show: Boolean?,
    val cta: BlazeReactFirstTimeSlideCTAStyle?,
    val backgroundColor: BlazeReactColor?,
    val mainTitle: BlazeReactFirstTimeSlideTextStyle?,
    val subtitle: BlazeReactFirstTimeSlideTextStyle?,
    val instructions: BlazeReactMomentsPlayerFirstTimeSlideInstructionsStyle?
)

@Keep
data class BlazeReactMomentsPlayerFirstTimeSlideInstructionsStyle(
    val next: BlazeReactFirstTimeSlideInstructionStyle?,
    val pause: BlazeReactFirstTimeSlideInstructionStyle?,
    val previous: BlazeReactFirstTimeSlideInstructionStyle?,
    val play: BlazeReactFirstTimeSlideInstructionStyle?
)

@Keep
data class BlazeReactMomentsPlayerSeekBarStyle(
    val isVisible: Boolean?,
    val playingState: BlazeReactSeekBarStyle?,
    val pausedState: BlazeReactSeekBarStyle?,
    val horizontalSpacing: Int?,
    val bottomSpacing: Int?
)

@Keep
data class BlazeReactMomentsPlayerCtaIconStyle(
    val iconImage: BlazeReactImage?,
    val iconPositioning: BlazeReactMomentsCTAIconPositioning?,
    val iconTint: String?
)

@Keep
enum class BlazeReactBottomComponentsAlignment(override val rawValue: String) :
    BlazeEnumMapper<BlazeMomentsPlayerStyle.BlazeBottomComponentsAlignment> {
    RELATIVE_TO_CONTAINER("RelativeToContainer") {
        override fun mapToBlazeEnumClass() =
            BlazeMomentsPlayerStyle.BlazeBottomComponentsAlignment.RELATIVE_TO_CONTAINER
    },
    RELATIVE_TO_PLAYER("RelativeToPlayer") {
        override fun mapToBlazeEnumClass() =
            BlazeMomentsPlayerStyle.BlazeBottomComponentsAlignment.RELATIVE_TO_PLAYER
    },
    FIT_CTA_BELOW_PLAYER("FitCtaBelowPlayer") {
        override fun mapToBlazeEnumClass() =
            BlazeMomentsPlayerStyle.BlazeBottomComponentsAlignment.FIT_CTA_BELOW_PLAYER
    }
}

@Keep
enum class BlazeReactPlayerDisplayMode(override val rawValue: String) :
    BlazeEnumMapper<BlazePlayerDisplayMode> {
    FIXED_RATIO_9_16("FixedRatio_9_16") {
        override fun mapToBlazeEnumClass() = BlazePlayerDisplayMode.FIXED_RATIO_9_16
    },
    RESIZE_ASPECT_FILL_CENTER_CROP("ResizeAspectFillCenterCrop") {
        override fun mapToBlazeEnumClass() = BlazePlayerDisplayMode.RESIZE_ASPECT_FILL_CENTER_CROP
    }
}

@Keep
enum class BlazeReactMomentsCTAIconPositioning(override val rawValue: String) :
    BlazeEnumMapper<BlazeMomentsPlayerCtaIconStyle.BlazeIconPositioning> {
    START("Start") {
        override fun mapToBlazeEnumClass() =
            BlazeMomentsPlayerCtaIconStyle.BlazeIconPositioning.START
    }
}
