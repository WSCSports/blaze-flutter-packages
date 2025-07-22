//
//  PlayerStyleParser.swift
//  blaze_flutter_sdk
//
//  Clean parsing utilities - imports from organized folder structure
//

import Foundation
import BlazeSDK

/**
 * Player style extraction utilities - copied exactly from React Native PlayerStyleExtractUtils.swift
 * These functions match the React Native implementation exactly
 */

extension [String : AnyHashable]? {
    
    func extractPlayerStoryStyle() -> BlazeStoryPlayerStyle? {
        guard let self = self,
              let customization = self.toReactStoryPlayerStyle else { 
            return nil
        }
        
        return BlazeStoryPlayerStyle.base().mergedWith(customization)
    }
    
    func extractPlayerMomentsStyle() -> BlazeMomentsPlayerStyle? {
        guard let self = self,
              let customization = self.toReactMomentsPlayerStyle else { 
            return nil
        }
        
        return BlazeMomentsPlayerStyle.base().mergedWith(customization)
    }
    
    func extractPlayerVideosStyle() -> BlazeVideosPlayerStyle? {
        guard let self = self,
              let customization = self.toReactVideosPlayerStyle else { 
            return nil
        }
        
        return BlazeVideosPlayerStyle.base().mergedWith(customization)
    }
}

// =================================
// JSON DECODING EXTENSIONS (matches React Native BlazeReactParamsParser.swift)
// =================================

extension [String: AnyHashable] {
    
    var toReactStoryPlayerStyle: BlazeReactStoryPlayerStyle? {
        var result: BlazeReactStoryPlayerStyle?
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactStoryPlayerStyle.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactStoryPlayerStyle: \(error)")
        }
        
        return result
    }

    var toReactMomentsPlayerStyle: BlazeReactMomentsPlayerStyle? {
        var result: BlazeReactMomentsPlayerStyle?
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactMomentsPlayerStyle.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactMomentsPlayerStyle: \(error)")
        }
        
        return result
    }
    
    var toReactVideosPlayerStyle: BlazeReactVideosPlayerStyle? {
        var result: BlazeReactVideosPlayerStyle?
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            result = try JSONDecoder().decode(BlazeReactVideosPlayerStyle.self, from: jsonData)
        } catch {
            print("Error decoding BlazeReactVideosPlayerStyle: \(error)")
        }
        
        return result
    }
}

 
