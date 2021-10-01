class ConsecutiveDucks {
  bool consecutiveDucks(int n) {
    var start = 1;
    final end = n ~/ 2 + 1;
    var sum = 0;
    for (var i = start; i <= end; ++i) {
      sum += i;
      while (sum > n) {
        sum -= start++;
      }
      if (sum == n) {
        return true;
      }
    }
    return false;
  }

  bool consecutiveDucksBest(int n) {
    while (n > 1) {
      if (n.isOdd) return true;
      n ~/= 2;
    }
    return false;
  }
}