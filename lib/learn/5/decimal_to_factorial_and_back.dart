class DecimalToFactorialAndBack {
  String dec2FactString(int nb) {
    final result = ['0'];
    var dec = nb;
    var base = 2;
    while (dec > 0) {
      result.add(dec2String(dec % base));
      dec ~/= base++;
    }

    return result.reversed.join();
  }

  int factString2Dec(String str) {
    final list = str.split('').reversed;

    var result = 0;
    final iterator = factorial().iterator;
    for (final char in list.skip(1)) {
      iterator.moveNext();
      result += string2dec(char) * iterator.current;
    }

    return result;
  }

  String dec2String(int num) {
    final charA = 'A'.codeUnitAt(0);

    return num < 10 ? num.toString() : String.fromCharCode(charA + num - 10);
  }

  int string2dec(String str) {
    final charA = 'A'.codeUnitAt(0);

    final code = str.codeUnitAt(0);

    return code < charA ? int.parse(str) : code - charA + 10;
  }

  Iterable<int> factorial() sync* {
    var base = 1;
    var fact = 1;
    //ignore: literal_only_boolean_expressions
    while (true) {
      fact *= base++;
      yield fact;
    }
  }

  String dec2FactStringBest(int nb) {
    final result = <int>[];
    var dec = nb;
    for (var base = 1; dec > 0; dec ~/= base, ++base) {
      result.add(dec % base);
    }
    return result.reversed.map((e) => e.toRadixString(36)).join().toUpperCase();
  }

  int factString2DecBest(String str) {
    var base = str.length;

    return str.split('').fold(0, (result, dec) => result * base-- + int.parse(dec, radix: 36));
  }
}
