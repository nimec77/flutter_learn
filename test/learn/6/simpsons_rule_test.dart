import 'package:flutter_learn/learn/6/simpsons_rule.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final simpsonsRule = SimpsonsRule();
  bool aux(int n, double exp) {
    final actual = simpsonsRule.simpson(n);
    final r = (actual - exp).abs();
    final inrange = r <= 1e-6;
    if (inrange == false) {
      print('abs(actual - expected) must be <= 1e-6 but was $r');
    }
    return inrange;
  }
  void assertFuzzy(int n, double exp) =>
      test('Testing for n: Expect: $exp', () =>
          expect(aux(n, exp), equals(true)));

  group('fixed tests', () {
    assertFuzzy(290, 1.9999999986);
    assertFuzzy(72, 1.9999996367);
    assertFuzzy(252, 1.9999999975);

  });
}
