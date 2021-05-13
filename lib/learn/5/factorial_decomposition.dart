import 'dart:math' as math;

class FactorialDecomposition {
  String decomp(int n) {
    final primes = getPrimes(n);
    final p = primes.first;
    int index = 1;
    int sum = 0;
    do {
      final div = n ~/ math.pow(p, index);
      if (div == 0) {
        break;
      }
      sum += div;
    } while (true);
    return '';
  }

  List<int> getPrimes(int n) {
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
