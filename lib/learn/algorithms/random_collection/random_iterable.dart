import 'dart:collection';
import 'dart:math';


import 'internal_iterable.dart';
import 'random_iterator.dart';
import 'random_list.dart';

class RandomIterable extends IterableBase<int> {
  RandomIterable(this.max);

  final int max;

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
  int get last {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    return _item(max - 1);
  }

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
  List<int> toList({bool growable = false}) => RandomList(max);

  @override
  int get hashCode => max.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomIterable && other.max == max;

  int _item(int index) => Random(index).nextInt(max);
}
