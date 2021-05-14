import 'package:flutter_learn/learn/7/extra_perfect_numbers.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final extraPerfectNumbers = ExtraPerfectNumbers();
    test('Testing for 3', () {
      expect(extraPerfectNumbers.extraPerfect(3), equals([1, 3]));
    });
    test('Testing for 5', () {
      expect(extraPerfectNumbers.extraPerfect(5), equals([1, 3, 5]));
    });
    test('Testing for 7', () {
      expect(extraPerfectNumbers.extraPerfect(7), equals([1, 3, 5, 7]));
    });
    test('Testing for 28', () {
      expect(extraPerfectNumbers.extraPerfect(28), equals([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27]));
    });
    test('Testing for 39', () {
      expect(extraPerfectNumbers.extraPerfect(39),
          equals([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39]));
    });
  });
}
