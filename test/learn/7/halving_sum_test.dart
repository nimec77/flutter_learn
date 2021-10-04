import 'package:flutter_learn/learn/7/halving_sum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final halvingSum = HalvingSum();
  group('Fixed tests', () {
    final tests = [
      [25, 47],
      [127, 247],
    ];
    for (final t in tests) {
      test('${t.first} -> ${t.last}', () {
        expect(halvingSum.halvingSum(t.first), equals(t.last));
      });
    }
  });
}