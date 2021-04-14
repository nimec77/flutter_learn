import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/5/common_denominators.dart';
import 'package:flutter_learn/learn/5/primes_in_numbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final commonDenominators = CommonDenominators();

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
            commonDenominators.convertFrac([ [4, 8], [4, 5], [3, 4], [6, 9], [7, 10] ]).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
