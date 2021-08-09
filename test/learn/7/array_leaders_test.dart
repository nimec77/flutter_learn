import 'package:flutter_learn/learn/7/array_leaders.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final arrayLeaders = ArrayLeaders();

  group('(Fixed tests) Positive Values', () {
    test('Testing for [1, 2, 3, 4, 0]', () {
      expect(arrayLeaders.arrayLeaders([1, 2, 3, 4, 0]), equals([4]));
    });
    test('Testing for [16, 17, 4, 3, 5, 2]', () {
      expect(arrayLeaders.arrayLeaders([16, 17, 4, 3, 5, 2]), equals([17, 5, 2]));
    });
  });
  group('(Fixed tests) Negative Values', () {
    test('Testing for [-1, -29, -26, -2]', () {
      expect(arrayLeaders.arrayLeaders([-1, -29, -26, -2]), equals([-1]));
    });
    test('Testing for [-36, -12, -27]', () {
      expect(arrayLeaders.arrayLeaders([-36, -12, -27]), equals([-36, -12]));
    });
  });
  group('(Fixed tests) Mixed Values', () {
    test('Testing for [5, -2, 2]', () {
      expect(arrayLeaders.arrayLeaders([5, -2, 2]), equals([5, 2]));
    });
    test('Testing for [0, -1, -29, 3, 2]', () {
      expect(arrayLeaders.arrayLeaders([0, -1, -29, 3, 2]), equals([0, -1, 3, 2]));
    });
  });
}