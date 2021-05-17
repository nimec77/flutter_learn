import 'package:flutter_learn/learn/6/one_n_cycle.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final oneNCycle = OneNCycle();
  void doTest(int n, int exp) => test('Testing for $n', () => expect(oneNCycle.cycle(n), equals(exp)));

  group('fixed tests', () {
    doTest(3, 1);
    doTest(33, 2);
    doTest(18118, -1);
    doTest(69, 22);
    doTest(197, 98);
  });
}
