import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('entity round-trips its metadata', () {
    const e = BlazeFollowEntity(
        id: '1',
        providerName: 'opta',
        entityType: BlazeFollowedEntityCategory.team);

    expect(e.toJson(), {'id': '1', 'providerName': 'opta', 'entityType': 'team'});
    expect(BlazeFollowEntity.fromJson(e.toJson()), e);
  });

  test('metadata is optional', () {
    final e = BlazeFollowEntity.fromJson({'id': '1'});

    expect(e.id, '1');
    expect(e.providerName, isNull);
    expect(e.entityType, isNull);
  });

  test('every category crosses by its lowercase name', () {
    for (final category in BlazeFollowedEntityCategory.values) {
      final e = BlazeFollowEntity.fromJson({'id': '1', 'entityType': category.name});
      expect(e.entityType, category);
    }
    expect(BlazeFollowedEntityCategory.values.map((c) => c.name),
        ['team', 'player', 'property']);
  });

  test('an unknown category decodes to null', () {
    final e = BlazeFollowEntity.fromJson({'id': '1', 'entityType': 'galaxy'});

    expect(e.entityType, isNull);
  });
}
