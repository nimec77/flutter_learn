import 'package:flutter_learn/learn/7/a_rule_of_divisibility_by_7.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('fixed tests', () {
    final aRuleOfDivisibilityBy7 = ARuleOfDivisibilityBy7();
    test('0', () {
      expect(aRuleOfDivisibilityBy7.sevenBest(0), equals([0, 0]));
    });
    test('371', () {
      expect(aRuleOfDivisibilityBy7.sevenBest(371), equals([35, 1]));
    });
    test('1603', () {
      expect(aRuleOfDivisibilityBy7.sevenBest(1603), equals([7, 2]));
    });
    test('1021', () {
      expect(aRuleOfDivisibilityBy7.sevenBest(1021), equals([10, 2]));
    });
    test('477557101', () {
      expect(aRuleOfDivisibilityBy7.sevenBest(477557101), equals([28, 7]));
    });
    test('477557102', () {
      expect(aRuleOfDivisibilityBy7.sevenBest(477557102), equals([47, 7]));
    });
    test('109', () {
      expect(aRuleOfDivisibilityBy7.sevenBest(109), equals([-8, 1]));
    });
  });
}
