import 'package:flutter_learn/learn/8/reversed_strings.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic test', () {
    final reversedStrings = ReversedStrings();
    test('reversed world', () {
      expect(reversedStrings.solution('world'), equals('dlrow'));
    });

    test('hello reversed', () {
      expect(reversedStrings.solution('hello'), equals('olleh'));
    });

    test('reversed ', () {
      expect(reversedStrings.solution(''), equals(''));
    });

    test('reversed h', () {
      expect(reversedStrings.solution('h'), equals('h'));
    });
  });
}
