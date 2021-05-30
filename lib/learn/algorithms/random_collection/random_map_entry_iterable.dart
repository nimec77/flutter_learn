import 'dart:collection';
import 'dart:math';

import 'internal_iterable.dart';
import 'random_map_entry.dart';
import 'random_map_entry_iterator.dart';

class RandomMapEntryIterable extends IterableBase<MapEntry<int, int>> {
  RandomMapEntryIterable(this.max);

  final int max;

  @override
  Iterator<MapEntry<int, int>> get iterator => RandomMapEntryIterator(max);

  @override
  MapEntry<int, int> get first {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    
    return _mapEntry(0);
  }
  
  @override
  bool get isEmpty => max == 0;

  @override
  bool get isNotEmpty => max != 0;
  
  @override
  int get length => max;
  
  @override
  MapEntry<int, int> get last {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    
    return _mapEntry(max - 1);
  }
  
  @override
  MapEntry<int, int> get single {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    if (max > 1) {
      throw IterableElementError.tooMany();
    }
    
    return _mapEntry(0);
  }

  @override
  MapEntry<int, int> elementAt(int index) {
    RangeError.checkNotNegative(index, 'index');
    if (index >= max) {
      throw RangeError.index(index, this, 'index');
    }

    return _mapEntry(index);
  }

  @override
  int get hashCode => max.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomMapEntryIterable && other.max == max;

  RandomMapEntry _mapEntry(int index) => RandomMapEntry(index, Random(index).nextInt(max));
}
