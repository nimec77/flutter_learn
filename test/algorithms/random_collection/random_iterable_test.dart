
import 'package:flutter_learn/learn/algorithms/random_collection/random_iterable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test 10 elements', () {
    final randomIterable = RandomIterable(10);
    const result = [5, 4, 3, 1, 2, 8, 7, 0, 4, 1];
    final actual = randomIterable.toList();

    expect(actual, result);
  });

  test("test a 1,000,000,000 element for a match via the 'elementAt' method, [] method and the 'last' property", () {
    const result = 256938588;
    const index = 1000000000;
    final randomIterable = RandomIterable(1000000000);
    expect(randomIterable.elementAt(index - 1), result);
    expect(randomIterable.last, result);
  });

  test('take even element from 20 iterable size', () {
    final randomIterable = RandomIterable(20);
    const result = [4, 2, 8, 0, 4, 10, 18, 16];

    final actual = randomIterable.where((element) => element.isEven).toList();

    expect(actual, result);
  });

  test('30 length iterable to set', () {
    final randomIterable = RandomIterable(30);
    const result = {15, 24, 3, 1, 12, 28, 7, 10, 25, 20, 5, 9, 18, 11, 26, 27, 21, 16, 22, 8, 19};

    final actual = randomIterable.toSet();

    expect(actual, result);
  });

}
