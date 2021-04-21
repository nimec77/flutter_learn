import 'dart:math';

class BeautifulAppearance {
  String toBeautiful(double value, int maxLength) {
    int fixed = maxLength - 1;
    if (value > 10000) {
      fixed = 0;
    } else if (value > 1000) {
      fixed = 1;
    } else if (value > 100) {
      fixed = 2;
    } else if (value > 10) {
      fixed = 3;
    }
    final entry = cutToMaxLength(value, fixed, maxLength);
    final integer = (entry.value * 0.2).round() * 5;
    final divider = pow(10, entry.key);

    return  (integer / divider).toStringAsFixed(fixed);
  }

  MapEntry<int, int> cutToMaxLength(double value, int fixed, int maxLength) {
    var str = value.toStringAsFixed(fixed);
    if (str.length > maxLength + 1) {
      str = str.substring(0, maxLength);
    }
    final lst = str.split('.');
    int divider = 0;
    if (lst.length > 1) {
      divider = lst[1].length;
    }

    return MapEntry(divider, int.parse(lst.join()));
  }
}
