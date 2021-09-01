import 'package:flutter_learn/learn/6/color_choice.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final colorChoice = ColorChoice();

  void dotest(int m, int n, int exp) {
    test('Testing for $m $n', () =>
        expect(colorChoice.checkChoose(m, n), equals(exp)));
  }
  group('fixed tests', () {
    dotest(6, 4, 2);
    dotest(4, 4, 1);
    dotest(4, 2, -1);
    dotest(35, 7, 3);
    dotest(184756, 20, 10);
  });
}