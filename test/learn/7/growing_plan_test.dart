import 'package:flutter_learn/learn/7/growing_plan.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final growingPlan = GrowingPlan();
  group('basic tests', () {
    test('growingPlant(100, 10, 910)', () => expect(growingPlan.growingPlant(100, 10, 910), equals(10)));
    test('growingPlant(10, 9, 4)', () => expect(growingPlan.growingPlant(10, 9, 4), equals(1)));
    test('growingPlant(5, 2, 5)', () => expect(growingPlan.growingPlant(5, 2, 5), equals(1)));
    test('growingPlant(5, 2, 6)', () => expect(growingPlan.growingPlant(5, 2, 6), equals(2)));
  });
}

