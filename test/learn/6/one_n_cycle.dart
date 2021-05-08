import 'package:flutter_learn/learn/6/one_n_cycle.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final oneNCycle = OneNCycle();
  dotest(int n, int exp) => test('Testing for $n', () => expect(oneNCycle.cycle(n), equals(exp)));

  group('fixed tests', () {
    dotest(3, 1);
    dotest(33, 2);
    dotest(18118, -1);
    dotest(69, 22);
    dotest(197, 98);
  });
}
