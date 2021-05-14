
class FactorialDecomposition {
  String decomp(int n) {
    final result = <String>[];
    for (final p in getPrimes(n)) {
      int sum = 0;
      int denominator = p;
      int term = n ~/ denominator;
      while(term > 0) {
        sum += term;
        denominator *= p;
        term = n ~/ denominator;
      }
      result.add(sum > 1 ? '$p^$sum' : p.toString());
    }
    return result.join(' * ');
  }

  List<int> getPrimes(int n) {
    final length = n + 1;
    final isPrimes = List.generate(length, (index) => true);
    isPrimes[0] = false;
    isPrimes[1] = false;

    for (int i = 2; i * i < length; i++) {
      if (isPrimes[i]) {
        for (int j = i * i; j < length; j += i) {
          isPrimes[j] = false;
        }
      }
    }
    final result = isPrimes.asMap();

    return result.keys.where((key) => result[key]!).toList();
  }
}
