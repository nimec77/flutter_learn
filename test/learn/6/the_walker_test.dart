import 'package:flutter_learn/learn/6/the_walker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final theWalker = TheWalker();
  void dotest(int a, int b, int c, int alpha, int beta, int gamma, List<int> exp) {
    test('Testing for $a $b $c $alpha $beta $gamma',
        () => expect(theWalker.solve(a, b, c, alpha, beta, gamma), equals(exp)));
  }

  group('fixed tests', () {
    dotest(12, 20, 18, 45, 30, 60, [15, 135, 49, 18]);
    dotest(15, 15, 19, 50, 29, 55, [12, 133, 18, 44]);
    dotest(14, 25, 17, 41, 35, 59, [20, 129, 41, 57]);
  });
}
