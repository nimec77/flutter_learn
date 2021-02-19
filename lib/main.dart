import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/product_array.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final productArray = ProductArray();

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
            productArray.productArray([3, 27, 4, 2]).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
