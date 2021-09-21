import 'package:flutter_learn/learn/7/string_prefix_and_suffix.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final stringPrefixAndSuffix = StringPrefixAndSuffix();
  group('Fixed tests', () {
    // test('Testing for abcd', () {
    //   expect(stringPrefixAndSuffix.solve('abcd'), equals(0));
    // });
    // test('Testing for abcda', () {
    //   expect(stringPrefixAndSuffix.solve('abcda'), equals(1));
    // });
    test('Testing for abcdabc', () {
      expect(stringPrefixAndSuffix.solve('abcdabc'), equals(3));
    });
    test('Testing for abcabc', () {
      expect(stringPrefixAndSuffix.solve('abcabc'), equals(3));
    });
    test('Testing for abcabca', () {
      expect(stringPrefixAndSuffix.solve('abcabca'), equals(1));
    });
    test('Testing for abcdabcc', () {
      expect(stringPrefixAndSuffix.solve('abcdabcc'), equals(0));
    });
    test('Testing for aaaaa', () {
      expect(stringPrefixAndSuffix.solve('aaaaa'), equals(2));
    });
    test('Testing for aaaa', () {
      expect(stringPrefixAndSuffix.solve('aaaa'), equals(2));
    });
    test('Testing for aaa', () {
      expect(stringPrefixAndSuffix.solve('aaa'), equals(1));
    });
    test('Testing for aa', () {
      expect(stringPrefixAndSuffix.solve('aa'), equals(1));
    });
    test('Testing for a', () {
      expect(stringPrefixAndSuffix.solve('a'), equals(0));
    });
    test('Testing for acbacc', () {
      expect(stringPrefixAndSuffix.solve('acbacc'), equals(0));
    });
  });
}
