import 'package:flutter_learn/learn/4/sum_of_intervals.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final sumOfIntervals = SumOfIntervals();
  group('basic tests', () {
    test(
        'Testing for [[1, 5], [1, 5]]',
            () => expect(
            sumOfIntervals.sumOfIntervals([
              [1, 5],
              [1, 5],
              [6, 9],
              [1, 5],
              [8, 12],
            ]),
            equals(10)));
    test(
        'Testing for [[1, 3], [4, 7], [2, 5], [8, 12]]',
        () => expect(
            sumOfIntervals.sumOfIntervals([
              [1, 3],
              [4, 7],
              [2, 5],
              [8, 12],
            ]),
            equals(10)));
    test(
        'Testing for [[-448, -215], [-140, -5], [196, 293], [-312, -304], [41, 76], [185, 309]]',
        () => expect(
            sumOfIntervals.sumOfIntervals([
              [-448, -215],
              [-140, -5],
              [196, 293],
              [-312, -304],
              [41, 76],
              [185, 309],
            ]),
            equals(527)));
    test(
        'Testing for [[1, 5]]',
        () => expect(
            sumOfIntervals.sumOfIntervals([
              [1, 5]
            ]),
            equals(4)));
    test(
        'Testing for [[1, 5], [6, 10]]',
        () => expect(
            sumOfIntervals.sumOfIntervals([
              [1, 5],
              [6, 10]
            ]),
            equals(8)));
    test(
        'Testing for [[1, 5], [1, 5]]',
        () => expect(
            sumOfIntervals.sumOfIntervals([
              [1, 5],
              [1, 5]
            ]),
            equals(4)));
    test(
        'Testing for [[1, 4], [7, 10], [3, 5]]',
        () => expect(
            sumOfIntervals.sumOfIntervals([
              [1, 4],
              [7, 10],
              [3, 5]
            ]),
            equals(7)));
  });
}
