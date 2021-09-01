// ignore_for_file: avoid_print

import 'package:flutter_learn/learn/7/floating_point_approximation.dart';
import 'package:flutter_test/flutter_test.dart';

void assertFuzzyEquals(num a, num b, num c, [String msg = '']) {
  final floatingPointApproximation = FloatingPointApproximation();
  // max error// ignore_for_file: avoid_print

  const merr = 1e-12;
  print('Testing $a,  ${b.toStringAsExponential(12)}, $c');
  var x = floatingPointApproximation.quadratic(a.toDouble(), b.toDouble(), c.toDouble());
  var smallest = x.abs() < 0.1;
  if (!smallest) {
    print('This root is not the good one');
  }
  final actual = a * x * x + b * x + c;
  print('Actual f(x) ${actual.toStringAsExponential(12)}');
  final inrange = actual.abs() <= merr;
  if (!inrange) {
    msg = 'Expected value near: 0 , got: ${actual.toStringAsExponential(12)}. '
        'Expected error <= ${merr.toStringAsExponential(12)}';
    print(msg);
  }
  final correct = smallest && inrange;
  expect(correct, equals(true));
  if (!correct) {
    print('root is not good');
  }
  print('\n');
}

void main() {
  test('Basic-tests', () {
    assertFuzzyEquals(7, 4.00e+13, 8);
    assertFuzzyEquals(9, 1.00e+14, 1);
    assertFuzzyEquals(3, 3.00e+09, 1);
    assertFuzzyEquals(7, 4.00e+09, 7);
  });
}
