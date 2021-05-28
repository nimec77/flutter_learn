import 'dart:collection';
import 'dart:math';

import 'package:flutter_learn/learn/algorithms/radnom/internal_list.dart';

class RandomList extends UnmodifiableRandomListBase {
  RandomList(this.max);

  final int max;

  @override
  int operator [](int index) {
    return _item(index);
  }

  @override
  int get length => max;

  int _item(int index) => Random(index).nextInt(max);

}
