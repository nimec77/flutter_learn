import 'package:flutter_learn/learn/8/century_from_year.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic tests', () {
    final centuryFromYear = CenturyFromYear();
    test('Testing for 1705', () {
      expect(centuryFromYear.century(1705), equals(18));
    });
    test('Testing for 1900', () {
      expect(centuryFromYear.century(1900), equals(19));
    });
    test('Testing for 1601', () {
      expect(centuryFromYear.century(1601), equals(17));
    });
    test('Testing for 2000', () {
      expect(centuryFromYear.century(2000), equals(20));
    });
    test('Testing for 89', () {
      expect(centuryFromYear.century(89), equals(1));
    });
    test('Testing for 28663', () {
      expect(centuryFromYear.century(28663), equals(287));
    });
    test('Testing for 862336', () {
      expect(centuryFromYear.century(862336), equals(8624));
    });
  });
}
