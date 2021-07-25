import 'package:flutter_learn/learn/5/which_x_for_that_sum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final whichXForThatSum = WhichXForThatSum();
  void assertFuzzy(double m, double exp) {
    const merr = 1e-12;
    final actual = whichXForThatSum.solve(m);
    final inrange = (actual - exp).abs() <= merr;
    test('Test: $m; expect: $exp; got: $actual', () => expect(inrange, equals(true)));
  }

  group('Basic tests', () {
    assertFuzzy(2.00, 5.000000000000e-01);
    assertFuzzy(4.00, 6.096117967978e-01);
    assertFuzzy(5.00, 6.417424305044e-01);
    assertFuzzy(6.00, 6.666666666667e-01);
    assertFuzzy(8.00, 7.034648345914e-01);

  });
}

