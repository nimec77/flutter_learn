import 'package:flutter_learn/learn/algorithms/longest_substring.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test for find longest substring of 1 if you can delete one 0', () {
    final longestSubstring = LongestSubstring();

    test('00000', () {
      expect(longestSubstring.length('00000'), 0);
    });

    test('11111', () {
      expect(longestSubstring.length('11111'), 5);
    });


    test('11011', () {
      expect(longestSubstring.length('11011'), 4);
    });

    test('110011', () {
      expect(longestSubstring.length('110011'), 2);
    });

    test('1100111', () {
      expect(longestSubstring.length('1100111'), 3);
    });

    test('1100111011', () {
      expect(longestSubstring.length('1100111011'), 5);
    });
  });
}