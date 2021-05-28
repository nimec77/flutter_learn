import 'dart:math';

class ConsecutiveStrings {
  String longestConsec(List<String> strarr, int k) {
    final n = strarr.length;
    if (n == 0 || k > n || k <= 0) {
      return '';
    }
    final longestList = <String>[];

    for (var i = 0; i <= n - k; i++) {
      longestList.add(strarr.getRange(i, i + k).join());
    }
    final maxLength = longestList.map((str) => str.length).reduce(max);

    return longestList.firstWhere((str) => str.length == maxLength);
  }

  String longestConsecBest(List<String> strarr, int k) {
    var current = '';

    for (var i = 0; i <= strarr.length - k; i++) {
      final temp = strarr.getRange(i, i + k).join();
      if (temp.length > current.length) {
        current = temp;
      }
    }

    return current;
  }
}
