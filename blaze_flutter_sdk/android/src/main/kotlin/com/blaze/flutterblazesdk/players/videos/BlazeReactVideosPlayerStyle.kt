package com.blaze.flutterblazesdk.players.videos

import androidx.annotation.Keep
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerCtaIconStyle
import com.blaze.blazesdk.style.players.videos.BlazeVideosPlayerHeadingTextStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactCaptionsStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactPlayerButtonStyle
import com.blaze.flutterblazesdk.players.shared.BlazeReactSeekBarStyle
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactImage
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTitleFont
import com.blaze.flutterblazesdk.utils.parsing.gson.BlazeEnumMapper
import com.blaze.flutterblazesdk.widgets.customization.BlazeReactMargins

// =================================
// VIDEOS PLAYER STYLE
// =================================

@Keep
data class BlazeReactVideosPlayerStyle(
        val headingText: BlazeReactVideosPlayerHeadingTextStyle?,
        val buttons: BlazeReactVideosPlayerButtonsStyle?,
        val backgroundColor: String?, // Hex
        val cta: BlazeReactVideosPlayerCtaStyle?,
        val seekBar: BlazeReactVideosPlayerSeekBarStyle?,
        val overlayVisibilityThresholdMs: Long?,
        val captions: BlazeReactCaptionsStyle?,
        val statusIndicator: BlazeReactVideosPlayerStatusIndicatorStyle?,
        val backToLiveButton: BlazeReactVideosPlayerBackToLiveButtonStyle?
)

@Keep
data class BlazeReactVideosPlayerTextStyle(
        val font: BlazeReactTitleFont?,
        val textSize: Float?,
        val textColor: String? // Hex
)

@Keep
data class BlazeReactVideosPlayerStatusIndicatorStyle(
        val isVisible: Boolean?,
        val padding: BlazeReactMargins?,
        val streamStates: BlazeReactVideosPlayerStatusIndicatorStreamStatesStyle?
)

@Keep
data class BlazeReactVideosPlayerStatusIndicatorStreamStatesStyle(
        val liveStreamState: BlazeReactVideosPlayerStatusIndicatorStateStyle?,
        val upcomingStreamState: BlazeReactVideosPlayerStatusIndicatorStateStyle?,
        val endedStreamState: BlazeReactVideosPlayerStatusIndicatorStateStyle?
)

@Keep
data class BlazeReactVideosPlayerStatusIndicatorStateStyle(
        val textStyle: BlazeReactVideosPlayerTextStyle?,
        val isVisible: Boolean?,
        val text: String?,
        val backgroundColor: String?, // Hex
        val backgroundImage: BlazeReactImage?,
        val cornerRadius: Float?,
        val cornerRadiusRatio: Float?,
        val borderColor: String?, // Hex
        val borderWidth: Float?
)

@Keep
data class BlazeReactVideosPlayerBackToLiveButtonStyle(
        val margins: BlazeReactMargins?,
        val padding: BlazeReactMargins?,
        val playbackStates: BlazeReactVideosPlayerBackToLiveButtonPlaybackStatesStyle?
)

@Keep
data class BlazeReactVideosPlayerBackToLiveButtonPlaybackStatesStyle(
        val atLiveEdgeState: BlazeReactVideosPlayerBackToLiveButtonStateStyle?,
        val behindLiveState: BlazeReactVideosPlayerBackToLiveButtonStateStyle?
)

@Keep
data class BlazeReactVideosPlayerBackToLiveButtonStateStyle(
        val textStyle: BlazeReactVideosPlayerTextStyle?,
        val text: String?,
        val backgroundColor: String?, // Hex
        val cornerRadius: Float?,
        val cornerRadiusRatio: Float?
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
        var next: BlazeReactPlayerButtonStyle?,
        val captions: BlazeReactPlayerButtonStyle?,
        val forceRotation: BlazeReactPlayerButtonStyle?,
        val casting: BlazeReactPlayerButtonStyle?,
        val pictureInPicture: BlazeReactPlayerButtonStyle?,
        val seekForward: BlazeReactPlayerButtonStyle?,
        val seekBackward: BlazeReactPlayerButtonStyle?,
        val audio: BlazeReactPlayerButtonStyle?,
        val liveCatchup: BlazeReactPlayerButtonStyle?
)

@Keep
data class BlazeReactVideosPlayerCtaStyle(
        val cornerRadius: Int?,
        val textSize: Float?,
        val font: BlazeReactTitleFont?,
        val width: Int?,
        val height: Int?,
        val icon: BlazeReactVideosPlayerCtaIconStyle?,
        val isVisible: Boolean?,
        val borderColor: String?, // Hex
        val borderWidth: Int?
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
