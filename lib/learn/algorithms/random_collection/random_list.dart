import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/internal_iterable.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/internal_unmodifiable.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/random_iterator.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/random_map.dart';


@immutable
class RandomList extends UnmodifiableRandomListBase {
  RandomList(this.length, {int? max}) : _max = max ?? length;

  @override
  final int length;

  final int _max;

  int get max => _max;

  @override
  int operator [](int index) => elementAt(index);

  @override
  Iterator<int> get iterator => RandomIterator(length, max: _max);

  @override
  int get first {
    if (length == 0) {
      throw IterableElementError.noElement();
    }
    return _item(0);
  }

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  @override
  int get last {
    if (length == 0) {
      throw IterableElementError.noElement();
    }
    return _item(length - 1);
  }

  @override
  int get single {
    if (length == 0) {
      throw IterableElementError.noElement();
    }
    if (length > 1) {
      throw IterableElementError.tooMany();
    }

    return _item(0);
  }

  @override
  int elementAt(int index) {
    RangeError.checkNotNegative(index, 'index');
    if (index >= length) {
      throw RangeError.index(index, this, 'index');
    }

    return _item(index);
  }

  @override
  List<int> toList({bool growable = false}) => this;

  @override
  Map<int, int> asMap() => RandomMap(length, max: _max);

  @override
  int get hashCode => hashValues(length, _max);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is RandomList && other.length == length && other.max == _max;

  int _item(int index) => Random(index).nextInt(_max);
}
