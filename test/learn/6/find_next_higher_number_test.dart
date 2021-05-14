import 'package:flutter_learn/learn/6/find_next_higher_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('basic tests', () {
    final nextHigherNumber = FindNextHigherNumber();
    test('Testing for 128', () => expect(nextHigherNumber.nextHigherBest(128), equals(256)));
    test('Testing for 1', () => expect(nextHigherNumber.nextHigherBest(1), equals(2)));
    test('Testing for 1022', () => expect(nextHigherNumber.nextHigherBest(1022), equals(1279)));
    test('Testing for 127', () => expect(nextHigherNumber.nextHigherBest(127), equals(191)));
    test('Testing for 1253343', () => expect(nextHigherNumber.nextHigherBest(1253343), equals(1253359)));
  });
}
