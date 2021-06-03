import 'package:flutter_learn/learn/7/sort_out_the_men_from_boys.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final sortOutTheMenFromBoys = SortOutTheMenFromBoys();
    test('Testing for [7, 3, 14, 17]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([7, 3, 14, 17]), equals([14, 17, 7, 3]));
    });
    test('Testing for [2, 43, 95, 90, 37]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([2, 43, 95, 90, 37]), equals([2, 90, 95, 43, 37]));
    });
    test('Testing for [20, 33, 50, 34, 43, 46]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([20, 33, 50, 34, 43, 46]), equals([20, 34, 46, 50, 43, 33]));
    });
    test('Testing for [82, 91, 72, 76, 76, 100, 85]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([82, 91, 72, 76, 76, 100, 85]), equals([72, 76, 82, 100, 91, 85]));
    });
    test('Testing for [2, 15, 17, 15, 2, 10, 10, 17, 1, 1]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([2, 15, 17, 15, 2, 10, 10, 17, 1, 1]), equals([2, 10, 17, 15, 1]));
    });
    test('Testing for [-32, -39, -35, -41]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([-32, -39, -35, -41]), equals([-32, -35, -39, -41]));
    });
    test('Testing for [-64, -71, -63, -66, -65]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([-64, -71, -63, -66, -65]), equals([-66, -64, -63, -65, -71]));
    });
    test('Testing for [-94, -99, -100, -99, -96, -99]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([-94, -99, -100, -99, -96, -99]), equals([-100, -96, -94, -99]));
    });
    test('Testing for [-53, -26, -53, -27, -49, -51, -14]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([-53, -26, -53, -27, -49, -51, -14]),
          equals([-26, -14, -27, -49, -51, -53]));
    });
    test('Testing for [-17, -45, -15, -33, -85, -56, -86, -30]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([-17, -45, -15, -33, -85, -56, -86, -30]),
          equals([-86, -56, -30, -15, -17, -33, -45, -85]));
    });
    test('Testing for [12, 89, -38, -78]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([12, 89, -38, -78]), equals([-78, -38, 12, 89]));
    });
    test('Testing for [2, -43, 95, -90, 37]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([2, -43, 95, -90, 37]), equals([-90, 2, 95, 37, -43]));
    });
    test('Testing for [82, -61, -87, -12, 21, 1]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([82, -61, -87, -12, 21, 1]), equals([-12, 82, 21, 1, -61, -87]));
    });
    test('Testing for [63, -57, 76, -85, 88, 2, -28]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([63, -57, 76, -85, 88, 2, -28]), equals([-28, 2, 76, 88, 63, -57, -85]));
    });
    test('Testing for [49, 818, -282, 900, 928, 281, -282, -1]', () {
      expect(sortOutTheMenFromBoys.menFromBoysBest([49, 818, -282, 900, 928, 281, -282, -1]),
          equals([-282, 818, 900, 928, 281, 49, -1]));
    });
  });
}
