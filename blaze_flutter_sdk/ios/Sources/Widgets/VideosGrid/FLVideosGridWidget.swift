//
//  FLVideosGridWidget.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK

class FLVideosGridWidget: BlazeWidgetBase {
    
    override func createWidget() -> BlazeWidgetView {
        let widget = BlazeVideosWidgetGridView()
        
        // Extract and set player style if provided
        if let playerStyle = playerStyleMap.extractPlayerVideosStyle() {
            widget.videosPlayerStyle = playerStyle
        }
        
        return widget
    }
    
    override func parseLayout(from presetTheme: String?) -> BlazeWidgetLayout {
        // Use preset from parameters or default
        return presetTheme?.asWidgetLayoutPreset ?? .Presets.VideosWidget.Grid.twoColumnsVerticalRectangles
    }
    
} 