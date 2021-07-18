class Mumbling {
  String accum(String str) {
    final result = <String>[];
    final letters = str.split('');
    for (var i = 0; i < letters.length; ++i) {
      final l = letters[i].toLowerCase() * (i + 1);
      result.add('${l[0].toUpperCase()}${l.substring(1)}');
    }

    return result.join('-');
  }

  String accumBest(String str) {
    return str
        .split('')
        .asMap()
        .map((i, x) => MapEntry(i, x.toUpperCase() + (x.toLowerCase() * i)))
        .values
        .toList()
        .join('-');
  }
}
