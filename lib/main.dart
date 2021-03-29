import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/6/find_the_parity_outlier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final findTheParityOutlier = FindTheParityOutlier();

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
            findTheParityOutlier.find([99,77,331,717,89,22073,8,7,101]).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
