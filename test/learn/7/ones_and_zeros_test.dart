import 'package:flutter_learn/learn/7/ones_and_zeros.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final onesAndZeros = OnesAndZeros();
    test('Testing for [0, 0, 0, 1]', () => expect(onesAndZeros.binaryArrayToNumber([0, 0, 0, 1]), equals(1)));
    test('Testing for [0, 0, 1, 0]', () => expect(onesAndZeros.binaryArrayToNumber([0, 0, 1, 0]), equals(2)));
    test('Testing for [1, 1, 1, 1]', () => expect(onesAndZeros.binaryArrayToNumber([1, 1, 1, 1]), equals(15)));
    test('Testing for [0, 1, 1, 0]', () => expect(onesAndZeros.binaryArrayToNumber([0, 1, 1, 0]), equals(6)));
  });
}