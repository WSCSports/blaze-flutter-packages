import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('serializes entity types, order and max items', () {
    const source = BlazeDataSourceType.followedEntities(
      entityTypes: {
        BlazeFollowedEntityCategory.team,
        BlazeFollowedEntityCategory.player,
      },
      orderType: BlazeOrderType.aToZ,
      advancedOrderType: BlazeAdvancedOrderType.liveFirst,
      maxItems: 10,
    );

    final json = source.toJson();
    expect(json['entityTypes'], unorderedEquals(['team', 'player']));
    expect(json['orderType'], 'aToZ');
    expect(json['advancedOrderType'], 'liveFirst');
    expect(json['maxItems'], 10);
  });

  test('defaults to all entity types (empty set)', () {
    final json = const BlazeDataSourceType.followedEntities().toJson();

    expect(json['entityTypes'], isEmpty);
    expect(json['orderType'], isNull);
    expect(json['maxItems'], isNull);
  });

  test('round-trips through fromJson', () {
    const source = BlazeDataSourceType.followedEntities(
      entityTypes: {BlazeFollowedEntityCategory.property},
      maxItems: 3,
    );

    expect(BlazeDataSourceType.fromJson(source.toJson()), source);
  });
}
