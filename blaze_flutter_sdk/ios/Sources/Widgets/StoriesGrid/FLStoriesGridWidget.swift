//
//  FLStoriesGridWidget.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK

class FLStoriesGridWidget: BlazeWidgetBase {
    
    override func createWidget() -> BlazeWidgetView {
        let widget = BlazeStoriesWidgetGridView()
        
        // Extract and set player style if provided
        if let playerStyle = playerStyleMap.extractPlayerStoryStyle() {
            widget.storyPlayerStyle = playerStyle
        }
        
        return widget
    }
    
    override func parseLayout(from presetTheme: String?) -> BlazeWidgetLayout {
        // Use preset from parameters or default
        return presetTheme?.asWidgetLayoutPreset ?? .Presets.StoriesWidget.Grid.twoColumnsVerticalRectangles
    }
    
}
