import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/7/alternate_capitalization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final alternateCapitalization = AlternateCapitalization();

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
            alternateCapitalization.capitalize('x').toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
