class ExtraPerfectNumbers {
  List<int> extraPerfect(int n) {
    final lst = List.generate(n, (index) => (index + 1).toRadixString(2))
        .where((element) => element.startsWith('1') && element.endsWith('1'));
    return lst.map((item) => int.parse(item, radix: 2)).toList();
  }

  List<int> extraPerfectBest(int n) {
    return List.generate((n + 1) >> 1, (index) => (index << 1) + 1);
  }
}
