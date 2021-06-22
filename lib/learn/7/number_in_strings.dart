import 'dart:math' as math;

class NumberInStrings {
  int solve(String s) {
    final exp = RegExp(r'(\d+)');
    return exp.allMatches(s).map((e) {
      if (e.groupCount == 0) {
        return 0;
      }
      return int.parse(e.group(0)!);
    }).fold(0, math.max);
  }

  int solveBest(String s) {
    return s.split(RegExp(r'[0-9]')).where((element) => element != '').map(int.parse).fold(0, math.max);
  }
}
