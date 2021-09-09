import 'package:flutter_learn/learn/7/maximum_multiple.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final maximumMultiple = MaximumMultiple();
  group('Fixed tests', () {
    test('maxMultiple(2, 7)', () => expect(maximumMultiple.maxMultiple(2, 7), equals(6)));
    test('maxMultiple(3, 10)', () => expect(maximumMultiple.maxMultiple(3, 10), equals(9)));
    test('maxMultiple(7, 17)', () => expect(maximumMultiple.maxMultiple(7, 17), equals(14)));
    test('maxMultiple(10, 50)', () => expect(maximumMultiple.maxMultiple(10, 50), equals(50)));
    test('maxMultiple(37, 200)', () => expect(maximumMultiple.maxMultiple(37, 200), equals(185)));
    test('maxMultiple(7, 100)', () => expect(maximumMultiple.maxMultiple(7, 100), equals(98)));
  });
}