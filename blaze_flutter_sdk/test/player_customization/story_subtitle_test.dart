import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the stories player subtitle serializes with the bridge keys', () {
    const style = BlazeStoryPlayerStyle(
      subtitle: BlazeStoryPlayerSubtitleTextStyle(
        font: BlazeFont(fontName: 'X', fontFileName: 'x'),
        textSize: 14,
        textColor: '#FFFFFF',
        isVisible: true,
      ),
    );

    final subtitle = style.toJson()['subtitle'] as Map<String, dynamic>;

    expect(subtitle['font'], isNotNull);
    expect(subtitle['textSize'], 14);
    expect(subtitle['textColor'], '#FFFFFF');
    expect(subtitle['isVisible'], true);
  });

  test('unset subtitle is null so native keeps its default', () {
    expect(const BlazeStoryPlayerStyle().toJson()['subtitle'], isNull);
  });

  test('round-trips through fromJson', () {
    const style = BlazeStoryPlayerStyle(
      subtitle: BlazeStoryPlayerSubtitleTextStyle(isVisible: false),
    );

    expect(BlazeStoryPlayerStyle.fromJson(style.toJson()), style);
  });
}
