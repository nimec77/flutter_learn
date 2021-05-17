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

  test('memorize - should return 89', () {
    expect(89, fibonacci.fibMatrix(11));
  });

  test('memorize - should return 3416454622906707', () {
    expect(3416454622906707, fibonacci.fibMatrix(76));
  });
}