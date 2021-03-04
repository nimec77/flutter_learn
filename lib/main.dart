import 'package:flutter/material.dart';

import 'learn/perimeter_of_squares_in_a_rectangle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final perimeter = PerimeterOfSquaresInARectangle();

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
            perimeter.perimeter(20).toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
