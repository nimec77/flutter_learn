import 'dart:math';

class MemoizedLogCutting {
  int cutLog(List<int> p, int n) {
    final mem = List.filled(n + 1, 0);
    for (var i = 1; i <= n; i++) {
      var q = 0;
      for (var j = 1; j <= i; j++) {
        q = max(q, p[j] + mem[i - j]);
        mem[i] = q;
      }
    }
    return mem[n];
  }
}
