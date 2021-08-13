class CountTheDivisorsOfANumber {
  int divisors(int n) {
    if (n == 0) {
      return 0;
    }
    if (n < 2) {
      return 1;
    }
    var result = 2;
    for (var i = 2; i < n; ++i) {
      if (n % i == 0) {
        result++;
      }
    }
    return result;
  }
}
