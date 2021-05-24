import 'package:flutter_learn/learn/7/jumping_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final jumpingNumber = JumpingNumber();
  group('Fixed tests', () {
    // test('Testing for 1', () {
    //   expect(jumpingNumber.jumpingNumber(1), equals('Jumping!!'));
    // });
    // test('Testing for 7', () {
    //   expect(jumpingNumber.jumpingNumber(7), equals('Jumping!!'));
    // });
    // test('Testing for 9', () {
    //   expect(jumpingNumber.jumpingNumber(9), equals('Jumping!!'));
    // });
    test('Testing for 23', () {
      expect(jumpingNumber.jumpingNumber(23), equals('Jumping!!'));
    });
    test('Testing for 32', () {
      expect(jumpingNumber.jumpingNumber(32), equals('Jumping!!'));
    });
    test('Testing for 79', () {
      expect(jumpingNumber.jumpingNumber(79), equals('Not!!'));
    });
    test('Testing for 98', () {
      expect(jumpingNumber.jumpingNumber(98), equals('Jumping!!'));
    });
    test('Testing for 8987', () {
      expect(jumpingNumber.jumpingNumber(8987), equals('Jumping!!'));
    });
    test('Testing for 4343456', () {
      expect(jumpingNumber.jumpingNumber(4343456), equals('Jumping!!'));
    });
    test('Testing for 98789876', () {
      expect(jumpingNumber.jumpingNumber(98789876), equals('Jumping!!'));
    });
  });
}
