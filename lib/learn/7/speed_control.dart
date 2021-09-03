import 'dart:math' as math;

class SpeedControl {
  int gps(int s, List<double> x) {
    final distances = <double>[];
    for (var i = 0; i < x.length - 1; i++) {
      distances.add(x[i + 1] - x[i]);
    }

    return distances
        .map((e) => (3600 * e) / s)
        .fold<double>(0, math.max)
        .floor();
  }

  int gpsBest(int s, List<double> x) {
    var maxValue = 0;
    for (var i = 0; i < x.length - 1; i++) {
      final current = ((3600 * (x[i + 1] - x[i])) / s).floor();
      if (maxValue < current) {
        maxValue = current;
      }
    }

    return maxValue;
  }
}
