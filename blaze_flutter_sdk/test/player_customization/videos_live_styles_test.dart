import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the status indicator serializes with the bridge keys', () {
    const style = BlazeVideosPlayerStyle(
      statusIndicator: BlazeVideosPlayerStatusIndicatorStyle(
        isVisible: true,
        padding: BlazeMargins(top: 2, bottom: 2, leading: 6, trailing: 6),
        streamStates: BlazeVideosPlayerStatusIndicatorStreamStatesStyle(
          liveStreamState: BlazeVideosPlayerStatusIndicatorStateStyle(
            text: 'LIVE',
            textStyle: BlazeVideosPlayerTextStyle(textSize: 12, textColor: '#FFFFFF'),
            backgroundColor: '#FF0000',
            cornerRadius: 4,
            borderColor: '#000000',
            borderWidth: 1,
          ),
          endedStreamState:
              BlazeVideosPlayerStatusIndicatorStateStyle(isVisible: false),
        ),
      ),
    );

    final indicator = style.toJson()['statusIndicator'];
    expect(indicator['isVisible'], true);
    expect(indicator['padding']['leading'], 6);
    final live = indicator['streamStates']['liveStreamState'];
    expect(live['text'], 'LIVE');
    expect(live['textStyle'], {'font': null, 'textSize': 12, 'textColor': '#FFFFFF'});
    expect(live['backgroundColor'], '#FF0000');
    expect(live['cornerRadius'], 4);
    expect(live['borderWidth'], 1);
    expect(indicator['streamStates']['endedStreamState']['isVisible'], false);
    expect(indicator['streamStates']['upcomingStreamState'], isNull);
  });

  test('the back-to-live button serializes with the bridge keys', () {
    const style = BlazeVideosPlayerStyle(
      backToLiveButton: BlazeVideosPlayerBackToLiveButtonStyle(
        margins: BlazeMargins(bottom: 8),
        playbackStates: BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle(
          behindLiveState: BlazeVideosPlayerBackToLiveButtonStateStyle(
            text: 'GO LIVE',
            backgroundColor: '#00FF00',
            cornerRadius: 12,
          ),
        ),
      ),
    );

    final button = style.toJson()['backToLiveButton'];
    expect(button['margins']['bottom'], 8);
    final behind = button['playbackStates']['behindLiveState'];
    expect(behind['text'], 'GO LIVE');
    expect(behind['backgroundColor'], '#00FF00');
    expect(behind['cornerRadius'], 12);
    expect(behind.keys, unorderedEquals(
        ['textStyle', 'text', 'backgroundColor', 'cornerRadius', 'cornerRadiusRatio', 'glassBackground']));
    expect(button['playbackStates']['atLiveEdgeState'], isNull);
  });

  test('unset live styles are null so native keeps its preset', () {
    final json = const BlazeVideosPlayerStyle().toJson();
    expect(json['statusIndicator'], isNull);
    expect(json['backToLiveButton'], isNull);
  });

  test('the live styles round-trip through fromJson', () {
    const style = BlazeVideosPlayerStyle(
      statusIndicator: BlazeVideosPlayerStatusIndicatorStyle(
        isVisible: true,
        padding: BlazeMargins(leading: 6),
        streamStates: BlazeVideosPlayerStatusIndicatorStreamStatesStyle(
          liveStreamState: BlazeVideosPlayerStatusIndicatorStateStyle(
            text: 'LIVE',
            textStyle: BlazeVideosPlayerTextStyle(textSize: 12, textColor: '#FFFFFF'),
            backgroundColor: '#FF0000',
          ),
          endedStreamState:
              BlazeVideosPlayerStatusIndicatorStateStyle(isVisible: false),
        ),
      ),
      backToLiveButton: BlazeVideosPlayerBackToLiveButtonStyle(
        margins: BlazeMargins(bottom: 8),
        playbackStates: BlazeVideosPlayerBackToLiveButtonPlaybackStatesStyle(
          behindLiveState: BlazeVideosPlayerBackToLiveButtonStateStyle(
            text: 'GO LIVE',
            cornerRadius: 12,
          ),
        ),
      ),
    );

    expect(BlazeVideosPlayerStyle.fromJson(style.toJson()), style);
  });
}
