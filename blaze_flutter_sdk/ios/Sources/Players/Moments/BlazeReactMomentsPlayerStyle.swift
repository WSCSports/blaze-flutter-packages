//
//  BlazeReactMomentsPlayerStyle.swift
//  blaze_flutter_sdk
//
//  Copied exactly from React Native BlazeReactMomentsPlayerStyle.swift
//

import Foundation

struct BlazeReactMomentsPlayerStyle: Codable {
    var headingText: BlazeReactMomentsPlayerHeadingTextStyle?
    var bodyText: BlazeReactMomentsPlayerBodyTextStyle?
    var buttons: BlazeReactMomentsPlayerButtonsStyle?
    var chips: BlazeReactMomentsPlayerChipsStyle?
    var backgroundColor: String?
    var cta: BlazeReactMomentsPlayerCtaStyle?
    var headerGradient: BlazeReactMomentsPlayerHeaderGradientStyle?
    var footerGradient: BlazeReactMomentsPlayerFooterGradientStyle?
    var firstTimeSlide: BlazeReactMomentsPlayerFirstTimeSlideStyle?
    let seekBar: BlazeReactMomentsPlayerSeekBarStyle?
    var bottomComponentsAlignment: BlazeReactBottomComponentsAlignment?
    var playerDisplayMode: BlazeReactPlayerDisplayMode?
}

struct BlazeReactMomentsPlayerHeadingTextStyle: Codable {
    var textSize: CGFloat? // Only Android
    var font: BlazeReactTitleFont?
    var textColor: String?
    var contentSource: ContentSource?
    var isVisible: Bool?
    
    enum ContentSource: String, Codable {
        case title = "Title"
        case subtitle = "Subtitle"
    }
}

struct BlazeReactMomentsPlayerBodyTextStyle: Codable {
    var textSize: CGFloat?
    var font: BlazeReactTitleFont?
    var textColor: String?
    var contentSource: ContentSource?
    var isVisible: Bool?
    
    enum ContentSource: String, Codable {
        case title = "Title"
        case subtitle = "Subtitle"
        case description = "Description"
    }
}

struct BlazeReactMomentsPlayerButtonsStyle: Codable {
    var mute: BlazeReactPlayerButtonStyle?
    var exit: BlazeReactPlayerButtonStyle?
    var share: BlazeReactPlayerButtonStyle?
    var like: BlazeReactPlayerButtonStyle?
    var play: BlazeReactPlayerButtonStyle?
}

struct BlazeReactMomentsPlayerChipsStyle: Codable {
    var ad: BlazeReactMomentsPlayerChipStyle?
}

struct BlazeReactMomentsPlayerChipStyle: Codable {
    var titlePadding: BlazeReactMargins?
    var text: String?
    var textColor: String?
    var backgroundColor: String?
    var isVisible: Bool?
}

struct BlazeReactMomentsPlayerCtaStyle: Codable {
    var cornerRadius: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var font: BlazeReactTitleFont?
    var textSize: CGFloat? // Only for Android
    var layoutPositioning: CTAPositioning?
    var icon: BlazeReactMomentCtaIcon?
    var horizontalAlignment: CTAHorizontalAlignment?
    
    enum CTAPositioning: String, Codable {
        case bellowBottomButtonsBox = "CtaBellowBottomButtonsBox"
        case nextToBottomButtonsBox = "CtaNextToBottomButtonsBox"
    }
    
    enum CTAHorizontalAlignment: String, Codable {
        case start = "Start"
        case center = "Center"
        case end = "End"
        case fullAvailableWidth = "FullAvailableWidth"
    }
}

struct BlazeReactMomentsPlayerHeaderGradientStyle : Codable {
    var isVisible: Bool?
    var startColor: String?
    var endColor: String?
}

struct BlazeReactMomentsPlayerFooterGradientStyle : Codable {
    var isVisible: Bool?
    var startColor: String?
    var endColor: String?
    var endPositioning: EndPositioning?
    
    enum EndPositioning: String, Codable {
        case bottomToPlayer = "BottomToPlayer"
        case bottomToContainer = "BottomToContainer"
    }
}

struct BlazeReactMomentsPlayerFirstTimeSlideStyle: Codable {
    var show: Bool?
    var cta: BlazeReactFirstTimeSlideCTAStyle?
    var backgroundColor: BlazeReactColor?
    var mainTitle: BlazeReactFirstTimeSlideTextStyle?
    var subtitle: BlazeReactFirstTimeSlideTextStyle?
    var instructions: BlazeReactMomentsPlayerFirstTimeSlideInstructionsStyle?
}

struct BlazeReactMomentsPlayerFirstTimeSlideInstructionsStyle: Codable{
    var next: BlazeReactFirstTimeSlideInstructionStyle?
    var previous: BlazeReactFirstTimeSlideInstructionStyle?
    var pause: BlazeReactFirstTimeSlideInstructionStyle?
    var play: BlazeReactFirstTimeSlideInstructionStyle?
}

struct BlazeReactMomentsPlayerSeekBarStyle: Codable {
    let isVisible: Bool?
    let playingState: BlazeReactSeekBarStyle?
    let pausedState: BlazeReactSeekBarStyle?
    let horizontalSpacing: CGFloat?
    let bottomSpacing: CGFloat?
}

struct BlazeReactMomentCtaIcon: Codable {
    var iconImage: BlazeReactImage?
} 