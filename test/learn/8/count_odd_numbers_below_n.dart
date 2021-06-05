import 'package:flutter_learn/learn/8/count_odd_numbers_bellow_n.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final countOddNumbersBelowN = CountOddNumbersBellowN();

  group('basic tests', () {
    test('testing for 15', () {
      expect(countOddNumbersBelowN.oddCount(15), equals(7));
    });
    test('testing for 15023', () {
      expect(countOddNumbersBelowN.oddCount(15023), equals(7511));
    });
  });
}