import 'dart:math' as math;

class Friends {
  int friends(int n) {
    return n <= 2 ? 0 : math.log(n - 1) ~/ math.ln2;
  }
}