class MovesInSquaredString3 {
  String diag1Sym(String str) {
    final array = createArray(str);
    final diag = List.generate(array.length, (i) => List.generate(array[i].length, (j) => array[j][i], growable: false),
        growable: false);
    return diag.map((e) => e.join()).join('\n');
  }

  String rot90Clock(String str) {
    final array = createArray(str);
    final length = array.length;
    final rot = List.generate(length, (i) => List.generate(length, (j) => array[length - j - 1][i], growable: false),
        growable: false);
    return rot.map((e) => e.join()).join('\n');
  }

  String selfieAndDiag1(String str) {
    final list = str.split('\n');
    final diag = diag1Sym(str).split('\n');
    final selfie = List.generate(list.length, (i) => '${list[i]}|${diag[i]}');

    return selfie.join('\n');
  }

  String oper(String Function(String str) fct, String s) {
    return fct(s);
  }

  List<List<String>> createArray(String str) {
    final list = str.split('\n');
    return List.generate(list.length, (index) => list[index].split(''), growable: false);
  }
}
