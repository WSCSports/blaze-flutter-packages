//
//  SharedParsingFunctions.swift
//  Pods
//
//  Created by Reuven Levitsky on 08/07/2025.
//

import Foundation
import UIKit
import BlazeSDK

extension BlazeTextCase {
    func mergedWith(_ customization: BlazeReactTextCase?) -> Self {
        guard let customization else { return self }
        
        switch customization {
        case .uppercase:
            return .uppercase
        case .lowercase:
            return .lowercase
        }
    }
}

extension NSTextAlignment {
    func mergedWith(_ customization: BlazeReactTextAlign?) -> Self {
        guard let customization else { return self }
        
        let result: NSTextAlignment
        switch customization {
            
        case .start:
            result = .left
        case .center:
            result = .center
        case .end:
            result = .right
        }
        
        return result
    }
}

extension NSDirectionalEdgeInsets {
    func mergedWith(_ customization: BlazeReactMargins?) -> Self {
        guard let customization else { return self }
        
        var merged = self
        merged.bottom = customization.bottom ?? merged.bottom
        merged.leading = customization.leading ?? merged.leading
        merged.top = customization.top ?? merged.top
        merged.trailing = customization.trailing ?? merged.trailing
        return merged
    }
} 

extension UIFont {
    func fontWith(_ customization: BlazeReactTitleFont?,
                  textSize: CGFloat?) -> UIFont {
        var size = pointSize // Default size is current size.
        if let textSize {
            size = textSize
        }
        
        guard let fontName = customization?.fontName else {
            return self.withSize(size)
        }
        
        return UIFont(name: fontName, size: size) ?? self
    }
}

extension UIImage {
    
    static func imageWith(_ customization: BlazeReactImage?) -> UIImage? {
        guard let imageName = customization?.imageName else { return nil }
        
        return UIImage(named: imageName)
    }
    
}
