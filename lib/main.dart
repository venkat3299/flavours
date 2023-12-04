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
