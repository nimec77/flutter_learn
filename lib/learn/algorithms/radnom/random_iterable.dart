import 'dart:collection';

import 'package:flutter_learn/learn/algorithms/radnom/random_iterator.dart';

class RandomIterable extends IterableBase<int> {
  RandomIterable(this.max);

  final int max;

  @override
  Iterator<int> get iterator => RandomIterator(max);
}
