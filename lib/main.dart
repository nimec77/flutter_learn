import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/algorithms/beautiful_appearance.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final beautifulAppearance = BeautifulAppearance();

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
                beautifulAppearance.toBeautiful(229.56, 7),
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
