class SumOfABeach {
  int sumOfABeach(String beach) {
    String str = beach.toLowerCase();
    final beaches = ['sand', 'water', 'fish', 'sun'];

    int sum = 0;
    for (final beach in beaches) {
      while (str.isNotEmpty && str.contains(beach)) {
        sum++;
        str = str.replaceFirst(beach, '');
      }
      if (str.isEmpty) {
        break;
      }
    }

    return sum;
  }

  int sumOfABeachBest(String beach) => RegExp('sand|water|fish|sun', caseSensitive: false).allMatches(beach).length;
}
