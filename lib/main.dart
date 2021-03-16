import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/grasshopper_summation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final grasshopperSummation = GrasshopperSummation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Учим Dart'),
        ),
        body: Center(
          child: Text(
            grasshopperSummation.summation(8).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
