import 'dart:math';

class BestTravel {
  int chooseBestSumBest(int t, int k, List<int> ls) {
    try {
      if (k == 1) {
        return ls.where((element) => element <= t).toList().reduce(max);
      } else {
        return List.generate(ls.length - 1, (index) {
          final bs = chooseBestSumBest(t - ls[index], k - 1, ls.sublist(index + 1));

          return bs > 0 ? ls[index] + bs : -1;
        }).where((element) => element <= t).reduce(max);
      }
    } catch (e) {
      return -1;
    }
  }
}
