class SumOffOddNumbers {
  int rowSumOddNumbers(int n) {
    if (n == 1) {
      return 1;
    }
    final nn = n * (n - 1) ~/ 2 + 1;
    final mm = nn + n - 1;
    final an = n * (n - 1) + 1;

    return (an + mm - nn) * (mm - nn + 1);
  }

  int rowSumOddNumbersBest(int n) {
    return n * n * n;
  }
}