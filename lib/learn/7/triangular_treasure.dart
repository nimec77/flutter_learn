class TriangularTreasure {
  int triangular(int n) {
    if (n <= 0) {
      return 0;
    }

    return (1 + n) * n ~/ 2;
  }
}
