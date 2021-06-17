import 'package:flutter_learn/learn/7/find_the_stray_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final findTheStrayNumber = FindTheStrayNumber();

  group('Fixed tests', () {
    test('Testing for [1, 1, 2]', () {
      expect(findTheStrayNumber.stray([1, 1, 2]), equals(2));
    });
    test('Testing for [17, 17, 3, 17, 17, 17, 17]', () {
      expect(findTheStrayNumber.stray([17, 17, 3, 17, 17, 17, 17]), equals(3));
    });
    test('Testing for [8, 1, 1, 1, 1, 1, 1]', () {
      expect(findTheStrayNumber.stray([8, 1, 1, 1, 1, 1, 1]), equals(8));
    });
    test('Testing for [1, 1, 1, 1, 1, 1, 0]', () {
      expect(findTheStrayNumber.stray([1, 1, 1, 1, 1, 1, 0]), equals(0));
    });
    test('Testing for [0, 0, 0, 7, 0, 0, 0]', () {
      expect(findTheStrayNumber.stray([0, 0, 0, 7, 0, 0, 0]), equals(7));
    });
    test('Testing for [-21, -21, -21, -21, -6, -21, -21]', () {
      expect(findTheStrayNumber.stray([-21, -21, -21, -21, -6, -21, -21]), equals(-6));
    });
  });
}
