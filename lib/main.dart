import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/you_are_a_square.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final youAreASquare = YouAreASquare();

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
            youAreASquare.isSquareBest(-1).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
