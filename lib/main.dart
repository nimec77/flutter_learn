import 'package:flutter/material.dart';
import 'package:flutter_learn/learn/algorithms/digital_palindrome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final digitalPalindrome = DigitalPalindrome();

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
                digitalPalindrome.palindrome('1178711', 1).toString(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
