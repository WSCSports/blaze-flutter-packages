//
//  FlutterMethodChannel+Extensions.swift
//  Pods
//
//  Created by Reuven Levitsky on 17/07/2025.
//

import Flutter

internal extension FlutterMethodChannel {
    
    func invokeMethod(methodName: String,
                      encodable: Encodable) {
        guard let jsonStringParams = encodable.asJsonString else {
            print("Error: Unable to convert encodable object to JSON string.")
            return
        }
        
        invokeMethod(methodName,
                     arguments: jsonStringParams)
    }
    
}
