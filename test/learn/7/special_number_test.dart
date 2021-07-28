import 'package:flutter_learn/learn/7/special_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final specialNumber = SpecialNumber();
  group('Fixed tests', () {
    test('Testing for 2', () {
      expect(specialNumber.specialNumber(2), equals('Special!!'));
    });
    test('Testing for 3', () {
      expect(specialNumber.specialNumber(3), equals('Special!!'));
    });
    test('Testing for 6', () {
      expect(specialNumber.specialNumber(6), equals('NOT!!'));
    });
    test('Testing for 9', () {
      expect(specialNumber.specialNumber(9), equals('NOT!!'));
    });
    test('Testing for 11', () {
      expect(specialNumber.specialNumber(11), equals('Special!!'));
    });
    test('Testing for 55', () {
      expect(specialNumber.specialNumber(55), equals('Special!!'));
    });
    test('Testing for 26', () {
      expect(specialNumber.specialNumber(26), equals('NOT!!'));
    });
    test('Testing for 92', () {
      expect(specialNumber.specialNumber(92), equals('NOT!!'));
    });
    test('Testing for 25432', () {
      expect(specialNumber.specialNumber(25432), equals('Special!!'));
    });
    test('Testing for 2783', () {
      expect(specialNumber.specialNumber(2783), equals('NOT!!'));
    });
  });
}
