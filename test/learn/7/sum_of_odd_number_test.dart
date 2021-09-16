import 'package:flutter_learn/learn/7/sum_off_odd_numbers.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final sumOffOddNumbers = SumOffOddNumbers();
  group('basic tests', () {
    test('Testing for 1', () => expect(sumOffOddNumbers.rowSumOddNumbers(1), equals(1)));
    test('Testing for 2', () => expect(sumOffOddNumbers.rowSumOddNumbers(2), equals(8)));
    test('Testing for 3', () => expect(sumOffOddNumbers.rowSumOddNumbers(3), equals(27)));
    test('Testing for 13', () => expect(sumOffOddNumbers.rowSumOddNumbers(13), equals(2197)));
    test('Testing for 19', () => expect(sumOffOddNumbers.rowSumOddNumbers(19), equals(6859)));
    test('Testing for 41', () => expect(sumOffOddNumbers.rowSumOddNumbers(41), equals(68921)));
    test('Testing for 42', () => expect(sumOffOddNumbers.rowSumOddNumbers(42), equals(74088)));
    test('Testing for 74', () => expect(sumOffOddNumbers.rowSumOddNumbers(74), equals(405224)));
    test('Testing for 86', () => expect(sumOffOddNumbers.rowSumOddNumbers(86), equals(636056)));
    test('Testing for 93', () => expect(sumOffOddNumbers.rowSumOddNumbers(93), equals(804357)));
    test('Testing for 101', () => expect(sumOffOddNumbers.rowSumOddNumbers(101), equals(1030301)));
  });
}