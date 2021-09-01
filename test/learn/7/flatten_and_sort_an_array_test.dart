import 'package:flutter_learn/learn/7/flatten_and_sort_an_array.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final flattenAndSortAnArray = FlattenAndSortAnArray();
    test('Testing for []', () {
      expect(flattenAndSortAnArray.flattenAndSort([]), equals(<int>[]));
    });
    test('Testing for [[]]', () {
      expect(flattenAndSortAnArray.flattenAndSort([[]]), equals(<int>[]));
    });
    test('Testing for [[], []]', () {
      expect(flattenAndSortAnArray.flattenAndSort([[], []]), equals(<int>[]));
    });
    test('Testing for [[], [1]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [],
            [1]
          ]),
          equals([1]));
    });
    test('Testing for [[], [], [], [2], [], [1]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [],
            [],
            [],
            [2],
            [],
            [1]
          ]),
          equals([1, 2]));
    });
    test('Testing for [[3, 2, 1], [7, 9, 8], [6, 4, 5]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [3, 2, 1],
            [7, 9, 8],
            [6, 4, 5]
          ]),
          equals([1, 2, 3, 4, 5, 6, 7, 8, 9]));
    });
    test('Testing for [[1, 3, 5], [100], [2, 4, 6]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [1, 3, 5],
            [100],
            [2, 4, 6]
          ]),
          equals([1, 2, 3, 4, 5, 6, 100]));
    });
    test('Testing for [[111, 999], [222], [333], [444], [888], [777], [666], [555]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [111, 999],
            [222],
            [333],
            [444],
            [888],
            [777],
            [666],
            [555]
          ]),
          equals([111, 222, 333, 444, 555, 666, 777, 888, 999]));
    });
    test('Testing for [[9, 7, 5, 3, 1], [8, 6, 4, 2, 0], [], [1]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [9, 7, 5, 3, 1],
            [8, 6, 4, 2, 0],
            [],
            [1]
          ]),
          equals([0, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9]));
    });
    test('Testing for [[1], [], [1], [], [], [-1, -2, -1], [0, 3], [1], [2]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [1],
            [],
            [1],
            [],
            [],
            [-1, -2, -1],
            [0, 3],
            [1],
            [2]
          ]),
          equals([-2, -1, -1, 0, 1, 1, 1, 2, 3]));
    });
    test('Testing for [[], [], [64], [], [504, 503], [4096], [], [303], [202], [2500], [], [100]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [],
            [],
            [64],
            [],
            [504, 503],
            [4096],
            [],
            [303],
            [202],
            [2500],
            [],
            [100]
          ]),
          equals([64, 100, 202, 303, 503, 504, 2500, 4096]));
    });
    test('Testing for [[90, 81, 72], [63, 54, 35], [], [46], [27, 18, 0]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [90, 81, 72],
            [63, 54, 35],
            [],
            [46],
            [27, 18, 0]
          ]),
          equals([0, 18, 27, 35, 46, 54, 63, 72, 81, 90]));
    });
    test('Testing for [[1], [], [1], [1], [0], [-1], [], [0], [-1], [0], [-1]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [1],
            [],
            [1],
            [1],
            [0],
            [-1],
            [],
            [0],
            [-1],
            [0],
            [-1]
          ]),
          equals([-1, -1, -1, 0, 0, 0, 1, 1, 1]));
    });
    test('Testing for [[-9, -8, -7, -6, -5, -4, -3, -2, -1]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [-9, -8, -7, -6, -5, -4, -3, -2, -1]
          ]),
          equals([-9, -8, -7, -6, -5, -4, -3, -2, -1]));
    });
    test('Testing for [[9, 8, 7, 6, 5, 4, 3, 2, 1]]', () {
      expect(
          flattenAndSortAnArray.flattenAndSort([
            [9, 8, 7, 6, 5, 4, 3, 2, 1]
          ]),
          equals([1, 2, 3, 4, 5, 6, 7, 8, 9]));
    });
  });
}
