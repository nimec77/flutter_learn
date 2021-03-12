import 'package:flutter/material.dart';

import 'learn/are_they_the_same.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final areTheyTheSame = AreTheyTheSame();

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
            areTheyTheSame.comp([2, 2, 3], [4, 9, 9]).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
