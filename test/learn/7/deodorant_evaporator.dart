import 'package:flutter_learn/learn/7/deodorant_evaporator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Sample Test Cases', () {
    final deodorantEvaporator = DeodorantEvaporator();
    expect(deodorantEvaporator.evaporator(10, 10, 10), equals(22));
    expect(deodorantEvaporator.evaporator(10, 10, 5), equals(29));
    expect(deodorantEvaporator.evaporator(100, 5, 5), equals(59));
  });
}