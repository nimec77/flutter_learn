import 'package:flutter_learn/learn/3/screen_locking_patterns.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final screenLockingPatterns = ScreenLockingPatterns();
  void tester(String f, int l, int exp) =>
      test('Testing for $f and $l', () => expect(screenLockingPatterns.countPatternsFrom(f, l), equals(exp)));
  group('basic tests', () {
    tester('A', 0, 0);
    tester('A', 10, 0);
    tester('B', 1, 1);
    tester('C', 2, 5);
    tester('D', 3, 37);
    tester('E', 4, 256);
    tester('E', 8, 23280);
  });
}
