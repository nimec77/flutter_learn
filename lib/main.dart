import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/my_smallest_code_interpreter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final mySmallestCodeInterpreter = MySmallestCodeInterpreter();

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
            mySmallestCodeInterpreter.brainLuck(
                '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.',
                ''),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
