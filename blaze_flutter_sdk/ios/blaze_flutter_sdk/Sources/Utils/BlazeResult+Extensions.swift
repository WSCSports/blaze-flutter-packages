//
//  BlazeResult+Extensions.swift
//  blaze_flutter_sdk
//
//  Created by Reuven Levitsky on 19/12/2023.
//

import Foundation
import BlazeSDK
import Flutter

// Represents error code that can be converted into a BlazeError on the Dart side.
let blazeConvertibleErrorCode = "BLAZE_CONVERTIBLE_ERROR"

// Represents a generic error code on the Blaze Flutter native side.
let blazeFlutterErrorCode = "BLAZE_FLUTTER_ERROR"

public extension BlazeResult {
    
    func handleResult(_ result: FlutterResult) {
        switch self {
        case .success:
            result(nil)
        case .failure(let blazeError):
            let flutterError = BlazeFlutterError.fromBlazeError(blazeError)
            let flutterErrorString = flutterError.asJsonString
            let error = FlutterError(code: blazeConvertibleErrorCode,
                                     message: blazeError.errorMessage,
                                     details: flutterErrorString)
            result(error)
        }
    }
    
}

public func handleError(
    _ result: FlutterResult,
    errCode: String,
    errMessage: String
) {
    let error = FlutterError(code: blazeFlutterErrorCode,
                             message: errMessage,
                             details: nil)
    result(error)
}

public struct BlazeFlutterError: Codable {
    let domain: String?
    let reason: String?
    let message: String?
    let metadata: [String : String]?
    let underlyingError: String?
}

public extension BlazeFlutterError {
    static func fromBlazeError(_ error: BlazeError) -> BlazeFlutterError {
        let underlyingErrorString: String?
        if let underlyingError = error.underlyingError {
            underlyingErrorString = String(describing: underlyingError)
        } else {
            underlyingErrorString = nil
        }
        
        // Mapped errors send Android's declared strings. Every other error keeps the
        // Swift description of its domain and no reason.
        let codes = flutterCodes(error.domain)

        return .init(domain: codes?.domain ?? String(describing: error.domain),
                     reason: codes?.reason,
                     message: error.errorMessage,
                     metadata: error.metadata,
                     underlyingError: underlyingErrorString)
    }

    /// The `domain` and `reason` strings sent to Dart. iOS domains and reasons carry no
    /// raw value, so each error reported here is mapped by hand to the strings Android
    /// native declares for the same failure. Unmapped errors return `nil`.
    ///
    /// Internal, not private, so the example's `RunnerTests` can check every case.
    internal static func flutterCodes(
        _ domain: BlazeError.ErrorDomain
    ) -> (domain: String, reason: String)? {
        switch domain {
        case .userManagement(reason: .settingExternalIdFailed):
            return ("userManagement", "failedToSetExternalUserId")
        case .userManagement(reason: .invalidExternalUserId):
            return ("userManagement", "invalidExternalUserId")
        case .userManagement(reason: .logoutFailed):
            return ("userManagement", "failedToLogout")
        case .widget(reason: .missingWidgetIdentifier):
            return ("widget", "missingWidgetIdentifier")
        case .initialization(reason: .initializationIsRequired):
            return ("initialization", "applicationNotInitialised")
        default:
            return nil
        }
    }
}
