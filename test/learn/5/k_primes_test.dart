import 'package:flutter_learn/learn/5/k_primes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final kPrimes = KPrimes();
  void testing1(int k, int start, int limit, List<int> exp) =>
      test('Testing for $k $start $limit', () =>
          expect(kPrimes.countKPrimes(k, start, limit), equals(exp)));
  void testing2(int s, int exp) =>
      test('Testing for $s', () =>
          expect(kPrimes.puzzleBest(s), equals(exp)));

  group('fixed tests countKprimes', () {
    testing1(2, 4, 22, [4, 6, 9, 10, 14, 15, 21, 22]);
    testing1(5, 1000, 1100, [1020, 1026, 1032, 1044, 1050, 1053, 1064, 1072, 1092, 1100]);
    testing1(5, 500, 600, [500, 520, 552, 567, 588, 592, 594]);
    testing1(7, 1000, 1500, [1008, 1056, 1080, 1088, 1120, 1200, 1216, 1248, 1458, 1472]);

  });
  group('fixed tests puzzle', () {
    // testing2(100, 0);
    testing2(151, 3);
  });
}
