import 'package:blaze_flutter_sdk/blaze_flutter_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_channels.dart';

void main() {
  test('onErrorThrown carries the missingWidgetIdentifier reason', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    BlazeError? received;
    BlazeGlobalDelegateHelper.registerDelegate(
        BlazeGlobalDelegate(onErrorThrown: (p) => received = p.error));
    addTearDown(() => BlazeGlobalDelegateHelper.registerDelegate(null));

    await sendAsyncBridgeEvent(
        'Blaze.onErrorThrown', {'reason': 'missingWidgetIdentifier'});

    expect(received?.reason, 'missingWidgetIdentifier');
  });
}
