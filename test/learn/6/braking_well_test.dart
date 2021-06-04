import 'package:flutter_learn/learn/6/braking_well.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final brakingWell = BrakingWell();
  bool aux(double actual, double exp) {
    final r = (actual - exp).abs();
    final inrange = r <= 1e-2;
    if (inrange == false) {
      // ignore: avoid_print
      print('abs(actual - expected) must be <= 1e-2 but was $r');
    }
    return inrange;
  }
  void assertFuzzy(double actual, double exp) =>
      test('Actual $actual, Expect: $exp', () =>
          expect(aux(actual, exp), equals(true)));

  group('fixed tests dist', () {
    assertFuzzy(brakingWell.dist(144, 0.3), 311.83146449201496);
    assertFuzzy(brakingWell.dist(92, 0.5), 92.12909477605366);
    assertFuzzy(brakingWell.dist(142, 0.2), 435.94398509960854);

  });
  group('fixed tests speed', () {
    assertFuzzy(brakingWell.speed(159, 0.8), 153.79671564846308);
    assertFuzzy(brakingWell.speed(164, 0.7), 147.91115701756493);
    assertFuzzy(brakingWell.speed(153, 0.7), 142.14404997566152);

  });
}

