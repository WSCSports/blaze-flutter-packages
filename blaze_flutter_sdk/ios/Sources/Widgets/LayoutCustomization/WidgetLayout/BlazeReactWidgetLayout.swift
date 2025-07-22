//
//  BlazeReactWidgetLayout.swift
//  Pods
//
//  Created by Reuven Levitsky on 18/05/2025.
//

struct BlazeReactWidgetLayout: Codable {
    var horizontalItemsSpacing: Double?
    var verticalItemsSpacing: Double?
    var itemRatio: Double?
    var columns: Int?
    var maxDisplayItemsCount: Int?
    var widgetItemStyle: BlazeReactWidgetItemStyle?
    var margins: BlazeReactMargins?
}

enum BlazeReactThumbnailType: String, Codable {
    case squareIcon = "SquareIcon"
    case verticalTwoByThree = "VerticalTwoByThree"
    case custom = "Custom"
}

enum BlazeReactWidgetItemImagePosition: String, Codable {
    case topStart = "TopStart"
    case topCenter = "TopCenter"
    case topEnd = "TopEnd"
    case centerStart = "CenterStart"
    case center = "Center"
    case centerEnd = "CenterEnd"
    case bottomStart = "BottomStart"
    case bottomCenter = "BottomCenter"
    case bottomEnd = "BottomEnd"
}

enum BlazeReactObjectYPosition: String, Codable {
    case bottomToTop = "BottomToTop"
    case topToTop = "TopToTop"
    case bottomToBottom = "BottomToBottom"
    case topToBottom = "TopToBottom"
    case centerToTop = "CenterToTop"
    case centerY = "CenterY"
    case centerToBottom = "CenterToBottom"
}

enum BlazeReactObjectXPosition: String, Codable {
    case leadingToLeading = "LeadingToLeading"
    case leadingToTrailing = "LeadingToTrailing"
    case trailingToLeading = "TrailingToLeading"
    case trailingToTrailing = "TrailingToTrailing"
    case centerX = "CenterX"
    case centerToLeading = "CenterToLeading"
    case centerToTrailing = "CenterToTrailing"
}

struct BlazeReactObjectPositioning: Codable {
    var xPosition: BlazeReactObjectXPosition?
    var yPosition: BlazeReactObjectYPosition?
}

struct BlazeReactWidgetItemImageStyle: Codable {
    var position: BlazeReactWidgetItemImagePosition?
    var width: CGFloat?
    var height: CGFloat?
    var ratio: CGFloat?
    var cornerRadius: CGFloat?
    var cornerRadiusRatio: CGFloat?
    var border: BlazeReactWidgetItemImageContainerBorderStyle?
    var thumbnailType: BlazeReactThumbnailType?
    var margins: BlazeReactMargins?
    var animatedThumbnail: BlazeReactWidgetItemAnimatedThumbnailStyle?
    var gradientOverlay: BlazeReactWidgetItemImageGradientOverlayStyle?
}

struct BlazeReactWidgetItemImageGradientOverlayStyle: Codable {
    var isVisible: Bool?
    var position: Position?
    var startColor: String?
    var endColor: String?
    
    enum Position: String, Codable {
        case top = "Top"
        case center = "Center"
        case bottom = "Bottom"
    }
}

struct BlazeReactWidgetItemAnimatedThumbnailStyle: Codable {
    var isEnabled: Bool?
    var horizontalAnimationTriggerPercentage: Double?
}

struct BlazeReactWidgetItemImageContainerBorderStyle: Codable {
    var isVisible: Bool?
    var liveReadState: BlazeReactWidgetItemImageContainerBorderStateStyle?
    var liveUnreadState: BlazeReactWidgetItemImageContainerBorderStateStyle?
    var readState: BlazeReactWidgetItemImageContainerBorderStateStyle?
    var unreadState: BlazeReactWidgetItemImageContainerBorderStateStyle?
}

struct BlazeReactWidgetItemImageContainerBorderStateStyle: Codable {
    var isVisible: Bool?
    var color: String?
    var margin: Double?
    var width: Double?
}

struct BlazeReactWidgetItemTitleStyle: Codable {
    var isVisible: Bool?
    var readState: BlazeReactTitleStyle?
    var unreadState: BlazeReactTitleStyle?
    var position: BlazeReactObjectPositioning?
    var margins: BlazeReactMargins?
}

