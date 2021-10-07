import 'dart:math' as math;

class TvRemoveSymbols {
  final virtualKeyboard = const [
    <String, List<int>>{
      'a': [0, 0],
      'b': [0, 1],
      'c': [0, 2],
      'd': [0, 3],
      'e': [0, 4],
      '1': [0, 5],
      '2': [0, 6],
      '3': [0, 7],
      'f': [1, 0],
      'g': [1, 1],
      'h': [1, 2],
      'i': [1, 3],
      'j': [1, 4],
      '4': [1, 5],
      '5': [1, 6],
      '6': [1, 7],
      'k': [2, 0],
      'l': [2, 1],
      'm': [2, 2],
      'n': [2, 3],
      'o': [2, 4],
      '7': [2, 5],
      '8': [2, 6],
      '9': [2, 7],
      'p': [3, 0],
      'q': [3, 1],
      'r': [3, 2],
      's': [3, 3],
      't': [3, 4],
      '.': [3, 5],
      '@': [3, 6],
      '0': [3, 7],
      'u': [4, 0],
      'v': [4, 1],
      'w': [4, 2],
      'x': [4, 3],
      'y': [4, 4],
      'z': [4, 5],
      '_': [4, 6],
      '/': [4, 7],
      'aA#': [5, 0],
      ' ': [5, 1],
      '00': [5, 2],
      '01': [5, 3],
      '02': [5, 4],
      '03': [5, 5],
      '04': [5, 6],
      '05': [5, 7],
    },
    <String, List<int>>{
      'A': [0, 0],
      'B': [0, 1],
      'C': [0, 2],
      'D': [0, 3],
      'E': [0, 4],
      '1': [0, 5],
      '2': [0, 6],
      '3': [0, 7],
      'F': [1, 0],
      'G': [1, 1],
      'H': [1, 2],
      'I': [1, 3],
      'J': [1, 4],
      '4': [1, 5],
      '5': [1, 6],
      '6': [1, 7],
      'K': [2, 0],
      'L': [2, 1],
      'M': [2, 2],
      'N': [2, 3],
      'O': [2, 4],
      '7': [2, 5],
      '8': [2, 6],
      '9': [2, 7],
      'P': [3, 0],
      'Q': [3, 1],
      'R': [3, 2],
      'S': [3, 3],
      'T': [3, 4],
      '.': [3, 5],
      '@': [3, 6],
      '0': [3, 7],
      'U': [4, 0],
      'V': [4, 1],
      'W': [4, 2],
      'X': [4, 3],
      'Y': [4, 4],
      'Z': [4, 5],
      '_': [4, 6],
      '/': [4, 7],
      'aA#': [5, 0],
      ' ': [5, 1],
      '00': [5, 2],
      '01': [5, 3],
      '02': [5, 4],
      '03': [5, 5],
      '04': [5, 6],
      '05': [5, 7],
    },
    <String, List<int>>{
      '^': [0, 0],
      '~': [0, 1],
      '?': [0, 2],
      '!': [0, 3],
      "'": [0, 4],
      '"': [0, 5],
      '(': [0, 6],
      ')': [0, 7],
      '-': [1, 0],
      ':': [1, 1],
      ';': [1, 2],
      '+': [1, 3],
      '&': [1, 4],
      '%': [1, 5],
      '*': [1, 6],
      '=': [1, 7],
      '<': [2, 0],
      '>': [2, 1],
      '€': [2, 2],
      '£': [2, 3],
      r'$': [2, 4],
      '¥': [2, 5],
      '¤': [2, 6],
      r'\': [2, 7],
      '[': [3, 0],
      ']': [3, 1],
      '{': [3, 2],
      '}': [3, 3],
      ',': [3, 4],
      '.': [3, 5],
      '@': [3, 6],
      '§': [3, 7],
      '#': [4, 0],
      '¿': [4, 1],
      '¡': [4, 2],
      '00': [4, 3],
      '01': [4, 4],
      '02': [4, 5],
      '_': [4, 6],
      '/': [4, 7],
      'aA#': [5, 0],
      ' ': [5, 1],
      '03': [5, 2],
      '04': [5, 3],
      '05': [5, 4],
      '06': [5, 5],
      '07': [5, 6],
      '08': [5, 7],
    },
  ];
  final lengthX = 8;
  final lengthY = 6;

  int tvRemote(String word) {
    var count = 0;
    var prev = [0, 0];
    var mode = 0;
    for (final sym in word.split('')) {
      final nextModes = getMode(mode, sym);
      final next = virtualKeyboard[nextModes.first][sym]!;
      if (mode != nextModes.first) {
        final shift = virtualKeyboard[nextModes.first]['aA#']!;
        count += distance(prev, shift);
        count += nextModes.last;
        mode = nextModes.first;
        prev = shift;
      }
      count += distance(prev, next) + 1;
      prev = next;
    }
    return count;
  }

  List<int> getMode(int mode, String sym) {
    for (var i = mode, count = 0; count < 3 && i < virtualKeyboard.length; i = (i + 1) % 3, ++count) {
      if (virtualKeyboard[i].containsKey(sym)) {
        return [i, count];
      }
    }
    throw AssertionError('Unknown Symbol');
  }

  int distance(List<int> prev, List<int> next) {
    final path11 = (next.first - prev.first).abs();
    final path12 = (next.last - prev.last).abs();
    final path21 = lengthY - path11;
    final path22 = lengthX - path12;
    return math.min(path11, path21) + math.min(path12, path22);
  }

  final keyboard = const [
    ['abcde123', 'fghij456', 'klmno789', 'pqrst.@0', 'uvwxyz_/', '` '],
    ['ABCDE123', 'FGHIJ456', 'KLMNO789', 'PQRST.@0', 'UVWXYZ_/', '` '],
    ['^~?!\'"()', '-:;+&%*=', r'<>€£$¥¤\', '[]{},.@§', '#¿¡```_/', '` ']
  ];

  int tvRemoteBest(String word) {
    var presses = 0;
    var i = 0, j = 0, mode = 0;
    int dist(int a, int b, int w) => math.min((a - b).abs(), w - (a - b).abs());
    word.split('').forEach((x) {
      for (var k = 0; k < 3; k++) {
        final r = keyboard[mode].indexWhere((r) => r.contains(x));
        if (r >= 0) {
          final c = keyboard[mode][r].indexOf(x);
          presses += dist(i, r, 6) + dist(j, c, 8) + 1;
          i = r;
          j = c;
          break;
        }
        presses += dist(i, 5, 6) + dist(j, 0, 8) + 1;
        i = 5;
        j = 0;
        mode = (mode + 1) % 3;
      }
    });
    return presses;
  }
}
