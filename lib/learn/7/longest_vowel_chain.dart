import 'dart:math' as math;

class LongestVowelChain {
  int solve(String s) {
    final vowel = RegExp('[aeiou]+');
    final matches = vowel.allMatches(s);

    return matches.fold<int>(0, (previousValue, element) => math.max(previousValue, element.group(0)!.length));
  }
}
