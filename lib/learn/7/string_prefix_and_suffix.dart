class StringPrefixAndSuffix {
  int solve(final String s) {
    var count = 0;

    for (var i = 1; i <= s.length ~/ 2; ++i) {
      final prefix = s.substring(0, i);
      final suffix = s.substring(s.length - i);
      if (prefix == suffix) {
        count = i;
      }
    }
    return count;
  }

  int solveBest(final String s) {
    return RegExp(r'^(\w*)\w*(\1)$').firstMatch(s)?.group(1)?.length ?? 0;
  }
}
