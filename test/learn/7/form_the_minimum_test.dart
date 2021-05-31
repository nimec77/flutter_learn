import 'package:flutter_learn/learn/7/form_the_minimum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final formTheMinimum = FormTheMinimum();
    test('Testing for [1, 3, 1]', () {
      expect(formTheMinimum.minValue([1, 3, 1]), equals(13));
    });
    test('Testing for [4, 7, 5, 7]', () {
      expect(formTheMinimum.minValue([4, 7, 5, 7]), equals(457));
    });
    test('Testing for [4, 8, 1, 4]', () {
      expect(formTheMinimum.minValue([4, 8, 1, 4]), equals(148));
    });
    test('Testing for [5, 7, 9, 5, 7]', () {
      expect(formTheMinimum.minValue([5, 7, 9, 5, 7]), equals(579));
    });
    test('Testing for [6, 7, 8, 7, 6, 6]', () {
      expect(formTheMinimum.minValue([6, 7, 8, 7, 6, 6]), equals(678));
    });
    test('Testing for [5, 6, 9, 9, 7, 6, 4]', () {
      expect(formTheMinimum.minValue([5, 6, 9, 9, 7, 6, 4]), equals(45679));
    });
    test('Testing for [1, 9, 1, 3, 7, 4, 6, 6, 7]', () {
      expect(formTheMinimum.minValue([1, 9, 1, 3, 7, 4, 6, 6, 7]), equals(134679));
    });
    test('Testing for [3, 6, 5, 5, 9, 8, 7, 6, 3, 5, 9]', () {
      expect(formTheMinimum.minValue([3, 6, 5, 5, 9, 8, 7, 6, 3, 5, 9]), equals(356789));
    });
    test('Testing for [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]', () {
      expect(formTheMinimum.minValue([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), equals(1));
    });
    test('Testing for [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]', () {
      expect(formTheMinimum.minValue([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]), equals(0));
    });
  });
}