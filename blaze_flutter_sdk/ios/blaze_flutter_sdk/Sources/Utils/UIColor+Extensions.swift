import Foundation
import UIKit

extension UIColor {
    
    /// Initializes a UIColor instance with a given hex string.
    ///
    /// - Parameter hexString: A hex string in the format "#RRGGBB" or "#RRGGBBAA" (with optional alpha).
    /// - Returns: A UIColor instance or nil if the hex string is invalid.
    convenience init?(hexString: String?) {
        guard var hexString = hexString?.trimmingCharacters(in: .whitespacesAndNewlines).uppercased() else { return nil }
        
        if hexString.hasPrefix("#") {
            hexString.removeFirst()
        }

        let scanner = Scanner(string: hexString)

        var rgb: UInt64 = 0
        guard scanner.scanHexInt64(&rgb) else {
            return nil
        }

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0
        switch hexString.count {
        case 6:
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
        case 8:
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0
        default:
            return nil
        }

        self.init(red: r, green: g, blue: b, alpha: a)
    }
    
} 