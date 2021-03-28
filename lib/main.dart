import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/4/sum_by_factors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final sumByFactors = SumByFactors();

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
            sumByFactors.sumOfDivided([37, 13, 19, 33, -18, 79, 26]),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
