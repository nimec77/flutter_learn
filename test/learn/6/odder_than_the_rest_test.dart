import 'package:flutter_learn/learn/6/odder_than_the_rest.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final odderThanTheRest = OdderThanTheRest();
  void tester(List<int> i, int? o) => test('oddest($i)', () => expect(odderThanTheRest.oddestBest(i), equals(o)));
  group('Example tests', () {
    tester([-1, -1], null);
    tester([-1, 0, 1], -1);
    tester([0], 0);
    tester([1, 2], 1);
    tester([1, 3], 3);
    tester([1, 5], null);
  });
}