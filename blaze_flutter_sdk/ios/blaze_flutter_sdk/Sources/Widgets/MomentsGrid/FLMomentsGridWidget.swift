//
//  FLMomentsGridWidget.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK

class FLMomentsGridWidget: BlazeWidgetBase {
    
    /// When the `tabsConfiguration` creation param is provided, uses the dedicated tabs
    /// initializer so tapping an item launches the fullscreen Moments tabs player; otherwise falls
    /// back to the standard widget.
    override func createWidget() -> BlazeWidgetView {
        let widget: BlazeMomentsWidgetGridView

        if let tabsConfig = tabsConfigurationMap.extractMomentsWidgetTabsConfiguration(
            containerTabsDelegate: containerTabsDelegate,
            playbackConfiguration: playbackConfigurationMap.extractMomentsPlaybackConfiguration()
        ) {
            // Retained so the reload commands have a live handle to this same tabs session -
            // the native widget's own copy is `internal` and unreadable from here.
            momentsTabsContainer = tabsConfig
            widget = BlazeMomentsWidgetGridView(
                layout: parseLayout(from: presetWidgetLayout),
                tabsContainer: tabsConfig
            )
        } else {
            widget = BlazeMomentsWidgetGridView()
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
        return presetTheme?.asWidgetLayoutPreset ?? .Presets.MomentsWidget.Grid.twoColumnsVerticalRectangles
    }
    
}
