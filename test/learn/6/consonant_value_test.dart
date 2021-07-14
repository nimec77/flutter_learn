import 'package:flutter_learn/learn/6/consonant_value.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final consonantValue = ConsonantValue();
  group('Fixed tests', () {
    test('Testing for guzyatpthzdxyusuohsoaa',
        () => expect(consonantValue.solveBest('guzyatpthzdxyusuohsoaa'), equals(143)));
    test('Testing for zodiac', () => expect(consonantValue.solveBest('zodiac'), equals(26)));
    test('Testing for chruschtschov', () => expect(consonantValue.solve('chruschtschov'), equals(80)));
    test('Testing for khrushchev', () => expect(consonantValue.solve('khrushchev'), equals(38)));
    test('Testing for strength', () => expect(consonantValue.solveBest('strength'), equals(57)));
    test('Testing for catchphrase', () => expect(consonantValue.solve('catchphrase'), equals(73)));
    test('Testing for twelfthstreet', () => expect(consonantValue.solve('twelfthstreet'), equals(103)));
    test('Testing for mischtschenkoana', () => expect(consonantValue.solve('mischtschenkoana'), equals(80)));
    test('Testing for az', () => expect(consonantValue.solve('az'), equals(26)));
  });
}
