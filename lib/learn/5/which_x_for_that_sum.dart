import 'dart:math' as math;

class WhichXForThatSum {
  double solve(double m) {
    final d = 4 * m + 1;

    return (2 * m + 1 - math.sqrt(d)) / (2 * m);
  }
}
