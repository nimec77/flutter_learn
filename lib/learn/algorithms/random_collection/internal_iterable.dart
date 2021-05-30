typedef _ExpandFunction<int, T> = Iterable<T> Function(int sourceElement);

class ExpandIterable<int, T> extends Iterable<T> {
  ExpandIterable(this._iterable, this._f);

  final Iterable<int> _iterable;
  final _ExpandFunction<int, T> _f;

  @override
  Iterator<T> get iterator => ExpandIterator<int, T>(_iterable.iterator, _f);
}

class ExpandIterator<int, T> implements Iterator<T> {
  ExpandIterator(this._iterator, this._f);

  final Iterator<int> _iterator;
  final _ExpandFunction<int, T> _f;

  Iterator<T>? _currentExpansion = const EmptyIterator<Never>();
  T? _current;

  @override
  T get current => _current as T;

  @override
  bool moveNext() {
    if (_current == null) {
      return false;
    }
    while (!_currentExpansion!.moveNext()) {
      _current = null;
      if (_iterator.moveNext()) {
        _currentExpansion = null;
        _currentExpansion = _f(_iterator.current).iterator;
      } else {
        return false;
      }
    }
    _current = _currentExpansion!.current;
    return true;
  }
}

class EmptyIterator<E> implements Iterator<E> {
  const EmptyIterator();

  @override
  bool moveNext() => false;

  @override
  E get current {
    throw IterableElementError.noElement();
  }
}

class FollowedByIterable extends Iterable<int> {
  FollowedByIterable(this._first, this._second);

  factory FollowedByIterable.firstEfficient(EfficientLengthIterable<int> first, Iterable<int> second) {
    if (second is EfficientLengthIterable<int>) {
      return EfficientLengthFollowedByIterable(first, second);
    }
    return FollowedByIterable(first, second);
  }

  final Iterable<int> _first;
  final Iterable<int> _second;

  @override
  Iterator<int> get iterator => FollowedByIterator(_first, _second);

  @override
  int get length => _first.length + _second.length;

  @override
  bool get isEmpty => _first.isEmpty && _second.isEmpty;

  @override
  bool get isNotEmpty => _first.isNotEmpty || _second.isNotEmpty;

  @override
  bool contains(Object? element) => _first.contains(element) || _second.contains(element);

  @override
  int get first {
    final iterator = _first.iterator;
    if (iterator.moveNext()) {
      return iterator.current;
    }
    return _second.first;
  }

  @override
  int get last {
    final iterator = _second.iterator;
    if (iterator.moveNext()) {
      var last = iterator.current;
      while (iterator.moveNext()) {
        last = iterator.current;
      }
      return last;
    }
    return _first.last;
  }
}

class EfficientLengthFollowedByIterable extends FollowedByIterable implements EfficientLengthIterable<int> {
  EfficientLengthFollowedByIterable(EfficientLengthIterable<int> first, EfficientLengthIterable<int> second)
      : super(first, second);

  @override
  int elementAt(int index) {
    final firstLength = _first.length;
    if (index < firstLength) {
      return _first.elementAt(index);
    } else {
      return _second.elementAt(index - firstLength);
    }
  }

  @override
  int get first {
    if (_first.isNotEmpty) {
      return _first.first;
    } else {
      return _second.first;
    }
  }

  @override
  int get last {
    if (_second.isNotEmpty) {
      return _second.last;
    } else {
      return _first.last;
    }
  }
}

class FollowedByIterator implements Iterator<int> {
  FollowedByIterator(Iterable<int> first, this._nextIterable) : _currentIterator = first.iterator;

  Iterator<int> _currentIterator;
  Iterable<int>? _nextIterable;

  @override
  int get current => _currentIterator.current;

  @override
  bool moveNext() {
    if (_currentIterator.moveNext()) {
      return true;
    }
    if (_nextIterable != null) {
      _currentIterator = _nextIterable!.iterator;
      _nextIterable = null;
      return _currentIterator.moveNext();
    }

    return false;
  }
}

typedef _Transformation<int, T> = T Function(int value);

class MappedIterable<T> extends Iterable<T> {
  factory MappedIterable(Iterable<int> iterable, T Function(int value) function) {
    if (iterable is EfficientLengthIterable) {
      return EfficientLengthMappedIterable<T>(iterable, function);
    }
    return MappedIterable<T>(iterable, function);
  }

