import 'package:flutter_learn/learn/6/a_rule_of_divisibility_by_13.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testequal(int n, int exp) {
    final aRuleOfDivisibilityBy13 = ARuleOfDivisibilityBy13();

    test('Testing for $n', () => expect(aRuleOfDivisibilityBy13.thirtBest(n), equals(exp)));
  }

  group('fixed tests', () {
    testequal(8529, 79);
    testequal(85299258, 31);
    testequal(5634, 57);
  });
}
