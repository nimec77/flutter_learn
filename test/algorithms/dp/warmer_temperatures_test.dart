
import 'package:flutter_learn/learn/algorithms/dp/warmer_temperatures.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Temperature test', () {
    final warmerTemperatures = WarmerTemperatures();
    final result = warmerTemperatures.temperatures([13, 12, 15, 11, 9, 12, 16]);
    expect(result, [2, 1, 4, 2, 1, 1, 0]);
  });
}