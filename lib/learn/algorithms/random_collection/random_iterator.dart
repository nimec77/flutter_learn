import 'dart:math';

import 'package:flutter/cupertino.dart';

class RandomIterator implements Iterator<int> {
  RandomIterator(this.length, {int? max}) : _max = max ?? length;

  final int length;
  final int _max;

  int _count = -1;

  int get max => _max;

  @override
  int get current {
    return _item(_count);
  }

  @override
  bool moveNext() => ++_count < length;

  @override
  int get hashCode => hashValues(length, _max);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is RandomIterator && other.length == length && other.max == _max;

  int _item(int index) => Random(index).nextInt(_max);
}
