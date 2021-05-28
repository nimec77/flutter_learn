class GettingAlongWithIntegerPartitions {
  final list = List.filled(100, 0, growable: false);
  final products = <int>{};

  String part(int n) {
    allUniqueParts(n);
    // currTerm(n, n, 0);
    final ls = products.toList()..sort();

    final len = ls.length;
    final middle = len ~/ 2;
    final range = ls.last - ls.first;
    final average = ls.reduce((value, element) => value + element) / len;
    var median = average;
    if (len.isOdd) {
      median = ls[middle].toDouble();
    } else {
      median = 0.5 * (ls[middle - 1] + ls[middle]);
    }

    return 'Range: $range Average: ${average.toStringAsFixed(2)} Median: ${median.toStringAsFixed(2)}';
  }

  void currTerm(int n, int k, int i) {
    if (n < 0) {
      return;
    }
    if (n == 0) {
      products.add(list.take(i).reduce((value, element) => value * element));
    } else {
      if (n >= k) {
        list[i] = k;
        currTerm(n - k, k, i + 1);
      }
      if (k > 1) {
        currTerm(n, k - 1, i);
      }
    }
  }

  void allUniqueParts(int n) {
    final pl = List.filled(n, 0);
    var k = 0;

    pl[k] = n;

    while(true) {
      // print(pl.take(k + 1));
      products.add(pl.take(k + 1).fold(1, (previousValue, element) => previousValue * element));
      var remVal = 0;
      while(k >= 0 && pl[k] == 1) {
        remVal += pl[k];
        k--;
      }
      if (k < 0) {
        return;
      }
      pl[k]--;
      remVal++;

      while(remVal > pl[k]) {
        pl[k + 1] = pl[k];
        remVal -= pl[k];
        k++;
      }

      pl[k+ 1] = remVal;
      k++;
    }
  }
}
