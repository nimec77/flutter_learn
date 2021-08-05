import 'dart:math' as math;

class StepsInKPrimes {
  List<List<int>> primesKStep(int k, int step, int start, int end) {
    final result = <List<int>>[];

    for (var i = math.max(2, start); i <= end - step; ++i) {
      if (isKPrime(k, i) && isKPrime(k, i + step)) {
        result.add([i, i + step]);
      }
    }

    return result;
  }

  bool isKPrime(int k, int n) {
    var dividers = 0;

    var m = n;
    while(m.isEven) {
      dividers++;
      if (dividers > k) {
        return false;
      }
      m ~/= 2;
    }
    for (var i = 3; i <= math.sqrt(m); i += 2) {
      while(m % i == 0) {
        dividers++;
        if (dividers > k) {
          return false;
        }
        m ~/= i;
      }
    }
    if (m > 1) {
      dividers++;
    }

    return dividers == k;
  }
}
