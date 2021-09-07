import 'dart:math' as math;

class LogisticMap {
  List<List<int?>> logisticMap(final int width, final int height, final List<int> xs, final List<int> ys) {
    final result = List<List<int?>>.generate(height, (_) => List<int?>.generate(width, (_) => null, growable: false),
        growable: false);

    for (var p = 0; p < xs.length; ++p) {
      final x = xs[p];
      final y = ys[p];
      for (var i = 0; i < width; ++i) {
        for (var j = 0; j < height; ++j) {
          final distance = (x - i).abs() + (y - j).abs();
          if (result[j][i] == null) {
            result[j][i] = distance;
          } else {
            result[j][i] = math.min(result[j][i]!, distance);
          }
        }
      }
    }

    return result;
  }
}
