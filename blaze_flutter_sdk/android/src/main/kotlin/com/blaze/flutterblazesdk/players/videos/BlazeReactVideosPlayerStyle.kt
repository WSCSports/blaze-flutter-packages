package com.blaze.flutterblazesdk.players.videos

import androidx.annotation.Keep
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerCtaIconStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerHeadingTextStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactPlayerButtonStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactSeekBarStyle
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactImage
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTitleFont
import com.blaze.flutterblazesdk.utils.parsing.gson.BlazeEnumMapper

// =================================
// VIDEOS PLAYER STYLE - copied exactly from React Native BlazeReactVideosPlayerStyle.kt
// =================================

@Keep
data class BlazeReactVideosPlayerStyle(
        val headingText: BlazeReactVideosPlayerHeadingTextStyle?,
        val buttons: BlazeReactVideosPlayerButtonsStyle?,
        val backgroundColor: String?, // Hex
        val cta: BlazeReactVideosPlayerCtaStyle?,
        val seekBar: BlazeReactVideosPlayerSeekBarStyle?
)

@Keep
data class BlazeReactVideosPlayerHeadingTextStyle(
        val textSize: Float?,
        val textColor: String?, // Hex
        val font: BlazeReactTitleFont?,
        val contentSource: ContentSource?,
        val isVisible: Boolean?,
        val numberOfLines: Int?
) {
        @Keep
        enum class ContentSource(override val rawValue: String) :
                BlazeEnumMapper<BlazeVideosPlayerHeadingTextStyle.BlazeContentSource> {
                TITLE("Title") {
                        override fun mapToBlazeEnumClass() =
                                BlazeVideosPlayerHeadingTextStyle.BlazeContentSource.TITLE
                }
        }
}

@Keep
data class BlazeReactVideosPlayerButtonsStyle(
        val mute: BlazeReactPlayerButtonStyle?,
        val exit: BlazeReactPlayerButtonStyle?,
        val share: BlazeReactPlayerButtonStyle?,
        val like: BlazeReactPlayerButtonStyle?,
        val playPause: BlazeReactPlayerButtonStyle?,
        var previous: BlazeReactPlayerButtonStyle?,
        var next: BlazeReactPlayerButtonStyle?
)

@Keep
data class BlazeReactVideosPlayerCtaStyle(
        val cornerRadius: Int?,
        val textSize: Float?,
        val font: BlazeReactTitleFont?,
        val width: Int?,
        val height: Int?,
        val icon: BlazeReactVideosPlayerCtaIconStyle?,
        val ctaVisibility: Map<String, Any>?
)

@Keep
data class BlazeReactVideosPlayerSeekBarStyle(
        val isVisible: Boolean?,
        val playingState: BlazeReactSeekBarStyle?,
        val pausedState: BlazeReactSeekBarStyle?,
        val horizontalSpacing: Int?,
        val bottomSpacing: Int?
)

@Keep
data class BlazeReactVideosPlayerCtaIconStyle(
        val iconImage: BlazeReactImage?,
        val iconPositioning: BlazeReactVideosCTAIconPositioning?,
        val iconTint: String?
)

@Keep
enum class BlazeReactVideosCTAIconPositioning(override val rawValue: String) :
        BlazeEnumMapper<BlazeVideosPlayerCtaIconStyle.BlazeIconPositioning> {
        START("Start") {
                override fun mapToBlazeEnumClass() =
                        BlazeVideosPlayerCtaIconStyle.BlazeIconPositioning.START
        }
}
