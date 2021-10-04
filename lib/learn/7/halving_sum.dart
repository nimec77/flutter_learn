class HalvingSum {
  int halvingSum(final int n) {
    var m = n;
    var sum = m;
    while(m >= 1) {
      m = m >> 1;
      sum += m;
    }

    return sum;
  }
}