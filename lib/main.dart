import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/build_a_pile_of_cubes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final buildAPile = BuildAPileOfCubes();

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
            buildAPile.findNb(1071225).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
