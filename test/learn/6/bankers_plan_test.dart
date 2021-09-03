import 'package:flutter_learn/learn/6/bankers_plan.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final bankersPlan = BankersPlan();
  void testing(int f0, double p, int c0, int n, double i, bool exp) =>
      test('Testing for $f0 $p $c0 $n $i', () => expect(bankersPlan.fortune(f0, p, c0, n, i), equals(exp)));
  group('fixed tests', () {
    // testing(100000, 1.0, 2000, 15, 1.0, true);
    // testing(100000, 1.0, 9185, 12, 1.0, false);
    // testing(100000000, 1.0, 100000, 50, 1.0, true);
    // testing(8860750, 10.0, 592080, 22, 2.0, true);
    // testing(2639488, 6.0, 177413, 14, 7.0, true);
    testing(6730467, 1, 449653, 16, 1, true);
  });
}
