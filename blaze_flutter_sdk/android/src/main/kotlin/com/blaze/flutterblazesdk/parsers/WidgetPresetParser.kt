package com.blaze.flutterblazesdk.parsers

import com.blaze.blazesdk.style.widgets.BlazeWidgetLayout

/** Extension function to convert Flutter enum names to BlazeWidgetLayout */
fun String.asWidgetLayoutPreset(): BlazeWidgetLayout? {
        return when (this) {
                // Stories Widget - Row (Flutter enum names)
                "stories_row_circles" -> BlazeWidgetLayout.Presets.StoriesWidget.Row.circles
                "stories_row_verticalRectangles" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Row.verticalRectangles
                "stories_row_horizontalRectangles" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Row.horizontalRectangles
                "stories_row_singleItemVerticalRectangle" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Row.singleItemVerticalRectangle
                "stories_row_singleItemHorizontalRectangle" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Row.singleItemHorizontalRectangle

                // Stories Widget - Grid (Flutter enum names)
                "stories_grid_oneColumnHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Grid.oneColumnHorizontalRectangles
                "stories_grid_twoColumnsVerticalRectangles" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Grid.twoColumnsVerticalRectangles
                "stories_grid_twoColumnsHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Grid.twoColumnsHorizontalRectangles
                "stories_grid_threeColumnsVerticalRectangles" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Grid.threeColumnsVerticalRectangles
                "stories_grid_threeColumnsHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Grid
                                .threeColumnsHorizontalRectangles
                "stories_grid_singleItemVerticalRectangle" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Grid.singleItemVerticalRectangle
                "stories_grid_singleItemHorizontalRectangle" ->
                        BlazeWidgetLayout.Presets.StoriesWidget.Grid.singleItemHorizontalRectangle

                // Moments Widget - Row (Flutter enum names)
                "moments_row_verticalRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Row.verticalRectangles
                "moments_row_horizontalRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Row.horizontalRectangles
                "moments_row_singleItemVerticalRectangle" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Row.singleItemVerticalRectangle
                "moments_row_singleItemHorizontalRectangle" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Row.singleItemHorizontalRectangle
                "moments_row_verticalAnimatedThumbnailsRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Row
                                .verticalAnimatedThumbnailsRectangles

                // Moments Widget - Grid (Flutter enum names)
                "moments_grid_oneColumnHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Grid.oneColumnHorizontalRectangles
                "moments_grid_twoColumnsVerticalRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Grid.twoColumnsVerticalRectangles
                "moments_grid_twoColumnsHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Grid.twoColumnsHorizontalRectangles
                "moments_grid_threeColumnsVerticalRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Grid.threeColumnsVerticalRectangles
                "moments_grid_threeColumnsHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Grid
                                .threeColumnsHorizontalRectangles
                "moments_grid_singleItemVerticalRectangle" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Grid.singleItemVerticalRectangle
                "moments_grid_singleItemHorizontalRectangle" ->
                        BlazeWidgetLayout.Presets.MomentsWidget.Grid.singleItemHorizontalRectangle

                // Videos Widget - Row (Flutter enum names)
                "videos_row_verticalRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Row.verticalRectangles
                "videos_row_horizontalRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Row.horizontalRectangles
                "videos_row_singleItemVerticalRectangle" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Row.singleItemVerticalRectangle
                "videos_row_singleItemHorizontalRectangle" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Row.singleItemHorizontalRectangle
                "videos_row_verticalAnimatedThumbnailsRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Row
                                .verticalAnimatedThumbnailsRectangles

                // Videos Widget - Grid (Flutter enum names)
                "videos_grid_oneColumnHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Grid.oneColumnHorizontalRectangles
                "videos_grid_twoColumnsVerticalRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Grid.twoColumnsVerticalRectangles
                "videos_grid_twoColumnsHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Grid.twoColumnsHorizontalRectangles
                "videos_grid_threeColumnsVerticalRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Grid.threeColumnsVerticalRectangles
                "videos_grid_threeColumnsHorizontalRectangles" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Grid.threeColumnsHorizontalRectangles
                "videos_grid_singleItemVerticalRectangle" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Grid.singleItemVerticalRectangle
                "videos_grid_singleItemHorizontalRectangle" ->
                        BlazeWidgetLayout.Presets.VideosWidget.Grid.singleItemHorizontalRectangle
                else -> null
        }
}
