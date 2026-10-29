import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the iOS bottom safe-area flag serializes with the bridge key', () {
    final json =
        const BlazeMomentsPlayerStyle(ignoresBottomSafeArea: true).toJson();

    expect(json['ignoresBottomSafeArea'], true);
  });

  test('unset flag is null so native keeps its default', () {
    final json = const BlazeMomentsPlayerStyle().toJson();

    expect(json['ignoresBottomSafeArea'], isNull);
  });

  test('round-trips through fromJson', () {
    const style = BlazeMomentsPlayerStyle(ignoresBottomSafeArea: false);

    expect(BlazeMomentsPlayerStyle.fromJson(style.toJson()), style);
  });
}
