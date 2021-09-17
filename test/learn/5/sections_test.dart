import 'package:flutter_learn/learn/5/sections.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final sections = Sections();
  void testing(int n, int exp) => test('Testing for $n', () => expect(sections.cBest(n), equals(exp)));
  group('Basic tests c -1-', () {
    testing(1, 1);
    testing(4, 4);
    testing(423128, 0);
    testing(1369, 4);
    testing(2999824, 28);
    testing(11710084, 64);
  });
}