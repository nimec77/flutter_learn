class TvRemoteShift {
  final keyboard = const [
    ['abcde123', 'fghij456', 'klmno789', 'pqrst.@0', 'uvwxyz_/', '` '],
    ['ABCDE123', 'FGHIJ456', 'KLMNO789', 'PQRST.@0', 'UVWXYZ_/', '` '],
  ];

  int tvRemote(String word) {
    var presses = 0;
    var i = 0, j = 0, mode =0;
    word.split('').forEach((x) {
      for (var k = 0; k < 2; ++k) {
        final r = keyboard[mode].indexWhere((element) => element.contains(x));
        if (r >= 0) {
          final c = keyboard[mode][r].indexOf(x);
          presses += (i - r).abs() + (j - c).abs() + 1;
          i = r;
          j = c;
          break;
        }
        presses += (i - 5).abs() + j + 1;
        i = 5;
        j = 0;
        mode = (mode + 1) % 2;
      }
    });

    return presses;
  }
}
