import 'dart:math' as math;

class GapInPrimes {
  List<int> gap(int g, int m, int n) {
    for (final primeInterval in interval(m, n)) {
      if (primeInterval.last - primeInterval.first == g) {
        return primeInterval;
      }
    }

    return [];
  }

  Iterable<List<int>> interval(int m, int n) sync* {
    var first = primes(m, n).first;
    var second = 0;
    for (final prime in primes(m, n).skip(1)) {
      second = prime;
      yield [first, second];
      first = second;
    }
  }

  Iterable<int> primes(int m, int n) sync* {
    for (var i = m; i <= n; ++i) {
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
