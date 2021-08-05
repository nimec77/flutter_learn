import 'package:flutter_learn/learn/6/steps_in_k_primes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final stepsInKPrimes = StepsInKPrimes();
  void testing(int k, int step, int start, int limit, List<List<int>> exp) => test('Testing for $k $step $start $limit',
      () => expect(stepsInKPrimes.primesKStep(k, step, start, limit), equals(exp)));

  group('fixed tests', () {
    testing(2, 2, 0, 50, [
      [4, 6],
      [33, 35]
    ]);
    testing(10, 8, 2425364, 2425700, []);
    testing(6, 8, 2627371, 2627581, [
      [2627408, 2627416],
      [2627440, 2627448],
      [2627496, 2627504]
    ]);
    testing(4, 6, 274279, 274288, [
      [274281, 274287]
    ]);
    testing(7, 9, 277573, 278017, [
      [277875, 277884]
    ]);
  });
}
