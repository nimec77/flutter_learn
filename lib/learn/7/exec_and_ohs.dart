class ExecAndOhs {
  bool xo(String str) {
    final strList = str.split('');
    final x = strList.where((element) => element.toLowerCase() == 'x');
    final o = strList.where((element) => element.toLowerCase() == 'o');
    return x.length == o.length;
  }

  bool xoBest(String str) {
    final strLowerCase = str.toLowerCase();

    return 'x'.allMatches(strLowerCase).length == 'o'.allMatches(strLowerCase).length;
  }
}
