class ReversingProcess {
  String decode(String r) {
    final result = StringBuffer();
    final codeA = 'a'.codeUnitAt(0);
    final encoded = r.toLowerCase();
    final matches = RegExp(r'(^\d+)').firstMatch(encoded);
    if (matches?.groupCount == 0) {
      return 'Impossible to decode';
    }
    final number = int.parse(matches!.group(0)!);
    final codes = encoded.runes.skip(matches.end).map((e) => e - codeA).toList();
    late bool findCode;
    for (var i = 0; i < codes.length; ++i) {
      findCode = false;
      for (var j = 0; j < 26; ++j) {
        final code = j * number % 26;
        if (code == codes[i]) {
          if (findCode) {
            return 'Impossible to decode';
          }
          result.write(String.fromCharCode(j + codeA));
          findCode = true;
        }
      }
      if (!findCode) {
        return 'Impossible to decode';
      }
    }
    return result.toString();
  }
}