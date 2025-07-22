//
//  Throttler.swift
//  BlazeSDK
//
//  Created by Reuven Levitsky on 29/06/2023.
//  Copyright © 2023 com.WSCSports. All rights reserved.
//

import Foundation

final class Throttler {
    
    private var workItem: DispatchWorkItem?
    private let queue: DispatchQueue
    private let minimumDelay: TimeInterval
    
    ///
    /// - Parameters:
    ///   - minimumDelay: minimum delay to invoke the closure.
    ///   - queue: DispatchQueue that runs the closure.
    init(minimumDelay: TimeInterval,
                queue: DispatchQueue = DispatchQueue.main) {
        self.minimumDelay = minimumDelay
        self.queue = queue
    }
    
    func throttle(_ block: @escaping () -> Void) {
        // Cancel any existing work item if it has not yet executed
        cancel()
    
        // Re-assign workItem with the new block task, resetting the previousRun time when it executes
        let workItem = DispatchWorkItem() {
            block()
        }

        queue.asyncAfter(deadline: .now() + Double(minimumDelay), execute: workItem)
        
        self.workItem = workItem
    }
    
    /// Cancels the current throttling.
    func cancel() {
        workItem?.cancel()
        workItem = nil
    }
    
    func throttleValue<A>(value: A, completion: ((A) -> Void)?) {
        throttle {
            completion?(value)
        }
    }
}
