class ErrorCorrection1 {
  String encode(String text) {
    return text.runes
        .map((e) => e.toRadixString(2).padLeft(8, '0'))
        .join()
        .split('')
        .expand((element) => [element * 3])
        .join();
  }

  String decode(String bits) {
    final triples = splitByLength(bits, 3);
    final correctedBits = triples.map((e) => e.split('1').length > 2 ? '1' : '0').join();
    final bytes = splitByLength(correctedBits, 8);
    final runes = bytes.map((e) => int.parse(e, radix: 2));

    return String.fromCharCodes(runes);
  }

  Iterable<String> splitByLength(String value, int length) {
    final result = <String>[];
    for (var i = 0; i < value.length; i += length) {
      result.add(value.substring(i, i + length));
    }

    return result;
  }

  String encodeBest(String text) {
    return text.runes.expand((element) => element.toRadixString(2).padLeft(8, '0').split('')).map((e) => e * 3).join();
  }

  String decodeBest(String bits) {
    return bits
        .replaceAllMapped(RegExp('...'), (match) => [0, 1, 2, 4].contains(int.parse(match[0]!, radix: 2)) ? '0' : '1')
        .replaceAllMapped(RegExp('.{8}'), (match) => String.fromCharCode(int.parse(match[0]!, radix: 2)));
  }
}
