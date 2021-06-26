class ColorChoice {
  int checkChoose(int m, int n) {
    if (m == 0) {
      return -1;
    }

    var index = 0;
    for (final element in pascalTriangle(n)) {
      if (element == m) {
        return index;
      }
      ++index;
    }

    return -1;
  }

  Iterable<int> pascalTriangle(int n) sync* {
    var prev = [1];
    var next = <int>[];
    for (var i = 1; i < n; ++i) {
      next = [1];
      for (var j = 1; j < prev.length; ++j) {
        next.add(prev[j - 1] + prev[j]);
      }
      next.add(1);
      prev = next;
    }

    yield 1;
    for (var i = 1; i < prev.length; ++i) {
      yield (prev[i - 1] + prev[i]);
    }
    yield 1;
  }

  int checkChooseBest(int m, int n) {
    var result = 1;
    var i = 0;
    while (i <= m) {
      if (result == m) {
        return i;
      }
      result = result * (n - i) ~/ (i + 1);
      ++i;
    }

    return -1;
  }
}
