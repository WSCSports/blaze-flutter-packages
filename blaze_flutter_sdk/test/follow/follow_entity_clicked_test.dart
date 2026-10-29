import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Future<BlazeOnFollowEntityClickedParams?> click(
      Map<String, Object?> payload) async {
    BlazeOnFollowEntityClickedParams? received;
    BlazeSDK.setFollowEntitiesDelegate(
        BlazeFollowEntitiesDelegate(onFollowEntityClicked: (p) => received = p));
    addTearDown(() => BlazeSDK.setFollowEntitiesDelegate(null));
    await sendAsyncBridgeEvent('Blaze.onFollowEntityClicked', payload);
    return received;
  }

  const base = {
    'playerType': 'moments',
    'sourceId': 's',
    'newFollowingState': true,
    'followEntityId': '1',
  };

  test('the click carries the entity metadata', () async {
    final p = await click(
        {...base, 'providerName': 'opta', 'entityType': 'team'});

    expect(
        p?.followEntity,
        const BlazeFollowEntity(
            id: '1',
            providerName: 'opta',
            entityType: BlazeFollowedEntityCategory.team));
    expect(p?.newFollowingState, isTrue);
  });

  test('a click without metadata still reaches the delegate', () async {
    final p = await click(base);

    expect(p?.followEntity, const BlazeFollowEntity(id: '1'));
  });
}
