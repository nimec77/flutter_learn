import 'dart:math';

class StackedBalls2D {
  double stackHeight2d(int layers) {
    if (layers <= 1) {
      return layers.toDouble();
    }
    return 1.0 + (layers - 1) * sqrt(3) / 2;
  }
}