  MappedIterable._(this._iterable, this._f);

  final Iterable<int> _iterable;
  final _Transformation<int, T> _f;

  @override
  Iterator<T> get iterator => MappedIterator<T>(_iterable.iterator, _f);

  @override
  int get length => _iterable.length;

  @override
  bool get isEmpty => _iterable.isEmpty;

  @override
  T get first => _f(_iterable.first);

  @override
  T get last => _f(_iterable.last);

  @override
  T get single => _f(_iterable.single);

  @override
  T elementAt(int index) {
    return _f(_iterable.elementAt(index));
  }
}

class MappedIterator<T> extends Iterator<T> {
  MappedIterator(this._iterator, this._f);

  final Iterator<int> _iterator;
  final _Transformation<int, T> _f;

  T? _current;

  @override
  T get current => _current as T;

  @override
  bool moveNext() {
    if (_iterator.moveNext()) {
      _current = _f(_iterator.current);
      return true;
    }
    _current = null;
    return false;
  }
}

class EfficientLengthMappedIterable<T> extends MappedIterable<T> implements EfficientLengthIterable<T> {
  EfficientLengthMappedIterable(Iterable<int> iterable, T Function(int value) function) : super._(iterable, function);
}

class SkipIterable extends Iterable<int> {
  factory SkipIterable(Iterable<int> iterable, int count) {
    if (iterable is EfficientLengthSkipIterable) {
      return EfficientLengthSkipIterable(iterable, count);
    }
    return SkipIterable._(iterable, _checkCount(count));
  }

  SkipIterable._(this._iterable, this._skipCount);

  final Iterable<int> _iterable;
  final int _skipCount;

  @override
  Iterable<int> skip(int count) {
    return SkipIterable._(_iterable, _skipCount + _checkCount(count));
  }

  @override
  Iterator<int> get iterator => SkipIterator(_iterable.iterator, _skipCount);
}

class EfficientLengthSkipIterable extends SkipIterable implements EfficientLengthIterable<int> {
  factory EfficientLengthSkipIterable(Iterable<int> iterable, int count) {
    return EfficientLengthSkipIterable._(iterable, _checkCount(count));
  }

  EfficientLengthSkipIterable._(Iterable<int> iterable, int count) : super._(iterable, count);

  @override
  int get length {
    final length = _iterable.length - _skipCount;
    if (length >= 0) {
      return length;
    }
    return 0;
  }

  @override
  Iterable<int> skip(int count) {
    return EfficientLengthSkipIterable._(_iterable, _skipCount + _checkCount(count));
  }
}

int _checkCount(int count) {
  ArgumentError.checkNotNull(count, 'cunt');
  RangeError.checkNotNegative(count, 'count');

  return count;
}

class SkipIterator extends Iterator<int> {
  SkipIterator(this._iterator, this._skipCount) : assert(_skipCount >= 0);

  final Iterator<int> _iterator;
  int _skipCount;

  @override
  int get current => _iterator.current;

  @override
  bool moveNext() {
    for (var i = 0; i < _skipCount; i++) {
      _iterator.moveNext();
    }
    _skipCount = 0;
    return _iterator.moveNext();
  }
}

typedef _ElementPredicate = bool Function(int element);

class SkipWhileIterable extends Iterable<int> {
  SkipWhileIterable(this._iterable, this._f);

  final Iterable<int> _iterable;
  final _ElementPredicate _f;

  @override
  Iterator<int> get iterator => SkipWhileIterator(_iterable.iterator, _f);
}

class SkipWhileIterator extends Iterator<int> {
  SkipWhileIterator(this._iterator, this._f);

  final Iterator<int> _iterator;
  final _ElementPredicate _f;

  bool _hasSkipped = false;

  @override
  int get current => _iterator.current;

  @override
  bool moveNext() {
    if (!_hasSkipped) {
      _hasSkipped = true;
      while (_iterator.moveNext()) {
        if (!_f(_iterator.current)) {
          return true;
        }
      }
    }
    return _iterator.moveNext();
  }
}

class TakeIterable extends Iterable<int> {
  factory TakeIterable(Iterable<int> iterable, int takeCount) {
    ArgumentError.checkNotNull(takeCount, 'takeCount');
    RangeError.checkNotNegative(takeCount, 'takeCount');
    if (iterable is EfficientLengthIterable<int>) {
      return EfficientLengthTakeIterable(iterable, takeCount);
    }
    return TakeIterable._(iterable, takeCount);
  }

