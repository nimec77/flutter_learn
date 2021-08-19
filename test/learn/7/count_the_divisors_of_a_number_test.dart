import 'package:flutter_learn/learn/7/count_the_divisors_of_a_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final countTheDivisorsOfANumber = CountTheDivisorsOfANumber();
  group('Basic tests', () {
    test('Testing for 1', () => expect(countTheDivisorsOfANumber.divisors(1), equals(1)));
    test('Testing for 10', () => expect(countTheDivisorsOfANumber.divisors(10), equals(4)));
    test('Testing for 11', () => expect(countTheDivisorsOfANumber.divisors(11), equals(2)));
    test('Testing for 54', () => expect(countTheDivisorsOfANumber.divisors(54), equals(8)));
    test('Testing for 64', () => expect(countTheDivisorsOfANumber.divisors(64), equals(7)));
  });
}
