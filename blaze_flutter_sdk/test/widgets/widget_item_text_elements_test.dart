import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('subtitle, description and play icon serialize with the bridge keys', () {
    const style = BlazeWidgetItemStyle(
      subtitle: BlazeWidgetItemSubtitleStyle(
        isVisible: true,
        topSpacing: 4,
        unreadState: BlazeTitleStyle(textColor: '#FF0000', maxLines: 1),
      ),
      description: BlazeWidgetItemDescriptionStyle(
        isVisible: true,
        topSpacing: 2,
        readState: BlazeTitleStyle(textSize: 11),
      ),
      playIconElement: BlazeWidgetItemPlayIconElementStyle(isVisible: true),
    );

    final json = style.toJson();

    expect(json['subtitle']['isVisible'], true);
    expect(json['subtitle']['topSpacing'], 4);
    expect(json['subtitle']['unreadState']['textColor'], '#FF0000');
    expect(json['subtitle']['unreadState']['maxLines'], 1);
    expect(json['subtitle']['readState'], isNull);
    expect(json['description']['topSpacing'], 2);
    expect(json['description']['readState']['textSize'], 11);
    expect(json['playIconElement'], {'isVisible': true, 'glassBackground': null});
  });

  test('unset elements are null, so native keeps its preset (hidden)', () {
    final json = const BlazeWidgetItemStyle().toJson();

    expect(json['subtitle'], isNull);
    expect(json['description'], isNull);
    expect(json['playIconElement'], isNull);
  });

  test('round-trips through fromJson', () {
    const style = BlazeWidgetItemStyle(
      subtitle: BlazeWidgetItemSubtitleStyle(isVisible: false),
      description: BlazeWidgetItemDescriptionStyle(
        isVisible: true,
        topSpacing: 2,
        readState: BlazeTitleStyle(textSize: 11),
      ),
      playIconElement: BlazeWidgetItemPlayIconElementStyle(isVisible: true),
    );

    expect(BlazeWidgetItemStyle.fromJson(style.toJson()), style);
  });
}
