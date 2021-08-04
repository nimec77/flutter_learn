class MexicanWave {
  List<String> wave(String str) {
    final result = <String>[];
    for (var i = 0; i < str.length; ++i) {
      if (str[i] != ' ') {
        result.add('${str.substring(0, i)}${str[i].toUpperCase()}${str.substring(i + 1)}');
      }
    }
    return result;
  }
}
