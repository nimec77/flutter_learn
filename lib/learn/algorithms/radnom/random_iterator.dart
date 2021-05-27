import 'dart:math';

class RandomIterator implements Iterator<int> {
  RandomIterator(this.max);

  final int max;

  int _count = 0;

  @override
  int get current => _item(_count);

  @override
  bool moveNext() {
    return ++_count < max;
  }

  @override
  int get hashCode {
    return max.hashCode;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is RandomIterator && other.max == max;
  }

  int _item(int index) {
    return Random(index).nextInt(max);
  }
}
