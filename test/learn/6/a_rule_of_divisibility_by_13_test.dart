import 'package:flutter_learn/learn/6/a_rule_of_divisibility_by_13.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  void testEqual(int n, int exp) {
    final aRuleOfDivisibilityBy13 = ARuleOfDivisibilityBy13();

    test('Testing for $n', () => expect(aRuleOfDivisibilityBy13.thirtBest(n), equals(exp)));
  }

  group('fixed tests', () {
    testEqual(8529, 79);
    testEqual(85299258, 31);
    testEqual(5634, 57);
  });
}
