class VowelCount {
  int getCount(String inputStr) {
    final exp = RegExp('[aeiou]');
    return exp.allMatches(inputStr).length;
  }
}
