class PerimeterOfSquaresInARectangle {
  BigInt perimeter(int m) {
    BigInt prev = BigInt.one;
    BigInt next = BigInt.one;
    BigInt result = BigInt.two;

    for (int i = 0; i < m - 1; i++) {
      final temp = next;
      next = prev + next;
      prev = temp;

      result += next;
    }

    return BigInt.from(4) * result;
  }
}
