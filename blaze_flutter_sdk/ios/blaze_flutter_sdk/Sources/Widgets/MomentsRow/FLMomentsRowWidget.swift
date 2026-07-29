//
//  FLMomentsRowWidget.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK

class FLMomentsRowWidget: BlazeWidgetBase {
    
    /// When the `tabsConfiguration` creation param is provided, uses the dedicated tabs
    /// initializer so tapping an item launches the fullscreen Moments tabs player; otherwise falls
    /// back to the standard widget.
    override func createWidget() -> BlazeWidgetView {
        let widget: BlazeMomentsWidgetRowView

        if let tabsConfig = tabsConfigurationMap.extractMomentsWidgetTabsConfiguration(
            containerTabsDelegate: containerTabsDelegate,
            playbackConfiguration: playbackConfigurationMap.extractMomentsPlaybackConfiguration()
        ) {
            widget = BlazeMomentsWidgetRowView(
                layout: parseLayout(from: presetWidgetLayout),
                tabsContainer: tabsConfig
            )
        } else {
            widget = BlazeMomentsWidgetRowView()
        }

        // Extract and set player style if provided
        if let playerStyle = playerStyleMap.extractPlayerMomentsStyle() {
            widget.momentsPlayerStyle = playerStyle
        }

        // Extract and set playback configuration if provided
        if let playbackConfiguration = playbackConfigurationMap.extractMomentsPlaybackConfiguration() {
            widget.momentsPlaybackConfiguration = playbackConfiguration
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
