//
//  BlazeReactVideosPlayerStyle.swift
//  blaze_flutter_sdk
//
//  Copied exactly from React Native BlazeReactVideosPlayerStyle.swift
//

import Foundation

struct BlazeReactVideosPlayerStyle: Codable {
    var headingText: BlazeReactVideosPlayerHeadingTextStyle?
    var buttons: BlazeReactVideosPlayerButtonsStyle?
    var backgroundColor: String?
    var cta: BlazeReactVideosPlayerCtaStyle?
    var seekBar: BlazeReactVideosPlayerSeekBarStyle?
}

struct BlazeReactVideosPlayerHeadingTextStyle: Codable {
    var textSize: CGFloat?
    var font: BlazeReactTitleFont?
    var textColor: String?
    var contentSource: ContentSource?
    var isVisible: Bool?
    var numberOfLines: Int?
    
    enum ContentSource: String, Codable {
        case title = "Title"
    }
}

struct BlazeReactVideosPlayerButtonsStyle: Codable {
    var mute: BlazeReactPlayerButtonStyle?
    var exit: BlazeReactPlayerButtonStyle?
    var share: BlazeReactPlayerButtonStyle?
    var like: BlazeReactPlayerButtonStyle?
    var playPause: BlazeReactPlayerButtonStyle?
    var previous: BlazeReactPlayerButtonStyle?
    var next: BlazeReactPlayerButtonStyle?
}

struct BlazeReactVideosPlayerCtaStyle: Codable {
    var cornerRadius: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var font: BlazeReactTitleFont?
    var textSize: CGFloat?
    var icon: BlazeReactVideosPlayerCtaIconStyle?
    var ctaVisibility: BlazeReactVideosPlayerCtaVisibility?
}

struct BlazeReactVideosPlayerCtaIconStyle: Codable {
    var iconImage: BlazeReactImage?
    var iconPositioning: IconPositioning?
    var iconTint: String?
    
    enum IconPositioning: String, Codable {
        case start = "Start"
    }
}

struct BlazeReactVideosPlayerCtaVisibility: Codable {
    var type: VisibilityType?
    var duration: CGFloat?
    
    enum VisibilityType: String, Codable {
        case visibleAfterOverlayHidden = "visibleAfterOverlayHidden"
        case alwaysVisible = "alwaysVisible"
    }
}

struct BlazeReactVideosPlayerSeekBarStyle: Codable {
    var isVisible: Bool?
    var playingState: BlazeReactSeekBarStyle?
    var pausedState: BlazeReactSeekBarStyle?
    var horizontalSpacing: CGFloat?
    var bottomSpacing: CGFloat?
} 