import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/stop_spinning.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final stopSpinning = StopSpinning();

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
            stopSpinning.spinWords('Hey fellow warriors'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
