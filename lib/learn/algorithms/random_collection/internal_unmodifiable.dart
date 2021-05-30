import 'dart:collection';

import 'dart:math';

/// Mixin for an unmodifiable [List] class.
///
/// This overrides all mutating methods with methods that throw.
/// This mixin is intended to be mixed in on top of [ListMixin] on
/// unmodifiable lists.
abstract class UnmodifiableRandomListMixin implements List<int> {
  static Never _throwUnmodifiable() {
    throw UnsupportedError('Cannot change an unmodifiable set');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void operator []=(int index, int value) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  set length(int newLength) => _throwUnmodifiable();

  @override
  set first(int value) => _throwUnmodifiable();

  @override
  set last(int value) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void setAll(int index, Iterable<int> iterable) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void add(int value) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void insert(int index, int element) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void insertAll(int index, Iterable<int> iterable) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void addAll(Iterable<int> iterable) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  bool remove(Object? value) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void removeWhere(bool Function(int element) test) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void retainWhere(bool Function(int element) test) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void sort([int Function(int a, int b)? compare]) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void shuffle([Random? random]) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void clear() => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  int removeAt(int index) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  int removeLast() => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void setRange(int start, int end, Iterable<int> iterable, [int skipCount = 0]) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void removeRange(int start, int end) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void replaceRange(int start, int end, Iterable<int> replacements) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable list.
  @override
  void fillRange(int start, int end, [int? fillValue]) => _throwUnmodifiable();

  
}

/// Abstract implementation of an unmodifiable list.
///
/// All operations are defined in terms of `length` and `operator[]`,
/// which need to be implemented.
abstract class UnmodifiableRandomListBase = ListBase<int> with UnmodifiableRandomListMixin;

abstract class UnmodifiableRandomSetMixin implements Set<int> {
  static Never _throwUnmodifiable() {
    throw UnsupportedError('Cannot change an unmodifiable set');
  }

  /// This operation is not supported by an unmodifiable set.
  @override
  bool add(int value) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable set.
  @override
  void clear() => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable set.
  @override
  void addAll(Iterable<int> elements) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable set.
  @override
  void removeAll(Iterable<Object?> elements) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable set.
  @override
  void retainAll(Iterable<Object?> elements) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable set.
  @override
  void removeWhere(bool Function(int element) test) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable set.
  @override
  void retainWhere(bool Function(int element) test) => _throwUnmodifiable();

  /// This operation is not supported by an unmodifiable set.
  @override
  bool remove(Object? value) => _throwUnmodifiable();
}

/// An unmodifiable [Set] view of another [Set].
///
/// Methods that could change the set, such as add and remove,
/// must not be called.
abstract class UnmodifiableRandomSetViewBase = SetBase<int> with UnmodifiableRandomSetMixin;
