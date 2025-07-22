// ignore_for_file: constant_identifier_names

/// Widget layout presets for Blaze widgets.
///
/// `StoriesWidget` offers predefined layouts for story-like widget displays, such as rows and grids of visual content.
/// `MomentsWidget` offers predefined layouts tailored for displaying moment-based content.
/// `VideosWidget` offers predefined layouts tailored for displaying videos-based content.
enum BlazeWidgetLayoutPreset {
  // Stories Widget - Row presets

  /// Returns a horizontally aligned layout consisting of **circles** `widget` items.
  /// The returned layout can be further modified if needed.
  stories_row_circles,

  /// Returns a horizontally aligned layout consisting of **vertical rectangles** `widget` items.
  /// The returned layout can be further modified if needed.
  stories_row_verticalRectangles,

  /// Returns a horizontally aligned layout consisting of **horizontal rectangles** `widget` items.
  /// The returned layout can be further modified if needed.
  stories_row_horizontalRectangles,

  /// Returns a single item layout consisting of **vertical rectangle** `widget` item.
  /// The returned layout can be further modified if needed.
  stories_row_singleItemVerticalRectangle,

  /// Returns a single item layout consisting of **horizontal rectangle** `widget` item.
  /// The returned layout can be further modified if needed.
  stories_row_singleItemHorizontalRectangle,

  // Stories Widget - Grid presets

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in one** `column` per `row`.
  /// The returned layout can be further modified if needed.
  stories_grid_oneColumnHorizontalRectangles,

  /// Returns a vertically aligned grid layout consisting of **two** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  stories_grid_twoColumnsVerticalRectangles,

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in two** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  stories_grid_twoColumnsHorizontalRectangles,

  /// Returns a vertically aligned grid layout consisting of **three** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  stories_grid_threeColumnsVerticalRectangles,

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in three** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  stories_grid_threeColumnsHorizontalRectangles,

  /// Returns a single item layout consisting of **rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  stories_grid_singleItemVerticalRectangle,

  /// Returns a single item layout consisting of **horizontal rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  stories_grid_singleItemHorizontalRectangle,

  // Moments Widget - Row presets

  /// Returns a horizontally aligned layout consisting of **vertical rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  moments_row_verticalRectangles,

  /// Returns a horizontally aligned layout consisting of **horizontal rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  moments_row_horizontalRectangles,

  /// Returns a single item layout consisting of **vertical rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  moments_row_singleItemVerticalRectangle,

  /// Returns a single item layout consisting of **horizontal rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  moments_row_singleItemHorizontalRectangle,

  /// Returns a horizontally aligned layout consisting of **vertical rectangle** `widget` items with support for animated thumbnails.
  /// The returned layout can be further modified if needed.
  moments_row_verticalAnimatedThumbnailsRectangles,

  // Moments Widget - Grid presets

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in one** `column` per `row`.
  /// The returned layout can be further modified if needed.
  moments_grid_oneColumnHorizontalRectangles,

  /// Returns a vertically aligned grid layout consisting of **two** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  moments_grid_twoColumnsVerticalRectangles,

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in two** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  moments_grid_twoColumnsHorizontalRectangles,

  /// Returns a vertically aligned grid layout consisting of **three** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  moments_grid_threeColumnsVerticalRectangles,

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in three** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  moments_grid_threeColumnsHorizontalRectangles,

  /// Returns a single item layout consisting of **rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  moments_grid_singleItemVerticalRectangle,

  /// Returns a single item layout consisting of **horizontal rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  moments_grid_singleItemHorizontalRectangle,

  // Videos Widget - Row presets

  /// Returns a horizontally aligned layout consisting of **vertical rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  videos_row_verticalRectangles,

  /// Returns a horizontally aligned layout consisting of **horizontal rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  videos_row_horizontalRectangles,

  /// Returns a single item layout consisting of **vertical rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  videos_row_singleItemVerticalRectangle,

  /// Returns a single item layout consisting of **horizontal rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  videos_row_singleItemHorizontalRectangle,

  /// Returns a horizontally aligned layout consisting of **vertical rectangle** `widget` items with support for animated thumbnails.
  /// The returned layout can be further modified if needed.
  videos_row_verticalAnimatedThumbnailsRectangles,

  // Videos Widget - Grid presets

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in one** `column` per `row`.
  /// The returned layout can be further modified if needed.
  videos_grid_oneColumnHorizontalRectangles,

  /// Returns a vertically aligned grid layout consisting of **two** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  videos_grid_twoColumnsVerticalRectangles,

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in two** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  videos_grid_twoColumnsHorizontalRectangles,

  /// Returns a vertically aligned grid layout consisting of **three** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  videos_grid_threeColumnsVerticalRectangles,

  /// Returns a vertically aligned grid layout consisting of **horizontal rectangles in three** `columns` per `row`.
  /// The returned layout can be further modified if needed.
  videos_grid_threeColumnsHorizontalRectangles,

  /// Returns a single item layout consisting of **rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  videos_grid_singleItemVerticalRectangle,

  /// Returns a single item layout consisting of **horizontal rectangle** `widget` items.
  /// The returned layout can be further modified if needed.
  videos_grid_singleItemHorizontalRectangle,
}
