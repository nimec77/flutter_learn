class Bonuses {
  List<int> bonusBest(List<int> arr, int s) {
    final prop = arr.map((e) => 1 / e).reduce((value, element) => value + element);

    return arr.map((e) => (s / e * prop).round()).toList();
  }
}
