import 'package:flutter_learn/learn/5/decimal_to_factorial_and_back.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final decimalToFactorialAndBack = DecimalToFactorialAndBack();
  void testing1(int n, String exp) {
    test('Testing dec2FactString for: $n', () =>
        expect(decimalToFactorialAndBack.dec2FactString(n), equals(exp)));
  }
  void testing2(String n, int exp) {
    test('Testing factString2Dec for: $n', () =>
        expect(decimalToFactorialAndBack.factString2DecBest(n), equals(exp)));
  }
  group('fixed tests dec2FactString', () {
    testing1(36288000, 'A0000000000');
    testing1(2982, '4041000');
    testing1(463, '341010');
  });
  group('fixed tests factString2Dec', () {
    testing2('341010', 463);
    testing2('4042100', 2990);
    testing2('65341010', 34303);
    testing2('27A0533231100', 1273928000);

  });
}

