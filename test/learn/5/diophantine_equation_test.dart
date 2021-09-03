import 'package:flutter_learn/learn/5/diophantine_equation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final diophantineEquation = DiophantineEquation();
  void dotest(int n, List<List<int>> exp) {
    test('Testing for $n', () =>
        expect(diophantineEquation.solEqua(n), equals(exp)));
  }
  group('fixed tests', () {
    dotest(5, [[3, 1]]);
    dotest(12, [[4, 1]]);
    dotest(9005, [[4503, 2251], [903, 449]]);
    dotest(9008, [[1128, 562]]);

  });
}
