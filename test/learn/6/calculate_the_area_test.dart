import 'package:flutter_learn/learn/6/calculate_the_area.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final calculateTheArea = CalculateTheArea();
  void testing(double r, int n, double e) => test(
      'areaOfPolygonInsideCircle($r, $n)', () => expect(calculateTheArea.areaOfPolygonInsideCircle(r, n), equals(e)));
  group('Basic tests', () {
    testing(3, 3, 11.691);
    testing(2, 4, 8);
    testing(2.5, 5, 14.86);
  });
}
