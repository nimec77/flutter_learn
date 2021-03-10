import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/get_the_middle_character.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final getTheMiddleCharacter = GetTheMiddleCharacter();

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
            getTheMiddleCharacter.getMiddle('test'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
