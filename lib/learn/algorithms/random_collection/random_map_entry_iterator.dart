import 'dart:math';

import 'package:flutter_learn/learn/algorithms/random_collection/random_map_entry.dart';


class RandomMapEntryIterator implements Iterator<MapEntry<int, int>> {
  RandomMapEntryIterator(this.length, {int? max}) : _max = max ?? length;

  final int length;
  final int _max;
  int _count = -1;

  int get max => _max;

  @override
  MapEntry<int, int> get current => RandomMapEntry(_count, _item(_count));

  @override
  bool moveNext() => ++_count < length;

  // @override
  // int get hashCode => hashValues(length, _max);
  //
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) || other is RandomMapEntryIterator && other.length == length && other.max == _max;

  int _item(int index) => Random(index).nextInt(_max);
}
