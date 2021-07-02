import 'package:flutter_learn/learn/6/ball_upwards.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final ballUpwards = BallUpwards();
  void testequal(int v0, int exp) =>
      test('Testing for $v0', () =>
          expect(ballUpwards.maxBall(v0), equals(exp)));
  group('fixed tests', () {
    testequal(37, 10);
    testequal(45, 13);
    testequal(99, 28);

  });
}