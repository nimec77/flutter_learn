class TwoToOne {
  String longest(String a, String b) {
    final c = a + b;
    final list = c.split('').toSet().toList()..sort();

    return list.join();
  }

  String longestBest(String a, String b) {
    final strings = (a + b).split('')..sort();

    return strings.toSet().join();
  }
}
