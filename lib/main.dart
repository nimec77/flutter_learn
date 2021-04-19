import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/6/steps_in_primes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final stepsInPrimes = StepsInPrimes();

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
        body: SingleChildScrollView(
          child: Wrap(
            children: [
              Text(
                stepsInPrimes.step(2, 2, 10000).toString(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
