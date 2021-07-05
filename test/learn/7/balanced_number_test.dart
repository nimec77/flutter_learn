import 'package:flutter_learn/learn/7/balanced_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final balancedNumber = BalancedNumber();

  group('Check balanced number', () {
    // test('Testing for 7', () {
    //   expect(balancedNumber.balancedNum(7), equals('Balanced'));
    // });
    // test('Testing for 959', () {
    //   expect(balancedNumber.balancedNum(959), equals('Balanced'));
    // });
    test('Testing for 13', () {
      expect(balancedNumber.balancedNum(13), equals('Balanced'));
    });
    test('Testing for 432', () {
      expect(balancedNumber.balancedNum(432), equals('Not Balanced'));
    });
    test('Testing for 424', () {
      expect(balancedNumber.balancedNum(424), equals('Balanced'));
    });
  });
  group('Check Larger number', () {
    test('Testing for 1024', () {
      expect(balancedNumber.balancedNum(1024), equals('Not Balanced'));
    });
    test('Testing for 66545', () {
      expect(balancedNumber.balancedNum(66545), equals('Not Balanced'));
    });
    test('Testing for 295591', () {
      expect(balancedNumber.balancedNum(295591), equals('Not Balanced'));
    });
    test('Testing for 1230987', () {
      expect(balancedNumber.balancedNum(1230987), equals('Not Balanced'));
    });
    test('Testing for 56239814', () {
      expect(balancedNumber.balancedNum(56239814), equals('Balanced'));
    });
  });
}
