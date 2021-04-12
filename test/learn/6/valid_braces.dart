import 'package:flutter_learn/learn/6/valid_braces.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic tests', () {
    final validBraces = ValidBraces();
    test('()', () => expect(validBraces.validBraces('()'), equals(true)));
    test('[(])', () => expect(validBraces.validBraces('[(])'), equals(false)));
    test('(){}[]', () => expect(validBraces.validBraces('(){}[]'), equals(true)));
    test('([{}])', () => expect(validBraces.validBraces('([{}])'), equals(true)));
    test('(}', () => expect(validBraces.validBraces('(}'), equals(false)));
    test('[({})](]', () => expect(validBraces.validBraces('[({})](]'), equals(false)));
  });
}
