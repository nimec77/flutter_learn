// ignore_for_file: avoid_print

import 'package:flutter_learn/learn/6/pi_approximation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  bool aux(List<dynamic> actual, List<dynamic> exp) {
    final a0 = actual[0] as int, e0 = exp[0] as int;
    final a1 = double.parse(actual[1] as String);
    final e1 = double.parse(exp[1] as String);
    final inrange0 = a0 == e0;
    final r = (a1 - e1).abs();
    final inrange1 = r <= 1e-9;
    if ((inrange0 == false) || (inrange1 == false)) {
      print('actual $actual, expected $exp');
    }
    return inrange0 && inrange1;
  }
  void assertFuzzy(double eps, List<dynamic> actual, List<dynamic> exp) =>
      test('epsilon $eps', () =>
          expect(aux(actual, exp), equals(true)));

  group('fixed tests', () {
    final piApproximation = PiApproximation();
    assertFuzzy(0.1, piApproximation.iterPi(0.1), <dynamic>[10, '3.0418396189']);
    assertFuzzy(0.01, piApproximation.iterPi(0.01), <dynamic>[100, '3.1315929036']);
    assertFuzzy(0.001, piApproximation.iterPi(0.001), <dynamic>[1000, '3.1405926538']);
    assertFuzzy(0.0001, piApproximation.iterPi(0.0001), <dynamic>[10000, '3.1414926536']);
  });

}
