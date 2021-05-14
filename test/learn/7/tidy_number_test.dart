import 'package:flutter_learn/learn/7/tidy_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final tidyNumber = TidyNumber();
    test('Testing for 12', () {
      expect(tidyNumber.tidyNumber(12), equals(true));
    });
    test('Testing for 102', () {
      expect(tidyNumber.tidyNumber(102), equals(false));
    });
    test('Testing for 9672', () {
      expect(tidyNumber.tidyNumber(9672), equals(false));
    });
    test('Testing for 2789', () {
      expect(tidyNumber.tidyNumber(2789), equals(true));
    });
    test('Testing for 2335', () {
      expect(tidyNumber.tidyNumber(2335), equals(true));
    });
  });
}
