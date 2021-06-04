import 'dart:math' as math;
class BrakingWell {
  double dist(double v, double mu) {
    const g = 9.81;
    final v0 = v * 5 / 18;
    final d0 = v0;
    final d1 = v0 * v0 / (2 * mu * g);

    return d0 + d1;
  }

  double speed(double d, double mu) {
    const g = 9.81;
    final m = mu * g;
    final v = math.sqrt(m * (m + 2 *d)) - m;
    final v0 = v * 3.6;
    return v0;
  }
}