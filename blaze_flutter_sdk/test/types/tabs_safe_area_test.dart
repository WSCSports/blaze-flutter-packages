import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the iOS safe-area flags serialize with the bridge keys', () {
    final json = const BlazePlayerTabsStyle(
      ignoresTopSafeArea: false,
      ignoresBottomSafeArea: true,
    ).toJson();

    expect(json['ignoresTopSafeArea'], false);
    expect(json['ignoresBottomSafeArea'], true);
  });

  test('unset flags are null so native keeps its defaults', () {
    final json = const BlazePlayerTabsStyle().toJson();

    expect(json['ignoresTopSafeArea'], isNull);
    expect(json['ignoresBottomSafeArea'], isNull);
  });
}
