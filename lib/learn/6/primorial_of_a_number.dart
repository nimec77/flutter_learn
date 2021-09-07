import 'dart:math' as math;

class PrimorialOfANumber {
  int numPrimorial(int n) {
    return primes().take(n).reduce((value, element) => value * element);
  }

  Iterable<int> primes() sync* {
    for (var i = 2;; ++i) {
      if (isPrime(i)) {
        yield i;
      }
    }
  }

  bool isPrime(int n) {
    for (var i = 2; i <= math.sqrt(n); ++i) {
      if (n % i == 0) {
        return false;
      }
    }

    return true;
  }
}
