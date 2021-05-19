import 'package:flutter_learn/learn/7/automorphic_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final automorphicNumber = AutomorphicNumber();

  group('Fixed tests', () {
    test('Testing for 1', () {
      expect(automorphicNumber.automorphic(1), equals('Automorphic'));
    });
    test('Testing for 3', () {
      expect(automorphicNumber.automorphic(3), equals('Not!!'));
    });
    test('Testing for 6', () {
      expect(automorphicNumber.automorphic(6), equals('Automorphic'));
    });
    test('Testing for 9', () {
      expect(automorphicNumber.automorphic(9), equals('Not!!'));
    });
    test('Testing for 25', () {
      expect(automorphicNumber.automorphic(25), equals('Automorphic'));
    });
    test('Testing for 53', () {
      expect(automorphicNumber.automorphic(53), equals('Not!!'));
    });
    test('Testing for 76', () {
      expect(automorphicNumber.automorphic(76), equals('Automorphic'));
    });
    test('Testing for 95', () {
      expect(automorphicNumber.automorphic(95), equals('Not!!'));
    });
    test('Testing for 625', () {
      expect(automorphicNumber.automorphic(625), equals('Automorphic'));
    });
    test('Testing for 225', () {
      expect(automorphicNumber.automorphic(225), equals('Not!!'));
    });
  });
}