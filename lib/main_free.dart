// import 'package:flavours/flavors.dart';
// import 'package:flavours/flavor_config.dart';
// import 'package:flutter/material.dart';

// void main() {
//   print(FlavorConfig.instance.flavor.name.toString());
//   FlavorConfig.initialize(flavorString: "free");
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var flavor = FlavorConfig.instance.flavor;
//     print("flavor is $flavor");
//     Widget container;
//     switch (flavor) {
//       case Flavor.free:
//         print(Flavor.free.name.toString());
//         container = FreeContainer(flavourName: Flavor.free.name.toString());
//         break;
//       case Flavor.paid:
//         print(Flavor.paid.name.toString());
//         container = PaidContainer(flavourName: Flavor.paid.name.toString());
//         break;
//     }

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My App'),
//         ),
//         body: container,
//       ),
//     );
//   }
// }


// // ignore: use_key_in_widget_constructors
// class FreeContainer extends StatefulWidget {
//   final String flavourName;
//   const FreeContainer({super.key, required this.flavourName});
//   @override
//   State<FreeContainer> createState() => _FreeContainerState();
// }

// class _FreeContainerState extends State<FreeContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: widget.flavourName == "free"
//           ? Colors.redAccent
//           : widget.flavourName == "paid"
//               ? Colors.amberAccent
//               : Colors.blueGrey,
//       child: Center(
//         child: Text(widget.flavourName),
//       ),
//     );
//   }
// }

// // ignore: use_key_in_widget_constructors
// class PaidContainer extends StatefulWidget {
//   final String flavourName;
//   PaidContainer({required this.flavourName});

//   @override
//   State<PaidContainer> createState() => _PaidContainerState();
// }

// class _PaidContainerState extends State<PaidContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: widget.flavourName == "free"
//           ? Colors.redAccent
//           : widget.flavourName == "paid"
//               ? Colors.amberAccent
//               : Colors.blueGrey,
//       child: Center(
//         child: Text(widget.flavourName),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'flavors.dart';

void main() {
  print(FlavorConfig.appFlavor.toString());
  FlavorConfig.initialize(flavor: Flavor.free); // Set the default flavor
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container;
    switch (FlavorConfig.appFlavor) {
      case Flavor.free:
        container = FreeContainer();
        break;
      case Flavor.paid:
        container = PaidContainer();
        break;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: container,
      ),
    );
  }
}

class FreeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text('Free Container'),
      ),
    );
  }
}

class PaidContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Paid Container'),
      ),
    );
  }
}
