import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  test('the animated-thumbnail presets exist under the native-matching names',
      () {
    expect(
      BlazeWidgetLayoutPreset.values.map((p) => p.name),
      containsAll([
        'stories_row_animatedThumbnailsCircles',
        'stories_row_verticalAnimatedThumbnailsRectangles',
        'videos_row_horizontalAnimatedThumbnailsRectangles',
      ]),
    );
  });

  testWidgets('the preset name is what the widget sends to native',
      (tester) async {
    final created = capturePlatformViewCreationParams();

    await tester.pumpWidget(const Directionality(
      textDirection: TextDirection.ltr,
      child: BlazeStoriesRowView(
        widgetId: 'w-preset',
        dataSource: BlazeDataSourceType.ids(ids: ['1']),
        presetWidgetLayout:
            BlazeWidgetLayoutPreset.stories_row_animatedThumbnailsCircles,
      ),
    ));

    expect(created.single['presetWidgetLayout'],
        'stories_row_animatedThumbnailsCircles');
  });
}
