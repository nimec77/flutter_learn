import 'package:flutter_learn/learn/5/some_egyptian_fractions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  void doTest(String nrStr, String drStr, exp) {
    final someEgyptianFactions = SomeEgyptianFractions();
    test('Testing for: $nrStr, $drStr', () =>
        expect(someEgyptianFactions.decompose(nrStr, drStr), equals(exp)));
  }
  group('fixed tests dec2FactString', () {
    doTest('75', '75', '[1]');
    doTest('3', '4', '[1/2, 1/4]');
    doTest('12', '4', '[3]');
    doTest('4', '5', '[1/2, 1/4, 1/20]');
    doTest('21', '23', '[1/2, 1/3, 1/13, 1/359, 1/644046]');
    doTest('66', '100', '[1/2, 1/7, 1/59, 1/5163, 1/53307975]');

  });
}
