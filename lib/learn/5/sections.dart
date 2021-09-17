import 'dart:math' as math;

class Sections {
  int c(final int k) {
    var result = 0;
    final z = k * k * k;
    for (var x = 1; x <= math.sqrt(z); ++x) {
      final x2 = x * x;
      if (z % x2 != 0) {
        continue;
      }
      final y2 = z ~/ x2;
      final y = math.sqrt(y2).toInt();
      if (y * y == y2) {
        result++;
      }
    }
    return result;
  }

  int cBest(final int k) {
    int divNb(final int n) {
      var p = 1;
      var m = n;
      int kt;
      for (var i = 2; m > 1; ++i) {
        for (kt = 0; m % i == 0; ++kt) {
          m ~/= i;
        }
        if (kt != 0) {
          p *= kt + 1;
        }
      }
      return p;
    }

    final r = math.sqrt(k).floor();

    return r * r == k ? divNb(k * r) : 0;
  }
}
