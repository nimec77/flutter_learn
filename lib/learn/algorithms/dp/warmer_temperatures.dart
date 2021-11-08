import 'dart:collection';

import 'package:flutter/foundation.dart';

class WarmerTemperatures {
  List<int> temperatures(List<int> temperatures) {
    final stack = Queue<TempValue>();
    final result = List.filled(temperatures.length, 0, growable: false);
    for (var i = temperatures.length - 1; i >= 0; --i) {
      while (stack.isNotEmpty && stack.last.value <= temperatures[i]) {
        stack.removeLast();
      }
      if (stack.isNotEmpty) {
        result[i] = stack.last.index - i;
      }
      stack.add(TempValue(temperatures[i], i));
    }

    return result;
  }
}

@immutable
class TempValue {
  const TempValue(this.value, this.index);

  final int value;
  final int index;
}
