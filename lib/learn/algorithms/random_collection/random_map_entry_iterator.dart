import 'dart:math';

import 'random_map_entry.dart';

class RandomMapEntryIterator implements Iterator<MapEntry<int, int>> {
  RandomMapEntryIterator(this.max);

  final int max;
  int _count = -1;

  @override
  MapEntry<int, int> get current => RandomMapEntry(_count, _item(_count));

  @override
  bool moveNext() => ++_count < max;

  @override
  int get hashCode => max.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomMapEntryIterator && other.max == max;

  int _item(int index) => Random(index).nextInt(max);
}
