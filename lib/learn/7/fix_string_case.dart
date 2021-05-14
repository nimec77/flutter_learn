class FixStringCase {
  String solve(String s) {
    final lowerCases =
        s.split('').fold<int>(0, (previousValue, element) => isLowerCase(element) ? previousValue + 1 : previousValue);

    return lowerCases >= s.length / 2 ? s.toLowerCase() : s.toUpperCase();
  }

  bool isLowerCase(String s) => s.toLowerCase() == s;

  String solveBest(String s) {
    return RegExp('[A-Z]').allMatches(s).length > RegExp('[a-z]').allMatches(s).length
        ? s.toUpperCase()
        : s.toLowerCase();
  }
}
