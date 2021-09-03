import 'dart:collection';
import 'dart:math';

import 'package:flutter_learn/learn/algorithms/random_collection/internal_iterable.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/random_iterator.dart';
import 'package:flutter_learn/learn/algorithms/random_collection/random_list.dart';

class RandomIterableAll implements Iterable<int> {
  RandomIterableAll(this.length, {int? max}) : _max = max ?? length;

  @override
  final int length;

  final int _max;

  int get max => _max;

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
  Iterable<R> cast<R>() => Iterable.castFrom<int, R>(this);

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
    if (index >= length) {
      throw RangeError.index(index, this, 'index', null, length);
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
  Iterable<T> expand<T>(Iterable<T> Function(int element) toElements) => ExpandIterable<int, T>(this, toElements);

  @override
  int get first {
    if (length == 0) {
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
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  @override
  Iterator<int> get iterator => RandomIterator(length, max: _max);

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
        buffer
          ..write(separator)
          ..write(iterator.current.toString());
      }
    }

    return buffer.toString();
  }

  @override
  int get last {
    if (length == 0) {
      throw IterableElementError.noElement();
    }
    return _item(length - 1);
  }

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
    if (length == 0) {
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

  @override
  List<int> toList({bool growable = false}) => RandomList(length, max: _max);

  @override
  Set<int> toSet() => Set<int>.of(this);

  @override
  Iterable<int> where(bool Function(int element) test) {
    return WhereIterable(this, test);
  }

  @override
  //ignore: use_to_and_as_if_applicable
  Iterable<T> whereType<T>() {
    return WhereTypeIterable(this);
  }

  // @override
  // int get hashCode => hashValues(length, _max);
  //
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) || other is RandomIterableAll && other.length == length && other.max == _max;

  @override
  String toString() => IterableBase.iterableToShortString(this);

  int _item(int index) {
    return Random(index).nextInt(length);
  }
}
