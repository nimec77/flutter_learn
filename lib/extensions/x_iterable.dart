extension XIterable<E> on Iterable<E> {
  void forEachWithIndex(void Function(E element, int index) f) {
    var index = 0;
    for (final element in this) {
      f(element, index++);
    }
  }

  Iterable<T> mapWithIndex<T>(T Function(E e, int index) f) sync* {
    var index = 0;
    for(final element in this) {
      yield f(element, index++);
    }
  }
}
