class ModuliNumberSystem {
  String fromNb2Str(int n, List<int> bases) {
    if (findGcd(bases) != 1) {
      return 'Not applicable';
    }
    if (bases.reduce((value, element) => value * element) < n) {
      return 'Not applicable';
    }
    return bases.map((e) => n % e).map((e) => '-$e-').join();
  }

  bool coprime(Iterable<int> ls) {
    if (ls.length <= 1) {
      return true;
    }
    final n = ls.first;
    for (final element in ls.skip(1)) {
      if (n.gcd(element) != 1) {
        return false;
      }
    }
    return coprime(ls.skip(1));
  }

  int findGcd(List<int> ls) {
    if (ls.length <= 1) {
      return 1;
    }
    var result = ls.first;
    for (final element in ls.skip(1)) {
      result = result.gcd(element);
      if (result != 1) {
        return result;
      }
    }

    return result;
  }
}
