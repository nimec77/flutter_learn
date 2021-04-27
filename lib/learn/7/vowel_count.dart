class VowelCount {
  int getCount(String inputStr) {
    return RegExp('[aeiou]').allMatches(inputStr).length;
  }
}
