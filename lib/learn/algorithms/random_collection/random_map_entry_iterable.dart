import 'dart:collection';
import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'internal_iterable.dart';
import 'random_map_entry.dart';
import 'random_map_entry_iterator.dart';

class RandomMapEntryIterable extends IterableBase<MapEntry<int, int>> {
  RandomMapEntryIterable(this.length, {int? max}) : _max = max ?? length;

  @override
  final int length;

  final int _max;

  int get max => _max;

  @override
  Iterator<MapEntry<int, int>> get iterator => RandomMapEntryIterator(length, max: _max);

  @override
  MapEntry<int, int> get first {
    if (length == 0) {
      throw IterableElementError.noElement();
    }

    return _mapEntry(0);
  }

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  @override
  MapEntry<int, int> get last {
    if (length == 0) {
      throw IterableElementError.noElement();
    }

    return _mapEntry(length - 1);
  }

  @override
  MapEntry<int, int> get single {
    if (length == 0) {
      throw IterableElementError.noElement();
    }
    if (length > 1) {
      throw IterableElementError.tooMany();
    }

    return _mapEntry(0);
  }

  @override
  MapEntry<int, int> elementAt(int index) {
    RangeError.checkNotNegative(index, 'index');
    if (index >= length) {
      throw RangeError.index(index, this, 'index');
    }

    return _mapEntry(index);
  }

  @override
  int get hashCode => hashValues(length, _max);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is RandomMapEntryIterable && other.length == length && other.max == max;

  RandomMapEntry _mapEntry(int index) => RandomMapEntry(index, Random(index).nextInt(_max));
}
