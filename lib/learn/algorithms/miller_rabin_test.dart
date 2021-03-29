import 'dart:math';

class MillerRabinTest {
  bool test(int n, int k) {
    final rand = Random();
    var t = n - 1;
    int s = 0;
    while (t.isEven) {
      t ~/= 2;
      s++;
    }
    for (int i = 0; i < k; i++) {
      final a = rand.nextInt(n - 2) + 2;
      int x = a.modPow(t, n);
      if (x == 1 || x == n -1) {
        continue;
      }
      for (int r = 1; r < s; r++) {
        x = x.modPow(2, n);
        if (x == 1) {
          return false;
        } else if (x == n - 1) {
          break;
        }
      }
      if (x != n -1) {
        return false;
      }
    }
    return true;
  }
}