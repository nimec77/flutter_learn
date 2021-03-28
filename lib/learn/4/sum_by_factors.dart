import 'dart:math';

class SumByFactors {
  String sumOfDivided(List<int> l) {
    final primes = _getPrimes(l.map((e) => e.abs()).reduce(max) + 1);
    final str = StringBuffer();
    for (final prime in primes) {
      int sum = 0;
      bool divided = false;
      for (final element in l) {
        if (element % prime == 0) {
          divided = true;
          sum += element;
        }
      }
      if (divided) {
        str.write('($prime $sum)');
      }
    }

    return str.toString();
  }

  List<int> _getPrimes(int n) {
    final isPrimes = List.generate(n, (index) => true);
    isPrimes[0] = false;
    isPrimes[1] = false;

    for (int i = 2; i * i < n; i++) {
      if (isPrimes[i]) {
        for (int j = i * i; j < n; j += i) {
          isPrimes[j] = false;
        }
      }
    }
    final map = isPrimes.asMap();
    final result = <int>[];
    map.forEach((key, value) {
      if (value) {
        result.add(key);
      }
    });

    return result;
  }
}
