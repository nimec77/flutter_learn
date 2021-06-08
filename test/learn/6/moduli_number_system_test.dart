import 'package:flutter_learn/learn/6/moduli_number_system.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final moduliNumberSystem = ModuliNumberSystem();
  void dotest(int n, List<int> bases, String exp) {
    test('Testing for: \n$n $bases \n', () => expect(moduliNumberSystem.fromNb2Str(n, bases), equals(exp)));
  }

  group('fixed tests', () {
    dotest(187, [8, 7, 5, 3], '-3--5--2--1-');
    dotest(446, [8, 7, 5, 3], '-6--5--1--2-');
    dotest(15, [8, 6, 5], 'Not applicable');
    dotest(0, [8, 7, 5, 3], '-0--0--0--0-');
    dotest(3450, [17, 5, 3], 'Not applicable');
  });
}
