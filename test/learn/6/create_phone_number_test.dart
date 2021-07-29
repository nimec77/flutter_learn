import 'package:flutter_learn/learn/6/create_phone_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic tests', () {
    final createPhoneNumber = CreatePhoneNumber();
    test('Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]',
        () => expect(createPhoneNumber.createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), equals('(123) 456-7890')));
    test('Testing for [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]',
        () => expect(createPhoneNumber.createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), equals('(111) 111-1111')));
    test('Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]',
        () => expect(createPhoneNumber.createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), equals('(123) 456-7890')));
  });
}
