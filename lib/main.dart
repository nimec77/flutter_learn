import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/test1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final test1 = Test1();

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
            test1.stockSummary(
              ['BBAR 150', 'CDXE 515', 'BKWR 250', 'BTSQ 890', 'DRTY 600'],
              ['A', 'B', 'C', 'D'],
            ),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
