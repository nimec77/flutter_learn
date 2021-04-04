import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/5/josephus_permutation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final josephusPermutation = JosephusPermutation();

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
            josephusPermutation.josephus([1, 2, 3, 4, 5, 6, 7], 3).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
