import 'package:flutter_learn/learn/7/count_the_digit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final countTheDigit = CountTheDigit();
  void dotest(int n, int d, int exp) {
    test('nbDig($n, $d)', () => expect(countTheDigit.nDigOther(n, d), equals(exp)));
  }
  group('fixed tests', () {
    dotest(10, 1, 4);
    dotest(5750, 0, 4700);
    dotest(11011, 2, 9481);
    dotest(12224, 8, 7733);
    dotest(11549, 1, 11905);
    dotest(14550, 7, 8014);

  });
}
