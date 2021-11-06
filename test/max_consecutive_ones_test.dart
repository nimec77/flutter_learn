import 'package:flutter_learn/learn/algorithms/max_consecutive_ones.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final maxConsecutiveOnes = MaxConsecutiveOnes();

  test('test 1', () {
    final nums = [1, 1, 0, 1, 1, 1];
    final result = maxConsecutiveOnes.findMaxConsecutiveOnes(nums);
    expect(result, 3);
  });
}
