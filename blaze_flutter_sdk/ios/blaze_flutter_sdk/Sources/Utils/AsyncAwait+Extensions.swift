//
//  Async+Extensions.swift
//  Pods
//
//  Created by Reuven Levitsky on 09/06/2025.
//

import Foundation

/// An error that indicates an operation has timed out.
enum WithTimeoutError: Error {
    case invalidTimeout
    case timeoutError
}

/// Executes an asynchronous operation with a specified timeout.
///
/// - Parameters:
///   - timeout: The maximum duration in seconds to wait for the operation to complete.
///   - operation: The asynchronous operation to execute.
/// - Returns: The result of the operation if it completes before the timeout.
/// - Throws: A `WithTimeoutError.timeoutError` if the operation does not complete within the specified timeout.
func withTimeout<T>(
    _ timeout: TimeInterval,
    operation: @escaping @Sendable () async throws -> T
) async throws -> T {
    guard timeout.isFinite else {
        // If timeout is not finite, we can execute the operation without a timeout.
        return try await operation()
    }
    
    guard timeout > 0 else {
        throw WithTimeoutError.invalidTimeout
    }

    return try await withThrowingTaskGroup(of: T.self) { group in
        // Add the operation task
        group.addTask {
            let result = try await operation()
            return result
        }

        // Add the timeout task
        group.addTask {
            try await Task.sleep(nanoseconds: UInt64(timeout * 1_000_000_000))
            throw WithTimeoutError.timeoutError
        }

        let result = try await group.next()!
        return result
    }
}
