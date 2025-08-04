//
//  SharedPlayerTypes.swift
//  blaze_flutter_sdk
//
//

import Foundation

// =================================
// SHARED STRUCTS
// =================================

struct BlazeReactFirstTimeSlideCTAStyle: Codable {
    var title: String?
    var backgroundColor: BlazeReactColor?
    var textColor: BlazeReactColor?
    var font: BlazeReactTitleFont?
    var textSize: CGFloat?
    var cornerRadius: CGFloat?
}

struct BlazeReactFirstTimeSlideInstructionStyle: Codable {
    var headerText: BlazeReactFirstTimeSlideTextStyle?
    var descriptionText: BlazeReactFirstTimeSlideTextStyle?
}

struct BlazeReactFirstTimeSlideTextStyle: Codable {
    var text: String?
    var font: BlazeReactTitleFont?
    var textSize: CGFloat?
    var textColor: BlazeReactColor?
}

struct BlazeReactPlayerButtonStyle: Codable {
    var width: CGFloat?
    var height: CGFloat?
    var color: String?
    var isVisible: Bool?
    var isVisibleForAds: Bool?
    var customImage: BlazeReactPlayerButtonCustomImageStates?
}

struct BlazeReactPlayerButtonCustomImageStates: Codable {
    var selectedImage: BlazeReactImage?
    var unselectedImage: BlazeReactImage?
}

struct BlazeReactSeekBarStyle: Codable {
    var isVisible: Bool?
    var backgroundColor: String?
    var progressColor: String?
    var height: CGFloat?
    var cornerRadius: CGFloat?
    var thumbColor: String?
    var thumbImage: BlazeReactImage?
    var thumbSize: CGFloat?
    var isThumbVisible: Bool?
}

// =================================
// SHARED ENUMS
// =================================

enum BlazeReactBottomComponentsAlignment: String, Codable {
    case relativeToContainer = "RelativeToContainer"
    case relativeToPlayer = "RelativeToPlayer"
    case fitCtaBelowPlayer = "FitCtaBelowPlayer"
}

enum BlazeReactPlayerDisplayMode: String, Codable {
    case fixedRatio9x16 = "FixedRatio_9_16"
    case resizeAspectFillCenterCrop = "ResizeAspectFillCenterCrop"
}