  TakeIterable._(this._iterable, this._takeCount);

  final Iterable<int> _iterable;
  final int _takeCount;

  @override
  Iterator<int> get iterator => TakeIterator(_iterable.iterator, _takeCount);
}

class TakeWhileIterable extends Iterable<int> {
  TakeWhileIterable(this._iterable, this._f);

  final Iterable<int> _iterable;
  final _ElementPredicate _f;

  @override
  Iterator<int> get iterator => TakeWhileIterator(_iterable.iterator, _f);
}

class TakeWhileIterator extends Iterator<int> {
  TakeWhileIterator(this._iterator, this._f);

  final Iterator<int> _iterator;
  final _ElementPredicate _f;

  bool _isFinished = false;

  @override
  int get current {
    if (_isFinished) {
      // ignore: cast_nullable_to_non_nullable
      return null as int;
    }
    return _iterator.current;
  }

  @override
  bool moveNext() {
    if (_isFinished) {
      return false;
    }
    if (!_iterator.moveNext() || !_f(_iterator.current)) {
      _isFinished = true;
      return false;
    }
    return true;
  }
}

class EfficientLengthTakeIterable extends TakeIterable implements EfficientLengthIterable<int> {
  EfficientLengthTakeIterable(Iterable<int> iterable, int takeCount) : super._(iterable, takeCount);

  @override
  int get length {
    final iterableLength = _iterable.length;
    if (iterableLength > _takeCount) {
      return _takeCount;
    }
    return iterableLength;
  }
}

class TakeIterator extends Iterator<int> {
  TakeIterator(this._iterator, this._remaining) : assert(_remaining >= 0);

  final Iterator<int> _iterator;
  int _remaining;

  @override
  int get current {
    if (_remaining < 0) {
      // ignore: cast_nullable_to_non_nullable
      return null as int;
    }
    return _iterator.current;
  }

  @override
  bool moveNext() {
    if (--_remaining >= 0) {
      return _iterator.moveNext();
    }
    _remaining = -1;

    return false;
  }
}

class WhereIterable extends Iterable<int> {
  WhereIterable(this._iterable, this._f);

  final Iterable<int> _iterable;
  final _ElementPredicate _f;

  @override
  Iterator<int> get iterator => WhereIterator(_iterable.iterator, _f);

  @override
  Iterable<T> map<T>(T Function(int e) toElement) {
    return MappedIterable._(this, toElement);
  }
}

class WhereIterator extends Iterator<int> {
  WhereIterator(this._iterator, this._f);

  final Iterator<int> _iterator;
  final _ElementPredicate _f;

  @override
  int get current => _iterator.current;

  @override
  bool moveNext() {
    while (_iterator.moveNext()) {
      if (_f(_iterator.current)) {
        return true;
      }
    }
    return false;
  }
}

class WhereTypeIterable<T> extends Iterable<T> {
  WhereTypeIterable(this._source);

  final Iterable<Object?> _source;

  @override
  Iterator<T> get iterator => WhereTypeIterator(_source.iterator);
}

class WhereTypeIterator<T> implements Iterator<T> {
  WhereTypeIterator(this._source);

  final Iterator<Object?> _source;

  @override
  T get current => _source.current as T;

  @override
  bool moveNext() {
    while (_source.moveNext()) {
      if (_source.current is int) {
        return true;
      }
    }
    return false;
  }
}

/// Creates errors throw by [Iterable] when the element count is wrong.
abstract class IterableElementError {
  /// Error thrown thrown by, e.g., [Iterable.first] when there is no result. */
  static StateError noElement() => StateError('No element');

  /// Error thrown by, e.g., [Iterable.single] if there are too many results. */
  static StateError tooMany() => StateError('Too many elements');

  /// Error thrown by, e.g., [List.setRange] if there are too few elements. */
  static StateError tooFew() => StateError('Too few elements');
}

/// Marker interface for [Iterable] subclasses that have an efficient
/// [length] implementation.
abstract class EfficientLengthIterable<T> extends Iterable<T> {
  const EfficientLengthIterable();

  /// Returns the number of elements in the iterable.
  ///
  /// This is an efficient operation that doesn't require iterating through
  /// the elements.
  @override
  int get length;
}
