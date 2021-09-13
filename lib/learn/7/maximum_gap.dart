import 'dart:math' as math;

class MaximumGap {
  int maxGap(final List<int> nums) {
    final sorted = [...nums]..sort();

    var result = 0;
    var prev = sorted[0];

    for (final item in sorted.skip(1)) {
      if (item - prev > result) {
        result = item - prev;
      }
      prev = item;
    }

    return result;
  }

  int maxGapBest(final List<int> nums) {
    final sorted = [...nums]..sort();

    return List.generate(sorted.length - 1, (i) => sorted[i + 1] - sorted[i]).reduce(math.max);
  }
}