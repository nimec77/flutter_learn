class CommonDenominators {
  String convertFrac(List<List<int>> lst) {
    final list = lst.map((e) => reduced(e)).toList();

    final ns = list.map((e) => e[1]).toList();
    final divisors = ns.fold<int>(ns[0], lcm);
    final result = StringBuffer();
    for (final rational in list) {
      final m = rational[0];
      final n = rational[1];
      result.write('(${m * divisors ~/ n},$divisors)');
    }

    return result.toString();
  }


  List<int> reduced(List<int> list) {
    final m = list[0];
    final n = list[1];
    final divisor = m.gcd(n);

    return [m ~/ divisor, n ~/ divisor];
  }


  int lcm(int a, int b) => a * b ~/ a.gcd(b);
}
