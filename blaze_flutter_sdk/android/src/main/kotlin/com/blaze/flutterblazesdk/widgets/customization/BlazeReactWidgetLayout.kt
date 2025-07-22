package com.blaze.flutterblazesdk.widgets.customization

import androidx.annotation.Keep
import com.blaze.blazesdk.style.shared.models.BlazeObjectXPosition
import com.blaze.blazesdk.style.shared.models.BlazeObjectYPosition
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemImageGradientOverlayStyle
import com.blaze.blazesdk.style.widgets.BlazeWidgetItemImageStyle
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactImage
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTextAlign
import com.blaze.flutterblazesdk.utils.parsing.BlazeReactTitleFont
import com.blaze.flutterblazesdk.utils.parsing.gson.BlazeEnumMapper

@Keep
enum class BlazeReactThumbnailType(override val rawValue: String) :
    BlazeEnumMapper<BlazeWidgetItemImageStyle.BlazeThumbnailType> {
    SQUARE_ICON("SquareIcon") {
        override fun mapToBlazeEnumClass() =
            BlazeWidgetItemImageStyle.BlazeThumbnailType.SQUARE_ICON
    },
    VERTICAL_TWO_BY_THREE("VerticalTwoByThree") {
        override fun mapToBlazeEnumClass() =
            BlazeWidgetItemImageStyle.BlazeThumbnailType.VERTICAL_TWO_BY_THREE
    },
    CUSTOM("Custom") {
        override fun mapToBlazeEnumClass() = BlazeWidgetItemImageStyle.BlazeThumbnailType.CUSTOM
    }
}

@Keep
enum class BlazeReactWidgetItemImagePosition(override val rawValue: String) :
    BlazeEnumMapper<BlazeWidgetItemImageStyle.BlazeImagePosition> {
    TOP_START("TopStart") {
        override fun mapToBlazeEnumClass() = BlazeWidgetItemImageStyle.BlazeImagePosition.TopStart
    },
    TOP_CENTER("TopCenter") {
        override fun mapToBlazeEnumClass() = BlazeWidgetItemImageStyle.BlazeImagePosition.TopCenter
    },
    TOP_END("TopEnd") {
        override fun mapToBlazeEnumClass() = BlazeWidgetItemImageStyle.BlazeImagePosition.TopEnd
    },
    CENTER_START("CenterStart") {
        override fun mapToBlazeEnumClass() =
            BlazeWidgetItemImageStyle.BlazeImagePosition.CenterStart
    },
    CENTER("Center") {
        override fun mapToBlazeEnumClass() = BlazeWidgetItemImageStyle.BlazeImagePosition.Center
    },
    CENTER_END("CenterEnd") {
        override fun mapToBlazeEnumClass() = BlazeWidgetItemImageStyle.BlazeImagePosition.CenterEnd
    },
    BOTTOM_CENTER("BottomCenter") {
        override fun mapToBlazeEnumClass() =
            BlazeWidgetItemImageStyle.BlazeImagePosition.BottomCenter
    },
    BOTTOM_START("BottomStart") {
        override fun mapToBlazeEnumClass() =
            BlazeWidgetItemImageStyle.BlazeImagePosition.BottomStart
    },
    BOTTOM_END("BottomEnd") {
        override fun mapToBlazeEnumClass() = BlazeWidgetItemImageStyle.BlazeImagePosition.BottomEnd
    }
}

@Keep
data class BlazeReactWidgetItemImageStyle(
    val position: BlazeReactWidgetItemImagePosition?,
    val width: Int?,
    val height: Int?,
    val ratio: Float?,
    val cornerRadius: Int?,
    val cornerRadiusRatio: Float?,
    val border: BlazeReactWidgetItemImageContainerBorderStyle?,
    val thumbnailType: BlazeReactThumbnailType?,
    val margins: BlazeReactMargins?,
    val animatedThumbnail: BlazeReactWidgetItemImageAnimatedThumbnailStyle?,
    val gradientOverlay: BlazeReactWidgetItemImageGradientOverlayStyle?
)

