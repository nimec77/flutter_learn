import 'package:flutter_learn/learn/algorithms/dp/number_of_unique_paths.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('3x2 test', () {
    final numberOfUniquePaths = NumberOfUniquePaths(3, 2);
    final result = numberOfUniquePaths();
    expect(result, 3);
  });
}