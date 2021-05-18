import 'package:flutter_learn/learn/4/twice_linear.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final twiceLinear = TwiceLinear();
  void testing(int n, int exp) => test('Testing for $n', () => expect(twiceLinear.dblLinearBest(n), equals(exp)));
  group('fixed tests', () {
    testing(10, 22);
    testing(20, 57);
    testing(30, 91);
    testing(50, 175);
    testing(100, 447);
  });
}
