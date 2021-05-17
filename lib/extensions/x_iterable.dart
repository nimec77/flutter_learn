extension XIterable<E> on Iterable<E> {
  void forEachWithIndex(void Function(E element, int index) f) {
    int index = 0;
    for (final E element in this) {
      f(element, index++);
    }
  }
}
