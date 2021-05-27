import 'dart:math';

class BuildAPileOfCubes {
  int findNb(int m) {
    var pileCount = 1;
    var total = 1;

    while (total < m) {
      total += pow(++pileCount, 3) as int;
    }

    return total == m ? pileCount : -1;
  }
}
