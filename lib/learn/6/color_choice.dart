class Tuple {
  const Tuple(this.x, this.m);

  final int x;
  final int m;
}

class ColorChoice {
  int checkChoose(int m, int n) {
    if (m == 0) {
      return -1;
    }

    return pascalTriangle(n).firstWhere((element) => element.m == m, orElse: () => const Tuple(-1, -1)).x;
  }

  Iterable<Tuple> pascalTriangle(int n) sync* {
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

    var index = 0;

    yield Tuple(index++, 1);
    for (var i = 1; i < prev.length; ++i) {
      yield Tuple(index++, prev[i - 1] + prev[i]);
    }
    yield Tuple(index++, 1);
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
