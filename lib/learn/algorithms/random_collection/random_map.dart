import 'dart:collection';

import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'random_iterable.dart';
import 'random_map_entry_iterable.dart';

class RandomMap extends UnmodifiableMapBase<int, int> {
  RandomMap(this.length, {int? max}) : _max = max ?? length;

  @override
  final int length;

  final int _max;

  int get max => _max;

  @override
  int? operator [](Object? key) {
    ArgumentError.checkNotNull(key, 'key');
    final index = key as int;
    RangeError.checkNotNegative(index, 'key');
    if (index >= length) {
      throw RangeError.index(index, this, 'key');
    }

    return _item(index);
  }

  @override
  Iterable<int> get keys => Iterable<int>.generate(length);

  @override
  int get hashCode => hashValues(length, _max);

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  @override
  Iterable<int> get values => RandomIterable(length, max: _max);

  @override
  Iterable<MapEntry<int, int>> get entries => RandomMapEntryIterable(length, max: _max);

  @override
  bool containsKey(Object? key) {
    ArgumentError.checkNotNull(key, 'key');
    final index = key as int;

    return index > 0 && index < length;
  }

  @override
  bool containsValue(Object? value) {
    ArgumentError.checkNotNull(value, 'value');
    final index = value as int;

    return RandomIterable(length, max: _max).any((element) => element == index);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is RandomMap && other.length == length && other.max == _max;

  int _item(int index) => Random(index).nextInt(_max);
}
