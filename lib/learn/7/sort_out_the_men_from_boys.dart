class SortOutTheMenFromBoys {
  List<int> menFromBoys(List<int> arr) {
    final evens = <int>[];
    final odds = <int>[];

    for (final element in arr.toSet()) {
      if (element.isEven) {
        evens.add(element);
      } else {
        odds.add(element);
      }
    }
    evens.sort();
    odds.sort((a, b) => b.compareTo(a));

    return evens + odds;
  }

  List<int> menFromBoysBest(List<int> arr) {
    return arr.toSet().toList()
      ..sort((a, b) {
        if (a % 2 != b % 2) {
          return a.isEven ? -1 : 1;
        }
        return a.isEven ? a.compareTo(b) : b.compareTo(a);
      });
  }
}
