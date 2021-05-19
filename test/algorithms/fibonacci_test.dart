import 'package:flutter_learn/learn/algorithms/fibonacci.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final fibonacci = Fibonacci();

  test('classic - should return 89', () {
    expect(89, fibonacci.fibClassic(11));
  });
  test('recursion - should return 89', () {
    expect(89, fibonacci.fibRecursion(11));
  });
  test('memorize - should return 89', () {
    expect(89, fibonacci.fibMemorize(11));
  });

  test('matrix - should return 89', () {
    expect(89, fibonacci.fibMatrix(11));
  });

  test('matrix - should return 3416454622906707', () {
    expect(3416454622906707, fibonacci.fibMatrix(76));
  });

  test(
      'fibGen = should return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, '
      '10946, 17711]', () {
    expect([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711],
        fibonacci.fibGen(23));
  });
}
