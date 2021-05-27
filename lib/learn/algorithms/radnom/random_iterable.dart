import 'dart:collection';
import 'dart:math';

import 'package:flutter_learn/learn/algorithms/radnom/random_iterator.dart';

import 'internal_iterable.dart';

class RandomIterable implements Iterable<int> {
  RandomIterable(this.max);

  final int max;

  @override
  bool any(bool Function(int element) test) {
    for (final element in this) {
      if (test(element)) {
        return true;
      }
    }
    return false;
  }

  @override
  Iterable<R> cast<R>() {
    return Iterable.castFrom<int, R>(this);
  }

  @override
  bool contains(Object? element) {
    for (final element in this) {
      if (element == element) {
        return true;
      }
    }
    return false;
  }

  @override
  int elementAt(int index) {
    if (index >= max) {
      throw RangeError.index(index, this, 'index', null, max);
    }
    return _item(index);
  }

  @override
  bool every(bool Function(int element) test) {
    for (final element in this) {
      if (!test(element)) {
        return false;
      }
    }
    return true;
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(int element) toElements) {
    return ExpandIterable<int, T>(this, toElements);
  }

  @override
  int get first {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    return _item(0);
  }

  @override
  int firstWhere(bool Function(int element) test, {int Function()? orElse}) {
    for (final element in this) {
      if (test(element)) {
        return element;
      }
    }
    if (orElse != null) {
      return orElse();
    }
    throw IterableElementError.noElement();
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, int element) combine) {
    var value = initialValue;
    for (final element in this) {
      value = combine(value, element);
    }
    return value;
  }

  @override
  Iterable<int> followedBy(Iterable<int> other) {
    if (this is EfficientLengthIterable) {
      final self = this as EfficientLengthIterable<int>;
      return FollowedByIterable.firstEfficient(self, other);
    }
    return FollowedByIterable(this, other);
  }

  @override
  void forEach(void Function(int element) action) {
    for (final element in this) {
      action(element);
    }
  }

  @override
  bool get isEmpty => max == 0;

  @override
  bool get isNotEmpty => max != 0;

  @override
  Iterator<int> get iterator => RandomIterator(max);

  @override
  String join([String separator = '']) {
    final iterator = this.iterator;
    if (!iterator.moveNext()) {
      return '';
    }
    final buffer = StringBuffer();
    if (separator == '') {
      do {
        buffer.write(iterator.current.toString());
      } while (iterator.moveNext());
    } else {
      buffer.write(iterator.current.toString());
      while (iterator.moveNext()) {
        buffer..write(separator)..write(iterator.current.toString());
      }
    }

    return buffer.toString();
  }

  @override
  int get last => _item(max > 1 ? max - 1 : max);

  @override
  int lastWhere(bool Function(int element) test, {int Function()? orElse}) {
    late int result;
    var foundMatching = false;

    for (final element in this) {
      if (test(element)) {
        result = element;
        foundMatching = true;
      }
    }
    if (foundMatching) {
      return result;
    }
    if (orElse != null) {
      return orElse();
    }

    throw IterableElementError.noElement();
  }

  @override
  int get length => max;

  @override
  Iterable<T> map<T>(T Function(int e) toElement) {
    return MappedIterable<T>(this, toElement);
  }

  @override
  int reduce(int Function(int value, int element) combine) {
    final iterator = this.iterator;
    if (!iterator.moveNext()) {
      throw IterableElementError.noElement();
    }
    var value = iterator.current;
    while (iterator.moveNext()) {
      value = combine(value, iterator.current);
    }

    return value;
  }

  @override
  int get single {
    if (max == 0) {
      throw IterableElementError.noElement();
    }
    final result = iterator.current;
    if (iterator.moveNext()) {
      throw IterableElementError.tooMany();
    }

    return result;
  }

  @override
  int singleWhere(bool Function(int element) test, {int Function()? orElse}) {
    late int result;
    var foundMatching = false;
    for (final element in this) {
      if (test(element)) {
        if (foundMatching) {
          throw IterableElementError.tooMany();
        }
        result = element;
        foundMatching = true;
      }
    }
    if (foundMatching) {
      return result;
    }
    if (orElse != null) {
      return orElse();
    }
    throw IterableElementError.noElement();
  }

  @override
  Iterable<int> skip(int count) {
    return SkipIterable(this, count);
  }

  @override
  Iterable<int> skipWhile(bool Function(int value) test) {
    return SkipWhileIterable(this, test);
  }

  @override
  Iterable<int> take(int count) {
    return TakeIterable(this, count);
  }

  @override
  Iterable<int> takeWhile(bool Function(int value) test) {
    return TakeWhileIterable(this, test);
  }

  // TODO: возможно надо будет переопределить на RandomList
  @override
  List<int> toList({bool growable = true}) {
    return List<int>.of(this, growable: growable);
  }

  // TODO: возможно надо будет переопределить на RandomSet
  @override
  Set<int> toSet() {
    return Set<int>.of(this);
  }

  @override
  Iterable<int> where(bool Function(int element) test) {
    return WhereIterable(this, test);
  }

  @override
  Iterable<T> whereType<T>() {
    // TODO: implement whereType
    throw UnimplementedError();
  }

  @override
  int get hashCode {
    return max.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is RandomIterable && other.max == max;
  }

  @override
  String toString() => IterableBase.iterableToShortString(this);

  int _item(int index) {
    return Random(index).nextInt(max);
  }
}
