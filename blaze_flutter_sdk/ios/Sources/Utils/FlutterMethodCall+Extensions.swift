//
//  FlutterMethodCall+Extensions.swift
//  blaze_flutter_sdk
//
//  Created by Reuven Levitsky on 19/12/2023.
//

import Foundation
import Flutter

extension FlutterMethodCall {
    
    var argsAsDict: [String : AnyHashable]? {
        return arguments as? [String : AnyHashable]
    }
    
    func safeGetArg<T>(_ key: String, _ type: T.Type) -> T? {
        return argsAsDict?[key] as? T
    }
    
}
