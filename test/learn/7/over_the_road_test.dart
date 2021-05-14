import 'package:flutter_learn/learn/7/over_the_road.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Basic Test Cases', () {
    final overTheRoad = OverTheRoad();
    expect(overTheRoad.overTheRoad(1, 3), equals(6));
    expect(overTheRoad.overTheRoad(3, 3), equals(4));
    expect(overTheRoad.overTheRoad(2, 3), equals(5));
    expect(overTheRoad.overTheRoad(3, 5), equals(8));
    expect(overTheRoad.overTheRoad(7, 11), equals(16));
  });
}
