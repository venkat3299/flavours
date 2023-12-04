import 'package:flavours/flavors.dart';

class FlavorConfig {
  final Flavor flavor;

  FlavorConfig({required this.flavor});

  static FlavorConfig _instance = FlavorConfig(flavor: Flavor.free);

  static FlavorConfig get instance => _instance;

  // Method to initialize the FlavorConfig based on flavor string
  static void initialize({required String flavorString}) {
    switch (flavorString) {
      case 'free':
        _instance = FlavorConfig(flavor: Flavor.free);
        break;
      case 'paid':
        _instance = FlavorConfig(flavor: Flavor.paid);
        break;
      default:
        _instance = FlavorConfig(flavor: Flavor.free);
        break;
    }
  }
}
