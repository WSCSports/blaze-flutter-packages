import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

const _payload = <String, Object?>{
  'playerType': 'moments',
  'sourceId': 's',
  'reason': 'GeoBlocked',
  'contentParams': {
    'contentIndex': 2,
    'contentId': 'c',
    'extraInfo': {'k': 'v'},
    'contentThumbnailUrl': null,
  },
};

const _dataSource = BlazeDataSourceType.ids(ids: ['1']);

void main() {
  group('BlazeOnContentRestrictedParams', () {
    test('decodes the native payload', () {
      final p = BlazeOnContentRestrictedParams.fromJson(_payload);

      expect(p.playerType, BlazePlayerType.moments);
      expect(p.sourceId, 's');
      expect(p.reason, BlazeContentRestrictionReason.geoBlocked);
      expect(p.contentParams.contentIndex, 2);
      expect(p.contentParams.contentId, 'c');
      expect(p.contentParams.extraInfo, {'k': 'v'});
      expect(p.contentParams.contentThumbnailUrl, isNull);
    });

    test('decodes every native reason wire value', () {
      const wire = {
        'SubscriptionRequired': BlazeContentRestrictionReason.subscriptionRequired,
        'GeoBlocked': BlazeContentRestrictionReason.geoBlocked,
        'VpnBlocked': BlazeContentRestrictionReason.vpnBlocked,
        'DeviceLimitReached': BlazeContentRestrictionReason.deviceLimitReached,
        'ContentNotAvailable': BlazeContentRestrictionReason.contentNotAvailable,
        'ExternalUserTokenMissing':
            BlazeContentRestrictionReason.externalUserTokenMissing,
        'ExternalUserTokenInvalid':
            BlazeContentRestrictionReason.externalUserTokenInvalid,
        'ExternalUserTokenExpired':
            BlazeContentRestrictionReason.externalUserTokenExpired,
        'RateLimited': BlazeContentRestrictionReason.rateLimited,
        'TemporarilyUnavailable':
            BlazeContentRestrictionReason.temporarilyUnavailable,
        'Unknown': BlazeContentRestrictionReason.unknown,
      };
      expect(wire.length, BlazeContentRestrictionReason.values.length);
      wire.forEach((value, reason) {
        final p = BlazeOnContentRestrictedParams.fromJson(
            {..._payload, 'reason': value});
        expect(p.reason, reason, reason: value);
      });
    });

    test('an unknown reason falls back to unknown', () {
      final p = BlazeOnContentRestrictedParams.fromJson(
          {..._payload, 'reason': 'SomethingNew'});
      expect(p.reason, BlazeContentRestrictionReason.unknown);
    });

    test('isRetriable is true only for rateLimited and temporarilyUnavailable',
        () {
      final retriable = BlazeContentRestrictionReason.values
          .where((r) => r.isRetriable)
          .toSet();
      expect(retriable, {
        BlazeContentRestrictionReason.rateLimited,
        BlazeContentRestrictionReason.temporarilyUnavailable,
      });
    });
  });

  group('onContentRestricted dispatch', () {
    testWidgets('widget channel calls widgetDelegate.onContentRestricted',
        (tester) async {
      capturePlatformViewCreationParams();
      BlazeOnContentRestrictedParams? received;
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: BlazeMomentsRowView(
          widgetId: 'w-restricted',
          dataSource: _dataSource,
          presetWidgetLayout: BlazeWidgetLayoutPreset.moments_row_verticalRectangles,
          widgetDelegate:
              BlazeWidgetDelegate(onContentRestricted: (p) => received = p),
        ),
      ));

      await sendWidgetEvent('w-restricted', 'onContentRestricted', _payload);

      expect(received?.reason, BlazeContentRestrictionReason.geoBlocked);
    });

    testWidgets(
        'tabs event calls momentsContainerTabsDelegate.onContentRestricted',
        (tester) async {
      capturePlatformViewCreationParams();
      BlazeOnContentRestrictedParams? received;
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: BlazeMomentsRowView.tabs(
          widgetId: 'w-tabs-restricted',
          tabsConfiguration: const BlazeMomentsWidgetTabsConfiguration(
            containerSourceId: 'c',
            tabs: [
              BlazeMomentsContainerTabItem(
                  containerId: 't1', title: 'T1', dataSource: _dataSource),
            ],
          ),
          presetWidgetLayout: BlazeWidgetLayoutPreset.moments_row_verticalRectangles,
          momentsContainerTabsDelegate: BlazePlayerContainerTabsDelegate(
              onContentRestricted: (p) => received = p),
        ),
      ));

      await sendWidgetEvent('w-tabs-restricted',
          'onMomentsContainerTabsContentRestricted', _payload);

      expect(received?.contentParams.contentId, 'c');
    });

    test('async-bridge event calls playerEntryPointDelegate.onContentRestricted',
        () async {
      BlazeOnContentRestrictedParams? received;
      BlazeSDK.setPlayerEntryPointDelegate(BlazePlayerEntryPointDelegate(
          onContentRestricted: (p) => received = p));
      addTearDown(() => BlazeSDK.setPlayerEntryPointDelegate(null));

      await sendAsyncBridgeEvent('Blaze.onContentRestricted', _payload);

      expect(received?.sourceId, 's');
    });
  });
}
