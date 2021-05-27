class PerimeterOfSquaresInARectangle {
  BigInt perimeter(int m) {
    var prev = BigInt.one;
    var next = BigInt.one;
    var result = BigInt.two;

    for (var i = 0; i < m - 1; i++) {
      final temp = next;
      next = prev + next;
      prev = temp;

      result += next;
    }

    return BigInt.from(4) * result;
  }
}
