//
//  SharedParsingTypes.swift
//  Pods
//
//  Created by Reuven Levitsky on 08/07/2025.
//

enum BlazeReactTextCase: String, Codable {
    case uppercase = "Uppercase"
    case lowercase = "Lowercase"
}

struct BlazeReactColor: Codable {
    var colorName: String?
    var colorFileName: String?
}

struct BlazeReactImage: Codable {
    var imageName: String?
}

struct BlazeReactTitleFont: Codable {
    var fontName: String?
}

struct BlazeReactMargins: Codable {
    var top: CGFloat?
    var leading: CGFloat?
    var bottom: CGFloat?
    var trailing: CGFloat?
}

enum BlazeReactTextAlign: String, Codable {
    case start = "Start"
    case center = "Center"
    case end = "End"
}
