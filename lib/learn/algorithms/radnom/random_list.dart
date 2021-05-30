import 'dart:math';

import 'package:flutter_learn/learn/algorithms/radnom/internal_iterable.dart';
import 'package:flutter_learn/learn/algorithms/radnom/internal_unmodifiable.dart';

import 'random_iterator.dart';

class RandomList extends UnmodifiableRandomListBase {
  RandomList(this.max);

  final int max;

  @override
  int operator [](int index) => elementAt(index);

  @override
  Iterator<int> get iterator => RandomIterator(max);

  @override
  int get length => max;

  @override
  int get first {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    return _item(0);
  }

  @override
  bool get isEmpty => max == 0;

  @override
  bool get isNotEmpty => max != 0;

  @override
  int get last {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    return _item(max - 1);
  }

  @override
  int get hashCode => max.hashCode;

  @override
  int get single {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    if (max > 1) {
      throw IterableElementError.tooMany();
    }

    return _item(0);
  }

  @override
  int elementAt(int index) {
    RangeError.checkNotNegative(index, 'index');
    if (index >= max) {
      throw RangeError.index(index, this, 'index');
    }

    return _item(index);
  }

  @override
  List<int> toList({bool growable = false}) => this;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomList && other.max == max;

  int _item(int index) => Random(index).nextInt(max);
}
