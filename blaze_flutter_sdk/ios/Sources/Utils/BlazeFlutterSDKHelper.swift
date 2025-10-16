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
        return BlazeFlutterSDKVersion.version
    }()
    
}

