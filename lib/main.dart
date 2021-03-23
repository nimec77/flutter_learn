import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/sum_of_a_beach.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final sumOfABeach = SumOfABeach();

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
            sumOfABeach.sumOfABeach('sun shine').toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
