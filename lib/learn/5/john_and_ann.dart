class JohnAndAnn {
  final j = {0: 0};
  final a = {0: 1};

  List<int> john(int n) {
    if (j.length < n) {
      calcKatas(n);
    }

    return j.values.take(n).toList();
  }

  int sumJohn(int n) {
    if (j.length < n) {
      calcKatas(n);
    }

    return j.values.take(n).reduce((value, element) => value + element);
  }

  List<int> ann(int n) {
    if (a.length < n) {
      calcKatas(n);
    }
    return a.values.take(n).toList();
  }

  int sumAnn(int n) {
    calcKatas(n);
    return a.values.take(n).reduce((value, element) => value + element);
  }

  void calcKatas(int n) {
    for (var i = j.length; i < n; ++i) {
      j[i] = i - a[j[i - 1]!]!;
      a[i] = i - j[a[i - 1]!]!;
    }
  }
}
