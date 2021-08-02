class AlphabetSymmetry {
  List<int> solve(List<String> arr) {
    final result = <int>[];
    final codeA = 'A'.codeUnitAt(0);
    final alphabets = List.generate(26, (index) => String.fromCharCode(codeA + index));
    for (final str in arr.map((e) => e.toUpperCase())) {
      var count = 0;
      for (var i = 0; i < str.length; ++i) {
        if (str[i] == alphabets[i]) {
          count++;
        }
      }
      result.add(count);
    }

    return result;
  }

  List<int> solveBest(List<String> arr) {
    List<int>.from(
      arr.map(
        (str) => str
            .toLowerCase()
            .codeUnits
            .asMap()
            .entries
            .fold<int>(0, (acc, pair) => acc + (pair.key == (pair.value - 'a'.codeUnitAt(0)) ? 1 : 0)),
      ),
    );
    return [];
  }
}
