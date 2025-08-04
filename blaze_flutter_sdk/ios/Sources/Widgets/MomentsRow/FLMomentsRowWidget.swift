//
//  FLMomentsRowWidget.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK

class FLMomentsRowWidget: BlazeWidgetBase {
    
    override func createWidget() -> BlazeWidgetView {
        let widget = BlazeMomentsWidgetRowView()
        
        // Extract and set player style if provided
        if let playerStyle = playerStyleMap.extractPlayerMomentsStyle() {
            widget.momentsPlayerStyle = playerStyle
        }
        
        return widget
    }
    
    override func parseLayout(from presetTheme: String?) -> BlazeWidgetLayout {
        // Use preset from parameters or default
        return presetTheme?.asWidgetLayoutPreset ?? .Presets.MomentsWidget.Row.verticalRectangles
    }
    
    override var shouldForceContentInsetAdjustmentBehaviorNever: Bool {
        // For rows we always disable content inset adjustment behavior.
        return true
    }

}
