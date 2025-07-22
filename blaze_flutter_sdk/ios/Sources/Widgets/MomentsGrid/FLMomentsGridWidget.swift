//
//  FLMomentsGridWidget.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK

class FLMomentsGridWidget: BlazeWidgetBase {
    
    override func createWidget() -> BlazeWidgetView {
        let widget = BlazeMomentsWidgetGridView()
        
        // Extract and set player style if provided
        if let playerStyle = playerStyleMap.extractPlayerMomentsStyle() {
            widget.momentsPlayerStyle = playerStyle
        }
        
        return widget
    }
    
    override func parseLayout(from presetTheme: String?) -> BlazeWidgetLayout {
        // Use preset from parameters or default
        return presetTheme?.asWidgetLayoutPreset ?? .Presets.MomentsWidget.Grid.twoColumnsVerticalRectangles
    }
    
}
