import 'dart:math';

import 'package:flutter_learn/learn/8/subtract_the_sum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final subtractTheSum = SubtractTheSum();
  final random = Random();
  test('basic-tests', () {
    expect(subtractTheSum.subtractSum(10), equals('apple'));
    for (var i = 0; i < 100; i++) {
      expect(subtractTheSum.subtractSum(random.nextInt(10000 - 10) + 10), equals('apple'));
    }
  });}