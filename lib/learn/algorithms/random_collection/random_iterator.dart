import 'dart:math';

class RandomIterator implements Iterator<int> {
  RandomIterator(this.max);

  final int max;

  int _count = -1;

  @override
  int get current {
    return _item(_count);
  }

  @override
  bool moveNext() => ++_count < max;

  @override
  int get hashCode => max.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomIterator && other.max == max;

  int _item(int index) => Random(index).nextInt(max);
}
