class AlphabeticalAddition {
  String addLetters(List<String> letters) {
    if (letters.isEmpty) {
      return 'z';
    }
    final aCode = 'a'.codeUnitAt(0) - 1;
    final sums =
        letters.map((e) => e.codeUnitAt(0) - aCode).fold<int>(0, (previousValue, element) => previousValue + element);

    final code = sums % 26;
    return code == 0 ? 'z' : String.fromCharCode(code + aCode);
  }
}
