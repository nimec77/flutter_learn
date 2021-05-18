import 'dart:collection';

class TwiceLinear {
  int dblLinear(int n) {
    int ai = 0;
    int bi = 0;
    int eq = 0;

    final u = <int>[1];

    while (ai + bi < n + eq) {
      final y = 2 * u[ai] + 1;
      final z = 3 * u[bi] + 1;
      if (y < z) {
        u.add(y);
        ai++;
      } else if (y > z) {
        u.add(z);
        bi++;
      } else {
        u.add(y);
        ai++;
        bi++;
        eq++;
      }
    }

    return u.last;
  }

  int dblLinearBest(int n) {
    int indexY = 0;
    int indexZ = 0;
    int eq = 0;
    int y = 3;
    int z = 4;

    final u = <int>[1];


    while (indexY + indexZ < n + eq) {
      if (y < z) {
        u.add(y);
        indexY++;
        y = 2 * u[indexY] + 1;
      } else if (y > z) {
        u.add(z);
        indexZ++;
        z = 3 * u[indexZ] + 1;
      } else {
        u.add(y);
        indexY++;
        indexZ++;
        y = 2 * u[indexY] + 1;
        z = 3 * u[indexZ] + 1;
        eq++;
      }
    }

    return u.last;
  }

  int dblLinearTree(int n) {
    final tree = SplayTreeSet<int>.from([1]);
    for (int i = 1; i <= n; i++) {
      final x = tree.first;
      tree.remove(x);
      tree.add(2 * x + 1);
      tree.add(3 * x + 1);
    }
    return tree.first;
  }
}
