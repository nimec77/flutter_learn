import 'package:flutter_learn/learn/5/john_and_ann.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final johnAndAnn = JohnAndAnn();
  void testJohn(int n, List<int> exp) =>
      test('Testing for $n', () =>
          expect(johnAndAnn.john(n), equals(exp)));
  group('fixed tests john', () {
    testJohn(11, [0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6]);
    testJohn(14, [0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 7, 8]);

  });

  void testAnn(int n, List<int> exp) =>
      test('Testing for $n', () =>
          expect(johnAndAnn.ann(n), equals(exp)));
  group('fixed tests ann', () {
    testAnn(6, [1, 1, 2, 2, 3, 3]);

  });

  void testSumJohn(int n, int exp) =>
      test('Testing sumJohn for $n', () =>
          expect(johnAndAnn.sumJohn(n), equals(exp)));
  group('fixed tests sumJohn', () {
    testSumJohn(75, 1720);
    testSumJohn(78, 1861);

  });

  void testSumAnn(int n, int exp) =>
      test('Testing sumAnn for $n', () =>
          expect(johnAndAnn.sumAnn(n), equals(exp)));
  group('fixed tests sumAnn', () {
    testSumAnn(115, 4070);
    testSumAnn(150, 6930);

  });
}

