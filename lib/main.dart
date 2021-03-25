import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/a_disguised_sequence.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final aDisguisedSequence = ADisguisedSequence();

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
            aDisguisedSequence.fcn(17).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
