import 'package:flutter_learn/learn/7/nth_smallest_element.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final nthSmallestElement = NthSmallestElement();
    test('nthSmallest([3, 1, 2], 2)', () {
      expect(nthSmallestElement.nthSmallest([3, 1, 2], 2), equals(2));
    });
    test('nthSmallest([15, 20, 7, 10, 4, 3], 3)', () {
      expect(nthSmallestElement.nthSmallest([15, 20, 7, 10, 4, 3], 3), equals(7));
    });
    test('nthSmallest([-5, -1, -6, -18], 4)', () {
      expect(nthSmallestElement.nthSmallest([-5, -1, -6, -18], 4), equals(-1));
    });
    test('nthSmallest([-102, -16, -1, -2, -367, -9], 5)', () {
      expect(nthSmallestElement.nthSmallest([-102, -16, -1, -2, -367, -9], 5), equals(-2));
    });
    test('nthSmallest([2, 169, 13, -5, 0, -1], 4)', () {
      expect(nthSmallestElement.nthSmallest([2, 169, 13, -5, 0, -1], 4), equals(2));
    });
    test('nthSmallest([-2294, 5850, 2636, 0, -8188, 9585, 53, 0, 55, -914, 84, 3, -6], 12)', () {
      expect(nthSmallestElement.nthSmallest([-2294, 5850, 2636, 0, -8188, 9585, 53, 0, 55, -914, 84, 3, -6], 12),
          equals(5850));
    });
  });
}
