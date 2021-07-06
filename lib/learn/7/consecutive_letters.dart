class ConsecutiveLetters {
  bool solve(String s) {
    if (s.length == 1) {
      return true;
    }
    final list = s.split('')..sort();
    final runes = Runes(list.join());

    var prev = runes.first;
    for (final next in runes.skip(1)) {
      if (prev + 1 != next) {
        return false;
      }
      prev = next;
    }

    return true;
  }

  bool solveBest(String s) {
    final letters = s.split('')..sort();

    return 'abcdefghijklmnopqrstuvwxyz'.contains(letters.join());
  }
}