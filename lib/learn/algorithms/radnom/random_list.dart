import 'dart:math';

import 'package:flutter_learn/learn/algorithms/radnom/internal_iterable.dart';
import 'package:flutter_learn/learn/algorithms/radnom/internal_unmodifiable.dart';

class RandomList extends UnmodifiableRandomListBase {
  RandomList(this.max);

  final int max;

  @override
  int operator [](int index) {
    return _item(index);
  }

  @override
  int get length => max;

  @override
  int get first => _item(0);

  @override
  bool get isEmpty => max == 0;

  @override
  bool get isNotEmpty => max != 0;

  @override
  int get last => _item(max - 1);

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
  bool operator ==(Object other) {
    return identical(this, other) || other is RandomList && other.max == max;
  }

  int _item(int index) => Random(index).nextInt(max);
}
