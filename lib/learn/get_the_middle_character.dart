class GetTheMiddleCharacter {
  String getMiddle(String s) {
    final middle = s.length ~/ 2;
    final remainder = s.length % 2;

    final start = middle - 1 * (1 - remainder);
    final end = start + 2 - remainder;
    return s.substring(start, end);
  }
}
