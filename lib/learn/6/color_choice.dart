class ColorChoice {
  int checkChoose(int m, int n) {
    if (m == 0) {
      return -1;
    }

    final xs = pascalTriangle(n);

    return xs.indexOf(m);
  }

  List<int> pascalTriangle(int n) {
    var prev = [1];
    var next = <int>[];
    for (var i = 1; i <= n; ++i) {
      next = [1];
      for (var j = 1; j < prev.length; ++j) {
        next.add(prev[j - 1] + prev[j]);
      }
      next.add(1);
      prev = [...next];
    }
    return prev;
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
