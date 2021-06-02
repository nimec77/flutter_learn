import 'dart:math' as math;

class RectangleRotation {
  int rectangleRotation(int a, int b) {
    int mul(int a, int b) => a * b;
    final aHalfBisect = (a / math.sqrt2) / 2;
    final bHalfBisect = (b / math.sqrt2) / 2;

    final rect1 = <int>[aHalfBisect.floor() * 2 + 1, bHalfBisect.floor() * 2 + 1];
    final rect2 = List.filled(2, 0);

    if (aHalfBisect - aHalfBisect.floor() < 0.5) {
      rect2.first = rect1.first - 1;
    } else {
      rect2.first = rect1.first + 1;
    }

    if (bHalfBisect - bHalfBisect.floor() < 0.5) {
      rect2[1] = rect1[1] - 1;
    } else {
      rect2[1] = rect1[1] + 1;
    }

    return rect1.reduce(mul) + rect2.reduce(mul);
  }

  int rectangleRotationBest(int a, int b) {
    final h = a ~/ math.sqrt2;
    final v = b ~/ math.sqrt2;

    return h *v + (h + 1) * (v + 1) - (h % 2 ^ v % 2);
  }
}
