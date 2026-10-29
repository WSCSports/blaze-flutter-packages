import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('audio and liveCatchup serialize with the bridge keys', () {
    const buttons = BlazeVideosPlayerButtonsStyle(
      audio: BlazePlayerButtonStyle(isVisible: false),
      liveCatchup: BlazePlayerButtonStyle(color: '#FF0000'),
    );

    final json = buttons.toJson();

    expect(json['audio']['isVisible'], false);
    expect(json['liveCatchup']['color'], '#FF0000');
  });

  test('unset buttons are null so native keeps its preset', () {
    final json = const BlazeVideosPlayerButtonsStyle().toJson();

    expect(json['audio'], isNull);
    expect(json['liveCatchup'], isNull);
  });
}
