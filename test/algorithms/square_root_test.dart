import 'package:flutter_learn/learn/algorithms/square_root.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final squareRoot = SquareRoot();

  group('Calculating the square root in terms of the area of a rectangle', () {
    test('Computing a simple root with precision 1', () {
      const precision = 1.0;
      final result = squareRoot.rectangleArea(100, precision: precision);
      expect((result - 10).abs() <= precision, true);
    });

    test('1764 square root with precision 0.00001', () {
      const precision = 0.00001;
      final result = squareRoot.rectangleArea(1764, precision: precision);
      expect((result - 42).abs() <= precision, true);
    });
  });

  group('Calculating the square root using the half division method', () {
    test('Computing a simple root with precision 1', () {
      const precision = 1.0;
      final result = squareRoot.halfDivision(100, precision: precision);
      expect((result - 10).abs() <= precision, true);
    });

    test('1764 square root with precision 0.00001', () {
      const precision = 0.00001;
      final result = squareRoot.halfDivision(1764, precision: precision);
      expect((result - 42).abs() <= precision, true);
    });
  });
}
