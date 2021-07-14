import 'package:flutter_learn/learn/3/total_area_covered_by_rectangles.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final totalAreaCoveredByRectangles = TotalAreaCoveredByRectangles();
  // test('1 rectangle (version 2)', () {
  //   expect(
  //       totalAreaCoveredByRectangles.calculate(const [
  //         [0, 4, 11, 6]
  //       ]),
  //       equals(22),
  //       reason: 'calculate([[0, 4, 11, 6]]]) should return 22');
  // });
  test('2 rectangle (version 2)', () {
    expect(
        totalAreaCoveredByRectangles.calculate(const [
          [3, 3, 8, 5],
          [6, 3, 8, 9],
          [11, 6, 14, 12],
        ]),
        equals(36),
        reason: 'calculate([[3,3,8,5], [6,3,8,9], [11,6,14,12]]) should return 36');
  });
  test('3 rectangle (version 2)', () {
    expect(
        totalAreaCoveredByRectangles.calculate(const [
          [0, 0, 4, 3],
          [2, 1, 5, 5],
          [4, 4, 7, 7],
        ]),
        equals(28),
        reason: 'calculate([[0, 0, 4, 3], [2, 1, 3, 4], [4, 4, 3, 3]]) should return 28');
  });
  test('4 rectangle (version 2)', () {
    expect(
        totalAreaCoveredByRectangles.calculate(const [
          [0, 0, 4, 3],
          [2, 1, 5, 5],
          [3, 0, 6, 3],
        ]),
        equals(24),
        reason: 'calculate([[0, 0, 4, 3], [2, 1, 5, 5], [3, 0, 6, 3]]) should return 24');
  });
}
