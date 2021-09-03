import 'dart:math' as math;

class KPrimes {
  List<int> countKPrimes(int k, int start, int end) {
    final list = List.generate(end - start + 1, (index) => start + index);

    bool isKPrimes(int n) => primesK(k, n);

    return list.where(isKPrimes).toList();
  }

  int puzzle(int s) {
    var result = 0;
    final list = List.generate(s - 1, (index) => index + 2);

    final primes1 = <int>[];
    final primes3 = <int>[];
    final primes7 = <int>[];

    for (final n in list) {
      final count = countPrimes(n);
      if (count == 1) {
        primes1.add(n);
      } else if (count == 3) {
        primes3.add(n);
      } else if (count == 7) {
        primes7.add(n);
      }
    }
    if (primes7.isEmpty) {
      return result;
    }

    for (final prime7 in primes7) {
      for (final prime3 in primes3) {
        final sum = s - prime7 - prime3;
        if (prime3 <= 1) {
          continue;
        }
        if (primes1.any((element) => element == sum)) {
          result++;
        }
      }
    }
    return result;
  }

  bool primesK(int k, int n) {
    var m = n;
    var result = 0;
    for (var number = 2; number <= m; number++) {
      while (m % number == 0) {
        if (++result > k) {
          return false;
        }
        m ~/= number;
      }
    }

    return result == k;
  }

  int countPrimes(int n) {
    var m = n;
    var result = 0;
    for (var number = 2; number <= m; number++) {
      while (m % number == 0) {
        if (++result > 7) {
          return result;
        }
        m ~/= number;
      }
    }

    return result;
  }

  int puzzleBest(int s) {
    var result = 0;
    final b = countKPrimes(7, 128, s - 6);
    final c = countKPrimes(3, 4, s - 130);
    for (final j in b) {
      for (final k in c) {
        if (isPrime(s - j - k)) {
          result++;
        }
      }
    }
    return result;
  }

  bool isPrime(int n) {
    for (var i = 2; i <= math.sqrt(n); i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }
}
