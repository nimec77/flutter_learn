import 'dart:math' as math;

class BuddyPairs {
  final factorsSumHash = <int, int>{};

  List<int>? buddy(int start, int limit) {
    for (var i = start; i <= limit; ++i) {
      final m = factorizationSum(i) - 1;
      if (m <= i) {
        continue;
      }
      final n = factorizationSum(m) - 1;
      if (n == i) {
        return [n, m];
      }
    }
    return null;
  }

  int factorizationSum(int n) {
    if (factorsSumHash.containsKey(n)) {
      return factorsSumHash[n]!;
    }
    var sum = 1;

    for (var i = 2; i <= math.sqrt(n); ++i) {
      if (n % i == 0) {
        sum += i;
        final b = n ~/ i;
        if (i != b) {
          sum += b;
        }
      }
    }
    factorsSumHash[n] = sum;
    return sum;
  }
}
