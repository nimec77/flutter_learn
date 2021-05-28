class GettingAlongWithIntegerPartitions {

  String part(int n) {
    final products = <int>{};
    for (final parts in partitions(n)) {
      products.add(parts.reduce((value, element) => value * element));
    }
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

  Iterable<List<int>> partitions(int n) sync* {
    if (n == 0) {
      yield [];
      return;
    }
    for (final parts in partitions(n - 1)) {
      yield[1] + parts;
      if (parts.isNotEmpty && (parts.length < 2 || parts[1] > parts.first)) {
        yield [parts.first + 1] + parts.skip(1).toList();
      }
    }
  }
}
