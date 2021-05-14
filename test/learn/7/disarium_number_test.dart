import 'package:flutter_learn/learn/7/disarium_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fixed tests', () {
    final disariumNumber = DisariumNumber();
    test('Testing for 89', () => expect(disariumNumber.disariumNumber(89), equals('Disarium !!')));
    test('Testing for 564', () => expect(disariumNumber.disariumNumber(564), equals('Not !!')));
    test('Testing for 1024', () => expect(disariumNumber.disariumNumber(1024), equals('Not !!')));
    test('Testing for 135', () => expect(disariumNumber.disariumNumber(135), equals('Disarium !!')));
    test('Testing for 136586', () => expect(disariumNumber.disariumNumber(136586), equals('Not !!')));
  });
}