struct BlazeReactWidgetItemStyle: Codable {
    var title: BlazeReactWidgetItemTitleStyle?
    var image: BlazeReactWidgetItemImageStyle?
    var backgroundColor: String?
    var cornerRadius: CGFloat?
    var cornerRadiusRatio: CGFloat?
    var margins: BlazeReactMargins?
    var statusIndicator: BlazeReactWidgetItemStatusIndicatorStyle?
    var badge: BlazeReactWidgetItemBadgeStyle?
    var durationElement: BlazeReactWidgetItemDurationElementStyle?
}

struct BlazeReactWidgetItemDurationElementStyle: Codable {
    var isVisible: Bool?
    var position: BlazeReactObjectPositioning?
    var insets: BlazeReactMargins?
    var contentPadding: BlazeReactMargins?
    var icon: BlazeReactImage?
    var liveUnreadState: BlazeReactWidgetItemDurationElementStateStyle?
    var liveReadState: BlazeReactWidgetItemDurationElementStateStyle?
    var unreadState: BlazeReactWidgetItemDurationElementStateStyle?
    var readState: BlazeReactWidgetItemDurationElementStateStyle?

    struct BlazeReactWidgetItemDurationElementStateStyle: Codable {
        var isVisible: Bool?
        var backgroundColor: String?
        var backgroundImage: BlazeReactImage?
        var textStyle: BlazeReactTitleStyle?
        var cornerRadius: CGFloat?
        var cornerRadiusRatio: CGFloat?
        var borderColor: String?
        var borderWidth: CGFloat?
    }
}

struct BlazeReactWidgetItemBadgeStyle: Codable {
    var isVisible: Bool?
    var position: BlazeReactObjectPositioning?
    var margins: BlazeReactMargins?
    var titlePadding: BlazeReactMargins?
    var liveUnreadState: BlazeReactWidgetItemBadgeStateStyle?
    var liveReadState: BlazeReactWidgetItemBadgeStateStyle?
    var unreadState: BlazeReactWidgetItemBadgeStateStyle?
    var readState: BlazeReactWidgetItemBadgeStateStyle?
}

struct BlazeReactWidgetItemBadgeStateStyle: Codable {
    var width: CGFloat?
    var height: CGFloat?
    var isVisible: Bool?
    var backgroundColor: String?
    var backgroundImage: BlazeReactImage?
    var textStyle: BlazeReactTitleStyle?
    var text: String?
    var cornerRadius: CGFloat?
    var cornerRadiusRatio: CGFloat?
    var borderColor: String?
    var borderWidth: CGFloat?
}

struct BlazeReactWidgetItemStatusIndicatorStyle: Codable {
    var isVisible: Bool?
    var position: BlazeReactObjectPositioning?
    var margins: BlazeReactMargins?
    var statusTitlePadding: BlazeReactMargins?
    var liveUnreadState: BlazeReactWidgetItemStatusIndicatorStateStyle?
    var liveReadState: BlazeReactWidgetItemStatusIndicatorStateStyle?
    var unreadState: BlazeReactWidgetItemStatusIndicatorStateStyle?
    var readState: BlazeReactWidgetItemStatusIndicatorStateStyle?
}

struct BlazeReactWidgetItemStatusIndicatorStateStyle: Codable {
    var isVisible: Bool?
    var backgroundColor: String?
    var backgroundImage: BlazeReactImage?
    var textStyle: BlazeReactTitleStyle?
    var text: String?
    var cornerRadius: CGFloat?
    var cornerRadiusRatio: CGFloat?
    var borderColor: String?
    var borderWidth: CGFloat?
}

struct BlazeReactWidgetItemCustomMapping : Codable, Hashable {
    let key: String
    let value: String
}

struct BlazeReactWidgetStylesOverrides : Codable {
    let statusIndicator: BlazeReactWidgetItemStatusIndicatorStyle?
    let imageBorder: BlazeReactWidgetItemImageContainerBorderStyle?
    var badge: BlazeReactWidgetItemBadgeStyle?
}

struct BlazeReactTitleStyle: Codable {
    var font: BlazeReactTitleFont?
    var textSize: CGFloat?
    var letterSpacing: Double?
    var textColor: String?
    var lineHeight: Double?
    var maxLines: Int?
    var textAlign: BlazeReactTextAlign?
}
