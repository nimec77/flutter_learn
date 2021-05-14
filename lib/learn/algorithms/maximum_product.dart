class MaximumProduct {
  int maxProduct(List<int> list, int l) {
    if (list.isEmpty) {
      return 0;
    }

    final positives = <int>[];
    final negatives = <int>[];

    for (final item in list) {
      if (item == 0) {
        continue;
      }
      if (item > 0) {
        positives.add(item);
      } else {
        negatives.add(item);
      }
    }
    positives.sort((a, b) => b.compareTo(a));
    negatives.sort((a, b) => a.compareTo(b));
    if (negatives.isEmpty) {
      return positives.take(l).fold(1, (previousValue, element) => previousValue * element);
    }
    if (positives.isEmpty && l.isOdd) {
      return negatives.reversed.take(l).fold(1, (previousValue, element) => previousValue * element);
    }
    final p = List.filled(list.length + 1, 1);
    final n = List.filled(list.length + 1, 1);

    for (int i = 1; i <= positives.length; i++) {
      p[i] = positives[i - 1] * p[i - 1];
    }
    for (int i = 1; i <= negatives.length; i++) {
      n[i] = negatives[i - 1] * n[i - 1];
    }

    int max = 0;
    for (int i = 1; i <= l / 2; i++) {
      final k = p[l - 2 * i] * n[2 * i];
      if (max < k) {
        max = k;
      }
    }

    return max;
  }
}
