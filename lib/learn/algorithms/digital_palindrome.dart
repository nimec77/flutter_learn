import 'dart:math' as math;

class DigitalPalindrome {
  int palindrome(String str, int replacements) {
    final length = str.length ~/ 2;
    final left = str.substring(0, length).split('').map(int.parse).toList();
    final right = str.substring(str.length - length, str.length).split('').reversed.map(int.parse).toList();
    final dif = differences(left, right);
    if (dif.length > replacements) {
      return -1;
    }
    var remain = replacements - dif.length;
    var index = 0;
    while (remain > 0 && index < length) {
      if (dif.containsKey(index)) {
        remain--;
        dif[index] = 9;
      } else if (remain > 1 && left[index] < 9) {
        remain -= 2;
        dif[index] = 9;
      }
      index++;
    }

    for (final key in dif.keys) {
      left[key] = dif[key]!;
    }

    final result = [...left];
    if (str.length.isOdd) {
      if (remain > 0) {
        result.add(9);
      } else {
        result.add(int.parse(str[length]));
      }
    }
    result.addAll(left.reversed.toList());

    return int.parse(result.join());
  }

  Map<int, int> differences(List<int> left, List<int> right) {
    final result = <int, int>{};
    for (var i = 0; i < left.length; i++) {
      if (left[i] != right[i]) {
        result[i] = math.max(left[i], right[i]);
      }
    }
    return result;
  }
}
