class CountingDuplicated {
  int duplicateCount(String text) {
    int result = 0;
    if (text.isEmpty) {
      return result;
    }
    final lst = text.toLowerCase().split('')..sort();
    var symbol = lst[0];
    for (int i = 1; i < lst.length; i++) {
      if (symbol == lst[i]) {
        result++;
        do {
          i++;
        // ignore: invariant_booleans
        } while (i < lst.length && symbol == lst[i]);
      }
      if (i < lst.length) {
        symbol = lst[i];
      }
    }
    return result;
  }

  int duplicateCountBest(String text) {
    final letterMap = <String, int>{};
    final lst = text.toLowerCase().split('');
    for (final letter in lst) {
      if (!letterMap.containsKey(letter)) {
        letterMap[letter] = 1;
      } else {
        letterMap[letter] = letterMap[letter]! + 1;
      }
    }

    return letterMap.values.where((element) => element > 1).length;
  }
}
