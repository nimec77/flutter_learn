class MovesInSquaredString1 {
  String vertMirror(String str) {
    final list = str.split('\n');
    final result = list.map((e) => e.split('').reversed.join(''));
    return result.join('\n');
  }

  String horMirror(String str) {
    final list = str.split('\n');

    return list.reversed.join('\n');
  }

  String oper(String Function(String str) fct, String s) {
    return fct(s);
  }
}
