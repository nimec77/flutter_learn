class BowlingPins {
  String blowingPins(List<int> pins) {
    var bowling = '7 8 9 0\n 4 5 6 \n  2 3  \n   1   ';
    for (final pin in pins) {
      final item = pin == 10 ? '0' : pin.toString();
      bowling = bowling.replaceFirst(item, ' ');
    }
    return bowling.replaceAll(RegExp(r'\d'), 'I');
  }
}
