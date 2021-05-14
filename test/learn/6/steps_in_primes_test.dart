import 'package:flutter_learn/learn/6/steps_in_primes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testing(int g, int start, int limit, List<int> exp) {
    final stepsInPrimes = StepsInPrimes();
    test('Testing for $g $start $limit', () => expect(stepsInPrimes.stepBest(g, start, limit), equals(exp)));
  }

  group('fixed tests', () {
    testing(2, 100, 110, [101, 103]);
    testing(4, 100, 110, [103, 107]);
    testing(6, 100, 110, [101, 107]);
    testing(8, 300, 400, [359, 367]);
    testing(11, 30000, 100000, []);
  });
}
