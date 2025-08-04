//
//  FLStoriesRowWidget.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK

class FLStoriesRowWidget: BlazeWidgetBase {
    
    override func createWidget() -> BlazeWidgetView {
        let widget = BlazeStoriesWidgetRowView()
        
        // Extract and set player style if provided
        if let playerStyle = playerStyleMap.extractPlayerStoryStyle() {
            widget.storyPlayerStyle = playerStyle
        }
        
        return widget
    }
    
    override func parseLayout(from presetTheme: String?) -> BlazeWidgetLayout {
        // Use preset from parameters or default
        return presetTheme?.asWidgetLayoutPreset ?? .Presets.StoriesWidget.Row.circles
    }
    
    override var shouldForceContentInsetAdjustmentBehaviorNever: Bool {
        // For rows we always disable content inset adjustment behavior.
        return true
    }
    
}
