class JosephusPermutation {
  List<dynamic> josephus(final List<dynamic> items, final int k) {
    final n = items.length;
    if (n < 2) {
      return items;
    }
    final result = <dynamic>[];
    var j = 0;
    for (var l = 0; l < n; l++) {
      final m = n - l;
      j = (j + k - 1) % m;
      result.add(items[j]);
      items.removeAt(j);
    }
    return result;
  }

  List josephusBest(final List<dynamic> items, final int k) {
    final ans = <dynamic>[];
    var i = 0;
    while (items.isNotEmpty) {
      i = (i + k - 1) % items.length;
      ans.add(items.removeAt(i));
    }
    return ans;
  }
}
