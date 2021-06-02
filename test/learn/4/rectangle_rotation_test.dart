import 'package:flutter_learn/learn/4/rectangle_rotation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final rectangleRotation = RectangleRotation();
  void tester(int a, int b, int exp) =>
      test('rectangleRotation($a, $b)', () => expect(rectangleRotation.rectangleRotation(a, b), equals(exp)));
  group('Basic tests', () {
    tester(6, 4, 23);
    tester(30, 2, 65);
    tester(8, 6, 49);
    tester(16, 20, 333);
  });
}
