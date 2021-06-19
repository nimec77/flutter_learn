class StrongNumber {
  String strong(int n) {
    final result = n.toString().split('').map(int.parse).map(factorial).reduce((value, element) => value + element);
    return n == result ? 'STRONG!!!!' : 'Not Strong !!';
  }

  int factorial(int n) {
    if (n == 0) {
      return 0;
    }
    return List.generate(n, (index) => index + 1).reduce((value, element) => value * element);
  }
}
