import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_layout_common.freezed.dart';
part 'widget_layout_common.g.dart';

/// Common margin/padding configuration
@freezed
class BlazeMargins with _$BlazeMargins {
  const factory BlazeMargins({
    double? top,
    double? leading,
    double? bottom,
    double? trailing,
  }) = _BlazeMargins;

  factory BlazeMargins.fromJson(Map<String, dynamic> json) =>
      _$BlazeMarginsFromJson(json);
}

/// Font configuration for text styling
@freezed
class BlazeFont with _$BlazeFont {
  const factory BlazeFont({
    /// iOS font name (e.g., 'Agbalumo-Regular')
    String? fontName,

    /// Android font file name without extension (e.g., 'agbalumo_regular')
    String? fontFileName,
  }) = _BlazeFont;

  factory BlazeFont.fromJson(Map<String, dynamic> json) =>
      _$BlazeFontFromJson(json);
}

/// Image reference configuration
@freezed
class BlazeImage with _$BlazeImage {
  const factory BlazeImage({
    /// Image name for iOS or Android file name without extension
    String? imageName,
  }) = _BlazeImage;

  factory BlazeImage.fromJson(Map<String, dynamic> json) =>
      _$BlazeImageFromJson(json);
}

/// Text alignment options
enum BlazeTextAlign {
  @JsonValue('Start')
  start,
  @JsonValue('Center')
  center,
  @JsonValue('End')
  end,
}

/// Thumbnail type options for widget items
enum BlazeThumbnailType {
  @JsonValue('SquareIcon')
  squareIcon,
  @JsonValue('VerticalTwoByThree')
  verticalTwoByThree,
  @JsonValue('Custom')
  custom,
}

/// Image position within widget items
enum BlazeWidgetItemImagePosition {
  @JsonValue('TopStart')
  topStart,
  @JsonValue('TopCenter')
  topCenter,
  @JsonValue('TopEnd')
  topEnd,
  @JsonValue('CenterStart')
  centerStart,
  @JsonValue('Center')
  center,
  @JsonValue('CenterEnd')
  centerEnd,
  @JsonValue('BottomStart')
  bottomStart,
  @JsonValue('BottomCenter')
  bottomCenter,
  @JsonValue('BottomEnd')
  bottomEnd,
}

/// Gradient position options
enum BlazeWidgetGradientPosition {
  @JsonValue('Top')
  top,
  @JsonValue('Center')
  center,
  @JsonValue('Bottom')
  bottom,
}

/// X-axis positioning for objects
enum BlazeObjectXPosition {
  @JsonValue('LeadingToLeading')
  leadingToLeading,
  @JsonValue('LeadingToTrailing')
  leadingToTrailing,
  @JsonValue('TrailingToLeading')
  trailingToLeading,
  @JsonValue('TrailingToTrailing')
  trailingToTrailing,
  @JsonValue('CenterX')
  centerX,
  @JsonValue('CenterToLeading')
  centerToLeading,
  @JsonValue('CenterToTrailing')
  centerToTrailing,
}

/// Y-axis positioning for objects
enum BlazeObjectYPosition {
  @JsonValue('BottomToTop')
  bottomToTop,
  @JsonValue('BottomToBottom')
  bottomToBottom,
  @JsonValue('TopToBottom')
  topToBottom,
  @JsonValue('TopToTop')
  topToTop,
  @JsonValue('CenterToTop')
  centerToTop,
  @JsonValue('CenterY')
  centerY,
  @JsonValue('CenterToBottom')
  centerToBottom,
}

/// Object positioning configuration
@freezed
class BlazeObjectPositioning with _$BlazeObjectPositioning {
  const factory BlazeObjectPositioning({
    BlazeObjectXPosition? xPosition,
    BlazeObjectYPosition? yPosition,
  }) = _BlazeObjectPositioning;

  factory BlazeObjectPositioning.fromJson(Map<String, dynamic> json) =>
      _$BlazeObjectPositioningFromJson(json);
}

/// Text styling configuration
@freezed
class BlazeTitleStyle with _$BlazeTitleStyle {
  const factory BlazeTitleStyle({
    BlazeFont? font,
    double? textSize,
    double? letterSpacing,
    String? textColor,
    double? lineHeight,
    int? maxLines,
    BlazeTextAlign? textAlign,
  }) = _BlazeTitleStyle;

  factory BlazeTitleStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeTitleStyleFromJson(json);
}
