import 'dart:math' as math;

class DiophantineEquation {
  List<List<int>> solEqua(int n) {
    var result = <List<int>>[];
    for (final pair in pairsOfDivisors(n)) {
      if ((pair.last - pair.first) % 4 == 0) {
        final y = (pair.last - pair.first) ~/ 4;
        final x = pair.first + 2 * y;
        result.add([x, y]);
      }
    }
    return result;
  }

  List<List<int>> pairsOfDivisors(int n) {
    final result = [
      [1, n],
    ];

    for (var i = 2; i <= math.sqrt(n); ++i) {
      if (n % i == 0) {
        result.add([i, n ~/ i]);
      }
    }

    return result;
  }
}
