//
//  BlazeReactVideosPlayerStyle.swift
//  blaze_flutter_sdk
//
//

import Foundation

struct BlazeReactVideosPlayerStyle: Codable {
    var headingText: BlazeReactVideosPlayerHeadingTextStyle?
    var buttons: BlazeReactVideosPlayerButtonsStyle?
    var backgroundColor: String?
    var cta: BlazeReactVideosPlayerCtaStyle?
    var seekBar: BlazeReactVideosPlayerSeekBarStyle?
    var overlayVisibilityThresholdMs: Int?
    var captions: BlazeReactCaptionsStyle?
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
    var captions: BlazeReactPlayerButtonStyle?
    var forceRotation: BlazeReactPlayerButtonStyle?
    var casting: BlazeReactPlayerButtonStyle?
    var pictureInPicture: BlazeReactPlayerButtonStyle?
    var seekForward: BlazeReactPlayerButtonStyle?
    var seekBackward: BlazeReactPlayerButtonStyle?
}

struct BlazeReactVideosPlayerCtaStyle: Codable {
    var cornerRadius: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var font: BlazeReactTitleFont?
    var textSize: CGFloat?
    var icon: BlazeReactVideosPlayerCtaIconStyle?
    var isVisible: Bool?
    var borderColor: String?
    var borderWidth: CGFloat?
}

struct BlazeReactVideosPlayerCtaIconStyle: Codable {
    var iconImage: BlazeReactImage?
    var iconPositioning: IconPositioning?
    var iconTint: String?

    enum IconPositioning: String, Codable {
        case start = "Start"
    }
}

struct BlazeReactVideosPlayerSeekBarStyle: Codable {
    var isVisible: Bool?
    var playingState: BlazeReactSeekBarStyle?
    var pausedState: BlazeReactSeekBarStyle?
    var horizontalSpacing: CGFloat?
    var bottomSpacing: CGFloat?
}
