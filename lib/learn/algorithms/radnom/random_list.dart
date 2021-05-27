import 'dart:collection';
import 'dart:math';

class RandomList implements ListBase<int> {
  RandomList(this.max);

  final int max;

  @override
  int get first => _item(0);

  @override
  set first(int value) {
    throw UnsupportedError('Method unsupported');
  }

  @override
  int get last => _item(max);

  @override
  set last(int value) {
    throw UnsupportedError('Method unsupported');
  }

  @override
  int get length => max;

  @override
  set length(int newLength) {
    throw UnsupportedError('Method unsupported');
  }

  @override
  List<int> operator +(List<int> other) {
    throw UnsupportedError('Method unsupported');
  }

  @override
  int operator [](int index) => _item(index);

  @override
  void operator []=(int index, int value) {
    throw UnsupportedError('Method unsupported');
  }

  @override
  void add(int element) {
    throw UnsupportedError('Method unsupported');
  }

  @override
  void addAll(Iterable<int> iterable) {
    throw UnsupportedError('Method unsupported');
  }

  @override
  bool any(bool Function(int element) test) {
    for (final item in this) {
      if (test(item)) {
        return true;
      }
    }

    return false;
  }

  @override
  Map<int, int> asMap() {
    final map = <int, int>{};
    for (var i = 0; i < length; i++) {
      map[i] = this[i];
    }
    return map;
  }

  @override
  List<R> cast<R>() {
    throw UnsupportedError('Method unsupported');
  }

  @override
  void clear() {
    throw UnsupportedError('Method unsupported');
  }

  @override
  bool contains(Object? element) {
    for (final item in this) {
      if (item == element) {
        return true;
      }
    }

    return false;
  }

  @override
  int elementAt(int index) => _item(index);

  @override
  bool every(bool Function(int element) test) {
    // TODO: implement every
    throw UnimplementedError();
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(int element) f) {
    // TODO: implement expand
    throw UnimplementedError();
  }

  @override
  void fillRange(int start, int end, [int? fill]) {
    // TODO: implement fillRange
  }

  @override
  int firstWhere(bool Function(int element) test, {int Function()? orElse}) {
    // TODO: implement firstWhere
    throw UnimplementedError();
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, int element) combine) {
    // TODO: implement fold
    throw UnimplementedError();
  }

  @override
  Iterable<int> followedBy(Iterable<int> other) {
    // TODO: implement followedBy
    throw UnimplementedError();
  }

  @override
  void forEach(void Function(int element) action) {
    // TODO: implement forEach
  }

  @override
  Iterable<int> getRange(int start, int end) {
    // TODO: implement getRange
    throw UnimplementedError();
  }

  @override
  int indexOf(Object? element, [int start = 0]) {
    // TODO: implement indexOf
    throw UnimplementedError();
  }

  @override
  int indexWhere(bool Function(int element) test, [int start = 0]) {
    // TODO: implement indexWhere
    throw UnimplementedError();
  }

  @override
  void insert(int index, int element) {
    // TODO: implement insert
  }

  @override
  void insertAll(int index, Iterable<int> iterable) {
    // TODO: implement insertAll
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => max == 0;

  @override
  bool get isNotEmpty => max != 0;

  @override
  // TODO: implement iterator
  Iterator<int> get iterator => throw UnimplementedError();

  @override
  String join([String separator = ""]) {
    // TODO: implement join
    throw UnimplementedError();
  }

  @override
  int lastIndexOf(Object? element, [int? start]) {
    // TODO: implement lastIndexOf
    throw UnimplementedError();
  }

  @override
  int lastIndexWhere(bool Function(int element) test, [int? start]) {
    // TODO: implement lastIndexWhere
    throw UnimplementedError();
  }

  @override
  int lastWhere(bool Function(int element) test, {int Function()? orElse}) {
    // TODO: implement lastWhere
    throw UnimplementedError();
  }

  @override
  Iterable<T> map<T>(T Function(int element) f) {
    // TODO: implement map
    throw UnimplementedError();
  }

  @override
  int reduce(int Function(int previousValue, int element) combine) {
    // TODO: implement reduce
    throw UnimplementedError();
  }

  @override
  bool remove(Object? element) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  int removeAt(int index) {
    // TODO: implement removeAt
    throw UnimplementedError();
  }

  @override
  int removeLast() {
    // TODO: implement removeLast
    throw UnimplementedError();
  }

  @override
  void removeRange(int start, int end) {
    // TODO: implement removeRange
  }

  @override
  void removeWhere(bool Function(int element) test) {
    // TODO: implement removeWhere
  }

  @override
  void replaceRange(int start, int end, Iterable<int> newContents) {
    // TODO: implement replaceRange
  }

  @override
  void retainWhere(bool Function(int element) test) {
    // TODO: implement retainWhere
  }

  @override
  // TODO: implement reversed
  Iterable<int> get reversed => throw UnimplementedError();

  @override
  void setAll(int index, Iterable<int> iterable) {
    // TODO: implement setAll
  }

  @override
  void setRange(int start, int end, Iterable<int> iterable, [int skipCount = 0]) {
    // TODO: implement setRange
  }

  @override
  void shuffle([Random? random]) {
    // TODO: implement shuffle
  }

  @override
  // TODO: implement single
  int get single => throw UnimplementedError();

  @override
  int singleWhere(bool Function(int element) test, {int Function()? orElse}) {
    // TODO: implement singleWhere
    throw UnimplementedError();
  }

  @override
  Iterable<int> skip(int count) {
    // TODO: implement skip
    throw UnimplementedError();
  }

  @override
  Iterable<int> skipWhile(bool Function(int element) test) {
    // TODO: implement skipWhile
    throw UnimplementedError();
  }

  @override
  void sort([int Function(int a, int b)? compare]) {
    // TODO: implement sort
  }

  @override
  List<int> sublist(int start, [int? end]) {
    // TODO: implement sublist
    throw UnimplementedError();
  }

  @override
  Iterable<int> take(int count) {
    // TODO: implement take
    throw UnimplementedError();
  }

  @override
  Iterable<int> takeWhile(bool Function(int element) test) {
    // TODO: implement takeWhile
    throw UnimplementedError();
  }

  @override
  List<int> toList({bool growable = true}) {
    // TODO: implement toList
    throw UnimplementedError();
  }

  @override
  Set<int> toSet() {
    // TODO: implement toSet
    throw UnimplementedError();
  }

  @override
  Iterable<int> where(bool Function(int element) test) {
    // TODO: implement where
    throw UnimplementedError();
  }

  @override
  Iterable<T> whereType<T>() {
    // TODO: implement whereType
    throw UnimplementedError();
  }

  int _item(int index) => Random(index).nextInt(max);
}
