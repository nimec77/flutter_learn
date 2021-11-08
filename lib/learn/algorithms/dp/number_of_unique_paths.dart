import 'package:flutter/foundation.dart';

@immutable
class NumberOfUniquePaths {
  NumberOfUniquePaths(this.n, this.m)
      : arr = List.generate(n + 1, (_) => List.generate(m + 1, (_) => 0, growable: false), growable: false);

  final int n;
  final int m;
  final List<List<int>> arr;

  int call() {
    return _helper(n, m);
  }

  int _helper(final int n, final int m) {
    if (n < 1 || m < 1) {
      return 0;
    }
    if (n == 1 && m == 1) {
      return 1;
    }
    if (arr[n][m] != 0) {
      return arr[n][m];
    }
    arr[n][m] = _helper(n - 1, m) + _helper(n, m - 1);

    return arr[n][m];
  }
}
