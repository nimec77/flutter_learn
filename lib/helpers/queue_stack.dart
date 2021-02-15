import 'dart:collection';

class QueueStack<T> {
  final _stack = Queue<T>();

  void push(T element) {
    _stack.addLast(element);
  }

  T pop() {
    final T lastElement = _stack.last;
    _stack.removeLast();

    return lastElement;
  }

  bool get isEmpty => _stack.isEmpty;
}
