import 'package:flutter_learn/learn/7/strong_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final strongNumber = StrongNumber();

  group('Fixed tests', () {
    test('Testing for 1', () {
      expect(strongNumber.strong(1), equals('STRONG!!!!'));
    });
    test('Testing for 103', () {
      expect(strongNumber.strong(103), equals('Not Strong !!'));
    });
    test('Testing for 2', () {
      expect(strongNumber.strong(2), equals('STRONG!!!!'));
    });
    test('Testing for 145', () {
      expect(strongNumber.strong(145), equals('STRONG!!!!'));
    });
    test('Testing for 7', () {
      expect(strongNumber.strong(7), equals('Not Strong !!'));
    });
    test('Testing for 93', () {
      expect(strongNumber.strong(93), equals('Not Strong !!'));
    });
    test('Testing for 185', () {
      expect(strongNumber.strong(185), equals('Not Strong !!'));
    });
  });
}
