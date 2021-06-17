class HowMuch {
  List<List<String>> howMuch(int m, int n) {
    late final int min;
    late final int max;
    if (m > n) {
      max = m;
      min = n;
    } else {
      max = n;
      min = m;
    }
    final result = <List<String>>[];
    for (var zloty = min; zloty <= max; ++zloty) {
      if (zloty % 9 == 1 && zloty % 7 == 2) {
        result.add(['M: $zloty', 'B: ${zloty ~/ 7}', 'C: ${zloty ~/ 9}']);
      }
    }
    return result;
  }
}
