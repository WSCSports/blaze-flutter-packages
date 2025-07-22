//
//  BlazeReactStoriesPlayerStyle.swift
//  blaze_flutter_sdk
//
//  Copied exactly from React Native BlazeReactStoriesPlayerStyle.swift
//

import Foundation

struct BlazeReactStoryPlayerStyle: Codable {
    var title: BlazeReactStoryPlayerTitleTextStyle?
    var lastUpdate: BlazeReactStoryPlayerLastUpdateTextStyle?
    var buttons: BlazeReactStoryPlayerButtonsStyle?
    var chips: BlazeReactStoryPlayerChipsStyle?
    var backgroundColor: String?
    var cta: BlazeReactStoryPlayerCtaStyle?
    var headerGradient: BlazeReactStoryPlayerHeaderGradientStyle?
    var progressBar: BlazeReactStoryPlayerProgressBarStyle?
    var firstTimeSlide: BlazeReactStoryPlayerFirstTimeSlideStyle?
}

struct BlazeReactStoryPlayerTitleTextStyle : Codable {
    var font: BlazeReactTitleFont?
    let textSize: CGFloat? // Only Android
    var textColor: String?
    var isVisible: Bool?
}

struct BlazeReactStoryPlayerLastUpdateTextStyle : Codable {
    var font: BlazeReactTitleFont?
    let textSize: CGFloat? // Only Android
    var textColor: String?
    var textCase: BlazeReactTextCase?
    var isVisible: Bool?
}

struct BlazeReactStoryPlayerButtonsStyle : Codable {
    var mute: BlazeReactPlayerButtonStyle?
    var exit: BlazeReactPlayerButtonStyle?
    var share: BlazeReactPlayerButtonStyle?
}

struct BlazeReactStoryPlayerChipsStyle : Codable {
    var live: BlazeReactStoryPlayerChipStyle?
    var ad: BlazeReactStoryPlayerChipStyle?
}

struct BlazeReactStoryPlayerChipStyle : Codable {
    var titlePadding: BlazeReactMargins?
    var text: String?
    var textColor: String?
    var backgroundColor: String?
    var isVisible: Bool?
}

struct BlazeReactStoryPlayerCtaStyle : Codable {
    let cornerRadius: CGFloat?
    let font: BlazeReactTitleFont?
    let textSize: CGFloat? // Only Android
}

struct BlazeReactStoryPlayerHeaderGradientStyle : Codable {
    var isVisible: Bool?
    var startColor: String?
    var endColor: String?
}

struct BlazeReactStoryPlayerProgressBarStyle: Codable {
    var backgroundColor: String?
    var progressColor: String?
}

struct BlazeReactStoryPlayerFirstTimeSlideStyle: Codable {
    var show: Bool?
    var cta: BlazeReactFirstTimeSlideCTAStyle?
    var backgroundColor: BlazeReactColor?
    var mainTitle: BlazeReactFirstTimeSlideTextStyle?
    var subtitle: BlazeReactFirstTimeSlideTextStyle?
    var instructions: BlazeReactStoryPlayerFirstTimeSlideInstructionsStyle?
}

struct BlazeReactStoryPlayerFirstTimeSlideInstructionsStyle: Codable{
    var forward: BlazeReactFirstTimeSlideInstructionStyle?
    var pause: BlazeReactFirstTimeSlideInstructionStyle?
    var backward: BlazeReactFirstTimeSlideInstructionStyle?
    var transition: BlazeReactFirstTimeSlideInstructionStyle?
} 