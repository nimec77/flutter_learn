class SomeEgyptianFractions {
  String decompose(String nrStr, String drStr) {
    final stringBuffer = StringBuffer();
    egyptian(int.parse(nrStr), int.parse(drStr), stringBuffer);

    final result = stringBuffer.toString().trim().replaceAll(' ', ', ');

    return '[$result]';
  }

  void egyptian(int nr, int dr, StringBuffer stringBuffer) {
    if (dr == nr) {
      stringBuffer.write('1');
      return;
    }
    if (dr == 0 || nr == 0) {
      return;
    }

    if (dr % nr == 0) {
      stringBuffer.write('1/${dr ~/ nr}');
      return;
    }

    if (nr > dr) {
      stringBuffer.write('${nr ~/ dr} ');
      egyptian(nr % dr, dr, stringBuffer);
      return;
    }

    final n = (dr / nr + 1).toInt();
    stringBuffer.write('1/$n ');

    egyptian(nr * n - dr, dr * n, stringBuffer);
  }

  String decomposeBest(String nrStr, String drStr) {
    final result = <String>[];
    int x = int.parse(nrStr);
    int y = int.parse(drStr);
    while (x >= y) {
      result.add((x ~/ y).toString());
      x %= y;
    }
    while(x > 0) {
      final xy = (y / x).ceil();
      result.add('1/$xy');
      x = x * xy - y;
      y *= xy;
    }

    return '[${result.join(", ")}]';
  }
}
