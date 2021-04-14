class CommonDenominators {
  String convertFrac(List<List<int>> lst) {
    final List<List<int>> list = [];
    final Map<int, List<int>> factors = {};
    for (final rational in lst) {
      int m = rational[0];
      int n = rational[1];
      final divisor = m.gcd(n);
      m ~/= divisor;
      n ~/= divisor;
      list.add([m, n]);
      if (!factors.containsKey(n)) {
        factors[n] = factorization(n);
      }
    }
    List<int> commonDivisor = <int>[];
    for (final rational in list) {
      final n = rational[1];
      commonDivisor += difference(factors[n]!, commonDivisor);
    }
    // print(commonDivisor);
    final commonFactor = commonDivisor.fold<int>(1, (previousValue, element) => previousValue * element);
    final result = StringBuffer();
    for (final rational in list) {
      final m = rational[0];
      final n = rational[1];
      final divisor = difference(commonDivisor, factors[n]!);
      final factor = divisor.fold<int>(1, (previousValue, element) => previousValue * element);
      result.write('(${m * factor},$commonFactor)');
    }
    return result.toString();
  }

  List<int> factorization(int value) {
    final result = [1];
    int n = value;
    for (int i = 2; i <= n; i++) {
      while (n % i == 0) {
        result.add(i);
        n ~/= i;
      }
    }
    return result;
  }

  List<int> difference(List<int> a, List<int> b) {
    final result = [...a];
    for (final item in b) {
      result.remove(item);
    }
    return result;
  }
}
