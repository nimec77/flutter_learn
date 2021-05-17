import 'package:flutter_learn/learn/6/disease_spread.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  bool aux(int tm, int n, int s0, int i0, double b, double a, int exp) {
    final diseaseSpread = DiseaseSpread();
    final actual = diseaseSpread.epidemicBest(tm, n, s0, i0, b, a);
    final r = (actual - exp).abs();
    final inrange = r <= 1;
    if (inrange == false) {
      print('abs(actual - expected) must be <= 1 but was $r');
    }
    return inrange;
  }
  void doTest(int tm, int n, int s0, int i0, double b, double a, int exp) =>
      test('Testing for $tm $n $s0 $i0 $b $a', () =>
          expect(aux(tm, n, s0, i0, b, a, exp), equals(true)));

  group('fixed tests', () {
    doTest(18, 432, 1004, 1, 0.00209, 0.51, 420);
    doTest(12, 288, 1007, 2, 0.00206, 0.45, 461);
    doTest(13, 312, 999, 1, 0.00221, 0.55, 409);

  });
}