@Keep
data class BlazeReactWidgetItemImageGradientOverlayStyle(
    val isVisible: Boolean?,
    val position: Position?,
    val startColor: String?,
    val endColor: String?
) {
    @Keep
    enum class Position(override val rawValue: String) :
        BlazeEnumMapper<BlazeWidgetItemImageGradientOverlayStyle.BlazeGradientPosition> {
        TOP("Top") {
            override fun mapToBlazeEnumClass() =
                BlazeWidgetItemImageGradientOverlayStyle.BlazeGradientPosition.TOP
        },
        CENTER("Center") {
            override fun mapToBlazeEnumClass() =
                BlazeWidgetItemImageGradientOverlayStyle.BlazeGradientPosition.CENTER
        },
        Bottom("Bottom") {
            override fun mapToBlazeEnumClass() =
                BlazeWidgetItemImageGradientOverlayStyle.BlazeGradientPosition.BOTTOM
        },
    }
}

@Keep
data class BlazeReactWidgetItemImageContainerBorderStyle(
    val isVisible: Boolean?,
    val liveReadState: BlazeReactWidgetItemImageContainerBorderStateStyle?,
    val liveUnreadState: BlazeReactWidgetItemImageContainerBorderStateStyle?,
    val readState: BlazeReactWidgetItemImageContainerBorderStateStyle?,
    val unreadState: BlazeReactWidgetItemImageContainerBorderStateStyle?
)

@Keep
data class BlazeReactWidgetItemImageAnimatedThumbnailStyle(
    val isEnabled: Boolean?,
    val horizontalAnimationTriggerPercentage: Float?,
)

@Keep
data class BlazeReactWidgetItemImageContainerBorderStateStyle(
    val isVisible: Boolean?,
    val color: String?,
    val margin: Int?,
    val width: Int?
)

@Keep
data class BlazeReactMargins(
    val top: Int?,
    val leading: Int?,
    val bottom: Int?,
    val trailing: Int?
)

@Keep
data class BlazeReactWidgetItemTitleStyle(
    val isVisible: Boolean?,
    val readState: BlazeReactTitleStyle?,
    val unreadState: BlazeReactTitleStyle?,
    val margins: BlazeReactMargins?,
    val position: BlazeReactObjectPositioning?
)

@Keep
data class BlazeReactObjectPositioning(
    val xPosition: BlazeReactObjectXPosition?,
    val yPosition: BlazeReactObjectYPosition?
)

@Keep
enum class BlazeReactObjectYPosition(override val rawValue: String) :
    BlazeEnumMapper<BlazeObjectYPosition> {
    BOTTOM_TO_BOTTOM("BottomToBottom") {
        override fun mapToBlazeEnumClass() = BlazeObjectYPosition.BOTTOM_TO_BOTTOM
    },
    BOTTOM_TO_TOP("BottomToTop") {
        override fun mapToBlazeEnumClass() = BlazeObjectYPosition.BOTTOM_TO_TOP
    },
    TOP_TO_BOTTOM("TopToBottom") {
        override fun mapToBlazeEnumClass() = BlazeObjectYPosition.TOP_TO_BOTTOM
    },
    TOP_TO_TOP("TopToTop") {
        override fun mapToBlazeEnumClass() = BlazeObjectYPosition.TOP_TO_TOP
    },
    CENTER_TO_TOP("CenterToTop") {
        override fun mapToBlazeEnumClass() = BlazeObjectYPosition.CENTER_TO_TOP
    },
    CENTER_Y("CenterY") {
        override fun mapToBlazeEnumClass() = BlazeObjectYPosition.CENTER_Y
    },
    CENTER_TO_BOTTOM("CenterToBottom") {
        override fun mapToBlazeEnumClass() = BlazeObjectYPosition.CENTER_TO_BOTTOM
    },
}

