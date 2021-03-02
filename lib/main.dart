import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/primes_in_numbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final primesInNumbers = PrimesInNumbers();

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
            primesInNumbers.primeFactorsBest(7775460),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
