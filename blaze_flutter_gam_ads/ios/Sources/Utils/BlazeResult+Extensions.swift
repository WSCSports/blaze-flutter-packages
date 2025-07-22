//
//  BlazeResult+Extensions.swift
//  blaze_flutter_sdk
//
//  Created by Reuven Levitsky on 19/12/2023.
//

import Foundation
import BlazeSDK
import Flutter

extension BlazeResult {
    
    func handleResult(_ result: FlutterResult,
                      errorCode: String = "") {
        switch self {
        case .success(let value):
            result(nil)
        case .failure(let blazeError):
            let error = FlutterError(code: errorCode,
                                     message: "\(blazeError)",
                                     details: nil)
            result(error)
        }
    }
    
}

func handleError(
    _ result: FlutterResult,
    errCode: String,
    errMessage: String
) {
    let error = FlutterError(code: errCode,
                             message: errMessage,
                             details: nil)
    result(error)
}
