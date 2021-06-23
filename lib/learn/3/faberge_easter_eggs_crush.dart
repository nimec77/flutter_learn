class FabergeEasterEggsCrush {
  BigInt height(int n, int m) {
    var height = BigInt.zero;
    var total = BigInt.one;

    final attempts = BigInt.from(m + 1);
    for (var i = 1; i <= n; ++i) {
      final bigI = BigInt.from(i);
      total = total * (attempts - bigI) ~/ bigI;
      height += total;
    }

    return height;
  }
}
