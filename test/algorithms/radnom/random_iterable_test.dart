import 'package:flutter_learn/learn/algorithms/radnom/random_iterable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test 10 elements', () {
    final randomIterable = RandomIterable(10);
    final result = [4, 3, 1, 2, 8, 7, 0, 4, 1];

    expect(randomIterable.toList(), result);
  });

  test("test a 1,000,000,000 element for a match via the 'elementAt' method and the 'last' property", () {
    const result = 256938588;
    const index = 1000000000;
    final randomIterable = RandomIterable(1000000000);
    expect(randomIterable.elementAt(index - 1), result);
    expect(randomIterable.last, result);
  });
}
