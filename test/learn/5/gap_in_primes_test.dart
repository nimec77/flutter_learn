import 'package:flutter_learn/learn/5/gap_in_primes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final gapInPrimes = GapInPrimes();
  void testing(int g, int start, int limit, List<int> exp) =>
      test('Testing for $g $start $limit', () =>
          expect(gapInPrimes.gap(g, start, limit), equals(exp)));

  group('fixed tests', () {
    testing(2,100,110, [101, 103]);
    testing(2,101,103, [101, 103]);
    testing(4,100,110, [103, 107]);
    testing(6,100,110, []);
    testing(8,300,400, [359, 367]);
    testing(10,300,400, [337, 347]);
  });
}
