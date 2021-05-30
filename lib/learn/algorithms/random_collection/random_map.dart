import 'dart:collection';

import 'dart:math';

import 'random_iterable.dart';
import 'random_map_entry_iterable.dart';

class RandomMap extends UnmodifiableMapBase<int, int> {
  RandomMap(this.max);

  final int max;

  @override
  int? operator [](Object? key) {
    ArgumentError.checkNotNull(key, 'key');
    final index = key as int;
    RangeError.checkNotNegative(index, 'key');
    if (index >= max) {
      throw RangeError.index(index, this, 'key');
    }

    return _item(index);
  }

  @override
  Iterable<int> get keys => Iterable<int>.generate(max);

  @override
  int get hashCode => max.hashCode;

  @override
  bool get isEmpty => max == 0;

  @override
  bool get isNotEmpty => max != 0;

  @override
  int get length => max;

  @override
  Iterable<int> get values => RandomIterable(max);

  @override
  Iterable<MapEntry<int, int>> get entries => RandomMapEntryIterable(max);

  @override
  bool containsKey(Object? key) {
    ArgumentError.checkNotNull(key, 'key');
    final index = key as int;

    return index > 0 && index < max;
  }

  @override
  bool containsValue(Object? value) {
    ArgumentError.checkNotNull(value, 'value');
    final index = value as int;

    return RandomIterable(max).any((element) => element == index);
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomMap && other.max == max;

  int _item(int index) => Random(index).nextInt(max);
}
