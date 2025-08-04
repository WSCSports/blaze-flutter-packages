//
//  BlazeFlutterSDKHelper.swift
//  Pods
//
//  Created by Reuven Levitsky on 20/07/2025.
//

import Foundation
import BlazeSDK

class BlazeFlutterSDKHelper: BlazeFlutterSDKHelperProtocol {
    
    lazy var flutterSDKVersion: String? = {
        let infoDict = Bundle.blazeFlutter.infoDictionary
        let flutterVersionName = infoDict?["CFBundleShortVersionString"] as? String
        return flutterVersionName
    }()
    
}

extension Foundation.Bundle {
    
    /// Since BlazeSDK is a framework, the bundle for classes within this module can be used directly.
    static let blazeFlutter: Bundle = {
        let bundleRelativePath = Bundle.main.path(forResource: "blaze-flutter-sdk-bundle",
                                                  ofType: "bundle")!
        let bundle = Bundle(path: bundleRelativePath)!
        return bundle
    }()
    
}
