class WordValues {
  List<int> wordValue(List<String> arr) {
    final result = <int>[];
    final aCode = 'a'.codeUnitAt(0) - 1;
    final codes = arr.map((str) => str.replaceAll(' ', '').runes.map((rune) => rune - aCode)).toList();
    codes.asMap().forEach((key, value) {
      result.add((key + 1) * value.fold<int>(0, (previousValue, element) => previousValue + element));
    });

    return result;
  }
}