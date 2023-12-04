// // enum Flavor {
// //   free,
// //   paid,
// // }
// import 'package:flavours/features/feature_b.dart';
// import 'package:flutter/material.dart';
// import 'features/feature_a.dart';

// class FlavorConfig {
//   static Flavor? _instance;

//   static Flavor get instance {
//     _instance ??= Flavor.free; // Default to free flavor
//     return _instance!;
//   }

//   static void initialize({String flavorString = 'free'}) {
//     switch (flavorString) {
//       case 'free':
//         _instance = Flavor.free;
//         break;
//       case 'paid':
//         _instance = Flavor.paid;
//         break;
//     }
//   }
// }

// class Flavor {
//   final String name;
//   const Flavor._(this.name);

//   static const Flavor free = Flavor._('free');
//   static const Flavor paid = Flavor._('paid');
// }

// extension FlavorExtension on Flavor {
//   Widget getFeatureWidget() {
//     switch (this) {
//       case Flavor.free:
//         return FeatureAWidget(); // or the appropriate widget for 'free'
//       case Flavor.paid:
//         return FeatureBWidget(); // or the appropriate widget for 'paid'
//     }

//     // Default return statement
//     return Container();
//   }
// }
enum Flavor {
  free,
  paid,
}

class FlavorConfig {
  static Flavor appFlavor = Flavor.free; // Set the default flavor

  static void initialize({required Flavor flavor}) {
    appFlavor = flavor;
    print(appFlavor.toString());
  }
}