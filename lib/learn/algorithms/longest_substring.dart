import 'dart:math' as math;

class LongestSubstring {
  int length(String str) {
    var zeroPosition = -1;
    var result = 0;
    var current = 0;
    for (var i = 0; i < str.length; ++i) {
      if (str[i] == '0') {
        if (zeroPosition == -1) {
          zeroPosition = i;
        } else {
          result = math.max(result, current);
          i = zeroPosition;
          zeroPosition = -1;
          current = 0;
        }
      } else {
        current++;
      }
    }

    return math.max(result, current);
  }
}