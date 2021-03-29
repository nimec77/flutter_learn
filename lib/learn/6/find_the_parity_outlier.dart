class FindTheParityOutlier {
  int find(List<int> integers) {
    final boolIntegers = integers.map((e) => e.isOdd).toList();
    final isOdd = boolIntegers.getRange(0, 3).map((e) => e ? 1 : 0).reduce((value, element) => value + element) > 1;
    int index = -1;
    if (isOdd) {
      index = boolIntegers.indexWhere((element) => !element);
    } else {
      index = boolIntegers.indexWhere((element) => element);
    }

    return integers[index];
  }

  int findBest(List<int> integers) {
    return integers.firstWhere(
        integers.getRange(0, 3).where((element) => element.isEven).length > 1 ? (i) => i.isOdd : (i) => i.isEven);
  }
}
