import 'package:flavours/flavor_config.dart';
import 'package:flavours/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Free container is displayed for free flavor', (WidgetTester tester) async {
    // Set up FlavorConfig for free flavor
    FlavorConfig.initialize(flavorString: 'free');

    // Build our app and trigger a frame
    await tester.pumpWidget(MyApp());

    // Verify that the Free Container is displayed
    expect(find.text('Free Container'), findsOneWidget);
  });

  testWidgets('Paid container is displayed for paid flavor', (WidgetTester tester) async {
    // Set up FlavorConfig for paid flavor
    FlavorConfig.initialize(flavorString: 'paid');

    // Build our app and trigger a frame
    await tester.pumpWidget(MyApp());

    // Verify that the Paid Container is displayed
    expect(find.text('Paid Container'), findsOneWidget);
  });
}
