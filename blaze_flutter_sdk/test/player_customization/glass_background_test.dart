import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('glass states cross by name', () {
    expect(BlazeGlassBackgroundState.values.map((s) => s.name),
        ['automatic', 'on', 'off']);
  });

  test('glassBackground serializes on every element that supports it', () {
    const on = BlazeGlassBackgroundState.on;

    expect(const BlazePlayerButtonStyle(glassBackground: on).toJson()['glassBackground'],
        'on');
    expect(
        const BlazeVideosPlayerBackToLiveButtonStateStyle(glassBackground: on)
            .toJson()['glassBackground'],
        'on');
    expect(
        const BlazeWidgetItemDurationElementStateStyle(glassBackground: on)
            .toJson()['glassBackground'],
        'on');
    expect(
        const BlazeWidgetItemPlayIconElementStyle(glassBackground: on)
            .toJson()['glassBackground'],
        'on');
  });

  test('unset glassBackground is null so native keeps its default', () {
    expect(const BlazePlayerButtonStyle().toJson()['glassBackground'], isNull);
  });
}
