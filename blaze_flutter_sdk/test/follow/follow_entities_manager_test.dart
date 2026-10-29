// The deprecated ID-based statics are exercised on purpose.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

const _team = BlazeFollowEntity(
    id: '1', providerName: 'opta', entityType: BlazeFollowedEntityCategory.team);
const _teamMap = {'id': '1', 'providerName': 'opta', 'entityType': 'team'};
const _idOnlyMap = {'id': 'a', 'providerName': null, 'entityType': null};

void main() {
  group('BlazeSDK.followEntitiesManager', () {
    test('setFollowedEntities sends entity maps', () async {
      final calls = mockSdkModule({});

      await BlazeSDK.followEntitiesManager.setFollowedEntities([_team]);

      expect(calls.single.method, 'followEntitiesManagerSet');
      expect(calls.single.arguments, {
        'entities': [_teamMap]
      });
    });

    test('insertFollowedEntities and removeFollowedEntities send entity maps',
        () async {
      final calls = mockSdkModule({});

      await BlazeSDK.followEntitiesManager.insertFollowedEntities([_team]);
      await BlazeSDK.followEntitiesManager.removeFollowedEntities([_team]);

      expect(calls.map((c) => c.method),
          ['followEntitiesManagerInsert', 'followEntitiesManagerRemove']);
      expect(calls.map((c) => c.arguments), [
        {'entities': [_teamMap]},
        {'entities': [_teamMap]},
      ]);
    });

    test('getFollowedEntities decodes entity maps', () async {
      mockSdkModule({
        'followEntitiesManagerGet': [
          _teamMap,
          {'id': '2'},
        ]
      });

      final entities =
          await BlazeSDK.followEntitiesManager.getFollowedEntities();

      expect(entities, [_team, const BlazeFollowEntity(id: '2')]);
    });
  });

  group('deprecated ID statics forward to the manager', () {
    test('set, insert and remove send id-only entities', () async {
      final calls = mockSdkModule({});

      await BlazeSDK.setFollowedEntities(['a']);
      await BlazeSDK.insertFollowedEntities(['a']);
      await BlazeSDK.removeFollowedEntities(['a']);

      expect(calls.map((c) => c.method), [
        'followEntitiesManagerSet',
        'followEntitiesManagerInsert',
        'followEntitiesManagerRemove',
      ]);
      for (final call in calls) {
        expect(call.arguments, {
          'entities': [_idOnlyMap]
        });
      }
    });

    test('getFollowedEntities returns the ids', () async {
      mockSdkModule({
        'followEntitiesManagerGet': [_teamMap, {'id': '2'}]
      });

      expect(await BlazeSDK.getFollowedEntities(), ['1', '2']);
    });
  });
}
