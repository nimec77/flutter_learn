import 'dart:math' as math;

class OdderThanTheRest {
  int? oddest(List<int> a) {
    if (a.length == 1) {
      return a.first;
    }
    final minusOnes = a.where((element) => element == -1).length;
    if (minusOnes == 1) {
      return -1;
    } else if (minusOnes > 1) {
      return null;
    }
    var arr = [...a];
    var index = -1;
    Iterable<int> odds;
    while ((odds = arr.where((element) => element.isOdd)).isNotEmpty) {
      if (odds.length == 1) {
        index = arr.indexWhere((element) => element.isOdd);
        break;
      }
      arr = arr.map((e) => e.isOdd ? (e - 1) ~/ 2 : e).toList();
      if (arr.every((element) => element == -1)) {
        return null;
      }
    }

    return index != -1 ? a[index] : null;
  }

  int? oddestBest(List<int> a) {
    if (a.isEmpty) {
      return null;
    }
    final values = List.generate(a.length, (index) => genOdd(a[index]));
    final maxValue = values.fold<int>(-1, math.max);
    final countMaxValue = values.where((element) => element == maxValue);
    if (countMaxValue.length > 1) {
      return null;
    }

    return a[values.indexOf(maxValue)];
  }

  int genOdd(int value) {
    if (value == -1) {
      return 9223372036854775807;
    }
    if (value.isEven) {
      return 0;
    }
    return 1 + genOdd((value - 1) ~/ 2);
  }
}
