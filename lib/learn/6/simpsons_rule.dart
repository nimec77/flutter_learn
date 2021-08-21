import 'dart:math' as math;

class SimpsonsRule {
  double simpson(int n) {
    var s1 = 0.0;
    var s2 = 0.0;
    final h = math.pi / n;
    for (var i = 1; i <= n / 2 - 1; ++i) {
      s1 += f((2 * i - 1) * h);
      s2 += f(2 * i * h);
    }
    s1 += f((n - 1) * h);

    return math.pi / (3 * n) * (4 * s1 + 2 * s2);
  }

  double f(double x) {
    final sin = math.sin(x);

    return 3 / 2 * sin * sin * sin;
  }
}