@Keep
enum class BlazeReactObjectXPosition(override val rawValue: String) :
    BlazeEnumMapper<BlazeObjectXPosition> {
    START_TO_START("LeadingToLeading") {
        override fun mapToBlazeEnumClass() = BlazeObjectXPosition.START_TO_START
    },
    START_TO_END("LeadingToTrailing") {
        override fun mapToBlazeEnumClass() = BlazeObjectXPosition.START_TO_END
    },
    END_TO_START("TrailingToLeading") {
        override fun mapToBlazeEnumClass() = BlazeObjectXPosition.END_TO_START
    },
    END_TO_END("TrailingToTrailing") {
        override fun mapToBlazeEnumClass() = BlazeObjectXPosition.END_TO_END
    },
    CENTER_TO_START("CenterToLeading") {
        override fun mapToBlazeEnumClass() = BlazeObjectXPosition.CENTER_TO_START
    },
    CENTER_X("CenterX") {
        override fun mapToBlazeEnumClass() = BlazeObjectXPosition.CENTER_X
    },
    CENTER_TO_END("CenterToTrailing") {
        override fun mapToBlazeEnumClass() = BlazeObjectXPosition.CENTER_TO_END
    },
}

@Keep
data class BlazeReactTitleStyle(
    val font: BlazeReactTitleFont?,
    val textSize: Float?,
    val letterSpacing: Float?,
    val textColor: String?,
    val lineHeight: Int?,
    val maxLines: Int?,
    val textAlign: BlazeReactTextAlign?
)

@Keep
data class BlazeReactWidgetItemStyle(
    val title: BlazeReactWidgetItemTitleStyle?,
    val image: BlazeReactWidgetItemImageStyle?,
    val backgroundColor: String?,
    val cornerRadius: Float?,
    val cornerRadiusRatio: Float?,
    val margins: BlazeReactMargins?,
    val statusIndicator: BlazeReactWidgetItemStatusIndicatorStyle?,
    val badge: BlazeReactWidgetItemBadgeStyle?
)

@Keep
data class BlazeReactWidgetItemStatusIndicatorStyle(
    val isVisible: Boolean?,
    val position: BlazeReactObjectPositioning?,
    val margins: BlazeReactMargins?,
    val statusTitlePadding: BlazeReactMargins?,
    val liveUnreadState: BlazeReactWidgetItemStatusIndicatorStateStyle?,
    val liveReadState: BlazeReactWidgetItemStatusIndicatorStateStyle?,
    val unreadState: BlazeReactWidgetItemStatusIndicatorStateStyle?,
    val readState: BlazeReactWidgetItemStatusIndicatorStateStyle?,
)

@Keep
data class BlazeReactWidgetItemStatusIndicatorStateStyle(
    val isVisible: Boolean?,
    val backgroundColor: String?,
    val backgroundImage: BlazeReactImage?,
    val textStyle: BlazeReactTitleStyle?,
    val text: String?,
    val cornerRadius: Float?,
    val cornerRadiusRatio: Float?,
    val borderColor: String?,
    val borderWidth: Int?
)

@Keep
data class BlazeReactWidgetItemBadgeStyle(
    val isVisible: Boolean?,
    val position: BlazeReactObjectPositioning?,
    val margins: BlazeReactMargins?,
    val titlePadding: BlazeReactMargins?,
    val liveUnreadState: BlazeReactWidgetItemBadgeStateStyle?,
    val liveReadState: BlazeReactWidgetItemBadgeStateStyle?,
    val unreadState: BlazeReactWidgetItemBadgeStateStyle?,
    val readState: BlazeReactWidgetItemBadgeStateStyle?,
)

@Keep
data class BlazeReactWidgetItemBadgeStateStyle(
    val width: Int?,
    val height: Int?,
    val isVisible: Boolean?,
    val backgroundColor: String?,
    val backgroundImage: BlazeReactImage?,
    val textStyle: BlazeReactTitleStyle?,
    val text: String?,
    val cornerRadius: Float?,
    val cornerRadiusRatio: Float?,
    val borderColor: String?,
    val borderWidth: Int?
)

@Keep
data class BlazeReactWidgetLayout(
    val horizontalItemsSpacing: Int?,
    val verticalItemsSpacing: Int?,
    val itemRatio: Float?,
    val columns: Int?,
    val maxDisplayItemsCount: Int?,
    val widgetItemStyle: BlazeReactWidgetItemStyle?,
    val margins: BlazeReactMargins?
)
