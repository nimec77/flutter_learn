import 'dart:math';

class StepsInPrimes {
  List<int> step(int g, int start, int end) {

    final prevPrimes = <int>[];
    var first = primes(start, end).first;
    var index = 0;
    for (final second in primes(start, end)) {
      prevPrimes.add(second);
      var dif = second - first;
      if (dif == g) {
        return [first, second];
      } else {
        while(dif > g && index < prevPrimes.length) {
          first = prevPrimes[++index];
          dif = second - first;
          if (dif == g) {
            return [first, second];
          }
        }
      }
    }

    return [];
  }

  Iterable<int> primes(int start, int end) sync* {
    for (var number = start; number <= end; number++) {
      if (isPrime(number)) {
        yield number;
      }
    }
  }

  bool isPrime(int n) {
    for (var i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  List<int> stepBest(int g, int start, int end) {
    for (var number = start; number <= end - g; number ++) {
      if (isPrime(number) && isPrime(number + g)) {
        return[number, number + g];
      }
    }

    return [];
  }
}