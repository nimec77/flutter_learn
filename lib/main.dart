import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/2/evaluate_mathematical_expression.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final evaluateMathematicalExpression = EvaluateMathematicalExpression();

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
            evaluateMathematicalExpression.calc('3 * 5').toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
