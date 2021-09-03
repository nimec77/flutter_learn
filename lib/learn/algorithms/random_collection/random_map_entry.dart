import 'package:flutter/cupertino.dart';

@immutable
class RandomMapEntry implements MapEntry<int, int> {
  factory RandomMapEntry(int key, int value) => RandomMapEntry._(key, value);

  const RandomMapEntry._(this.key, this.value);

  @override
  final int key;

  @override
  final int value;

  @override
  int get hashCode => hashValues(key, value);

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is RandomMapEntry && other.key == key && other.value == value;
  }

  @override
  String toString() => 'RandomMapEntry($key: $value)';
}
