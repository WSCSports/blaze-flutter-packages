//
//  UIViewController+Extensions.swift
//  blaze_flutter_sdk
//
//  Created by Reuven Levitsky on 21/12/2023.
//

import UIKit

extension UIViewController {
    
    static var topMostViewController: UIViewController? {
        var topController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController
        
        while let presentedViewController = topController?.presentedViewController {
            topController = presentedViewController
        }
        
        return topController
    }
    
}
