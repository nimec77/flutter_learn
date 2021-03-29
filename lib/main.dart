import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/6/find_the_parity_outlier.dart';
import 'package:flutter_learn/learn/algorithms/miller_rabin_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final millerRabinTest = MillerRabinTest();

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
            millerRabinTest.test(3458, 50).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
