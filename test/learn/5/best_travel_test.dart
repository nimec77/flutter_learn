import 'package:flutter_learn/learn/5/best_travel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final bestTravel = BestTravel();
  void dotest(int t, int k, List<int> ls, int exp) =>
      test('Testing for $t $k $ls', () =>
          expect(bestTravel.chooseBestSumBest(t, k, ls), equals(exp)));

  group('fixed tests', () {
    var ts = <int>[50, 55, 56, 57, 58];
    dotest(163, 3, ts, 163);
    ts = [50];
    dotest(163, 3, ts, -1);
    ts = [91, 74, 73, 85, 73, 81, 87];
    dotest(230, 3, ts, 228);
    dotest(331, 2, ts, 178);
    dotest(331, 4, ts, 331);

  });
}