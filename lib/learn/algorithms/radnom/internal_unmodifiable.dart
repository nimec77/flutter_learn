import 'dart:collection';

import 'dart:math';

/// Mixin for an unmodifiable [List] class.
///
/// This overrides all mutating methods with methods that throw.
/// This mixin is intended to be mixed in on top of [ListMixin] on
/// unmodifiable lists.
abstract class UnmodifiableRandomListMixin implements List<int> {
  /// This operation is not supported by an unmodifiable list.
  @override
  void operator []=(int index, int value) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  set length(int newLength) {
    throw UnsupportedError('Cannot change the length of an unmodifiable list');
  }

  @override
  set first(int value) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  @override
  set last(int value) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void setAll(int index, Iterable<int> iterable) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void add(int value) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void insert(int index, int element) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void insertAll(int index, Iterable<int> iterable) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void addAll(Iterable<int> iterable) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  bool remove(Object? value) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void removeWhere(bool Function(int element) test) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void retainWhere(bool Function(int element) test) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void sort([int Function(int a, int b)? compare]) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void shuffle([Random? random]) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void clear() {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  int removeAt(int index) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  int removeLast() {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void setRange(int start, int end, Iterable<int> iterable, [int skipCount = 0]) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void removeRange(int start, int end) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void replaceRange(int start, int end, Iterable<int> replacements) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  /// This operation is not supported by an unmodifiable list.
  @override
  void fillRange(int start, int end, [int? fillValue]) {
    throw UnsupportedError('Cannot modify an unmodifiable list');
  }

  
}

/// Abstract implementation of an unmodifiable list.
///
/// All operations are defined in terms of `length` and `operator[]`,
/// which need to be implemented.
abstract class UnmodifiableRandomListBase = ListBase<int> with UnmodifiableRandomListMixin;
