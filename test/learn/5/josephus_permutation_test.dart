import 'package:flutter_learn/learn/5/josephus_permutation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Sample Tests', () {
    final josephusPermutation = JosephusPermutation();
    test(
        'Should return the same exact list if k==1',
        () => expect(josephusPermutation.josephus(<dynamic>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1),
            equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])));
    test(
        'Testing for josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2)',
        () => expect(josephusPermutation.josephus(<dynamic>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2),
            equals([2, 4, 6, 8, 10, 3, 7, 1, 9, 5])));
    test(
        'Should work vor values different from numbers too',
        () => expect(josephusPermutation.josephus(<dynamic>['C', 'o', 'd', 'e', 'W', 'a', 'r', 's'], 4),
            equals(['e', 's', 'W', 'o', 'C', 'd', 'r', 'a'])));
    test('Testing for josephus([1, 2, 3, 4, 5, 6, 7], 3)',
        () => expect(josephusPermutation.josephus(<dynamic>[1, 2, 3, 4, 5, 6, 7], 3), equals([3, 6, 2, 7, 5, 1, 4])));
    test('Should work for empty arrays too',
        () => expect(josephusPermutation.josephus(<dynamic>[], 3), equals(<dynamic>[])));
  });
}
