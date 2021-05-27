class ARuleOfDivisibilityBy7 {
  List<int> seven(int m) {
    var n = m;
    var count = 0;
    if (m <= 0) {
      return [0, 0];
    }
    do {
      count++;
      n = n ~/ 10 - 2 * (n % 10);
      if (n < 100 && n % 7 == 0) {
        break;
      }
    } while(n > 99);

    return [n, count];
  }

  List<int> sevenBest(int m) {
    var count = 0;
    var n = m;
    while(n > 99) {
      count++;
      n = n ~/ 10 - 2 * (n % 10);
    }
    return [n, count];
  }
}