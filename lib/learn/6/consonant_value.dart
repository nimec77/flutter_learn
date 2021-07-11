import 'dart:math' as math;

class ConsonantValue {
  int solve(String s) {
    final codeA = 'a'.codeUnitAt(0) - 1;
    final exp = RegExp(r'([bcdfghjklmnpqrstvwxyz]+)');
    final consonants = exp.allMatches(s.toLowerCase());
    final codes = consonants.map((e) => e.group(0)).map((e) => e!.runes);
    return codes.map((e) => e.fold<int>(0, (value, element) => value + element - codeA)).reduce(math.max);
  }

  int solveBest(String str) {
    final codeA = 'a'.codeUnitAt(0) - 1;
    final exp = RegExp(r'[aeiou]');
    return str.split(exp).map((ss) => ss.runes.fold<int>(0, (x, y) => x + y - codeA)).reduce(math.max);
  }
}
