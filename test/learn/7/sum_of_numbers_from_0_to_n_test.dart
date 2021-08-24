import 'package:flutter_learn/learn/7/sum_of_numbers_from_0_to_n.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final sumOfNumbersFrom0ToN = SumOfNumbersFrom0ToN();
  test('Basic tests', () {
    expect(sumOfNumbersFrom0ToN.showSequence(0), equals('0=0'));
    expect(sumOfNumbersFrom0ToN.showSequence(6), equals('0+1+2+3+4+5+6 = 21'));
  });
}