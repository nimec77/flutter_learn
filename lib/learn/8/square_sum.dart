class SquareSum {
  int squareSum(List<int> numbers) {
    return numbers.fold<int>(0, (previousValue, element) => previousValue + element * element);
  }
}
