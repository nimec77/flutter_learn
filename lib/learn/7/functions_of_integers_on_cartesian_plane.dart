class FunctionsOfIntegersOnCartesianPlane {
  int sumin(int n) {
    int result = 0;
    for (int i = n; i > 0; i--) {
      result += i * ((n - i) * 2 + 1);
    }
    return result;
  }

  int sumax(int n) {
    int result = 0;
    for (int i = 1; i <= n; i++) {
      result += i * (i * 2 - 1);
    }
    return result;
  }

  int sumsum(int n) {
    return sumin(n) + sumax(n);
  }

  int suminBest(int n) => n * (n + 1) * (2 * n + 1) ~/ 6;

  int sumaxBest(int n) => n * (n + 1) * (4 * n - 1) ~/ 6;

  int sumsumBest(int n) => n * n * (n + 1);
}
