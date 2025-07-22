//
//  WidgetPresetParser.swift
//  Pods
//
//  Created by Reuven Levitsky on 03/07/2025.
//

import BlazeSDK

extension String {
    
    var asWidgetLayoutPreset: BlazeWidgetLayout? {
        switch self {
        // Stories Widget - Row (Flutter enum names)
        case "stories_row_circles":
            return .Presets.StoriesWidget.Row.circles
        case "stories_row_verticalRectangles":
            return .Presets.StoriesWidget.Row.verticalRectangles
        case "stories_row_horizontalRectangles":
            return .Presets.StoriesWidget.Row.horizontalRectangles
        case "stories_row_singleItemVerticalRectangle":
            return .Presets.StoriesWidget.Row.singleItemVerticalRectangle
        case "stories_row_singleItemHorizontalRectangle":
            return .Presets.StoriesWidget.Row.singleItemHorizontalRectangle
            
        // Stories Widget - Grid (Flutter enum names)
        case "stories_grid_oneColumnHorizontalRectangles":
            return .Presets.StoriesWidget.Grid.oneColumnHorizontalRectangles
        case "stories_grid_twoColumnsVerticalRectangles":
            return .Presets.StoriesWidget.Grid.twoColumnsVerticalRectangles
        case "stories_grid_twoColumnsHorizontalRectangles":
            return .Presets.StoriesWidget.Grid.twoColumnsHorizontalRectangles
        case "stories_grid_threeColumnsVerticalRectangles":
            return .Presets.StoriesWidget.Grid.threeColumnsVerticalRectangles
        case "stories_grid_threeColumnsHorizontalRectangles":
            return .Presets.StoriesWidget.Grid.threeColumnsHorizontalRectangles
        case "stories_grid_singleItemVerticalRectangle":
            return .Presets.StoriesWidget.Grid.singleItemVerticalRectangle
        case "stories_grid_singleItemHorizontalRectangle":
            return .Presets.StoriesWidget.Grid.singleItemHorizontalRectangle
            
        // Moments Widget - Row (Flutter enum names)
        case "moments_row_verticalRectangles":
            return .Presets.MomentsWidget.Row.verticalRectangles
        case "moments_row_horizontalRectangles":
            return .Presets.MomentsWidget.Row.horizontalRectangles
        case "moments_row_singleItemVerticalRectangle":
            return .Presets.MomentsWidget.Row.singleItemVerticalRectangle
        case "moments_row_singleItemHorizontalRectangle":
            return .Presets.MomentsWidget.Row.singleItemHorizontalRectangle
        case "moments_row_verticalAnimatedThumbnailsRectangles":
            return .Presets.MomentsWidget.Row.verticalAnimatedThumbnailsRectangles
            
        // Moments Widget - Grid (Flutter enum names)
        case "moments_grid_oneColumnHorizontalRectangles":
            return .Presets.MomentsWidget.Grid.oneColumnHorizontalRectangles
        case "moments_grid_twoColumnsVerticalRectangles":
            return .Presets.MomentsWidget.Grid.twoColumnsVerticalRectangles
        case "moments_grid_twoColumnsHorizontalRectangles":
            return .Presets.MomentsWidget.Grid.twoColumnsHorizontalRectangles
        case "moments_grid_threeColumnsVerticalRectangles":
            return .Presets.MomentsWidget.Grid.threeColumnsVerticalRectangles
        case "moments_grid_threeColumnsHorizontalRectangles":
            return .Presets.MomentsWidget.Grid.threeColumnsHorizontalRectangles
        case "moments_grid_singleItemVerticalRectangle":
            return .Presets.MomentsWidget.Grid.singleItemVerticalRectangle
        case "moments_grid_singleItemHorizontalRectangle":
            return .Presets.MomentsWidget.Grid.singleItemHorizontalRectangle
            
        // Videos Widget - Row (Flutter enum names)
        case "videos_row_verticalRectangles":
            return .Presets.VideosWidget.Row.verticalRectangles
        case "videos_row_horizontalRectangles":
            return .Presets.VideosWidget.Row.horizontalRectangles
        case "videos_row_singleItemVerticalRectangle":
            return .Presets.VideosWidget.Row.singleItemVerticalRectangle
        case "videos_row_singleItemHorizontalRectangle":
            return .Presets.VideosWidget.Row.singleItemHorizontalRectangle
        case "videos_row_verticalAnimatedThumbnailsRectangles":
            return .Presets.VideosWidget.Row.verticalAnimatedThumbnailsRectangles
            
        // Videos Widget - Grid (Flutter enum names)
        case "videos_grid_oneColumnHorizontalRectangles":
            return .Presets.VideosWidget.Grid.oneColumnHorizontalRectangles
        case "videos_grid_twoColumnsVerticalRectangles":
            return .Presets.VideosWidget.Grid.twoColumnsVerticalRectangles
        case "videos_grid_twoColumnsHorizontalRectangles":
            return .Presets.VideosWidget.Grid.twoColumnsHorizontalRectangles
        case "videos_grid_threeColumnsVerticalRectangles":
            return .Presets.VideosWidget.Grid.threeColumnsVerticalRectangles
        case "videos_grid_threeColumnsHorizontalRectangles":
            return .Presets.VideosWidget.Grid.threeColumnsHorizontalRectangles
        case "videos_grid_singleItemVerticalRectangle":
            return .Presets.VideosWidget.Grid.singleItemVerticalRectangle
        case "videos_grid_singleItemHorizontalRectangle":
            return .Presets.VideosWidget.Grid.singleItemHorizontalRectangle
            
        default:
            return nil
        }
    }
}
