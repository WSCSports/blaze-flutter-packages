import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('iconSource crosses as the native wire values', () {
    expect(
        const BlazeMomentsPlayerFollowEntityChipStyle(
                iconSource: BlazeMomentsPlayerFollowEntityIconSource.star)
            .toJson()['iconSource'],
        'Star');
    expect(
        const BlazeMomentsPlayerFollowEntityChipStyle(
                iconSource: BlazeMomentsPlayerFollowEntityIconSource.defaultIcon)
            .toJson()['iconSource'],
        'Default');
  });

  test('unset iconSource is null so native keeps its default icons', () {
    expect(const BlazeMomentsPlayerFollowEntityChipStyle().toJson()['iconSource'],
        isNull);
  });
}
