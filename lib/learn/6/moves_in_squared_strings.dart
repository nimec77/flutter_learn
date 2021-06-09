class MovesInSquaredStrings {
  String rot(String strng) {
    return strng.split('').reversed.join();
  }

  String selfieAndRot(String strng) {
    final dotLength = strng.indexOf('\n');
    final dotPadding = '.' * dotLength;

    return '${strng.replaceAll('\n', '$dotPadding\n')}$dotPadding\n$dotPadding'
        '${rot(strng).replaceAll('\n', '\n$dotPadding')}';
  }

  String oper(String Function(String str) fct, String s) {
    return fct(s);
  }
}
