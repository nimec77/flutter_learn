import 'package:flutter_learn/learn/7/maximum_gap.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final maximumGap = MaximumGap();

  group('Fixed tests', () {
    test('Testing for [13, 10, 2, 9, 5]', () {
      expect(maximumGap.maxGapBest([13, 10, 2, 9, 5]), 4);
    });
    test('Testing for [13, 3, 5]', () {
      expect(maximumGap.maxGapBest([13, 3, 5]), 8);
    });
    test('Testing for [24, 299, 131, 14, 26, 25]', () {
      expect(maximumGap.maxGapBest([24, 299, 131, 14, 26, 25]), 168);
    });
    test('Testing for [-3, -27, -4, -2]', () {
      expect(maximumGap.maxGapBest([-3, -27, -4, -2]), 23);
    });
    test('Testing for [-7, -42, -809, -14, -12]', () {
      expect(maximumGap.maxGap([-7, -42, -809, -14, -12]), 767);
    });
    test('Testing for [12, -5, -7, 0, 290]', () {
      expect(maximumGap.maxGap([12, -5, -7, 0, 290]), 278);
    });
    test('Testing for [-54, 37, 0, 64, -15, 640, 0]', () {
      expect(maximumGap.maxGap([-54, 37, 0, 64, -15, 640, 0]), 576);
    });
    test('Testing for [130, 30, 50]', () {
      expect(maximumGap.maxGap([130, 30, 50]), 80);
    });
    test('Testing for [1, 1, 1]', () {
      expect(maximumGap.maxGap([1, 1, 1]), 0);
    });
    test('Testing for [-1, -1, -1]', () {
      expect(maximumGap.maxGap([-1, -1, -1]), 0);
    });
  });
}
