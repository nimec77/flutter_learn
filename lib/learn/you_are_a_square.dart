import 'dart:math';

class YouAreASquare {
  bool isSquare(int n) {
    if (n < 0) {
      return false;
    }
    final sq = sqrt(n).toInt();
    return sq * sq == n;
  }

  bool isSquareBest(int n) {
    return sqrt(n).remainder(1) == 0;
  }
}
