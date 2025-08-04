import 'package:json_annotation/json_annotation.dart';
import '../../types/shared_types.dart';
import '../../widgets/types/widget_layout_common.dart';

part 'shared_player_types.g.dart';

/// Shared types used across all player styles

@JsonSerializable()
class BlazeReactFirstTimeSlideCTAStyle {
  final String? title;
  final BlazeColor? backgroundColor;
  final BlazeColor? textColor;
  final BlazeFont? font;
  final double? textSize;
  final double? cornerRadius;

  const BlazeReactFirstTimeSlideCTAStyle({
    this.title,
    this.backgroundColor,
    this.textColor,
    this.font,
    this.textSize,
    this.cornerRadius,
  });

  factory BlazeReactFirstTimeSlideCTAStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeReactFirstTimeSlideCTAStyleFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BlazeReactFirstTimeSlideCTAStyleToJson(this);
}

@JsonSerializable()
class BlazeReactFirstTimeSlideInstructionStyle {
  final BlazeReactFirstTimeSlideTextStyle? headerText;
  final BlazeReactFirstTimeSlideTextStyle? descriptionText;

  const BlazeReactFirstTimeSlideInstructionStyle({
    this.headerText,
    this.descriptionText,
  });

  factory BlazeReactFirstTimeSlideInstructionStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeReactFirstTimeSlideInstructionStyleFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BlazeReactFirstTimeSlideInstructionStyleToJson(this);
}

@JsonSerializable()
class BlazeReactFirstTimeSlideTextStyle {
  final String? text;
  final BlazeFont? font;
  final double? textSize;
  final BlazeColor? textColor;

  const BlazeReactFirstTimeSlideTextStyle({
    this.text,
    this.font,
    this.textSize,
    this.textColor,
  });

  factory BlazeReactFirstTimeSlideTextStyle.fromJson(
          Map<String, dynamic> json) =>
      _$BlazeReactFirstTimeSlideTextStyleFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BlazeReactFirstTimeSlideTextStyleToJson(this);
}

@JsonSerializable()
class BlazeReactSeekBarStyle {
  final bool? isVisible;
  final String? backgroundColor;
  final String? progressColor;
  final double? height;
  final double? cornerRadius;
  final String? thumbColor;
  final BlazeImage? thumbImage;
  final double? thumbSize;
  final bool? isThumbVisible;

  const BlazeReactSeekBarStyle({
    this.isVisible,
    this.backgroundColor,
    this.progressColor,
    this.height,
    this.cornerRadius,
    this.thumbColor,
    this.thumbImage,
    this.thumbSize,
    this.isThumbVisible,
  });

  factory BlazeReactSeekBarStyle.fromJson(Map<String, dynamic> json) =>
      _$BlazeReactSeekBarStyleFromJson(json);

  Map<String, dynamic> toJson() => _$BlazeReactSeekBarStyleToJson(this);
}

/// Text case enum for player styles
enum BlazeReactTextCase {
  @JsonValue('Uppercase')
  uppercase,

  @JsonValue('Lowercase')
  lowercase,
}

/// Bottom components alignment for moments player
enum BlazeReactBottomComponentsAlignment {
  @JsonValue('RelativeToContainer')
  relativeToContainer,

  @JsonValue('RelativeToPlayer')
  relativeToPlayer,

  @JsonValue('FitCtaBelowPlayer')
  fitCtaBelowPlayer,
}

/// Player display mode
enum BlazeReactPlayerDisplayMode {
  @JsonValue('FixedRatio_9_16')
  fixedRatio9x16,

  @JsonValue('ResizeAspectFillCenterCrop')
  resizeAspectFillCenterCrop,
}
